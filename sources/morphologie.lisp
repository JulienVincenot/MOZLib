;;;*************************************************************************************************************
;;;*                                                                                                           *
;;;*                               Jacopo Baboni Schilingi & Frederic VOISIN                                   *
;;;*                                                                                                           *
;;;*                               IRCAM, Paris, november 1998 for Morphologie 1.0                             *
;;;*                                             may 1999 for Morphologie 2.0                                  *
;;;*                                                                                                           *
;;;* Fonctions d'analyse, reconnaissance de pattern et classification morphologiques des profiles géometriques *
;;;* Analysis fonctions, pattern recognition and morphological classification of geometric profiles            *
;;;*                                                                                                           *
;;;*************************************************************************************************************
;;;

;;; the encoding of this file is latin-1
;;; that's the best common denominator

(defpackage :morphologie
  (:use :cl :pw :iterate :sb-ext)
  (:nicknames :morph))


(in-package :morph)


(defun list-modulo (list &optional ncol)
  "partitions LIST in NCOL lists containing the elements modulo NCOL"
  ;; new implementation by Kilian
  ;; should produce the same result
  ;; I assume that NCOL would not be a very
  ;; large number - so efficiency should be fine
  (let ((result-lists (make-list ncol)))
    (loop for i = 0 then (mod (1+ i) ncol)
       for elt in list 
       do (push elt (nth i result-lists)))
    (map-into result-lists #'nreverse result-lists)))

(defun less-deep-mapcar (fun list? &rest args)
  "Applies FUN to LIST? ARGS if LIST? is a one-level list .
   Mapcars FUN to LIST? ARGS if LIST? is a multi-level list. "
  (cond ((null list?) nil)
	((atom (car list?)) (apply fun list? args))
	((atom (car (car list?)))
	 (cons (apply fun (car list?) args)
	       (apply #'less-deep-mapcar fun (cdr list?) args)))
	(t
	 (cons (apply #'less-deep-mapcar fun (car list?) args)
	       (apply #'less-deep-mapcar fun (cdr list?) args)))))

(defun deep-mapcar (fun fun1 list? &rest args)
  "Mapcars FUN or applies FUN1 to LIST? ARGS whether LIST? is a list or not."
  (cond ((null list?) nil)
	((not (consp list?)) (apply fun1 list? args))
	(t
	 (cons (apply #'deep-mapcar fun fun1 (car list?) args)
	       (apply #'deep-mapcar fun fun1 (cdr list?) args)))))

(defun the-min (x) (apply 'min x))

(defun the-max (x) (apply 'max x))

(defun g-min (list)
  ; just for trying things out, we exclude this from the menu
  (less-deep-mapcar #'the-min (pw::LIST! list)))

(defun g-max (list)
  (less-deep-mapcar #'the-max (pw::LIST! list)))


(defun l-nth (list l-nth)
  (deep-mapcar 'l-nth 'nth l-nth list))


(defun posn-match (list l-nth)
  (deep-mapcar 'l-nth 'nth l-nth (pw::LIST! list)))


(defun permut-circn (list &optional nth)
  (when list
    (let ((length (length list)) n-1thcdr)
      (setq nth (mod nth length))
      (if (zerop nth)
	  list
	  (prog1 (cdr (nconc (setq n-1thcdr (nthcdr (1- nth) list)) list))
	    (rplacd n-1thcdr nil))))))

(defun permut-circ (list &optional nth)
  (permut-circn (copy-list list) nth))


(defun primo-passo (lista n)
  "prende n elementi di una lista"
  (let ((f nil)) (dotimes (x n) (push (nth x lista) f)) (nreverse f)))


(defun scom (lista1 &optional n)
  "Scompone la lista1 in funzione delle lunghezze indicate nella n"
  (let ((ris nil))
    (cond ((equal n 'nil)
	   (loop for x from 2 to (floor (/ (length lista1) 2))
	      do (dotimes (y (+ (- (length lista1) x) 1))
		   (push (primo-passo (nthcdr y lista1) x) ris))))
	  ((or (integerp n) (and (listp n) (= 1 (length n))))
	   (dotimes (y (+ (- (length lista1) n) 1))
	     (push (primo-passo (nthcdr y lista1) n) ris)))
	  ((and (listp n) (= 2 (length n)))
	   (loop for x from (car n) to (cadr n)
	      do (dotimes (y (+ (- (length lista1) x) 1))
		   (push (primo-passo (nthcdr y lista1) x) ris))))
	  (t (format t " Invalid optional input") (abort)))
    (reverse ris)))


(defun pattern-ridond (lista &optional n)
  "Restituisce tutte le ripetizioni di tutti i sotto-pattern in
	     cui può essere scomposta la sequenza in lista."
  (let ((ris nil) (x (scom lista n)) y)
    (loop :while x
       :do (when (find (setf y (pop x)) x :test 'equal) (push y ris)))
    (reverse ris)))


(defun ptrn-recogn (list)
  "restituisce..."
  (let* ((ris nil)
	 (ros nil)
	 (calcolo (pattern-ridond list))
	 (calcoletto (remove-duplicates calcolo :from-end '1 :test 'equalp))
	 (calcolaccio
	  (dolist (y calcoletto (nreverse ros))
	    (push (1+ (count y calcolo :test 'equalp)) ros))))
    (dotimes (x (length calcoletto) (nreverse ris))
      (push (append (list (nth x calcoletto)) (list (nth x calcolaccio))) ris))))


(defun rispero (lista n)
  "E' come spero solo che divide la
	    lista in base al valore messo in n"
  (scom lista n))


(defun risperiamo (lista n)
  "E' molto simile a speriamo : trova i pattern di n lunghezza
	     all'interno della lista"
  (let ((ris nil))
    (dolist (x (rispero lista n) (nreverse ris))
      (if (equalp (subsetp (list nil) x :test #'equal) nil) (push x ris)))))


(defun ptrn-ridond-ctrl-prov (lista n)
  "Restituisce tutti i sotto-pattern che compaiono almeno
	     due volte (ridondanza) e le cui length sono decise da
	     noi in N."
  (let ((ris nil) (x (risperiamo lista n)) y)
    (loop :while x
       :do (if (find (setf y (pop x)) x :test 'equal) (push y ris)))
    (nreverse ris)))


(defmethod ptrn-find ((list list) (n integer))
  "Donne tous les patterns de longueur N presents dans LIST
   avec leur nombre d'occurences.
   Est considere comme pattern tout segment de LIST
   repete au moins une fois.
   Si N est nul (nil), donne tous les segments repetes quelle que
   soit leur longueur;
   N peut etre une liste de longueurs souhaitees."
  (let* ((ris nil)
	 (ros nil)
	 (calcolo (ptrn-ridond-ctrl-prov list n))
	 (calcoletto (remove-duplicates calcolo :from-end '1 :test 'equalp))
	 (calcolaccio
	  (dolist (y calcoletto (nreverse ros))
	    (push (count y calcolo :test 'equalp) ros))))
    (dotimes (x (length calcoletto) (nreverse ris))
      (push (append (list (nth x calcoletto)) (list (1+ (nth x calcolaccio))))
	    ris))))

(defmethod ptrn-find ((list list) (n list))
  (mapcar #'(lambda (length) (ptrn-find list length)) n))

(defmethod ptrn-find ((list list) (n null)) (ptrn-recogn list))

(defun sort-list-char (list &optional fct)
  "Trie dans l'ordre ascendant tous les caracteres alpha-numeriques et symboles."
  (sort list
	'<
	:key
	#'(lambda (x)
	    (if (numberp (if fct (funcall fct x) x))
		(* 1000 (if fct (funcall fct x) x))
		(char-code (char (string (if fct (funcall fct x) x)) 0))))))

(defun remove-if-cadr-not-max (list)
  (let ((max (apply #'max (mapcar #'cadr list))))
    (remove-if #'(lambda (x) (< (cadr x) max)) list)))

(defun ptrn-reson (list windw &optional step set)
  "Avance dans la sequence LIST avec avec une taille de fenetre WINDW
et un pas d'avancement (optionnel) STEP .
Renvoie pour chaque fenètre le nombre d'occurrences d'un élément.
L'entrée optionnelle SET specifie les segments recherches dans LIST>"
  (count-ptrn-win list windw step set))


(defun count-ptrn-win (seq win &optional step ptrn-set)
  (assert (listp ptrn-set))
  (when (null step) (setf step win))
  (let ((result 'nil)
	(elements
	 (if ptrn-set ptrn-set (remove-duplicates seq :test #'equalp))))
    (loop for i from 0 to (floor (/ (length seq) step))
       until (> (+ (* i step) win) (length seq))
       do (let* ((window (subseq seq (* i step) (+ (* i step) win))))
	    (push (mapcar #'(lambda (elt)
			      (list elt (count elt window :test #'equalp)))
			  elements)
		  result))
       finally (let ((result-not-sorted
		      (append (reverse result)
			      (list (mapcar
				     #'(lambda
					   (elt)
					 (list
					  elt
					  (count
					   elt
					   (subseq seq (* i step))
					   :test
					   #'equalp)))
				     elements)))))
		 (return (values (mapcar #'(lambda
					       (a)
					     (sort-list-char
					      (remove-if-cadr-not-max a)
					      #'car))
					 (copy-tree result-not-sorted))
				 (mapcar #'(lambda
					       (a)
					     (sort-list-char a #'car))
					 result-not-sorted)))))))

(defun ptrn-smooth (list)
  "It returns the list LIST without local repetitions.
	     For example : list equal to (a a b c a b b c d c c)
	     it reurns (a b c a b c d c))"
  (let ((l nil))
    (loop for x from 0 to (1- (length list))
       do (when (not (equal (nth (+ x 1) list) (nth x list)))
	    (push (nth x list) l)))
    (reverse l)))


(defun permut-p (l1 l2)
  (when (and (equal (sort-list-char (copy-list l1))
		    (sort-list-char (copy-list l2)))
	     (not (or (member 'nil (mapcar #'(lambda (x) (member x l1)) l2))
		      (member 'nil (mapcar #'(lambda (x) (member x l2)) l1)))))
    t))

(defun local-permut (list &optional length)
  (let ((r 'nil))
    (when (or (not length) (< length 2)) (setf length 2))
    (dotimes (i (- (length list) length) (reverse r))
      (let* ((seqa (subseq list i (+ length i)))
	     (temp-seq (list (list seqa i))))
	(when (> (length (remove-duplicates seqa :test #'equalp)) 1)
	  (when (not (member t
			     (mapcar #'(lambda (x) (permut-p seqa x))
				     (mapcar #'caar r))))
	    (dotimes (j (+ 2 (- (length list) i (* 2 length)))
		      (when (cdr temp-seq) (push (reverse temp-seq) r)))
	      (let ((seqb
		     (subseq list
			     (+ i j (1- length))
			     (+ i j (1- (* 2 length))))))
		(when (permut-p seqa seqb)
		  (let ((p (position seqb temp-seq :test #'equalp :key #'car)))
		    (if p
			(setf (nth p temp-seq)
			      (append (nth p temp-seq)
				      (list (+ i j (1- length)))))
			(push (list seqb (+ i j (1- length)))
			      temp-seq))))))))))))

(defun permuts (list ptrn)
  (let ((r 'nil))
    (dotimes (i (1+ (- (length list) (length ptrn))) (reverse r))
      (let* ((seqa (subseq list i (+ (length ptrn) i))))
	(when (permut-p seqa ptrn)
	  (let ((p (position seqa r :test #'equalp :key #'car)))
	    (if p
		(setf (nth p r) (append (nth p r) (list i)))
		(push (list seqa i) r))))))))

(defun find-permut (seq output &optional length ptrn)
  "Renvoie les permutations de deux elements de la sequence SEQ>
 deux modes : PERMUTATION renvoie les segments d'elements permutes, POSITION renvoie
 les segments d'elements et leurs positions dans la sequence.
optionnels :
- LENGTH : longueur des segments. 2 par defaut.
- PTRN  : segment dont les permutations sont recherchés.
tous par défaut. desactive LENGTH>

Returns all permutations of two elements in SEQ with
their respective positions in seq.
Optional inputs :
LENGTH> length or list of lengths of segments to be permuted
\(if 'nil, length = 2);
PTRN : pattern of which permutations are looking for.
 If not empty (nil), desactivates LENGTH>"
  (assert (listp ptrn))
  (if (and (and length (listp length)) (null ptrn))
      (mapcar #'(lambda (x) (find-permut seq output x 'nil)) length)
      (let ((r (if ptrn (permuts seq ptrn) (local-permut seq length))))
	(cond ((equalp :pos output) r)
	      ((equalp :permut output)
	       (if ptrn
		   (mapcar #'car r)
		   (mapcar #'(lambda (x) (mapcar #'car x)) r)))))))

(defun ldl-distance (l-seq change ins/sup inex scale result)
  "Estimates the distances between lists of symbols.
INPUT
l-seq : list of lists of symbols;
change : cost when changing a symbol;
ins/sup : cost when inserting or deleting a symbol;
inex : added cost when the edition is made on a symbol not actual in the other list;
scale : scaling of the distance (ABSOLUTE / RELATIVE), default : ABSOLUTE;
result : output mode - list of list (short), easy-to-read mode (extended) or save to file (save).
OUTPUT
A matrix of distances"
   (when (not (= (length l-seq)
		(length (remove-duplicates (copy-tree l-seq) :test #'equalp))))
    (format t "ldl-distance warning: duplicates in input list.~%"))
  (let ((r nil))
    (if (equalp scale :rel) (setf scale 1) (setf scale 2))
    (cond ((equalp result :short) (setf result 1))
	  ((equalp result :ext) (setf result 2))
	  ((equalp result :save) (setf result 2))
	  (t (print "Error result menu doesn't exist.") (abort)))
    (cond ((= inex 0.0)
	   (dotimes (l1 (length l-seq)
		     (cond ((equalp result 1) (reverse r))
			   ((equalp result 2) (see-ldist (reverse r)))
			   ((equalp result 3) (save-ldist (reverse r)))
			   (t r)))
	     (dotimes (l2 (length l-seq))
	       (cond ((> (- l2 l1) 0)
		      (push (list (nth l1 l-seq)
				  (nth l2 l-seq)
				  (dist-1 (nth l1 l-seq) (nth l2 l-seq) change
					  ins/sup scale))
			    r))))))
	  (t
	   (dotimes (l1 (length l-seq)
		     (cond ((equalp result 1) (reverse r))
			   ((equalp result 2) (see-ldist (reverse r)))
			   ((equalp result 3) (save-ldist (reverse r)))
			   (t r)))
	     (dotimes (l2 (length l-seq))
	       (cond ((> (- l2 l1) 0)
		      (push (list (nth l1 l-seq)
				  (nth l2 l-seq)
				  (dist-2 (cdr (nth l1 l-seq))
					  (cdr (nth l2 l-seq)) change ins/sup inex
					  scale))
			    r)))))))))


(defun see-ldist (d-seq?)
  "Prints in easy-to-read way the distances from dist-list function"
  (dolist (s d-seq?)
    (format t "~%distance ~S / ~S  --> ~,3F ~%" (car s) (cadr s) (caddr s))))

(defun save-ldist (d-seq?)
  "Writes a file with all distances computed by dist-list function"
  (let ((out-file
	 (pathname (choose-new-file-dialog :prompt "distances file name :"
					   :button-string "save"))))
    (with-open-file (out-stream out-file :direction :output :if-exists
				:supersede :if-does-not-exist :create)
      (format t "~&---> Writing distances in : ~S ..." out-file)
      (dolist (s d-seq?)
	(format out-stream "~S~T~S~T~,5F~%" (car s) (cadr s) (caddr s)))
      (format t "~%---> DONE !"))))

(defparameter **alpha** (quote
			 (#\A #\B #\C #\D #\E #\F #\G #\H #\I #\J #\K #\L #\M
			      #\N #\O #\P #\Q #\R #\S #\T #\U #\V #\W #\X #\Y #\Z
			      #\°)))

(defparameter **num** (quote (#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)))

(defun ldl-string (seq)
  "Converts list or list of lists of integers into one string of characters."
  (if (equal 'nil (member 't (mapcar #'listp seq)))
      (to-alpha seq)
      (let ((r
	     (make-string (+ (* 2 (length (remove-if #'listp seq)))
			     (apply #'+
				    (mapcar #'length
					    (remove-if #'integerp seq)))
			     (1- (length (remove-if #'integerp seq))))
			  :initial-element
			  #\ ))
	    (x 0))
	(dotimes (s (length seq) r)
	  (if (integerp (nth s seq))
	      (setf (elt r (+ x (* 2 s))) (elt (to-alpha (nth s seq)) 0))
	      (dotimes (n (length (nth s seq))
			(setf x (+ x (1- (length (nth s seq))))))
		(setf (elt r (+ (* 2 s) n x))
		      (elt (to-alpha (nth n (nth s seq))) 0))))))))

(defun string-to-list (string)
  "Converts a string into a list of characters."
  (let ((lstring nil))
    (dotimes (n (length string) (nreverse lstring))
      (push (elt string n) lstring))))

(defun list-char-score (lcs)
  (setf (car lcs) (list (make-string 1 :initial-element (car lcs)) (cadr lcs))))

(defun posofspaces (string)
  (let ((pos nil))
    (dotimes (n (length string) (nreverse (append (list (length string)) pos)))
      (when (equal (elt string n) #\ ) (push n pos)))))

(defun pos-to-lengths (positions)
  (let ((lengths nil))
    (dotimes (n (1- (length positions))
	      (append (list (car positions)) (nreverse lengths)))
      (push (- (nth (1+ n) positions) (nth n positions) 1) lengths))))

(defun seqstring-to-liststrings (string)
  "Converts a string into a list of strings - words - separated by space character."
  (let ((listofstrings nil)
	(lengths (pos-to-lengths (posofspaces string)))
	(pos
	 (append (list 0)
		 (mapcar #'(lambda (x) (1+ x))
			 (butlast (posofspaces string))))))
    (dotimes (l (length lengths) (nreverse listofstrings))
      (let ((str (make-string (nth l lengths) :initial-element #\ )))
	(dotimes (n (nth l lengths) (push str listofstrings))
	  (setf (elt str n) (elt string (+ n (nth l pos)))))))))

(defun readst (st)
  (let ((r nil))
    (dotimes (n (length st) (nreverse r))
      (when (not (eql #\  (elt st n)))
	(push (read-from-string (string (elt st n))) r)))))

(defun string-to-symbol (string)
  "Converts string or list of strings or list of list of strings into list (list of list) of symbols."
  (if (listp string)
      (cond ((equal 'nil (member 'nil (mapcar #'stringp string)))
	     (mapcar #'(lambda (st)
			 (read-from-string st :start 0 :end (length st)))
		     string))
	    ((equal 'nil (member 'nil (mapcar #'listp string)))
	     (let ((r nil))
	       (dolist (st string (nreverse r))
		 (push (mapcar #'(lambda (s)
				   (read-from-string
				    s
				    :start
				    0
				    :end
				    (length s)))
			       st)
		       r)))))
      (when (stringp string) (readst string))))


(defmethod str->symb ((strings list))
  "Converts string or list of strings or list of list of strings into list (list of list) of symbols.
!! : please replace double quotes by simple quotes before evalution."
  (mapcar #'string-to-symbol strings))

(defmethod str->symb ((strings string))
  "Converts string or list of strings or list of list of strings into list (list of list) of symbols.
!! : please replace double quotes by simple quotes before evalution."
  (string-to-symbol strings))


(defmethod num->alpha ((list list))
  "converts list of lists and/or integers to symbols :
0 -> a
1 -> b
2 -> c
etc."
  (numtochar0 list))

(defmethod num->alpha ((list number))
  "converts list of lists and/or integers to symbols :
0 -> a
1 -> b
2 -> c
etc."
  (numtochar0 list))

(defmethod minirec ((list number)) list)

(defmethod minirec ((list list)) (apply #'min (fflat list)))

(defun midicents-to-name (x &optional approx)
  "Converts a midic number to a CMN name approx values are .5
.25 .125 "
  (let* ((approx-cents
	  (funcall #'(lambda (a b) (* (round (/ a b)) b))
		   x
		   (cond ((= approx 0) 100)
			 ((= approx 1) 50)
			 ((= approx 2) 25)
			 (t 100))))
	 (octave-base-note (* (floor approx-cents 1200) 1200))
	 (note-number (round (/ (- approx-cents octave-base-note) 25)))
	 (octave-number (- (floor (round (/ x 100)) 12) 1)))
    (intern (format nil
		    "~D~D"
		    (nth note-number
			 '("C" "CN+" "CS--" "CS-" "CS" "CS+" "CS++" "DN-" "D"
			   "DN+" "DS--" "DS-" "DS" "DS+" "DS++" "EN-" "E" "EN+"
			   "ES--" "ES-" "F" "FN+" "FS--" "FS-" "FS" "FS+" "FS++"
			   "GN-" "G" "GN+" "GS--" "GS-" "GS" "GS+" "GS++" "AN-"
			   "A" "AN+" "AS--" "AS-" "BF" "AS+" "AS++" "BN-" "B"
			   "BN+" "BS--" "BS-"))
		    octave-number)
	    "MORPH")))


(defun mc-to-name (midicents &optional (approx 0))
  "Main fonction."
  (if (listp midicents)
      (let ((r nil))
	(dolist (m midicents (nreverse r))
	  (if (listp m)
	      (push (concatstrings
		     (mapcar #'(lambda (x)
				 (symbol-name (midicents-to-name x approx)))
			     m))
		    r)
	      (push (symbol-name (midicents-to-name m approx)) r))))
      (symbol-name (midicents-to-name midicents approx))))

(defun mc->alpha1 (midicents approx) (mc-to-name midicents approx))

(defun mc->alpha (midicents approx)
  (mc->alpha1 midicents approx))


(defun concatstrings (lofstrings)
  "Concantenates list of strings into one string."
  
  (let ((concatenated
	 (make-string (apply #'+ (mapcar #'length lofstrings))
		      :initial-element
		      #\ ))
	(n 0))
    (dolist (k lofstrings concatenated)
      (dotimes (i (length k))
	(setf (elt concatenated n) (elt k i))
	(setf n (1+ n))))))


(defun midiseq->alpha1 (midiseq approx)
  "Converts midicents values into symboles."
  (string-to-symbol (mc-to-name midiseq approx)))

(defun midiseq->alpha (midiseq approx)
  "Converts midicents values into symboles."
  
  (midiseq->alpha1 midiseq approx))


(defun seg/contrast (list)
  (let ((c (contraste list)) (pos nil) (b1 nil) (b2 nil) (res nil))
    (setf pos (cdr c))
    (dolist (l pos)
      (setf b1 nil)
      (setf b1 (append (list (car l)) (n-n-1l l)))
      (setf b2 (append b1 (list (- (length list) (car (last l))))))
      (push (remove 'nil (pw::GROUP-LIST list b2 1)) res))
    (list (car c) (reverse res))))

(defun segnum1 (seq)
  (let ((seq1 (remove-duplicates seq :test 'equal))
	(seq2 nil)
	(res1 nil)
	(res2 nil))
    (dotimes (n (length seq1)) (push (list (nth n seq1) (+ n 1)) res1))
    (setf res1 (pw::FLAT-ONCE (reverse res1)))
    (dotimes (n (length seq))
      (setf res2 (member (nth n seq) res1 :test 'equal))
      (push (list res2 (second res2)) seq2))
    (pw::MAT-TRANS (reverse seq2))))

(defun group (list)
  (let ((seqs (second list)) (a nil) (b nil) (c nil) (res nil))
    (dolist (s seqs)
      (setf c (segnum1 s))
      (setf a (remove-duplicates (pw::FLAT-ONCE (car c))))
      (setf b (cdr c))
      (setf a (pw::MAT-TRANS (reverse (list-modulo a 2))))
      (push (list a (car b)) res))
    (list (car list) (reverse res))))

(defun form (segs)
  (let ((res nil))
    (setf segs (pw::FLAT-ONCE (cdr segs)))
    (dolist (s segs (reverse res)) (push (cadr s) res))))

(defun take-date ()
  (multiple-value-bind (s mn h d m y dw ds tz)
      (get-decoded-time)
    (cond ((= 0 dw) (setf dw 'monday))
	  ((= 1 dw) (setf dw 'tuesday))
	  ((= 2 dw) (setf dw 'wednesday))
	  ((= 3 dw) (setf dw 'thirday))
	  ((= 4 dw) (setf dw 'friday))
	  ((= 5 dw) (setf dw 'saturday))
	  ((= 6 dw) (setf dw 'sunday)))
    (list dw d m y h mn s ds tz)))

(defun view-str-1 (seq from-struct-1 groups alpha? stream date run-time)
  (format stream "****************************************~%")
  (format stream
	  "~%   Run of Marker Analysis on ~S ~S ~S ~S  at ~S h ~S mn,"
	  (nth 0 date)
	  (nth 1 date)
	  (nth 2 date)
	  (nth 3 date)
	  (nth 4 date)
	  (nth 5 date))
  (format stream "~%with the following sequence :~%~%")
  (format stream "~S ~%" seq)
  (dotimes (n (length (car from-struct-1))
	    (format stream
		    "~%computation time : ~S seconds~%    End of marker analysis~%"
		    run-time))
    (let ((seg (car (nth n (cadr groups)))))
      (format stream
	      "~%~S - Mark : ~S~%~%"
	      (+ n 1)
	      (nth n (car from-struct-1)))
      (format stream "    Segments found :~%")
      (dotimes (o (length seg) (format stream "~%"))
	(format stream
		"~S : ~S~%"
		(if (equalp alpha? "alpha")
		    (to-alpha (1- (car (nth o seg))))
		    (car (nth o seg)))
		(cadr (nth o seg))))
      (format stream "    Resulting structure :~%")
      (format stream "~S " (nth n (cadr from-struct-1)))
      (format stream "~%~%"))))

(defun structure-1 (seq &optional alpha? smooth? result  levels smth2?)
  "Donne toutes les structures possibles d'une séquence de nombres ou de symboles
selon une segmentation contrastive, et ce de manière récursive.

INPUT
seq : séquence de symboles ou nombres (liste);
alpha? : résultat en mode alphabétique ou numérique (YES NO), optional;
lisse? : optional YES : suppression des elements repetes immediatements dans seq .
result : menu déroulant, quatre possibilités :
 short = liste des critères de segmentation et leur segmentation respective;
 exten = analyse détaillée;

 save  = analyse détaillée écrite en un fichier texte.

OUTPUT
en mode short, pour le traitement de l'analyse, liste de liste selon le format :

\((critères de segmentation)
\(forme selon critère)...)"
  
  ; :menu (alpha? :alpha :num)
  ; :menu (smooth? :yes :no)
  ; :menu (result :struct :short :extend :save)
  ; :menu (smth2? :yes :no)

  (assert (>= levels 1))
  (if (> levels 1)
      (rma-1 seq (if (eql :yes smooth?) 1 0) levels
	     (if (eql :yes smth2?) 1 0) (if (eql :alpha alpha?) 1 0)
	     (cond ((eql :struct result) 3)
		   ((eql :short result) 0)
		   ((eql :extend result) 1)
		   ((eql :save result) 2)))
      (let ((lisse? smooth?)
	    (seg nil)
	    (res nil)
	    (date (take-date))
	    (time-start (get-internal-real-time))
	    (run-time 0)
	    out-file)
	(when (eql :save result)
	  (setf out-file
		(choose-new-file-dialog :prompt "Structure-1 Mark Analysis"
					:button-string "save as")))
	(if (eql :yes lisse?)
	    (setf seg (group (seg/contrast (ptrn-smooth seq))))
	    (setf seg (group (seg/contrast seq))))
	(if (eql :alpha alpha?)
	    (setf res
		  (list (car seg)
			(to-alpha
			 (mapcar #'(lambda (x) (mapcar #'1- x)) (form seg)))))
	    (setf res (list (car seg) (form seg))))
	(setf run-time
	      (float (/ (- (get-internal-real-time) time-start)
			internal-time-units-per-second)))
	(cond ((eql :extend result)
	       (view-str-1 seq res seg alpha? 't date run-time))
	      ((eql :save result)
	       (format t "Writing marker analysis in file : ~S...~%" out-file)
	       (with-open-file (out-st out-file :direction :output :if-exists
				       :supersede :if-does-not-exist :create)
		 (view-str-1 seq res seg alpha? out-st date run-time))
	       ;; (set-mac-file-creator out-file 'ttxt)
	       (format t "DONE~%"))
	      ((eql :short result)
	       (if (eql :alpha alpha?)
		   (to-a-special
		    (list (car seg) (mapcar 'car (cadr seg)) (last res)))
		   (list (car seg)
			 (mapcar 'car (cadr seg))
			 (mapcar 'cadr (cadr seg)))))
	      ((eql :struct result) (car (last res)))))))


(defun take-structures (analysis)
  (setf analysis (car (last analysis)))
  (mapcar 'cadr analysis))

(defun take-criteria (analysis) (car analysis))

(defun take-patterns (analysis)
  (let ((patts (mapcar 'car (cadr analysis))) (patterns nil))
    (dolist (p patts (nreverse patterns)) (push (mapcar 'cadr p) patterns))))

(defun analyse-contrastive (s lisse?)
  (let (analysis)
    (if (= 0 lisse?)
	(setf analysis (group (seg/contrast s)))
	(setf analysis (group (seg/contrast (ptrn-smooth s)))))
    (values (take-structures analysis)
	    (take-criteria analysis)
	    (take-patterns analysis))))

#|

DOUBLON LÉGÈREMENT DIFFÉRENT DANS LE CODE DE FRED

(defun take-result-of-ac (seq lisse?)
  (multiple-value-bind (structs ptrns crits)
      (analyse-contrastive seq lisse?)
    (list structs ptrns crits)))
 
    |#

(defun convert-to-alpha (list-of-numbers) (numtochar2 list-of-numbers))

(defun to-alpha (list-of-nb)
  "Converts in alpha integer, list of integers, or list of lists of integers.
0 -> A, 1 -> B etc."
  (numtochar3 list-of-nb))

(defun to-alphanum (list-of-nb)
  "Converts in alpha integer, list of integers, or list of lists of integers."
  (if (numberp list-of-nb)
      (make-string 1 :initial-element (nth list-of-nb **num**))
      (cond ((eq 'nil (member 'nil (mapcar 'numberp list-of-nb)))
	     (convert-to-alphanum list-of-nb))
	    ((eq 'nil (member 'nil (mapcar 'listp list-of-nb)))
	     (mapcar #'convert-to-alphanum list-of-nb))
	    (t
	     (format t
		     "~%to-alpha : Error when converting integers to alpha :~%Accepts only, integers or list of int, or list of list of int.~%")))))

(defun convert-to-alphanum (list-of-numbers)
  (let ((string
	 (make-string (1- (* 2 (length list-of-numbers)))
		      :initial-element
		      #\ )))
    (dotimes (n (length list-of-numbers) string)
      (setf (char string (* 2 n)) (nth (nth n list-of-numbers) **num**)))))

(defun to-a-special (list)
  (dotimes (l (length (cadr list)) list)
    (dotimes (n (length (nth l (cadr list))))
      (when (not (numberp (car (nth n (nth l (cadr list))))))
	(format t
		"~%Error when converting to alpha notation :~%pattern names are already symbols (in place of integers).~%~%")
	(abort))
      (setf (car (nth n (nth l (cadr list))))
	    (make-string 1
			 :initial-element
			 (nth (1- (car (nth n (nth l (cadr list)))))
			      **alpha**))))))

(defun numtochar26 (num) (code-char (+ 97 num)))

(defun modulo26 (num) (values (mod num 26) (floor (/ num 26))))

(defmethod numtochar ((num integer))
  (multiple-value-bind (base ex)
      (modulo26 num)
    (if (zerop ex)
	(make-string 1 :initial-element (numtochar26 base))
	(let ((string (make-string 2)))
	  (setf (char string 0) (numtochar26 (1- ex))
		(char string 1) (numtochar26 base))
	  string))))

(defmethod numtochar ((num list)) (mapcar #'numtochar num))


(defmethod numtochar0 ((num integer))
  (multiple-value-bind (base ex)
      (modulo26 num)
    (if (zerop ex)
	(read-from-string (make-string 1 :initial-element (numtochar26 base)))
	(let ((string (make-string 2)))
	  (setf (char string 0) (numtochar26 (1- ex))
		(char string 1) (numtochar26 base))
	  (read-from-string string)))))

(defmethod numtochar0 ((num list)) (mapcar #'numtochar0 num))

(defmethod numtochar2 ((num integer)) (numtochar num))

(defmethod numtochar2 ((num list))
  (let* ((n 0)
	 (lstrings (mapcar #'numtochar2 num))
	 (main-string
	  (make-string (+ (apply #'+ (mapcar #'length lstrings))
			  (1- (length lstrings)))
		       :initial-element
		       #\ )))
    (dolist (k lstrings main-string)
      (dotimes (i (length k) (setf n (1+ n)))
	(setf (elt main-string n) (elt k i))
	(setf n (1+ n))))))



(defmethod numtochar3 ((num integer)) (numtochar num))

(defmethod numtochar3 ((num list))
  (let ((r 'nil))
    (if (not (member t (mapcar #'listp num)))
	(numtochar2 num)
	(dolist (k num (reverse r)) (push (numtochar2 k) r)))))

(defun take-result-of-ac (seq lisse?)
  "Catchs the results of fonction #'analyse-contrastive."
  (multiple-value-bind (structs crits ptrns)
      (analyse-contrastive seq lisse?)
    (list structs crits ptrns)))

(defun ac+complete (seq lisse1 prof level lisse2 arbores)
  "   Recursive Mark Analysis with short mode results.
seq for sequence of symboles;
lisse1 (0 or 1) for removing or not equal contiguous items on first level on analysis;
prof (integer) is the number of steps of recursivity (forms of upper level);
lisse2 for removing or not equal contiguous items on upper analysis level;
alpha? (0 or 1) for alpha print mode;
out-st is the output stream ('t or file).
!!arg arbores must be an empty list, used for recursive analysis!!"
  (if (= prof 0)
      (values (reverse seq) (reverse arbores))
      (cond ((= level 0)
	     (let ((analysis (take-result-of-ac seq lisse1)))
	       (push (list (cadr analysis) (caddr analysis)) arbores)
	       (ac+complete (list (car analysis) seq) lisse1 (1- prof)
			    (1+ level) lisse2 arbores)))
	    (t
	     (let ((seqr nil) (se 'nil))
	       (dolist (s (car seq) (push (reverse se) seqr))
		 (let ((analysis (take-result-of-ac s lisse2)))
		   (setf se (append (reverse (car analysis)) se))
		   (push (list (cadr analysis) (caddr analysis)) arbores)))
	       (ac+complete (append (reverse seqr) seq) lisse1 (1- prof)
			    (1+ level) lisse2 arbores))))))

(defun alp?? (yn x n)
  "Converts in alpha mode Up if n>0 and down-case if n=0 strings or num according to yn (1 0) for alpha or num ,
x which can be a integer, or list or list of list, and n which is the analysis level"
  (cond ((or (symbolp x) (stringp x)) x)
	((listp x)
	 (if (equal 'nil
		    (member 'nil
			    (mapcar #'(lambda (z) (or (symbolp z) (stringp z)))
				    x)))
	     x
	     (if (= 1 yn)
		 (if (= n 0) (string-downcase (to-alpha x)) (to-alpha x))
		 (to-alphanum x))))
	(t
	 (if (= 1 yn)
	     (if (= n 0) (string-downcase (to-alpha x)) (to-alpha x))
	     (to-alphanum x)))))

(defun alp?1? (yn x n)
  "Converts in alpha mode Up if n>1 and down-case if n=1 strings or num according to yn (1 0) for alpha or num ,
x which can be a integer, or list or list of list, and n which is the analysis level"
  (cond ((or (symbolp x) (stringp x)) x)
	((listp x)
	 (if (equal 'nil
		    (member 'nil
			    (mapcar #'(lambda (z) (or (symbolp z) (stringp z)))
				    x)))
	     x
	     (if (= 1 yn)
		 (if (= n 1) (string-downcase (to-alpha x)) (to-alpha x))
		 (to-alphanum x))))
	(t
	 (if (= 1 yn)
	     (if (= n 1) (string-downcase (to-alpha x)) (to-alpha x))
	     (to-alphanum x)))))

(defun recursive-mark-analyse (seq lisse1 prof lisse2 alpha? out-st)
  "   Recursive Mark Analysis with extended results.
seq for sequence of symboles;
lisse1 (0 or 1) for removing or not equal contiguous items on first level on analysis;
prof (integer) is the number of steps of recursivity (forms of upper level);
lisse2 for removing or not equal contiguous items on upper analysis level;
alpha? (0 or 1) for alpha print mode;
out-st is the output stream ('t or file)."
  (multiple-value-bind (st analysis-paths)
      (ac+complete seq lisse1 prof 0 lisse2 'nil)
    (let ((list-of-crits (mapcar 'car analysis-paths))
	  (list-of-patrns (mapcar 'cadr analysis-paths))
	  (structs (cdr st))
	  (struct-out (cdr st))
	  (crits nil)
	  (struct-level nil)
	  (ptrns nil)
	  (count 0)
	  (accum-critere-level 0)
	  (c 0)
	  (d 0))
      (loop for n from 0
	 until (= 0 (length structs))
	 do (format out-st
		    "~%~%********** ANALYSIS LEVEL #~S **********~%"
		    (1+ n))
	 (setf struct-level (pop structs))
	 (setf crits (pop list-of-crits))
	 (setf ptrns (pop list-of-patrns))
	 (setf accum-critere-level
	       (+ accum-critere-level (length crits)))
	 (setf c 0)
	 (dotimes (k (length struct-level))
	   (setf count (1+ count))
	   (when (= 1 alpha?)
	     (setf (nth k struct-level)
		   (mapcar #'1- (nth k struct-level))))
	   (cond ((= k 0)
		  (setf d 1)
		  (format out-st
			  "~%~D structure~:P found"
			  (length crits))
		  (if (= n 0)
		      (format out-st ":~%")
		      (format out-st " on structure ~S.~S:~%" n (1+ k))))
		 (t
		  (when (> count accum-critere-level)
		    (setf ptrns (pop list-of-patrns))
		    (setf d (1+ d))
		    (setf crits (pop list-of-crits))
		    (setf accum-critere-level
			  (+ accum-critere-level (length crits)))
		    (setf c 0)
		    (format out-st
			    "~%~%~D structure~:P found"
			    (length crits))
		    (if (= n 0)
			(format out-st ":~%")
			(format out-st " on structure ~S.~S :~%" n d)))))
	   (format out-st
		   "~%~% mark /~A/      STRUCTURE ~S.~S : ~A~%~D pattern~:P :"
		   (alp?? alpha? (nth c crits) n)
		   (1+ n)
		   (1+ k)
		   (alp?? alpha? (nth k struct-level) n)
		   (length (nth c ptrns)))
	   (dotimes (p (length (nth c ptrns)))
	     (format out-st
		     "~%  ~A - ~A"
		     (alp?? alpha? (if (= 1 alpha?) p (1+ p)) n)
		     (alp?1? alpha? (nth p (nth c ptrns)) n)))
	   (setf c (1+ c))))
      struct-out)))

(defun print-smoothing (smooth1 smooth2 levels stream)
  (when (and (= smooth1 smooth2) (= 0 smooth1))
    (format stream "with no smoothing.~%"))
  (when (and (and (= smooth1 smooth2) (= 1 smooth1)) (> levels 1))
    (format stream "smoothing on all analysis levels.~%"))
  (when (and (= smooth1 0) (= smooth2 1))
    (format stream
	    "smoothing since analysis level 2 (no smooth on sequence).~%"))
  (when (and (= smooth1 1) (= smooth2 0))
    (if (> levels 1)
	(format stream "smoothing on first analysis level.~%")
	(format stream "with smoothed sequence.~%"))))

(defun ac (seq lisse1 prof level lisse2)
  (cond ((= prof 0) (reverse seq))
	(t
	 (if (= level 0)
	     (ac (list (analyse-contrastive seq lisse1) seq) lisse1 (1- prof)
		 (1+ level) lisse2)
	     (let ((seqr nil) (se 'nil))
	       (dolist (s (car seq) (push (reverse se) seqr))
		 (setf se
		       (append (reverse (analyse-contrastive s lisse2)) se)))
	       (ac (append (reverse seqr) seq) lisse1 (1- prof) (1+ level)
		   lisse2))))))

(defun rma-1 (seq smoo1 levels &optional smoo2 alpha? result)
  "
même fonction que structure-1, mais récursive :
s'applique aussi aux structures trouvées, avec LEVELS
 comme niveau de recursion.
memes caractéristiques que structure-1
Recursive Mark Analysis. Returns only found structures."
  
  (when (< levels 1)
    (format t "Recursion error : levels must be >= 1 !~%")
    (abort))
  (cond ((= result 3)
	 (let ((structures (cdr (ac seq smoo1 levels 0 smoo2))))
	   (when (= 1 alpha?)
	     (setf structures
		   (mapcar #'(lambda (x)
			       (mapcar #'(lambda (y) (mapcar #'1- y)) x))
			   structures)))
	   (print-smoothing smoo1 smoo2 levels 't)
	   (if (= 1 alpha?)
	       (cond ((= 1 levels)
		      (mapcar 'string-downcase (to-alpha (car structures))))
		     ((> levels 1)
		      (setf structures (mapcar 'to-alpha structures))
		      (setf (car structures)
			    (mapcar 'string-downcase (car structures)))
		      structures))
	       structures)))
	((= result 0)
	 (print-smoothing smoo1 smoo2 levels 't)
	 (multiple-value-bind (sequence analysis)
	     (ac+complete seq smoo1 levels 0 smoo2 'nil)
	   (list (mapcar #'(lambda (s)
			     (alp?? alpha?
				    (if (= 1 alpha?)
					(mapcar #'(lambda (x) (mapcar #'1- x)) s)
					s)
				    levels))
			 (cdr sequence))
		 analysis)))
	((= result 1)
	 (let ((time-start (get-internal-real-time))
	       (date (take-date))
	       (scores nil))
	   (format t
		   "~%~%Run of RECURSIVE MARK ANALYSIS on ~A ~A ~A ~A  at ~S h ~S mn"
		   (nth 0 date)
		   (nth 1 date)
		   (nth 2 date)
		   (nth 3 date)
		   (nth 4 date)
		   (nth 5 date))
	   (format t "~%For sequence : ~%~%~A" seq)
	   (format t "~%~%~% ~D analysis (recursive) level~:P, " levels)
	   (print-smoothing smoo1 smoo2 levels 't)
	   (setf scores
		 (rma-1-scores
		  (alpha-struct alpha?
				(recursive-mark-analyse seq smoo1 levels smoo2 alpha? t))))
	   (format t "~%~%********** SCORES ********** ~%")
	   (dotimes (level (length scores))
	     (format t "~%Scores at RMA level ~S :~%" (1+ level))
	     (if (= 0 level)
		 (dotimes (n (length (nth level scores)))
		   (format t "for structure ~S.~S:~%" (1+ level) (1+ n))
		   (dolist (u (nth n (nth level scores)))
		     (format t "~A = ~S~%" (car u) (cadr u))))
		 (dolist (u (nth level scores))
		   (format t "~A = ~S~%" (car u) (cadr u)))))
	   (format t
		   "~%~%Computation time = ~S seconds."
		   (float (/ (- (get-internal-real-time) time-start)
			     internal-time-units-per-second))))
	 (format t
		 "~%********** End of Recursive Mark Analysis *************~%"))
	((= result 2)
	 (let ((out-file
		(choose-new-file-dialog :prompt
					"Recursive Mark Analysis text file" :button-string "save as"))
	       time-start
	       scores
	       (date (take-date)))
	   (format t
		   "Writing marker analysis in file : ~S...~%"
		   (pathname-name out-file))
	   (with-open-file (out-stream out-file :direction :output :if-exists
				       :supersede :if-does-not-exist :create)
	     (format out-stream
		     "~%~%Run of RECURSIVE MARK ANALYSIS ~A ~A ~A ~A  at ~S h ~S mn"
		     (nth 0 date)
		     (nth 1 date)
		     (nth 2 date)
		     (nth 3 date)
		     (nth 4 date)
		     (nth 5 date))
	     (format out-stream "~% on sequence : ~%~%~A" seq)
	     (format out-stream
		     "~%~%~% ~D analysis (recursive) level~:P, "
		     levels)
	     (print-smoothing smoo1 smoo2 levels out-stream)
	     (setf time-start (get-internal-real-time))
	     (setf scores
		   (rma-1-scores
		    (alpha-struct alpha?
				  (recursive-mark-analyse seq smoo1 levels smoo2 alpha?
							  out-stream))))
	     (format out-stream "~%~%********** SCORES ********** ~%")
	     (dotimes (level (length scores))
	       (format out-stream "~%Scores at RMA level ~S :~%" (1+ level))
	       (if (= 0 level)
		   (dotimes (n (length (nth level scores)))
		     (format out-stream
			     "for structure ~S.~S:~%"
			     (1+ level)
			     (1+ n))
		     (dolist (u (nth n (nth level scores)))
		       (format out-stream "~A = ~S~%" (car u) (cadr u))))
		   (dolist (u (nth level scores))
		     (format out-stream "~A = ~S~%" (car u) (cadr u)))))
	     (format out-stream
		     "~%~%Computation time = ~S seconds."
		     (float (/ (- (get-internal-real-time) time-start)
			       internal-time-units-per-second)))
	     (format out-stream
		     "~%********** End of Recursive Mark Analysis *************~%")))
	 (format t "DONE~%"))))


(defun alpha-struct (yn structs)
  (loop for n from 0
     until (= n (length structs))
     do (setf (nth n structs)
	      (mapcar #'(lambda (l) (alp?? yn l n)) (nth n structs))))
  structs)

(defun test-eq-l (list) (remove-duplicates list :test 'equalp))

(defun compt-score (pattern list)
  (let ((c 0))
    (loop for n from 0
       until (= 0 (length list))
       do (when (equalp pattern (pop list)) (setf c (1+ c))))
    (list pattern c)))

(defun scores-level-0 (list)
  (cond ((equal 'nil (member 'nil (mapcar #'listp list)))
	 (let ((scores nil) (patts (mapcar #'remove-duplicates list)))
	   (dotimes (l (length list) (nreverse scores))
	     (push (mapcar #'(lambda (x) (compt-score x (nth l list)))
			   (nth l patts))
		   scores))))
	((equal 'nil (member 'nil (mapcar #'stringp list)))
	 (let ((lstring (mapcar #'string-to-list list))
	       (patts nil)
	       (scores nil))
	   (setf patts (mapcar #'remove-duplicates lstring))
	   (setf patts (mapcar #'(lambda (x) (remove #\  x)) patts))
	   (setf lstring (mapcar #'(lambda (x) (remove #\  x)) lstring))
	   (dotimes (l (length lstring)
		     (mapcar #'(lambda (list) (mapcar #'list-char-score list))
			     (nreverse scores)))
	     (push (mapcar #'(lambda (x) (compt-score x (nth l lstring)))
			   (nth l patts))
		   scores))))
	(t
	 (format t
		 "~% Error : scores-level-0 : bad form on structures for level 0.~%")
	 (abort))))

(defun rma-1-scores (structures)
  "Returns the score of each structure, level by level of the rma-1 analysis."
  
  (let ((types (mapcar 'test-eq-l structures)) (scores nil) (s nil))
    (setf (car types) (mapcar #'remove-duplicates (car types)))
    (if (equal 'nil (member 'nil (mapcar 'listp structures)))
	(dotimes (l (length types) (nreverse scores))
	  (setf s 'nil)
	  (if (= 0 l)
	      (push (scores-level-0 (car structures)) scores)
	      (dotimes (p (length (nth l types))
			(push (sort s '> :key #'cadr) scores))
		(push (compt-score (nth p (nth l types)) (nth l structures))
		      s))))
	(format t "~%Error : rma-1-scores : input must be list of lists.~%"))))


(defun con (critere serie)
  (let ((c nil))
    (dotimes (q (length serie) (reverse c))
      (if (eq critere (nth q serie)) (push q c)))))

(defun cont (criterel serie)
  (let ((c nil))
    (dolist (c1 criterel (reverse c))
      (dotimes (q (length serie))
	(if (eq c1 (nth q serie)) (push (cons c1 q) c))))))

(defun contr (criterel serie)
  (let ((c nil))
    (dolist (c1 criterel (cons criterel (reverse c)))
      (let ((d nil))
	(dotimes (q (length serie) (push (reverse d) c))
	  (if (eq c1 (nth q serie)) (push q d)))))))

(defun contraste (serie)
  (let ((c nil) (crit nil))
    (setf crit (remove-duplicates serie))
    (dolist (c1 crit (cons crit (reverse c)))
      (let ((d nil))
	(dotimes (q (length serie) (push (reverse d) c))
	  (if (eq c1 (nth q serie)) (push q d)))))))

(defun n-n-1l (list)
  (let ((l nil))
    (dotimes (x (- (length list) 1) (reverse l))
      (push (- (nth (+ x 1) list) (nth x list)) l))))

(defun n+1-n (serie)
  (let ((l nil))
    (dotimes (n (- (length serie) 1) (reverse l))
      (push (- (nth (+ n 1) serie) (nth n serie)) l))))

(defun cnp (set p)
  (if (= p 1)
      (mapcar 'list set)
      (let ((partial-sol (cnp (rest set) (- p 1))))
	(loop for elt in set
	   for partial on partial-sol
	   append (loop for elt2 in partial
		     unless (>= elt (car elt2))
		     collect (cons elt elt2))))))

(defun cnp-l (dim max)
  (let ((set
	 (let ((r nil))
	   (mapcar #'(lambda (x) (- x 1))
		   (dotimes (n dim (reverse r)) (push (+ n 1) r))))))
    (loop for n from 1 to max append (cnp set n))))

(defun ptrn-mat-bit (ptrn-pos length)
  (let ((m (make-array (list (length ptrn-pos) length))))
    (dotimes (n (length ptrn-pos) m)
      (dotimes (o (length (cadr (nth n ptrn-pos))))
	(dotimes (p (length (car (nth n ptrn-pos))))
	  (setf (aref m n (+ (nth o (cadr (nth n ptrn-pos))) p)) 1))))))

(defun ptrn-l (l!ptrn)
  "Gives only the list of the patterns returned by ptrn-recogn."
  (let ((l-ptrn nil))
    (dolist (l l!ptrn l-ptrn) (push (reverse (cdr (reverse l))) l-ptrn))))

(defun pos-ptrn (ptrn seq)
  "Gives all positions in seq where starts ptrn.
ptrn : pattern to be found;
seq : list of symbols."
  (let ((pat nil) (pos-p nil))
    (dotimes (n (+ 1 (- (length seq) (length ptrn))) (reverse pos-p))
      (setf pat nil)
      (dotimes (o (length ptrn))
	(setf pat (append pat (list (nth (+ n o) seq)))))
      (when (equalp pat ptrn) (push n pos-p)))))

(defun pos-ptrn-l (lptrn seq &optional min max)
  "Gives all positions in seq where starts ptrns.
INPUT :
lptrn : list of patterns to be found;
seq : list of symbols where patterns will be found.
min : minimum length of pattern (default = 2);
max : maximum lenght of pattern (default = longer one.
OUTPUT : list of ((ptrn) (positions))"
  
  (let ((pat nil) (pos-p nil) (lpos-p nil))
    (dolist (l lptrn (reverse lpos-p))
      (setf pos-p nil)
      (when (and (>= (length l) min) (<= (length l) max))
	(dotimes (n (+ 1 (- (length seq) (length l))) (reverse pos-p))
	  (setf pat nil)
	  (dotimes (o (length l))
	    (setf pat (append pat (list (nth (+ n o) seq)))))
	  (when (equalp pat l) (push n pos-p)))
	(push (list l (reverse pos-p)) lpos-p)))))


(defun ptrn-mat (ptrn-pos length)
  (let ((m (make-array (list (length ptrn-pos) length))))
    (dotimes (n (length ptrn-pos) m)
      (dotimes (o (length (cadr (nth n ptrn-pos))))
	(setf (aref m n (nth o (cadr (nth n ptrn-pos))))
	      (length (car (nth n ptrn-pos))))))))

(defun +row (mat row)
  "Returns the sum of elements in row of matrix mat"
  (let ((x 0))
    (dotimes (i (array-dimension mat 1) x) (setf x (+ x (aref mat row i))))))

(defun mat+row (matrix l-rows)
  "    Returns the percentage of completion of dim 1 of matrix by the sum of rows in l-rows.
The result is sorted by percentage score (better completions before)."
  (let ((r nil) (val 0))
    (dolist (row l-rows (sort r #'> :key #'cadr))
      (dolist (v row) (setf val (+ val (+row matrix v))))
      (setf val (float (/ (* 100 val) (array-dimension matrix 1))))
      (push (list row val) r)
      (setf val 0))))

(defun mat-ptrn (matrix l-comb)
  "    Returns the combinations of rows of the binary matrix specified in l-comb
which sastify a good completion pattern structure.
The result is sorted by percentage score (better completions before)"
  (let ((sum 0) (cheksum 0) (r nil) (comb nil))
    (dotimes (n (1- (length l-comb)))
      (setf comb (pop l-comb))
      (loop for q from 0 to (- (array-dimension matrix 1) 1)
	 do (loop for p from 0 to (- (length comb) 1)
	       until (>= cheksum 1)
	       do (setf sum (+ sum (aref matrix (nth p comb) q)))
	       (when (>= sum 2) (setf cheksum 1)))
	 (setf sum 0))
      (when (= cheksum 0) (push comb r))
      (setf cheksum 0))
    (mat+row matrix r)))

(defun min-dom (list) (first list))

(defun max-dom (list) (second list))

(defun pos-int-dom (list-dom val)
  (flet ((match (x) (and (<= val (max-dom x)) (>= val (min-dom x)))))
    (position-if #'match list-dom)))

(defun ins-ptrn (seq ptrn &optional prof set marg)
  "Finds the pattern(s) PTRN in list seq with or without
up to a number prof inserted items;
Return each pattern and its start positions.
Doesn't permit cross-overing of a pattern on itself.
Optional-1:
	    A set (list) of elements which can be inserted in the patterns.
	    If set empty, no constraint.
	    When seq is a list of values, permits a list of 'domains'
	 defined by a list of min and max values.
Optional-2:
	    If seq is a list of values, definition of a margin around the values,
	 more and less the value specified in set (+-);
	 only more the value in set (+);
	 or only less the value in set (-)."
  
  (let ((val 0) (p 0) (pos nil) (long 0) (r nil) (set2 0))
    (cond ((listp set)
	   (format t
		   "~% Set is a list. Using margin option with first value of set.~%")
	   (if (not (integerp (car set)))
	       (and (format t
			    " First element of set is not a value: ignoring margin~%")
		    (setf marg 0))
	       (setf set2 (car set))))
	  ((integerp set) (setf set2 set))
	  (t
	   (format t
		   "~% Margin option can't be applyed (set is not a value): using set without margin.~%")
	   (setf marg 0)))
    (when (not (listp (car ptrn))) (setf ptrn (list ptrn)))
    (dolist (pattern ptrn (reverse r))
      (setf pos 'nil)
      (setf p 0)
      (setf val 0)
      (setf long 0)
      (loop for n from 0 to (- (length seq) 1)
	 do (when (> n 0)
	      (when (= marg 3)
		(setf set
		      (list (list (- (nth (1- n) seq) set2)
				  (+ (nth (1- n) seq) set2)))))
	      (when (= marg 1)
		(setf set
		      (list (list (nth (1- n) seq)
				  (+ (nth (1- n) seq) set2)))))
	      (when (= marg 2)
		(setf set
		      (list (list (- (nth (1- n) seq) set2)
				  (nth (1- n) seq))))))
	 (cond ((equalp (nth n seq) (nth p pattern))
		(when (<= val prof) (setf p (+ p 1)))
		(when (= p 1) (setf long 0)))
	       (t
		(if (listp (car set))
		    (when (and (not (= 0 (length set)))
			       (equalp (integerp
				       (pos-int-dom set (nth n seq)))
				      'nil))
		      (setf long 0)
		      (setf n (- n (+ p val)))
		      (setf p 0)
		      (setf val 0))
		    (when (and (not (= 0 (length set)))
			       (equalp (member (nth n seq) set) 'nil))
		      (setf long 0)
		      (setf n (- n (+ p val)))
		      (setf p 0)
		      (setf val 0)))
		(when (and (>= p 1) (< p (length pattern)))
		  (setf val (+ val 1)))))
	 (cond ((<= val prof)
		(when (= p (length pattern))
		  (push (- n val (- p 1)) pos)
		  (setf long 0)
		  (setf n (+ 2 (- n (length pattern) val)))
		  (setf val 0)
		  (setf p 0))))
	 (when (or (= p (length pattern))
		   (> (+ long val) (+ (length pattern) prof)))
	   (setf p 0)
	   (setf long 0)
	   (setf n (+ 1 (- n (+ p val))))
	   (setf val 0))
	 (if (> p 0) (setf long (+ long 1)) (setf long 0)))
      (push (list pattern (reverse pos)) r))))


(defun structure-2 (seq n-max alpha? result &optional length seuil)
  "INPUT
seq = sequence of nums or symbols;
n-max = maximum number of patterns accepted in structure of seq;
alpha = alpha or num representation of the resulting structures;
result = type of output of analysis
	  extended -> detailed analysis;
	  struct -> returns score, structure and corresponding patterns as list of lists;
	  pos -> returns only the positions of the patterns;
	  mat -> return the list of pattern and the associated binary matrix;
	  p-score -> returns the score of structure completion for each structure;
	  save -> save all analysis into a file.
&OPTIONAL
length = value or list of minimum and maximum values for length of patterns.
	 If nil, lengths of patterns are set up to the half-lenght of the sequence;
seuil = minimum completion percentage of the structure taken in account;

OUTPUT
Returns an analysis of seq according to the repetition criterium to segment.

Note : if out-of memory, try successives computations with a smaller value
of n-max (max number of patterns combined in each structure"
  
  ; :menu (alpha? :alpha :num)
  ; :menu (result :extended :struct :pos :mat :p-score :save)
  (setq alpha? (case alpha? (:alpha 1) (:num 0)))
  (let ((list-patterns
	 (remove-duplicates (pattern-ridond seq length) :test 'equal))
	(date (take-date))
	(time-start (get-internal-real-time))
	(run-time 0)
	pos-patterns
	mat-bin-patterns
	completion-patterns
	formes
	out-file
	cnp)
    (when (eql result :save)
      (setf out-file
	    (choose-new-file-dialog :prompt "Structure-2 pattern analysis"
				    :button-string "save as")))
    (setf pos-patterns (pos-ptrn-l list-patterns seq))
    (print (list 'pos pos-patterns))
    (cond ((equalp result :pos) pos-patterns)
	  (t
	   (setf mat-bin-patterns (ptrn-mat-bit pos-patterns (length seq)))
	   (print (list 'mat-bin-patterns mat-bin-patterns))
	   (cond ((equalp result :mat) (list list-patterns mat-bin-patterns))
		 (t
		  (setf cnp (cnp-l (array-dimension mat-bin-patterns 0) n-max))
		  (print (list 'cnp cnp))
		  (setf completion-patterns (mat-ptrn mat-bin-patterns cnp))
		  (print (list 'completion-patterns completion-patterns))
		  (setf cnp 'nil)
		  (setf mat-bin-patterns 'nil)
		  (setf formes
			(make-form
			 (forma
			  (loop for i from 0 to
			       (- (length completion-patterns) 1)
			       collect (list (loop for j
						from
						0
						to
						(-
						 (length
						  (car
						   (nth
						    i
						    completion-patterns)))
						 1)
						collect (car
							 (nth
							  (nth
							   j
							   (car
							    (nth
							     i
							     completion-patterns)))
							  pos-patterns)))
					     (cadr
					      (nth i completion-patterns))))
			  seq seuil)
			 alpha?))
		  (setf run-time
			(float (/ (- (get-internal-real-time) time-start)
				  internal-time-units-per-second)))
		  (cond ((equalp result :p-score) formes)
			((equalp result :extended)
			 (to-stream seq list-patterns seuil formes
				    completion-patterns 't date run-time))
			((equalp result :save)
			 (format t
				 "Writing Structure-2 analysis in file : ~S...~%"
				 out-file)
			 (with-open-file (out-st
					  out-file
					  :direction
					  :output
					  :if-exists
					  :supersede
					  :if-does-not-exist
					  :create)
			   (to-stream seq list-patterns seuil formes
				      completion-patterns out-st date run-time))
			 ;; (set-mac-file-creator out-file 'ttxt)
			 )
			((equalp result :struct)
			 (to-stream-1-jbs list-patterns formes
					  completion-patterns)))))))))


(defun sub-pattern-p (sub-ptrn ptrn)
  (loop for i from 0 to (- (length ptrn) (length sub-ptrn))
     when (equal sub-ptrn (subseq ptrn i (+ i (length sub-ptrn)))) return t))

(defun to-stream-1-jbs (list-of-pat analysis compl)
  (let* ((ris nil)
	 (calcolo
	  (dotimes (a (length analysis) (nreverse ris))
	    (push (list (first (nth a analysis)) (second (nth a analysis)))
		  ris)))
	 (ros nil)
	 (calcoletto (mapcar #'(lambda (x) (first x)) compl))
	 (calcolaccio
	  (dolist (k calcoletto (nreverse ros))
	    (push (posn-match list-of-pat k) ros))))
    (pw::MAT-TRANS (list calcolo calcolaccio))))

(defun forma (analys seq seuil)
  
  (let ((r nil))
    (dolist (l analys (reverse r))
      (when (>= (cadr l) seuil)
	(push (list (pos-ptrn-l (car l) seq) (cadr l)) r)))))


(defun make-form (analysis alpha?)
  (let ((r nil) (r1 nil) (r2 nil) (res nil) (percent nil))
    (dolist (anal analysis (setf r (reverse r)))
      (setf r2 'nil)
      (setf percent (append (cdr anal) percent))
      (setf anal (car anal))
      (dolist (l anal) (setf r2 (append (cadr l) r2)))
      (setf r2 (sort r2 '<))
      (setf r1 'nil)
      (dotimes (n (length r2) (push (reverse r1) r))
	(dotimes (o (length anal))
	  (when (not (equal (member (nth n r2) (cadr (nth o anal))) 'nil))
	    (push (+ o 1) r1)))))
    (cond ((equal alpha? 0) (pw::MAT-TRANS (list (reverse percent) r)))
	  ((= alpha? 1)
	   (pw::MAT-TRANS (list (reverse percent)
			    (dolist
				(k r (reverse res))
			      (push (to-alpha k) res))))))))

(defun to-stream (seq list-of-pat seuil analysis compl stream date run-time)
  (format stream "~%****************************************~%")
  (format stream
	  "~%   Run of Pattern Analysis - Structure-2 - on ~S ~S ~S ~S  at ~S h ~S mn,"
	  (nth 0 date)
	  (nth 1 date)
	  (nth 2 date)
	  (nth 3 date)
	  (nth 4 date)
	  (nth 5 date))
  (format stream "~%with the following sequence :~%~%")
  (format stream "~S~%" seq)
  (cond ((= (length list-of-pat) 0) (format stream "~%No pattern found.~%"))
	((= (length list-of-pat) 1)
	 (format stream "~%Pattern is :~%~S~%~%" list-of-pat))
	(t
	 (format stream "~%~S patterns found :~%" (length list-of-pat))
	 (dolist (l list-of-pat) (format stream "~S~%" l))
	 (format stream "~%")))
  (format stream "With completion seuil fixed at ~S % ," seuil)
  (format stream " ~S forms found :~%~%" (length analysis))
  (dotimes (a (length analysis))
    (format stream
	    "~S   -> ~,2F % of completion~%"
	    (cdr (nth a analysis))
	    (car (nth a analysis)))
    (format stream "with the patterns :~%")
    (dolist (k (car (nth a compl))) (format stream "~S " (nth k list-of-pat)))
    (format stream "~%~%"))
  (format stream "~%~%")
  (format stream
	  "~%computation time : ~,3F seconds~%~%       End of Pattern Analysis (Structure-2)~%"
	  run-time))

(defun aver-class (seq class)
  "Return the average center of classes (one dimension)."
  
  (let ((r nil) (rt nil) (length (remove-duplicates class)))
    (dotimes (n (length length))
      (setf rt 'nil)
      (loop for x from 0 to (- (length seq) 1)
	 do (when (= (nth x class) n) (push (nth x seq) rt)))
      (push (reverse rt) r))
    (setf r (reverse r))
    (dotimes (l (length r) r)
      (setf (nth l r)
	    (float (/ (round (* (/ (apply #'+ (nth l r)) (length (nth l r)))
				10000))
		      10000))))))


(defun quantize-1 (seq class)
  "Returns the quantization of elements in list according to the classification
defined in class (one dimension)"
  
  (let ((r nil) (rt nil) (length (remove-duplicates class)))
    (dotimes (n (length length))
      (setf rt 'nil)
      (loop for x from 0 to (- (length seq) 1)
	 do (when (= (nth x class) n) (push (nth x seq) rt)))
      (push (reverse rt) r))
    (setf r (reverse r))
    (dotimes (l (length r) r)
      (setf (nth l r)
	    (float (/ (round (* (/ (apply #'+ (nth l r)) (length (nth l r)))
				10000))
		      10000))))
    (setf rt nil)
    (dolist (n class (reverse rt)) (push (nth n r) rt))))


(defun l-matrix (list)
  "Makes a matrix from a list of lists."
  
  (let ((mat
	 (if (not (listp (car list)))
	     (make-array (list (length list) 2))
	     (make-array (list (length list) (length (car list)))))))
    (if (not (listp (car list)))
	(dotimes (l (length list) mat) (setf (aref mat l 0) (nth l list)))
	(dotimes (l (length list) mat)
	  (dotimes (m (length (car list)))
	    (setf (aref mat l m) (nth m (nth l list))))))))



(defmethod class-1 ((matrix array) (n integer) &optional (alpha? 0)
		    (centers nil) (verbose "no"))
  "Clustering 'mouving-clouds' algorithm. Classify elements in matrix
of d-dimensions into n classes. The nth element in result-list corresponds
to the nth element (line) of matrix.
The classe number is arbitrary"
  (let ((matrix (if (listp matrix) (l-matrix matrix) matrix))
	(centers (if (and (listp centers) centers) (l-matrix centers) centers))
	*m*
	*n-cl*
	*n*
	centres
	d-centres
	minima
	adresse-minima
	(classes nil)
	(endtest 1))
    (setf *m* (nth 0 (array-dimensions matrix)))
    (setf *n* (nth 1 (array-dimensions matrix)))
    (setf *n-cl* n)
    (cond ((equal 'nil centers)
	   (when (equalp verbose "yes")
	     (format t "~% Random classes initialisation"))
	   (setf classes (rand-classes *m* *n-cl*))
	   (setf centres (centre-classes matrix classes *m* *n* *n-cl*))
	   (setf d-centres (dist-grav2 matrix centres *m* *n* *n-cl*)))
	  (t
	   (when (equalp verbose "yes")
	     (format t "~% Using initial centers classes :~% ~S~%" centers))
	   (setf d-centres (dist-grav2 matrix centers *m* *n* *n-cl*))))
    (setf classes (reverse classes))
    (do ((cnt 0 (+ cnt 1)))
	((= endtest 0)
	 (when (equalp verbose "yes") (format t "~&Minimum Local :~%"))
	 (if (= alpha? 1)
	     (return (values (to-alpha (mapcar #'1+ (norm-class classes)))
			     (mat-to-ldl centres)))
	     (return (values (norm-class classes) (mat-to-ldl centres)))))
      (when (equalp verbose "yes")
	(format t "~&Moving classes iter. # ~S..." (1+ cnt))
	(format t "~%Classes :~S~%" classes)
	(format t "~%Centers :~S~%~%" centres))
      (when (> cnt 0)
	(setf centres (centre-classes matrix classes *m* *n* *n-cl*)))
      (when (and (= cnt 0) (not (equal centers 'nil))) (setf centres centers))
      (setf d-centres (dist-grav2 matrix centres *m* *n* *n-cl*))
      (setf endtest 0)
      (let ((new-classes 'nil))
	(dotimes (a *m*)
	  (dotimes (b *n-cl*)
	    (cond ((eq b 0)
		   (setf minima (aref d-centres a b))
		   (setf adresse-minima b))
		  (t
		   (cond ((< (aref d-centres a b) minima)
			  (setf minima (aref d-centres a b) adresse-minima b))
			 ((= (aref d-centres a b) minima)
			  (let ((choix (random 2)))
			    (setf minima
				  (nth choix
				       (list minima (aref d-centres a b)))
				  adresse-minima
				  (nth choix (list adresse-minima b)))))))))
	  (push adresse-minima new-classes))
	(cond ((not (= *n-cl* (length (remove-duplicates new-classes))))
	       (format t
		       "Warning :~%End of algorithm at iter. # ~S~%before stabilization for ~S classes.~%"
		       (1+ cnt)
		       *n-cl*)
	       (setf endtest 0))
	      ((not (equal classes (reverse new-classes)))
	       (setf classes (reverse new-classes))
	       (setf endtest 1))
	      (t (setf endtest 0)))))))

(defmethod class-1 ((matrix list) (n integer) &optional (alpha? 0)
		    (centers nil) (verbose "no"))
  "Clustering 'mouving-clouds' algorithm. Classify elements in matrix
of d-dimensions into n classes. The nth element in result-list corresponds
to the nth element (line) of matrix.
The classe number is arbitrary"
  (class-1 (l-matrix matrix) n alpha? centers verbose))

(defun CENTRE-GRAVIT\é (x)
  (let (sum
	g
	(n (nth 1 (array-dimensions x)))
	(m (nth 0 (array-dimensions x))))
    (setq g (make-array (list 1 n)))
    (dotimes (i n g)
      (setf sum 0)
      (dotimes (j m) (setf sum (+ sum (aref x j i))))
      (setf (aref g 0 i) (float (/ sum m))))))

(defun matrix-center (matrix)
  "Donne les coordonnées du centre de gravité d'une matrice
 des coordonnées de points en n-dimensions (utiliser l-matrix
pour convertir une liste de coordonnées de points en matrice).
"
  
  (let (sum
	g
	(n (nth 1 (array-dimensions matrix)))
	(m (nth 0 (array-dimensions matrix))))
    (setq g (make-array (list 1 n)))
    (dotimes (i n g)
      (setf sum 0)
      (dotimes (j m) (setf sum (+ sum (aref matrix j i))))
      (setf (aref g 0 i) (float (/ sum m))))))


(defun X-CENTR\éE (x)
  (let ((g (CENTRE-GRAVIT\é x))
	(n (nth 1 (array-dimensions x)))
	(m (nth 0 (array-dimensions x)))
	CENTR\éE)
    (setq CENTR\éE (make-array (list m n)))
    (dotimes (i m CENTR\éE)
      (dotimes (j n) (setf (aref CENTR\éE i j) (aref g 0 j))))
    (setf CENTR\éE (subtract-two-matrices x CENTR\éE))))

(defun dist-grav (x)
  (let ((grav (CENTRE-GRAVIT\é x))
	d-grav
	diff
	(m (nth 0 (array-dimensions x)))
	(n (nth 1 (array-dimensions x))))
    (setf d-grav (make-array (list m 1)))
    (dotimes (i m d-grav)
      (setf diff 0)
      (dotimes (j n)
	(setf diff (+ diff (expt (- (aref x i j) (aref grav 0 j)) 2))))
      (setf (aref d-grav i 0) diff))))

(defun matvar (matrix)
  (const*matrix (/ 1 (car (array-dimensions matrix)))
		(multiply-two-matrices (transpose matrix) matrix)))

(defun dist-euclidienne (matrix)
  "input = matrix of coordinates of points in a d-space;
   output = upper-matrix of euclidian distances."
  
  (let (k
	temp
	mat-dist
	(m (nth 0 (array-dimensions matrix)))
	(n (nth 1 (array-dimensions matrix))))
    (setf mat-dist (make-array (list (- m 1) m)))
    (dotimes (i m mat-dist)
      (dotimes (j (- m (+ i 1)))
	(setf k (+ j (+ i 1)))
	(setf temp 0)
	(dotimes (l n)
	  (setf temp (+ temp (expt (- (aref matrix k l) (aref matrix i l)) 2))))
	(setf (aref mat-dist i k) (sqrt temp))))))

#|
(defun euclidian-d (matrix)
  "input = matrix of coordinates of points in a d-space;
   output = upper-matrix of euclidian distances."
  (let (k
	temp
	mat-dist
	(m (nth 0 (array-dimensions matrix)))
	(n (nth 1 (array-dimensions matrix))))
    (setf mat-dist (make-array (list (- m 1) m)))
    (dotimes (i m mat-dist)
      (dotimes (j (- m (+ i 1)))
	(setf k (+ j (+ i 1)))
	(setf temp 0)
	(dotimes (l n)
	  (setf temp (+ temp (expt (- (aref matrix k l) (aref matrix i l)) 2))))
	(setf (aref mat-dist i k) (sqrt temp))))))
|#

(defmethod euclidian-d ((matrix list))
  "input = matrix of coordinates of points in a d-space;
   output = upper-matrix of euclidian distances."
  (setf matrix (l-matrix matrix))
  (let (k
	temp
	mat-dist
	(m (nth 0 (array-dimensions matrix)))
	(n (nth 1 (array-dimensions matrix))))
    (setf mat-dist (make-array (list (- m 1) m)))
    (dotimes (i m)
      (dotimes (j (- m (+ i 1)))
	(setf k (+ j (+ i 1)))
	(setf temp 0)
	(dotimes (l n)
	  (setf temp
		(+ temp (expt (- (aref matrix k l) (aref matrix i l)) 2))))
	(setf (aref mat-dist i k) (sqrt temp))))
    (loop for i from 0 to (1- (nth 0 (array-dimensions mat-dist)))
       collect (loop for j from 0 to
		    (1- (nth 1 (array-dimensions mat-dist)))
		    collect (aref mat-dist i j)))))

(defun rand-classes (m n)
  "crée une m-liste aléatoire de n nombres différents"
  (let ((alea nil) (alea-test nil))
    (dotimes (a m alea) (push (random n) alea))
    (setf alea-test (remove-duplicates alea))
    (cond ((eq n (length alea-test)) (setf alea alea)) (t (rand-classes m n)))))

(defun centre-classes (x classes *m* *n* *n-cl*)
  "input = matrice des points
	   liste-vecteur des classes attribuées à chaque point
   output = matrice des centres de chaque classe"
  (let (nuage point c tc centres)
    (setf centres (make-array (list *n-cl* *n*)))
    "-- compte le nbre de points pour chaque classes
     pour construire la matrice de chaque nuage-classe --"
    (dotimes (b *n-cl* centres)
      (setf c 0)
      (dolist (a classes)
       (when (eq a b) (setf c (+ c 1))))
      (setf nuage (make-array (list c *n*)))
      (setf point 0)
      (dotimes (a *m*)
	(when (eq (nth a classes) b)
	       (setf point (+ point 1))
	       (dotimes (d *n*)
                 (setf (aref nuage (- point 1) d) (aref x a d)))))
      (setf tc (CENTRE-GRAVIT\é nuage))
      (dotimes (d *n*) (setf (aref centres b d) (aref tc 0 d))))))

(defun class-center (matrix classes)
  "input = matrix of points in d-dimensions
	   liste of classes founded for each point (line in matrix);
	   Classes must be in numerical representation.
   output = matrix of classes centers."
  
  (let (nuage
	point
	c
	tc
	centres
	(*n-cl* (length (remove-duplicates classes)))
	(*m* (nth 0 (array-dimensions matrix)))
	(*n* (nth 1 (array-dimensions matrix))))
    (setf centres (make-array (list *n-cl* *n*)))
    "-- compte le nbre de points pour chaque classes
     pour construire la matrice de chaque nuage-classe --"
    (dotimes (b *n-cl* centres)
      (setf c 0)
      (dolist (a classes) (cond ((eq a b) (setf c (+ c 1)))))
      (setf nuage (make-array (list c *n*)))
      (setf point 0)
      (dotimes (a *m*)
	(cond ((eq (nth a classes) b)
	       (setf point (+ point 1))
	       (dotimes (d *n*)
		 (setf (aref nuage (- point 1) d) (aref matrix a d)))
	       (setf tc (CENTRE-GRAVIT\é nuage)))))
      (dotimes (d *n*) (setf (aref centres b d) (aref tc 0 d))))))


(defun dist-grav2 (x centres *m* *n* *n-cl*)
  "input = matrice des points
	   matrice des centres de classes
   output = matrice des distances des points
	    avec chaque classes"
  (let (d dist-test)
    (setf dist-test (make-array (list *m* *n-cl*)))
    (dotimes (a *m* dist-test)
      (dotimes (b *n-cl*)
	(setf d 0)
	(dotimes (c *n*)
	  (setf d (+ d (expt (- (aref x a c) (aref centres b c)) 2))))
	(setf (aref dist-test a b) (sqrt d))))))

(defun eshannon (data)
  "Returns the Shannon entropy value of the data classified.
IN
data : list of classes distribution (typically data from class-1;
OUT
Shannon entropie value, 0 <= entropie <= (log n 2).
Cf. J. Wasemberg : L âme de la méduse, idées sur la complexité du monde,
Seuil, Paris, 1997."
  (let ((cl (remove-duplicates data)) (n (length data)) (p nil))
    (dolist (ci cl (- 0 (apply #'+ (mapcar #'(lambda (x) (* x (log x 2))) p))))
      (push (/ (length (remove-if-not #'(lambda (x) (equal x ci)) data)) n)
	    p))))


(defmethod entropy ((class list) (res string))
  "Returns the Shannon entropy value of the data classified.
data : list of classes distribution (typically data from class-1);
res : absolute or relative entropy;
OUT
Shannon entropie value
0 <= entropy <= (log n 2) if res = absolute;
0 <= entropy <= 1.0 if res = relative.
Cf. J. Wasemberg : L âme de la méduse, idées sur la complexité du monde,
Seuil, Paris, 1997."
  (cond ((not (member 'nil (mapcar #'atom class)))
	 (if (equalp res :abs) (setf res 1) (setf res 0))
	 (cond ((= res 1) (eshannon class))
	       ((= res 0)
		(let ((cl (remove-duplicates class)))
		  (if (<= (length cl) 1)
		      (and (format t
				   "Warning:~%1 classe found. No relative value for that case.~%")
			   (abort))
		      (/ (eshannon class) (log (length cl) 2)))))))
	(t (mapcar #'(lambda (x) (entropy x res)) class))))

(defmethod entropy ((class string) (res string))
  "Returns the Shannon entropy value of the data classified.
data : list of classes distribution (typically data from class-1;
res : absolute or relative;
OUT
Shannon entropie value
0 <= entropy <= (log n 2) if res = absolute;
0 <= entropy <= 1.0 if res = relative.
Cf. J. Wasemberg : L âme de la méduse, idées sur la complexité du monde,
Seuil, Paris, 1997."
  (setf class (str->symb class))
  (entropy class res))

(defun meta-class1 (matrix n iter &optional alpha? centers
			 verbose)
  "Does n iterations of class-1 algorithm.
The classes designation is normalized."
  
;  ; :menu (alpha? :alpha :num)
;  ; :menu (verbose :no :yes)
 
 (when (and (listp matrix) (not (arrayp matrix)))
    (setf matrix (l-matrix matrix)))
  (if (equalp :no verbose) (setf verbose :no) (setf verbose :yes))
  (let ((r nil) res-r)
    (dotimes (a iter (setf r (prob-class (reverse r))))
      (let ((classa (class-1 matrix n 0 centers verbose)))
	(when (equal verbose :yes)
	  (format t "~% Meta-class1 -  iteration #~S -~%" (1+ a)))
	(push classa r)))
    (setf res-r (res-class r 0))
    (if (equalp :num alpha?)
	(values res-r (mat-to-ldl (class-center matrix res-r)) (mat-to-ldl r))
	(values (to-alpha (mapcar #'1+ res-r))
		(mat-to-ldl (class-center matrix res-r))
		(mat-to-ldl r)))))


(defun normalize-class (classes)
  "reordonne les classes de class-1.
L'ordre de la classe étant le numéro de sa première occurence dans la liste des classes.
Se connecte typiquement après class-1 ou meta-class1."
  (let ((set nil) (r nil) (marker -1) (tempset nil) n)
    (when (stringp classes) (setf classes (str->symb classes)))
    (setf n (length (remove-duplicates classes)))
    (dotimes (o n) (push o tempset))
    (setf tempset (reverse tempset))
    (dotimes (c (length classes) (nreverse r))
      (cond ((equal 'nil (member (nth c classes) set))
	     (push (nth c classes) set)
	     (setf marker (1+ marker))
	     (push marker r))
	    (t (push (- (1- (length set)) (pos (nth c classes) set)) r))))))

(defun norm-class (classes)
  "reordonne les classes de class-1.
L'ordre de la classe étant le numéro de sa première occurence dans la liste des classes.
Se connecte typiquement après class-1 ou meta-class1.
IN : string or list (of symbols or lists or strings)."
  
  (if (or (stringp classes) (not (listp (car classes))))
      (normalize-class classes)
      (mapcar #'(lambda (x) (normalize-class x)) classes)))


(defun pos (item list)
  (loop for n from 0 to (1- (length list))
     when (equal (nth n list) item) do (return n)))

(defun prob-class (clusters)
  "Give the probability for each to be element of class #"
  (let ((probalities
	 (make-array (list (length (remove-duplicates (car clusters)))
			   (length (car clusters))))))
    (dolist (cl clusters
	     (const*matrix (float (/ 1 (length clusters))) probalities))
      (dotimes (n (length cl))
	(dotimes (c (length (remove-duplicates (car clusters))))
	  (when (= c (nth n cl))
	    (setf (aref probalities c n) (1+ (aref probalities c n)))))))))

(defun mat-to-ldl (mat)
  (let ((p 'nil))
    (dotimes (i (array-dimension mat 0) (reverse p))
      (let ((c 'nil))
	(dotimes (j (array-dimension mat 1) (push (reverse c) p))
	  (push (aref mat i j) c))))))

(defun p-class (clusters)
  "Give the probability for each to be element of class #"
  
  (prob-class clusters))


(defun resume-class (prob val?)
  "Affects each point i of the matrix prob to the class (j) with higher probability."
  (let ((nb-class (nth 0 (array-dimensions prob)))
	(n-pts (nth 1 (array-dimensions prob)))
	(r nil)
	p
	cl)
    (dotimes (i n-pts (nreverse r))
      (setf p 0)
      (dotimes (j nb-class)
	(when (> (aref prob j i) p) (setf p (aref prob j i)) (setf cl j)))
      (if (= val? 0) (push cl r) (push (list cl p) r)))))

(defun res-class (proba val?)
  "Affects each point i of the matrix prob to the class (j) with higher probability."
  
 ; ; :menu (val? (0 "classes") (1 "proba"))
  
(resume-class proba val?))


(defun test-entropie (clusters test out)
  (let ((entropies (mapcar #'(lambda (x) (entropy x "abs")) clusters)) e)
    (when (= 0 test) (setf e (car (sort (copy-list entropies) '<))))
    (when (= 1 test) (setf e (car (sort (copy-list entropies) '>))))
    (if (= 0 out)
	(pos2 e entropies)
	(mapcar #'(lambda (n) (nth n clusters)) (pos2 e entropies)))))

(defun e-test (clusters test &optionalout)
  "Returns the clusters which have the minimum or maximum entropy."
  
 ; ; :menu (test :min :max)
 ; ; :menu (out :clust :nth)
 
 (if (equalp :min test) (setf test 0) (setf test 1))
  (if (equalp :clust out)
      (car (remove-duplicates (test-entropie clusters test 1) :test #'equalp))
      (test-entropie clusters test 0)))


(defun pos2 (item list)
  "returns the positions of item in list."
  (let ((r nil))
    (dotimes (n (length list)) (when (equalp (nth n list) item) (push n r)))
    (reverse r)))

(defun num-rows (matrix)
  "Return the number of rows of a matrix"
  (array-dimension matrix 0))

(defun num-cols (matrix)
  "Return the number of rows of a matrix"
  (array-dimension matrix 1))

(defun make-matrix (rows &optional (cols rows))
  "Create a matrix filled with zeros.  If only one parameter is
  specified the matrix will be square."
  (make-array (list rows cols) :initial-element 0))

(defun copy-matrix (matrix)
  "Return a copy of the matrix."
  (let* ((rows (num-rows matrix))
	 (cols (num-cols matrix))
	 (copy (make-array (list rows cols))))
    (dotimes (row rows copy)
      (dotimes (col cols) (setf (aref copy row col) (aref matrix row col))))))

(defun make-identity-matrix (size)
  "Make an identity matrix of the specified size."
  (let ((matrix (make-array (list size size) :initial-element 0)))
    (dotimes (i size matrix) (setf (aref matrix i i) 1))))

(defun multiply-two-matrices (a-matrix b-matrix &key
			      (result
			       (make-array (list
					    (nth 0 (array-dimensions a-matrix))
					    (nth
					     1
					     (array-dimensions b-matrix))))))
  "given
   [1] a-matrix (required)
       ==> a 2d matrix
   [2] b-matrix (required)
       ==> another 2d matrix, with dimensions such that
	   the product of a-matrix and b-matrix is defined
   [3] result (keyword; new 2d array of appropriate size)
       <== a 2d matrix to contain product of two matrices
returns
   [1] product of two matrices (placed in result)"
  (let ((m (nth 0 (array-dimensions a-matrix)))
	(n (nth 1 (array-dimensions b-matrix)))
	(common (nth 0 (array-dimensions b-matrix))))
    (dotimes (i m result)
      (dotimes (j n)
	(setf (aref result i j) 0.0)
	(dotimes (k common)
	  (incf (aref result i j)
		(* (aref a-matrix i k) (aref b-matrix k j))))))))

(defun multiply-matrix (&rest matrices)
  "Multiply matrices"
  (labels ((multiply-two (m1 m2)
	     (let* ((rows1 (num-rows m1))
		    (cols1 (num-cols m1))
		    (cols2 (num-cols m2))
		    (result (make-matrix rows1 cols2)))
	       (dotimes (row rows1 result)
		 (dotimes (col cols2)
		   (dotimes (i cols1)
		     (setf (aref result row col)
			   (+ (aref result row col)
			      (* (aref m1 row i) (aref m2 i col))))))))))
    (when matrices (reduce #'multiply-two matrices))))

(defun transpose (a-matrix &key
		  (result (make-array (reverse (array-dimensions a-matrix)))))
  "given
   [1] A (required)
       ==> a 2d matrix
   [2] result (keyword; new 2d array of appropriate size)
       <== a 2d matrix to contain transpose of a-matrix
returns
   [1] transpose of a-matrix (placed in result)"
  (let ((list-of-two-integers (array-dimensions a-matrix)))
    (dotimes (i (nth 0 list-of-two-integers) result)
      (dotimes (j (nth 1 list-of-two-integers))
	(setf (aref result j i) (aref a-matrix i j))))))

(defun trace-matrix (a-matrix)
  "given a square matrix,
returns its trace"
  (let ((m (nth 0 (array-dimensions a-matrix)))
	(n (nth 1 (array-dimensions a-matrix))))
    (assert (= m n))
    (let ((sum 0.0)) (dotimes (i m sum) (incf sum (aref a-matrix i i))))))

(defun invert-matrix (matrix &optional (destructive t))
  "Find the inverse of a matrix.  By default this operation is
  destructive.  If you want to preserve the original matrix, call this
  function with an argument of NIL to destructive."
  (let ((result (if destructive matrix (copy-matrix matrix)))
	(size (num-rows matrix))
	(temp 0))
    (dotimes (i size result)
      (setf temp (aref result i i))
      (dotimes (j size)
	(setf (aref result i j)
	      (if (= i j) (/ (aref result i j)) (/ (aref result i j) temp))))
      (dotimes (j size)
	(unless (= i j)
	  (setf temp (aref result j i) (aref result j i) 0)
	  (dotimes (k size)
	    (setf (aref result j k)
		  (- (aref result j k) (* temp (aref result i k))))))))))

(defun const*matrix (const matrix)
  (let ((m (nth 0 (array-dimensions matrix)))
	(n (nth 1 (array-dimensions matrix)))
	result)
    (setq result (make-array (list m n)))
    (dotimes (o m result)
      (dotimes (p n) (setf (aref result o p) (* const (aref matrix o p)))))))

(defun subtract-two-matrices (a-matrix b-matrix &key
			      (result
			       (make-array (array-dimensions a-matrix))))
  "given
   [1] a-matrix (required)
       ==> a 2d matrix
   [2] b-matrix (required)
       ==> a 2d matrix, with dimensions the same
	   as a-matrix
   [3] result (keyword; new vector of appropriate size)
       <== a matrix to contain result of subtracting
	   b-matrix from a-matrix
returns
   [1] a-matrix minus b-matrix (placed in result)"
  (let ((m (nth 0 (array-dimensions a-matrix)))
	(n (nth 1 (array-dimensions a-matrix))))
    (dotimes (i m result)
      (dotimes (j n)
	(setf (aref result i j) (- (aref a-matrix i j) (aref b-matrix i j)))))))

(defun multiply-matrix-and-vector (a-matrix b-vector &key
				   (result
				    (make-array (nth
						 0
						 (array-dimensions
						  a-matrix)))))
  "given
   [1] a-matrix (required)
       ==> a 2d matrix
   [2] b-vector (required)
       ==> a vector, with dimensions such that
	   the product of a-matrix and b-vector is defined
   [3] result (keyword; new vector of appropriate size)
       <== a vector to contain product of a-matrix and b-vector
returns
   [1] product of a-matrix and b-vector (placed in result)"
  (let ((m (nth 0 (array-dimensions a-matrix))) (n (length b-vector)))
    (dotimes (i m result)
      (setf (aref result i) 0.0)
      (dotimes (j n)
	(incf (aref result i) (* (aref a-matrix i j) (aref b-vector j)))))))

(defun sig (x) (cond ((= 0 x) 0) ((plusp x) 1) (t -1)))

(defun dx (list)
  (let ((r 'nil))
    (dotimes (n (1- (length list)) (reverse r))
      (push (- (nth (1+ n) list) (nth n list)) r))))

(defun derivees-locales (list) (mapcar #'sig (dx list)))

(defun match-prim (list)
  (let ((new-list (ptrn-smooth list)))
    (cond ((or (equalp (list 1 0 -1) new-list) (equalp (list 1 -1) new-list))
	   "max")
	  ((or (equalp (list -1 0 1) new-list) (equalp (list -1 1) new-list))
	   "min")
	  ((equalp (list -1 0 -1) new-list) "flex")
	  ((equalp (list 1 0 1) new-list) "flex")
	  ((equalp (list 0 -1 0) new-list) "sig-")
	  ((equalp (list 0 1 0) new-list) "sig+")
	  (t nil))))

(defun find-primitives (list)
  (let ((derivees (derivees-locales list)) (r 'nil))
    (loop for i from 0
       until (> (+ 2 i) (length derivees))
       do (let ((seq 'nil))
	    (loop for j from 0 to (- (length derivees) i 1)
	       until (stringp (match-prim seq))
	       do (setf seq (append seq (list (nth (+ i j) derivees))))
	       finally (return (push (list
				      i
				      (+ i (1- j))
				      (match-prim seq))
				     r)))))
    (setf r
	  (mapcar #'(lambda (x)
		      (list (third x)
			    (second x)
			    (abs (- (car x) (cadr x)))))
		  (remove nil r :key #'third)))
    (reverse (remove-duplicates r :key #'cadr))))

(defun min-flex-max (seq result &optional d-cte)
  "analyse une sequence en detectant trois formes primitives:
minima: element précédé et suivi par un élément
de valeur plus grande.
maxima: element précédé et suivi par un élément
de valeur plus petite
flex: element précédé et suivi par un élément
de valeur égale

ex : (10 8 8 6 6 5 2 2 2 1)
OM->(pure-flex- (8 2) (6 2) (2 3))
le premier chiffre indique la valeur répétée
 et le deuxième terme de la liste indique son nombre d'occurrences.
la deuxième entrée est un menu WHICH qui permet de selectionner
 les informations:
prim: succession des primitives
prof: succession des primitives et profondeur en nombre d'éléments de
chaque primitive
vals: idem que prof + valeur correspondant à chaque primitive
every:  idem que vals + position de chaque primitive"
  
 ; ; :menu (result :prim :prof :vals :every)
 
 (let ((primitives (find-primitives seq)))
    (case result
      (:prim (mapcar #'first primitives))
      (:prof
       (mapcar #'(lambda (p)
		   (list (first p)
			 (abs (- (nth (second p) seq)
				 (nth (- (second p) (third p)) seq)))))
	       primitives))
      (:vals
       (mapcar #'(lambda (p) (list (first p) (nth (second p) seq) (third p)))
	       primitives))
      (:every
       (mapcar #'(lambda (p)
		   (list (first p) (third p) (nth (second p) seq) (second p)))
	       primitives))
      (otherwise (error "Got ~s, was expecting one of 1, 2, 3, 4." result)))))


(defun 1-0-1-reconst (list)
  "fonction dx->x d'OM :
renvoie une liste de points depuis une liste
 d'intervalles . commence à zero"
  
  (pw::dx->x 0 list))


(defun reconst-prim (list start)
  
  "est la fonction OM dx->x"
  (let ((ris start) prim prof last)
    (when (stringp (car list))
      (setf prof 1)
      (dolist (l list (reverse ris))
	(cond ((equalp l "min") (setf prim '-))
	      ((equalp l "max") (setf prim '+)))
	(dotimes (n prof)
	  (if (equalp l "flex")
	      (setf ris (append (list (car ris) (car ris)) ris))
	      (and (and (setf last (car ris))
			(push (apply prim (list last 1)) ris))
		   (dotimes (n prof)
		     (setf last (car ris))
		     (push (apply prim (list last -1)) ris)))))))))


(defun reconstitute (list which start)
  "reconstitue le profil original.
avec optionnels:
prim : n'utilise que l'analyse primitive
prof : utilise l'analyse primitive et la profondeur.
vals : utilise l'analyse primitive, la profondeur et la valeur.
every : utilise l'analyse primitive, la profondeur, la valeur et la position "
  
 ; ; :menu (which (1 "prim") (2 "prof") (3 "vals") (4 "every"))
 
 (case which
    (1
     (cond ((not (atom (car list)))
	    (format t
		    "~%ERROR !! different number of elements in the input list !!")
	    (abort))
	   ((reconst-prim list (pw::LIST! start)))))
    (2
     (cond ((or (atom (car list)) (not (equalp (length (car list)) 2)))
	    (format t
		    "~%ERROR !! different number of elements in the input list !!")
	    (abort))
	   ((reconst-prim+prof list))))
    (3
     (cond ((or (atom (car list)) (not (equalp (length (car list)) 3)))
	    (format t
		    "~%ERROR !! different number of elements in the input list !!")
	    (abort))
	   ((reconst-prim+prof+val list start))))
    (4
     (cond ((or (atom (car list)) (not (equalp (length (car list)) 4)))
	    (format t
		    "~%ERROR !! different number of elements in the input list !!")
	    (abort))
	   ((pos+prim+prof+val list start))))
    (otherwise (error "Got ~s, was expecting one of 1, 2, 3, 4." which))))


(defun reconst-prim+prof (list)
  "Ricostruisce la lista usando min, max, flex
	     più eventualmente l'indice di profondità"
  
  (let ((ris nil) (start 0))
    (dolist (y list
	     (pw::flat
	      (if (equalp "flex" (first (first list)))
		  (nreverse ris)
		  (cons start (nreverse ris)))))
      (push (cond ((equalp (first y) "min")
		   (rest (pw::x-append
			  (pw::arithm-ser start -1 (* -1 (second y)))
			  (rest (pw::arithm-ser (* -1 (second y)) 
						       1 start)))))
		  ((equalp (first y) "max")
		   (rest (pw::x-append
			  (pw::arithm-ser start  1 (second y))
			  (rest (pw::arithm-ser (second y) -1 start)))))
		  ((equalp (first y) "flex")
		   (make-list (second y) :initial-element start)))
	    ris))))


(defun rec-st-2 (struct |N°| &optional seq)
  (let* ((rs (nth |N°| struct))
	 (risultato
	  (mapcar #'(lambda (x) (pw::flat (nth x (cadr rs))))
		  (mapcar #'1- (cadar rs)))))
    (if seq
	(mapcar #'(lambda (x) (nth x seq)) (pw::flat risultato))
	(pw::flat risultato))))

(defmethod struct2-to-seq ((struct list) (n integer) &optional ptrns)
  "Reconstruit une séquence correspondant à la structure donnée en struct.
	   Optional : reconstruit une séquence de même structure avec les patterns
		      donnés en ptrns."
  (rec-st-2 struct n ptrns))

(defmethod struct2-to-seq ((struct list) (n list) &optional ptrns)
  "Reconstruit une séquence correspondant à la structure donnée en struct.
	   Optional : reconstruit une séquence de même structure avec les patterns
		      donnés en ptrns."
  (mapcar #'(lambda (i) (rec-st-2 struct i ptrns)) n))

(defun reconst-prim+prof+val (list start)
  "Ricostruisce la lista usando min, max, flex
	     più eventualmente l'indice di profondità"
  
  (let ((ris nil))
    (dotimes (x (length list) (pw::flat (nreverse ris)))
      (push (cond ((equalp (first (nth x list)) "max")
		   (pw::x-append
		    (arithm-ser2 start
				 (* -1
				    (/ (- start (second (nth x list))) (third (nth x list))))
				 (third (nth x list)))
		    (arithm-ser2 (second (nth x list))
				 (/ (- start (second (nth x list))) (third (nth x list)))
				 (third (nth x list)))))
		  ((equalp (first (nth x list)) "min")
		   (pw::x-append
		    (arithm-ser2 start
				 (* -1
				    (/ (- start (second (nth x list))) (third (nth x list))))
				 (third (nth x list)))
		    (arithm-ser2 (second (nth x list))
				 (/ (- start (second (nth x list))) (third (nth x list)))
				 (third (nth x list)))))
		  ((equalp (first (nth x list)) "flex")
		   (make-list (third (nth x list))
			      :initial-element (second (nth x list)))))
	    ris))))


(defun pos+prim+prof+val (list start)
  "Ricostruisce la lista usando min, max, flex
	     più eventualmente l'indice di profondità"
  
  (let ((ris nil) (valore nil))
    (dotimes (x (length list)
	      (pw::flat (pw::x-append (nreverse ris) start)))
      (cond ((and (and (equalp (second (nth x list)) "min") (= x 0))
		  (< start (third (nth x list))))
	     (format t
		     "~%ERROR !! bad starting point because your min is higher than start!!")
	     (abort))
	    ((and (and (equalp (second (nth x list)) "max") (= x 0))
		  (> start (third (nth x list))))
	     (format t
		     "~%ERROR !! bad starting point because your max is lower than start!!")
	     (abort))
	    ((and (equalp (second (nth x list)) "min") (= x 0))
	     (setf valore
		   (pw::x-append
		    (arithm-ser2 start
				 (* -1.0
				    (abs (pw::om-round
					  (/ (- (third (nth 0 list)) start)
					     (fourth (nth 0 list))))))
				 (fourth (nth 0 list)))
		    (third (nth x list))))
	     (push valore ris))
	    ((and (equalp (second (nth x list)) "max") (= x 0))
	     (setf valore
		   (pw::x-append
		    (arithm-ser2 start
				 (* 1.0
				    (abs (pw::om-round
					  (/ (- (third (nth 0 list)) start)
					     (fourth (nth 0 list))))))
				 (fourth (nth 0 list)))
		    (third (nth x list))))
	     (push valore ris))
	    ((equalp (second (nth x list)) "min")
	     (setf valore
		   (pw::x-append
		    (rest (arithm-ser2 (first (last valore))
				       (* -1.0
					  (abs (pw::om-round
						(/ (- (third (nth x list))
						      (third (nth (- x 1) list)))
						   (- (first (nth x list))
						      (first (nth (- x 1) list)))))))
				       (if (equalp (second (nth (- x 1) list)) "flex")
					   (- (first (nth x list))
					      (+ (fourth (nth (- x 1) list))
						 (first (nth (- x 1) list))))
					   (- (first (nth x list))
					      (first (nth (- x 1) list))))))
		    (third (nth x list))))
	     (push valore ris))
	    ((equalp (second (nth x list)) "max")
	     (setf valore
		   (pw::x-append
		    (rest (arithm-ser2 (first (last valore))
				       (* 1.0
					  (abs (pw::om-round
						(/ (- (third (nth x list))
						      (third (nth (- x 1) list)))
						   (- (first (nth x list))
						      (first (nth (- x 1) list)))))))
				       (if (equalp (second (nth (- x 1) list)) "flex")
					   (- (first (nth x list))
					      (+ (fourth (nth (- x 1) list))
						 (first (nth (- x 1) list))))
					   (- (first (nth x list))
					      (first (nth (- x 1) list))))))
		    (third (nth x list))))
	     (push valore ris))
	    ((equalp (second (nth x list)) "flex")
	     (setf valore
		   (make-list (fourth (nth x list))
			      :initial-element (third (nth x list))))
	     (push valore ris))))))


(defun controlla-ottave (list1 list2 modul)
  "studia i casi particolari della melodia in questione se questa
	     è trasposta più o meno esattamente"
  
  (let* ((ris nil)
	 (ros nil)
	 (ottave1 (pw::om-floor (pw::om-floor list1 1200) modul))
	 (ottave2 (pw::om-floor (pw::om-floor list2 1200) modul))
	 (studio
	  (dotimes (x (length ottave1) (nreverse ris))
	    (push (- (nth x ottave1) (nth x ottave2)) ris))))
    (dotimes (x (- (length studio) 1)
	      (if (not (equalp (first list1) (first list2)))
		  (+ 1 (apply '+ (nreverse ros)))
		  (apply '+ (nreverse ros))))
      (if (not (equalp (nth x studio) (nth (+ 1 x) studio))) (push 1 ros)))))


(defun controlla-direzioni (list1 list2)
  "Studia gli intervalli di due liste e ne fa una analisi"
  
  (let ((ris nil)
	(direzioni1 (direct-analysis list1))
	(direzioni2 (direct-analysis list2)))
    (dotimes (x (length direzioni1) (apply '+ (nreverse ris)))
      (when (not (equalp (nth x direzioni1) (nth x direzioni2))) (push 1 ris)))))


(defun controlla-intervalli (list1 list2)
  "Studia gli intervalli di due liste e ne fa una analisi"
  
  (let ((ris nil)
	(intervalli1 (pw::x->dx list1))
	(intervalli2 (pw::x->dx list2)))
    (dotimes (x (length intervalli1) (apply '+ (nreverse ris)))
      (when (not (equalp (nth x intervalli1) (nth x intervalli2)))
	(push 1 ris)))))


(defun controlla-rapporti (list1 list2)
  "Verifica se le due liste sono identiche nei rapporti
	     interni con una approssimazione di due decimali."
  
  (let* ((ris nil)
	 (ros nil)
	 (rapporto1
	  (dotimes (x (- (length list1) 1) (nreverse ris))
	    (push (pw::om-round
		   (/ (abs (nth (+ 1 x) list1)) (abs (nth x list1))) 2)
		  ris)))
	 (rapporto2
	  (dotimes (k (- (length list2) 1) (nreverse ros))
	    (push (pw::om-round
		   (/ (abs (nth (+ 1 k) list2)) (abs (nth k list2))) 2)
		  ros))))
    (if (equalp rapporto1 rapporto2) 'ok 'no)))


(defun duration-case (list1 list2)
  ""
  
  (let ((ris nil))
    (when (equalp (length list1) (length list2))
      (if (equalp (controlla-rapporti list1 list2) 'ok)
	  (dotimes (x (length list1) (apply '+ (nreverse ris)))
	    (if (not (equalp (signum (nth x list1)) (signum (nth x list2))))
		(push 1 ris)))))))


(defun intensity-case (list1 list2)
  "Verifica se le due liste sono identiche nei rapporti
	     interni con una approssimazione di due decimali."
  
  (let* ((ris nil)
	 (ros nil)
	 (rus nil)
	 (rapporto1
	  (dotimes (x (- (length list1) 1) (nreverse ris))
	    (push (pw::om-round
		   (/ (abs (nth (+ 1 x) list1)) (abs (nth x list1))) 2)
		  ris)))
	 (rapporto2
	  (dotimes (k (- (length list2) 1) (nreverse ros))
	    (push (pw::om-round
		   (/ (abs (nth (+ 1 k) list2)) (abs (nth k list2))) 2)
		  ros))))
    (if (equalp rapporto1 rapporto2) (push 1 rus))))


(defun mini (l) "Returns the minimum value of a list" (car (sort l '<)))

(defun dist-1-ldl (seq1 seq2 change ins/sup
			wgth)
  ""
  
  (cond ((not (equalp (length (car seq1)) (length (car seq2))))
	 (format t
		 "~%ERROR !! different number of parameters in the two lists !!")
	 (abort)))
  (let* ((ris 0)
	 (matrix1 (pw::MAT-TRANS seq1))
	 (matrix2 (pw::MAT-TRANS seq2))
	 (wgth
	  (cond ((not (equalp (length wgth) (length (car seq1))))
		 (format t
			 "~%WARNING : bad definition of wgth; setting all weigths to the first of wgth list...~%Look at the documentation.")
		 (make-list (length (car seq1)) :initial-element (car wgth)))
		(t wgth))))
    (setf wgth (pw::g-scaling/sum wgth 1.0))
    (dotimes (x (length matrix1) (sqrt ris))
      (setf ris
	    (+ ris
	       (* (nth x wgth)
		  (expt (dist-1 (nth x matrix1) (nth x matrix2) change ins/sup 1)
			2)))))))


(defun dist-2-ldl (seq1 seq2 change ins/sup inex
			wgth)
  ""
  
  (cond ((not (equalp (length (car seq1)) (length (car seq2))))
	 (format t
		 "~%ERROR !! different number of parameters in the two lists !!")
	 (abort)))
  (let* ((ris 0)
	 (matrix1 (pw::MAT-TRANS seq1))
	 (matrix2 (pw::MAT-TRANS seq2))
	 (wgth
	  (cond ((not (equalp (length wgth) (length (car seq1))))
		 (format t
			 "~%WARNING : bad definition of wgth; setting all weigths to the first of wgth list...~%Look at the documentation.")
		 (make-list (length (car seq1)) :initial-element (car wgth)))
		(t wgth))))
    (setf wgth (pw::g-scaling/sum wgth 1.0))
    (dotimes (x (length matrix1) (sqrt ris))
      (setf ris
	    (+ ris
	       (* (nth x wgth)
		  (expt (dist-2 (nth x matrix1) (nth x matrix2) change ins/sup
				inex 1)
			2)))))))


(defun dist-1 (seq1 seq2 change ins/sup scale)
  "Returns the smallest distance between two lists of symbols seq1 and seq2
	     Args :
	    change = cost when changing a symbol in a list without deletion or insertion
	    ins/sup = cost for a deletion or insertion
	     &optional = scale of the distance, absolute or relative.
	     The relative distance is expressed in percent of the longer list"
  
;  ; :menu (scale (1 "relative") (2 "absolute"))
 
 (let ((matcouts nil) d d1 d2 d3 c c1)
    (dotimes (j (+ (length seq2) 1))
      (dotimes (i (+ (length seq1) 1))
	(setf d (+ i (* j (+ (length seq1) 1))))
	(cond ((and (> i 0) (> j 0))
	       (if (eq (nth (- i 1) seq1) (nth (- j 1) seq2))
		   (setf c1 0)
		   (setf c1 change))
	       (setf d1 (nth (+ 1 (length seq1)) matcouts))
	       (setf d2 (nth (length seq1) matcouts))
	       (setf d3 (nth 0 matcouts))
	       (setf c (mini (list (+ c1 d1) (+ ins/sup d2) (+ ins/sup d3))))
	       (push c matcouts))
	      (t
	       (if (and (eq i 0) (eq j 0)) (setf c1 0) (setf c1 ins/sup))
	       (cond ((and (eq i 0) (> j 0))
		      (setf d (nth (length seq1) matcouts))
		      (setf c (+ c1 d))
		      (push c matcouts))
		     ((and (> i 0) (eq j 0))
		      (setf d (nth 0 matcouts))
		      (setf c (+ c1 d))
		      (push c matcouts))
		     (t (push '0 matcouts) (setf c '0)))))))
    (cond ((or (eq scale 2) (eq scale nil)) (car matcouts))
	  ((eq scale 1)
	   (cond ((>= (length seq1) (length seq2))
		  (* 100 (float (/ (car matcouts) (length seq1)))))
		 (t (* 100 (float (/ (car matcouts) (length seq2)))))))
	  (t
	   (format t "~% ERROR : argument scale: ~S does not exist" scale)
	   (format t "~% try arguments 'relative or 'absolute")))))


(defun dist-2 (seq1 seq2 change ins/sup inex
		    scale)
  "Returns the smallest distance between two lists of symbols seq1 and seq2
	     Args :
	     change = cost when changing a symbol in a list without deletion or insertion
	     ins/sup = cost for a deletion or insertion
	     inex = added cost if the change is applied on an element which doesn't exist on
	     the other list
	     &optional = scale of the distance, absolute or relative.
	     The relative distance is expressed in percent of the longer list"
  
;  ; :menu (scale (1 "relative") (2 "absolute"))
 
 (let ((matcouts nil) d d1 d2 d3 c c1 ex ey)
    (dotimes (j (+ (length seq2) 1))
      (dotimes (i (+ (length seq1) 1))
	(setf d (+ i (* j (+ (length seq1) 1))))
	(cond ((and (> i 0) (> j 0))
	       (if (eq (member (nth (- i 1) seq1) seq2) nil)
		   (setf ex 1)
		   (setf ex 0))
	       (if (eq (member (nth (- j 1) seq2) seq1) nil)
		   (setf ey 1)
		   (setf ey 0))
	       (if (eq (nth (- i 1) seq1) (nth (- j 1) seq2))
		   (setf c1 0)
		   (setf c1 (+ change (* (+ ex ey) inex))))
	       (setf d1 (nth (+ 1 (length seq1)) matcouts))
	       (setf d2 (nth (length seq1) matcouts))
	       (setf d3 (nth 0 matcouts))
	       (setf c
		     (mini
		      (list (+ c1 d1)
			    (+ ins/sup (* ey inex) d2)
			    (+ ins/sup (* ex inex) d3))))
	       (push c matcouts))
	      (t
	       (if (and (eq i 0) (eq j 0)) (setf c1 0) (setf c1 ins/sup))
	       (cond ((and (eq i 0) (> j 0))
		      (if (eq (member (nth (- j 1) seq2) seq1) nil)
			  (setf ey 1)
			  (setf ey 0))
		      (setf d (nth (length seq1) matcouts))
		      (setf c (+ c1 d (* ey inex)))
		      (push c matcouts))
		     ((and (> i 0) (eq j 0))
		      (if (eq (member (nth (- i 1) seq1) seq2) nil)
			  (setf ex 1)
			  (setf ex 0))
		      (setf d (nth 0 matcouts))
		      (setf c (+ c1 d (* ex inex)))
		      (push c matcouts))
		     (t (push '0 matcouts) (setf c '0)))))))
    (cond ((or (eq scale 2) (eq scale nil)) (car matcouts))
	  ((eq scale 1)
	   (cond ((>= (length seq1) (length seq2))
		  (* 100
		     (float (/ (* (car matcouts) (+ ins/sup inex))
			       (length seq1)))))
		 (t
		  (* 100
		     (float (/ (* (car matcouts) (+ ins/sup inex))
			       (length seq2)))))))
	  (t
	   (format t "~% ERROR : argument dist: ~S does not exist" scale)
	   (format t "~% try arguments : 'relative or 'absolute")))))


(defun distance (seq1 seq2 change
		      ins/sup scale &optional inex)
  "Returns the smallest distance between two lists of symbols seq1 and seq2
	     Args :
	     change = cost when changing a symbol in a list without deletion or insertion
	     ins/sup = cost for a deletion or insertion
	     inex = added cost if the change is applied on an element which doesn't exist on
	     the other list
	     &optional = scale of the distance, absolute or relative.
	     The relative distance is expressed in percent of the longer list"
  
;;;; :menu (scale (1 "relative") (2 "absolute")) 
;;;; the value to specify in lisp is the index, not the string
  
 (if inex
      (dist-2 seq1 seq2 change ins/sup inex scale)
      (dist-1 seq1 seq2 change ins/sup scale)))


(defun multi-distance (seq1 seq2 change ins/sup
			    wgth &optional inex)
  "Applique la distance d'édition à une liste
 de séquences avec une pondération (entre 0 et 1)
 pour chaque élément (ou position) des listes."
  
  (if inex
      (dist-2-ldl seq1 seq2 change ins/sup inex wgth)
      (dist-1-ldl seq1 seq2 change ins/sup wgth)))


(defmethod resemblance-match ((a symbol) (b symbol)) (if (equalp a b) 1 0))

(defmethod resemblance-match ((a number) (b number)) (if (= a b) 1 0))

(defmethod resemblance-match ((a symbol) (b list))
  (mapcar #'(lambda (x) (resemblance-match a x)) b))

(defmethod resemblance-match ((a list) (b symbol))
  (mapcar #'(lambda (x) (resemblance-match x b)) a))

(defmethod resemblance-match ((a list) (b list))
  (mapcar #'(lambda (x) (mapcar #'(lambda (y) (resemblance-match x y)) b)) a))

(defun ref-position (list)
  (mapcar #'(lambda (e) (position e list :test #'equalp)) list))


(defmethod resemblance ((a list) (b list) (wocc float) (wref float) &optional
			diff)
  "Calcule une valeur de ressemblance entre 0 et 100 entre deux séquences
de symboles selon le critère de leur structure interne.
Wocc : poids de la structure d'occurence;
Wref : poids de la structure de repetition."
  (let* ((ma (resemblance-match a a))
	 (mb (resemblance-match b b))
	 (occ-a (mapcar #'(lambda (x) (apply #'+ x)) ma))
	 (occ-b (mapcar #'(lambda (x) (apply #'+ x)) mb))
	 (ref-a (ref-position a))
	 (ref-b (ref-position b)))
    (if (equalp :diss diff)
	(multi-distance (mapcar #'(lambda (x y) (list x y)) occ-a ref-a)
			(mapcar #'(lambda (x y) (list x y)) occ-b ref-b) 1 1 (list wocc wref))
	(- 100.0
	   (multi-distance (mapcar #'(lambda (x y) (list x y)) occ-a ref-a)
			   (mapcar #'(lambda (x y) (list x y)) occ-b ref-b) 1 1
			   (list wocc wref))))))

(defmethod resemblance ((a list) (b null) (wocc float) (wref float) &optional
			diff)
  (let ((r 'nil))
    (dotimes (i (length a) (reverse r))
      (dotimes (j (- (length a) (1+ i)))
	(push (list (nth i a)
		    (nth (+ i j 1) a)
		    (resemblance (nth i a) (nth (+ i j 1) a) 1.0 1.0 diff))
	      r)))))

(defmethod resemblance ((a list) (b list) (wocc null) (wref null) &optional
			diff)
  (resemblance a b 1.0 1.0 diff))

(defmethod resemblance ((a null) (b null) (wocc null) (wref null) &optional
			diff)
  nil)

(defun med-fix (lista)
  "Restitusce la derivata data dalla media tra una nota e la successiva."
  (let ((ris nil))
    (dotimes (x (- (length lista) 1) (nreverse ris))
      (push (/ (+ (nth x lista) (nth (1+ x) lista)) 2) ris))))

(defun mean-derivation (list GR &optional note?)
  ""
  
  (let* ((calcolo
	  (if (= 1 GR)
	      (med-fix list)
	      (mean-derivation (med-fix list) (- GR 1) note?)))
	 (con-note (when note? (notes-change calcolo note? 48))))
    (if note? con-note calcolo)))


(defun der (lista n)
  "Crea la media tra una lista di valori diviso n"
  
  (let ((ris nil))
    (dotimes (x (length (scom lista n)) (nreverse ris))
      (push (remove nil (nth x (scom lista n))) ris))))


(defun med-var (lista windw)
  "Restituisce la derivata data dalla media delle note decise in n."
  
  (let ((ris nil) (calcolo (der lista windw)))
    (dotimes (x (- (length calcolo) 1) (nreverse ris))
      (push (/ (apply '+ (nth x calcolo)) (length (nth x calcolo))) ris))))


(defun variable-derivation (lista windw GR)
  "Restituisce le dirivate variabili successive secondo il valore
	     scelto in GRADO. N rappresenta il valore con cui effettuare la media."
  
  (if (= 1 GR)
      (med-var lista windw)
      (variable-derivation (med-var lista windw) (- GR 1) windw)))


(defun notes-change (pits scale &optional mod)
  "Cambia un p^rofilo con le note messe in scale."
  
  (let* ((pits (pw::LIST! pits))
	 (scale (pw::LIST! scale))
	 (modsca
	  (pw::om-floor
	   (pw::SORT-LIST
	    (remove-duplicates
	     (pw::om-floor (pw::om/ scale (/ 100 (/ mod 12)))
				 mod)))))
	 (pitmods
	  (pw::om-floor (pw::om/ pits (/ 100 (/ mod 12))) mod))
	 (octa (octave pits))
	 (posdifs
	  (mapcar #'(lambda (p)
		      (position (g-min
				 (pw::om-abs
				  (pw::om- modsca p)))
				(pw::om-abs
				 (pw::om- modsca p))))
		  pitmods)))
    (mapcar #'(lambda (index octave) (makenote index octave mod))
	    (pw::posn-match modsca posdifs)
	    octa)))


(defun octave (midic)
  "retourne l'octave à partir de c3=octave 3"
  
  (let ((midic (pw::LIST! midic)))
    (mapcar #'(lambda (x) (pw::om- (pw::om-floor x 1200) 2))
	    midic)))


(defun makenote (index octave &optional mod)
  " construction d'une note à partir des données
	     de index, octave e modulo du index"
  
  (+ (/ (* index 100 12) mod) (* (+ 2 octave) 1200)))


(defun lettura-modulare (lista1 lista2)
  "Se la prima lista è più grande della seconda lista, allora legge
	     modularmente la seconda lista restituendo un length uguale al length
	     di lista1."
  (let ((ros nil))
    (dotimes (y (length lista1) (nreverse ros))
      (push (if (< (length lista2) (length lista1))
		(nth (mod y (length lista2)) lista2)
		(nth y lista2))
	    ros))))

(defun inter-profile (list1 list2)
  "Prepara interlock : non mi ricordo cosa fa esattamente."
  
  (let ((ris nil) (y (lettura-modulare list1 list2)))
    (pw::flat
     (append (dotimes (x (1- (length list1)) (nreverse ris))
	       (push (pw::MAT-TRANS (list
				 (list (nth x list1))
				 (list
				  (trans-approx
				   (list (nth x y))
				   (list
				    (nth x list1)
				    (nth (1+ x) list1))))))
		     ris))
	     (last list1)))))


(defun prof-inter (list1 list2 total)
  "Restituisce l'interposizione di list1 con list2. Se list1 è più piccola
	     di list2 allora la funzione crea un'interposizione di n elementi di list2
	     dove (= n (- (length list1) 1)). In questo caso si puo' decidere con il
	     menù se avere la prima ricorsione per completare list2."
  
  ; :menu (total (1 "ltd") (2 "copl"))
  (case total
    (1 (inter-profile list1 list2))
    (2
     (inter-profile (inter-profile list1 list2)
		    (permut-circ list2 (1- (length list1)))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." total))))


(defun interlock (list1 list2 GR)
  "Interpone una lista2 alla lista1 e prende
	     aleatoriamente le note della lista2"
  
  (if (= GR 1)
      (inter-profile list1 (pw::permut-random list2))
      (interlock (inter-profile list1 (pw::permut-random list2))
		 (permut-circ list2 (1- (length list1))) (- GR 1))))


(defun new-inter-profile (list1 list2)
  "Prepara interlock : non mi ricordo cosa fa esattamente."
  
  (let ((ris nil) (y (lettura-modulare list1 list2)))
    (pw::flat
     (append (dotimes (x (1- (length list1)) (nreverse ris))
	       (push (pw::MAT-TRANS (list
				 (list (nth x list1))
				 (list
				  (pw::om+
				   (pw::nth-random
				    (list 1200 0 -1200))
				   (trans-approx
				    (list (nth x y))
				    (list
				     (nth x list1)
				     (nth (1+ x) list1)))))))
		     ris))
	     (last list1)))))


(defun new-interlock (list1 list2 GR)
  "Interpone una lista2 alla lista1 e prende
	     aleatoriamente le note della lista2"
  
  (if (= GR 1)
      (new-inter-profile list1 (pw::permut-random list2))
      (new-interlock (new-inter-profile list1 (pw::permut-random list2))
		     (permut-circ list2 (1- (length list1))) (- GR 1))))


(defun int-com-ottava (lista)
  "Restituisce l'intervallo complementare ad ull'intervallo in 'lista'
   ma all'interno di un'ottava."
  (let ((ris nil))
    (pw::flat
     (dotimes (x (- (length lista) 1) (nreverse ris))
       (push (pw::x->dx
	      (append (list (nth x lista))
		      (list (- (nth x lista)
			       (* (- 12
				     (mod (/
					   (-
					    (first (pw::x->dx lista))
					    (*
					     (first
					      (pw::om-floor
					       (pw::x->dx lista)
					       1200))
					     1200))
					   100)
					  12))
				  100)))))
	     ris)))))

(defun mio-transpoct (list range)
  "Restituisce lo stesso risultato di 'transpoct' della libreria Esquisse"
  (let ((ris nil))
    (dolist (y list (nreverse ris))
      (push (cond ((< y (g-min range))
		   (+ (g-min range)
		      (+ 1200
			 (first (int-com-ottava (list (g-min range) y))))))
		  ((> y (g-max range))
		   (+ (g-max range)
		      (first (int-com-ottava (list (g-max range) y)))))
		  (y))
	    ris))))

(defun correttore (elmt range)
  "Restituisce un elemento se questo compare all'interno del range.
	   Se l'elemento è escluso allora lo traspone in modo tale che sia
	   il più vicino possibile o al limite superiore o a quello inferiore.
	   Se il limite è DO-SOL allora Mi viene incluso, SI viene trasposto
	   sotto il DO e il SOL# viene trasposto sopra il SOL."
  
  (let ((max (g-max range)) (min (g-min range)))
    (cond ((<= (g-min range) elmt max) elmt)
	  ((cond ((< elmt min)
		  (cond ((<= (- min elmt) (- (+ 1200 elmt) max)) elmt)
			((> (- min elmt) (- (+ 1200 elmt) max)) (+ 1200 elmt))))
		 ((> elmt max)
		  (cond ((<= (- elmt max) (- min (- elmt 1200))) elmt)
			((> (- elmt max) (- min (- elmt 1200)))
			 (- elmt 1200)))))))))


(defun cor-ott-list (elmt range)
  "Restituisce un elemento se questo compare all'interno del range.
	   Se l'elemento è escluso allora lo traspone in modo tale che sia
	   il più vicino possibile o al limite superiore o a quello inferiore.
	   Se il limite è DO-SOL allora Mi viene incluso, SI viene trasposto
	   sotto il DO e il SOL# viene trasposto sopra il SOL.La differenza
	   con 'CORRETTORE' è che questo modulo agisce su una lista intera."
  (let ((ris nil))
    (dolist (y elmt) (push (correttore y range) ris))
    (nreverse ris)))

(defun trans-approx (list range)
  "E' meglio di transpoct di Esquisse. Infatti attua lo stesso
	     procedimento ma traspone una nota non inclusa nel range il più
	     vicino o al limite superiore o a quello inferiore."
  
  (cor-ott-list (mio-transpoct list range) range))


(defun direct-analysis (list)
  "donne le signe de la dérivée locale (-1. 0 +1) pour chaque point de la liste
des valeurs données en entrée."
  
  (let ((ris nil))
    (dotimes (x (length (pw::x->dx list)) (nreverse ris))
      (cond ((> (nth x (pw::x->dx list)) 0) (push '1 ris))
	    ((< (nth x (pw::x->dx list)) 0) (push '-1 ris))
	    ((= (nth x (pw::x->dx list)) 0) (push '0 ris))))))


(defun int-com (lista)
  "Restituisce l'intervallo complementare di un intervallo dato in funzione della
   prima nota dell'intervallo stesso. Questo significa che se ho SOL3 DO4, la
   funzione restituisce do4 sol4."
  (let ((ris nil))
    (pw::flat
     (dotimes (x (- (length lista) 1) (nreverse ris))
       (push (pw::x->dx
	      (append (list (nth x lista))
		      (list (- (- (nth x lista)
				  (* (- 12
					(mod
					 (/
					  (-
					   (first (pw::x->dx lista))
					   (*
					    (first
					     (pw::om-floor
					      (pw::x->dx lista)
					      1200))
					    1200))
					  100)
					 12))
				     100))
			       (* (first (pw::om-floor
					  (pw::x->dx lista)
					  1200))
				  1200)))))
	     ris)))))

(defun malt-mod+ (list limit)
  ""
  
  (let ((ris nil) (limite (first (pw::LIST! limit))))
    (dolist (y list (nreverse ris))
      (push (if (< y limite) (- (* 2 limite) y) y) ris))))


(defun interno (elmt range)
  "Restituisce l'elemento se è incluso nel 'range' e nil
	   se non è incluso."
  (if (<= (g-min range) elmt (g-max range)) elmt nil))

(defun malt-mod- (list limit)
  ""
  
  (let ((ris nil) (limite (first (pw::LIST! limit))))
    (dolist (y list (nreverse ris))
      (push (if (> y limite) (- (* 2 limite) y) y) ris))))


(defun reflex-int (ls value up/down)
  "Restituisce la rifleesione delle note che sono superiori o inferiori
	     al valore indicato con 'value'. Il menù permette di selezionare se si
	     vuole una riflessione superiore o inferiore"
  
  ; :menu (up/down (1 "up") (2 "down"))
  (case up/down
    (1 (malt-mod+ ls value))
    (2 (malt-mod- ls value))
    (otherwise (error "Got ~s, was expecting one of 1, 2." up/down))))


(defun mod-fix- (ls asse)
  ""
  (let ((ris nil) (asse (pw::LIST! asse)))
    (dotimes (x (length ls) (nreverse ris))
      (push (if (<= (nth x ls) (first asse))
		(nth x ls)
		(+ (first asse)
		   (first (int-com (list (first asse) (nth x ls))))))
	    ris))))

(defun mod-fix+ (ls asse)
  ""
  (let ((ris nil) (asse (pw::LIST! asse)))
    (dotimes (x (length ls) (nreverse ris))
      (push (if (>= (nth x ls) (first asse))
		(nth x ls)
		(+ (first asse)
		   (first (int-com (list (first asse) (nth x ls))))))
	    ris))))

(defun reflex-note (ls value up/down)
  "Restituisce per la riflessione superiore con UP e quella
	     inferiore con DOWN>"
  
  ; :menu (up/down (1 "up") (2 "down"))
  (case up/down
    (1 (mod-fix+ ls value))
    (2 (mod-fix- ls value))
    (otherwise (error "Got ~s, was expecting one of 1, 2." up/down))))


(defun doppio-reflex-note (list value)
  "Restituisce due volte REFLEX-NOTE la prima volta a LIST
	     la seconda volta al risultato della prima volta."
  
  (reflex-note (reflex-note list (g-min value) 1) (g-max value) 2))


(defun doppio-reflex-int (list value)
  "Restituisce due volte REFLEX-INT la prima volta a LIST
	     la seconda volta al risultato della prima volta."
  
  (reflex-int (reflex-int list (g-min value) 1) (g-max value) 2))


(defun int (elt coppia) (if (< (first coppia) elt (second coppia)) elt nil))

(defun pass-band (lista alt)
  "Restituisce i valori inclusi in ALT."
  
  (let ((ris nil))
    (dolist (x lista (nreverse ris))
      (if (equalp (int x alt) nil) (int x alt) (push x ris)))))


(defun correttore-doppio-reflex-note (list value inclu?)
  "Corregge il risultato di 'DOPPIO-REFLEX-NOTE' in modo che se la
	     riflessione supera i limiti con YES abbiamo una trasposizione
	     oltre i limiti stessi ma con TRANS-APPROX altrimenti le note
	     che non sono incluse nei limiti vengono escluse dalla funzione
	     COMP-OCTAVE."
  
  ; :menu (inclu? (1 "yes") (2 "no!"))
  (let ((risultato (doppio-reflex-note list value)))
    (case inclu?
      (1 (trans-approx risultato value))
      (2 (comp-octave risultato value))
      (otherwise (error "Got ~s, was expecting one of 1, 2." inclu?)))))


(defun correttore-doppio-reflex-int (list value)
  "Corregge il risultato di 'DOPPIO-REFLEX-INT' in modo che
	     se il risultato di 'DOPPIO-REFLEX-INT supera i limiti dati
	     ripete l'operazione di adattamento fino a che non soddisfa
	     i limiti di esistenza."
  
  (let ((risultato (doppio-reflex-int list value)) (ris nil))
    (dolist (y risultato (pw::flat (nreverse ris)))
      (push (if (int y value)
		y
		(correttore-doppio-reflex-int (pw::LIST! (1+ y)) value))
	    ris))))


(defun reflexion (list axis mode? up/down)
  ""
  
  ; :menu (mode? (1 "intrv") (2 "note"))
  ; :menu (up/down (1 "up") (2 "down"))
  (funcall (case mode?
	     (1 'reflex-int)
	     (2 'reflex-note)
	     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))
	   list
	   axis
	   up/down))


(defun double-reflect (list limits mode? inclu?)
  ""
  
  ; :menu (mode? (1 "intrv") (2 "note"))
  ; :menu (inclu? (1 "up") (2 "down"))
  (case mode?
    (1 (correttore-doppio-reflex-int list limits))
    (2 (correttore-doppio-reflex-note list limits inclu?))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun comp-octave (list range)
  "Restituisce una trasposizione della lista mantenendo le altezze
	     assolute all'interno del 'range. Se un elemento non è incluso
	     nel 'range', allora viene tolto dal risultato."
  
  (let ((ris nil))
    (dolist (y (mio-transpoct list range) (nreverse ris))
      (if (equalp (interno y range) nil) (interno y range) (push y ris)))))


(defun rtm-change (rhyt modulo mode?)
  "E' la funzione che cambia un ritmo in funzione del menu MODE?
	     Se MODE? è su mod, questa funzione restituisce i multipli
	     dei valori in MODULI; se è su ptrn allora retituisce una
	     struttura ritmica che utlilizza solamente i valori in MODULO"
  
  ; :menu (mode? (1 "mod") (2 "ptrn"))
  (let ((modulo (pw::LIST! modulo)))
    (case mode?
      (1 (substitute (g-min modulo) 0.0 (usa-quel-modulo rhyt modulo)))
      (2 (rtm-change-1 rhyt modulo))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun rtm-change-1 (rhytm vals)
  "Se in vals c'è un solo valore allora calcola una
	     approssimazione ritmica in modo tale che tutti i valori
	     risultino un multiplo di vals. Se invece in vals c'è una
	     lista di valori allora approssima tutti i valori in rtm
	     con i valori di vals."
  
  (let ((vals (pw::LIST! vals))) (vicini-valori vals rhytm)))


(defun distanza-modulo (list modulo)
  "Caclola per ogni elemento della lista list il modulo
	     corrispondente per ogni elemento della lista Modulo e
	     li raggruppa in sotto-liste."
  
  (let ((ris nil))
    (dolist (y list (pw::list-explode (nreverse ris) (length list)))
      (dolist (x modulo) (push (mod y x) ris)))))


(defun usa-quel-modulo (list moduli)
  "Restituisce i valori che sono tutti multupli dei moduli
	     messi in Moduli."
  
  (let ((ris nil) (calcolo (distanza-modulo list (pw::om-abs moduli))))
    (dotimes (x (length list) (nreverse ris))
      (if (subsetp (list 0) (pw::LIST! (nth x calcolo)) :test #'equal)
	  (push (nth x list) ris)
	  (push (- (nth x list) (g-min (nth x calcolo))) ris)))))


(defun rtm-change-1val (rht val)
  "Questa funzione prende ogni elemento di rht e restituisce
	     lo stesso elemento se il (mod rht val) è uguale a 0
	     altrimenti lo approssima al poù vicino"
  
  (let ((ris nil))
    (dolist (y rht (nreverse ris))
      (if (= (pw::om-floor y val) 0)
	  (push y ris)
	  (push (- y (pw::om-floor y val)) ris)))))


(defun tutti-int (list ref)
  "Calcola gli intervalli che ci sono fra una lista di note ed
	     un'unica nota di riferimento."
  
  (pw::flat
   (let ((ris nil))
     (dolist (y list (nreverse ris))
       (push (pw::x->dx (list ref y)) ris)))))


(defun segno+picc (list)
  "Trasforma tutta la lista in valori tutti positivi e prende il valore
	     più piccolo."
  
  (g-min (mapcar #'(lambda (x) (abs x)) list)))


(defun nota-vicina (list ref)
  "Prende l'intervallo più piccolo di una lista."
  
  (let* ((intervalli (tutti-int list ref)) (piccolo (segno+picc intervalli)))
    (if (equalp (abs (first intervalli)) piccolo)
	(first intervalli)
	(nota-vicina (rest list) ref))))


(defun tieni-nota (list ref)
  "tiene la nota più vicina."
  
  (pw::om+ ref (nota-vicina list ref)))


(defun vicini-valori (list1 refs)
  "Prende le note più vicine di list per ogni nota di refs."
  
  (mapcar #'(lambda (x) (tieni-nota list1 x)) refs))


(defun arithm-ser2 (begin step xval)
  "Returns a list of XVAL numbers starting from BEGIN with STEP."
  
  (algeb begin xval step))


(defun algeb (init n pas)
  (if (= n 0) nil (cons init (algeb (+ pas init) (1- n) pas))))

(defun markers-as ()
  (let ((r nil))
    (with-open-file (input-stream (choose-file-dialog :button-string "markers")
				  :direction :input)
      (push (read input-stream) r))
    (cddar (reverse r))))

(defun f0-additive (step &optional range)
  "Reads f0 additive analysis.
step = reads each values at step window (default = 1 (all);
range = returns only values (date and frequency)
	 if in the range specified by the list (10 4000)."
  
  (let ((dates nil)
	(f0 nil)
	f
	time
	(file (choose-file-dialog :button-string "date-f0")))
    (with-open-file (input-stream file :direction :input :element-type
				  'character)
      (loop with length = (file-length input-stream)
	 for i from 0 to (1- length)
	 while (< (file-position input-stream) (1- length))
	 do (cond ((= 0 (- (/ i step) (round (/ i step))))
		   (setf f (read input-stream))
		   (setf time (read input-stream))
		   (when (not (equal (pos-int-dom (list range) f) 'nil))
		     (push f dates)
		     (push time f0)))
		  (t (dotimes (g 2) (read input-stream)))))
      (pw::MAT-TRANS (list (reverse dates) (reverse f0))))))


(defun pi-dur (dates pitches min unit)
  "Calculates de durations of the pitches according to a change in pitch"
  
  ; :menu (unit (1 "sec") (1000 ".001") (10 "1/100"))
  (let ((durations nil) (start-note 0) (dur-t 0))
    (loop for n from 1 to (length pitches)
       do (cond ((and (or (= n (length pitches))
			  (not (equal (nth n pitches) (nth (1- n) pitches))))
		      (>= dur-t (/ min unit)))
		 (if (= unit 1000)
		     (push (list (nth (1- n) pitches)
				 (round (* unit start-note))
				 (round (* unit dur-t)))
			   durations)
		     (push (list (nth (1- n) pitches)
				 (* unit start-note)
				 (* unit dur-t))
			   durations))
		 (setf dur-t 0)
		 (setf start-note (nth n dates)))
		(t
		 (setf dur-t
		       (+ dur-t (- (nth n dates) (nth (1- n) dates)))))))
    (reverse durations)))


(defun absol (list) (mapcar #'abs list))

(defun moyenne (l) (/ (apply #'+ l) (length l)))

(defun aver-window2 (list w)
  (let ((wind nil) (r nil))
    (when (oddp w) (format t "ERROR : window size must be even~&") (abort))
    (dotimes (i (1- (floor (/ (* 2 (length list)) w))) (nreverse r))
      (setf wind 'nil)
      (dotimes (n w (push (list (/ (* w i) 2) (* 1.0 (moyenne wind))) r))
	(push (nth (+ (/ (* w i) 2) n) list) wind)))))

(defun aver-window (list w)
  (let ((wind nil) (r nil))
    (when (oddp w) (format t "ERROR : window size must be even~&") (abort))
    (dotimes (i (1- (floor (/ (* 2 (length list)) w))) (nreverse r))
      (setf wind 'nil)
      (dotimes (n w (push (* 1.0 (moyenne wind)) r))
	(push (nth (+ (/ (* w i) 2) n) list) wind)))))

(defun trunc (list start end)
  (when (not (= 0 end))
    (setf list (delete-if #'numberp list :start (- (length list) end))))
  (when (not (= 0 start))
    (setf list (delete-if #'numberp list :start 0 :end (1- start))))
  list)

(defun interpol-lin (wlist w)
  "interpolation lineaire entre les points contigus de list par w points"
  (let ((r nil) d)
    (dotimes (n (- (length wlist) 1) (append (nreverse r) (last wlist)))
      (setf d (- (nth (1+ n) wlist) (nth n wlist)))
      (dotimes (i (/ w 2)) (push (* 1.0 (+ (* i (/ d w)) (nth n wlist))) r)))))

(defun no-interpol (wlist w)
  (let ((r nil))
    (dolist (x wlist (nreverse r)) (dotimes (n (/ w 2)) (push x r)))))

(defun smooth (list window mode &optional start end)
  "Smooth list.
INPUT:
list : list of values
window : size of the window.
ARGUMENTS:
nth mode: take only a value each window step
aver mode : average values inside window
interpol mode : average and interpole - linear - values in window
med0 mode : median filter
med1 mode : median filter and then averaging
med2 mode : median filter, averaging and linear interpolation.
OPTIONAL:
start : ignore first start values
end : ignore last end values."
  
  ; :menu (mode (1 "nth") (1.5 "aver0") (2 "aver1") (3 "interp") (4 "med0")
	;      (5 "med1") (6 "med2"))
  (let ((r nil))
    (when (equal start 'nil) (setf start 0))
    (when (equal end 'nil) (setf end 0))
    (when (or (<= window 0) (not (integerp window)))
      (format t "ERROR : wrong window size, must be integer > 0~&")
      (abort))
    (when (and (oddp window) (and (> mode 1) (< mode 4)))
      (format t "ERROR : window size must be even~&")
      (abort))
    (when (and (evenp window) (> mode 3))
      (format t
	      "! Window size changed to ~S samples for median filter~&"
	      (1+ window)))
    (setf list (trunc list start end))
    (cond ((= mode 1)
	   (loop for i from 0 to (- (1- (length list)) (+ start end))
	      do (when (integerp (/ i window))
		   (push (nth (+ i start) list) r)))
	   (reverse r))
	  ((= mode 1.5)
	   (setf r (aver-window list window))
	   (append (make-list (/ window 2) :initial-element (car r)) r))
	  ((= mode 3)
	   (setf r (interpol-lin (aver-window list window) window))
	   (append (make-list (/ window 2) :initial-element (car r)) r))
	  ((= mode 2)
	   (setf r (no-interpol (aver-window list window) window))
	   (append (make-list (/ window 2) :initial-element (car r)) r))
	  ((= mode 4)
	   (setf r (filtrage-median list (1+ window)))
	   (append (make-list (/ window 2) :initial-element (car r)) r))
	  ((= mode 5)
	   (setf r
		 (filtrage-median (no-interpol (aver-window list window) window)
				  (1+ window)))
	   (append (make-list (/ window 2) :initial-element (car r)) r))
	  ((= mode 6)
	   (setf r
		 (filtrage-median
		  (interpol-lin (aver-window list window) window) (1+ window)))
	   (append (make-list (/ window 2) :initial-element (car r)) r)))))


(defun filtrage-median (list w)
  (let ((r nil) (wind nil))
    (dotimes (i (1+ (* (1- (floor (/ (length list) w))) w)) (nreverse r))
      (setf wind 'nil)
      (dotimes (n w (push (nth (floor (/ w 2)) (sort wind '<)) r))
	(push (nth (+ i n) list) wind)))))

(defun remove-arete (arete set) (remove-if #'(lambda (x) (equalp arete x)) set))

(defun add-sommet (arete set)
  (cond ((equalp 'nil (member (car arete) set :test #'equalp)) (push (car arete) set))
	((equalp 'nil (member (cadr arete) set :test #'equalp)) (push (cadr arete) set))))

(defun lookformin-if-set (i dist set)
  "Returns a list with i and its nearest point and the distance separating them,
given the semi-matrix of distances dist."
  (let ((d-min (car (sort (mapcar #'caddr dist) '>))) arete)
    (loop for n from 0 to (length dist)
       do (when (member i (nth n dist) :test #'equalp)
	    (when (and (< (caddr (nth n dist)) d-min)
		       (not (member (car (remove i (nth n dist) :test #'equalp)) set :test #'equalp)))
	      (setf d-min (caddr (nth n dist)))
	      (setf arete (nth n dist)))))
    arete))

(defun prim-tree (dist)
  "Builds up the shorter tree of the points given in the matrix of distances (list of list),
distances must be expressed as ((xi yi di) etc.).
prend en entrée la sortie de ldl-distance en mode extend.
See: E. Diday & all, 1982 : Elements d'analyse de données, Dunod, Paris. pp. 110-111."
  
  (assert (not (member 0 dist :test #'equalp :key #'third))
	  nil
	  "~%~%  Nul distance detected.~% Please compute a distance matrix with not nul distances.")
  (let ((distances (copy-tree dist))
	(omega 'nil)
	(te 'nil)
	(aretes 'nil)
	(aretes-temp 'nil)
	(arete-min 'nil))
    (setf omega
	  (remove-duplicates
	   (append (mapcar #'car distances) (mapcar #'cadr distances))
           :test #'equalp)
          te (list (car omega) ))
    (loop for n from 0
       until (= (length te) (length omega))
       do (setf aretes-temp 'nil)
       (loop for p from 0 to (1- (length te)) do
             (push (lookformin-if-set (nth p te) distances te)
		   aretes-temp))
       (setf aretes-temp (remove 'nil aretes-temp))
       (setf arete-min (car (sort aretes-temp '< :key 'caddr)))
       (setf distances (remove-arete arete-min distances))
       (push arete-min aretes)
       (setf te (add-sommet arete-min te)))
    (remove 'nil (reverse aretes))))


(defun remove-ifnot-1 (set)
  (remove-if #'(lambda (s) (not (equal 1 (length s)))) set))

(defun remove-ifonly-1 (set)
  (remove-if #'(lambda (s) (equal 1 (length s))) set))

(defun extremites (points tree)
  (mapcar #'car
	  (remove-ifnot-1
	   (mapcar #'(lambda (a) (remove 'nil a))
		   (mapcar #'(lambda (point)
			       (mapcar #'(lambda
					     (x)
					   (when
					       (not (equalp 'nil (member point x)))
					     x))
				       tree))
			   points)))))

(defun noeuds (points tree)
  (remove-ifonly-1
   (mapcar #'(lambda (a) (remove 'nil a))
	   (mapcar #'(lambda (point)
		       (mapcar #'(lambda (x)
				   (when (not (equalp 'nil (member point x)))
				     x))
			       tree))
		   points))))

(defun tronc (extrem noeuds)
  (dolist (e extrem
	   (remove-duplicates (pw::FLAT-ONCE noeuds) :test 'equalp))
    (dotimes (n (length noeuds))
      (setf (nth n noeuds)
	    (remove-if #'(lambda (x) (equalp e x)) (nth n noeuds))))))

(defun commun (list)
  "presuppose qu'il y a au moins un elt commun a toutes les sous-listes de list."
  (car (remove-if #'numberp (intersection (car list) (cadr list)))))

(defun substitute-seuil (seq distances threshold)
  "Substitute each elt of sequence by its nearest if their distance
is equal or lower than threshold and according to the Prim's minimum length tree.
Returns the new sequence with substitution and a list of (by (replaced ....))."
  (let ((sequence (copy-list seq))
	(noeux 'nil)
	(list-of-fathers nil)
	(list-of-subst nil))
    (setf noeux (noeuds (remove-duplicates sequence) (prim-tree distances)))
    (dolist (n noeux
	     (values sequence
		     (remove-if #'(lambda (l)
				    (or (< (length l) 2)
					(not (listp (cadr l)))))
				list-of-subst)))
      (let ((father (commun n)) (substituted nil))
	(dolist (p n (push (reverse substituted) list-of-subst))
	  (when (and (<= (caddr p) threshold)
		     (eql 'nil
			  (member (car (remove father (list (car p) (cadr p))))
				  list-of-fathers)))
	    (nsubstitute father
			 (car (remove father (list (car p) (cadr p))))
			 sequence)
	    (push (car (remove father (list (car p) (cadr p)))) substituted)))
	(push father list-of-fathers)
	(when (> (length substituted) 0)
	  (push (list father substituted) list-of-subst))))))

(defun s-class (seq dist thresh)
  "Substitute each elt of sequence by its nearest if their distance
is equal or lower than threshold and according to the Prim's minimum length tree.
Returns the new sequence with substitution and a list of (by (replaced ....))."
  
  (substitute-seuil seq dist thresh))


(defun delta (list round)
  " calcule les différences entre les valeurs consécutives avec un arrondi "
  
  (let ((l nil) (delta nil))
    (dotimes (n (- (length list) 1))
      (push (- (nth (+ n 1) list) (nth n list)) l))
    (dolist (a l delta) (push (float (/ (round (* a round)) round)) delta))))


(defclass tree-window (window)
  ((tree :initform nil :initarg :tree :accessor tree)
   (remarkable-nodes :initform nil :initarg :remarkable-nodes :accessor
		     remarkable-nodes)))

(defun draw-tree (tree &optional nodes name
		       fontname fontsize fontstyle)
  "Draw in a new window a graphic representation of the Prim tree.
TREE :  a tree list from Prim-tree.
Optional arguments :
NAME : window name (string or symbol without white spaces);
FONTNAME : a menu to specify font name;
FONTSIZE : a menu to specify the font size;
FONTSTYLE : a menu to specify bold or normal.
Default is Times 12 normal."
  
  ; :menu (fontname ("geneva" "Geneva") ("helvetica" "Helvetica")
	;	  ("monaco" "Monaco") ("new york" "New York") ("times" "Times"))
  ; :menu (fontsize (9 "9") (10 "10") (12 "12") (14 "14") (18 "18"))
  ; :menu (fontstyle (:normal "normal") (:bold "bold"))
  (let* ((window-name
	  (if name
	      (cond ((stringp name) name) ((symbolp name) (string name)))
	      "Prim tree"))
	 (node-name
	  (when nodes
	    (concatstrings (list "    -  with path : " (list->str nodes)))))
	 (tree-wind
	  (make-instance
	   'tree-window
	   :tree
	   tree
	   :remarkable-nodes
	   nodes
	   :window-title
	   (concatstrings (list window-name node-name)))))
    (set-wintree-font tree-wind fontname fontsize fontstyle)
    tree-wind))



(defmethod set-wintree-font ((win tree-window) (fontname string)
			     (fontsize integer) (fontstyle t))
  (set-view-font win (list fontname fontsize fontstyle)))

(defmethod set-wintree-font ((win tree-window) (fontname string)
			     (fontsize integer) (fontstyle null))
  (set-view-font win (list fontname fontsize)))

(defmethod set-wintree-font ((win tree-window) (fontname null) (fontsize null)
			     (fontstyle null))
  (set-view-font win (list "times" 12)))

(defmethod set-wintree-font ((win tree-window) (fontname null)
			     (fontsize integer) (fontstyle null))
  (set-view-font win (list "times" fontsize)))

(defmethod set-wintree-font ((win tree-window) (fontname string)
			     (fontsize null) (fontstyle null))
  (set-view-font win (list fontname 12)))

(defmethod set-wintree-font ((win tree-window) (fontname string)
			     (fontsize null) (fontstyle t))
  (set-view-font win (list fontname 12 :bold)))

(defmethod set-wintree-font ((win tree-window) (fontname null) (fontsize null)
			     (fontstyle t))
  (set-view-font win (list "times" 12 :bold)))

(defmethod set-wintree-font ((win tree-window) (fontname null)
			     (fontsize integer) (fontstyle t))
  (set-view-font win (list "times" fontsize :bold)))

(defun view-draw-contents (self)
  
  (call-next-method)
  (let ((h (point-h (view-size self))) (v (point-v (view-size self))))
    (erase-rect self 0 0 h v)
    (set-view-font self "times")
    (make-graph-tree self (tree self) (remarkable-nodes self))))


(defun window-grow-event-handler (self where)
  
  (call-next-method)
  (invalidate-view self))


(defun draw-string (x y str)
  (error "TODO when the automatic code translation was made,
I was not able to translate this function.
Rewrite it by hand! :-P"))

(defun sommet-p (n tree)
  "n is a list from tree, i.e. (a b distance)
and looks if a or b is a peak in tree"
  (let ((sommet? nil) (tree-n (remove n tree :test #'equal)))
    (dotimes (o 2 (nreverse sommet?))
      (push (equal 'nil
		   (member 'nil
			   (mapcar #'(lambda (x)
				       (equal 'nil (member (nth o n) x)))
				   tree-n)))
	    sommet?))))

(defvar *x* 0)

(defvar *y* 0)

(defvar *eps* 2)

(defun group1 (a l1)
  (let ((r nil))
    (dolist (l l1)
      (when (not (equalp 'nil (member a l :test #'equalp)))
	(push (remove a l :test #'equalp) r)))
    (append (list a) r)))

(defvar *set-tree* (quote nil))

(defun elt-tree (tree)
  (cond ((not (= 0 (length tree)))
	 (if (listp (car tree))
	     (elt-tree (car tree))
	     (setf *set-tree* (append (list (car tree)) *set-tree*)))
	 (elt-tree (cdr tree)))
	(t *set-tree*)))

(defun elts (tree) (setf *set-tree* 'nil) (elt-tree tree))

(defun n-it (set)
  (let ((set-i (remove-duplicates set :test #'equalp)) (r nil))
    (dolist (s set-i r)
      (push (list s (length (remove-if-not #'(lambda (x) (equalp s x)) set)))
	    r))))

(defun make-groups (tree)
  (let ((elements (n-it (remove-if #'numberp (elts tree)))) (r nil))
    (dolist (e elements (reverse r))
      (when (> (cadr e) 1) (push (group1 (car e) tree) r)))))

(defun calculate-coordinates (tree)
  (let ((new-tree (make-groups tree))
	(coordinates nil)
	(temp nil)
	current-pos
	(x 0)
	(y 0)
	alpha)
    (loop until (= 0 (length new-tree))
       do (setf temp (pop new-tree))
       (setf current-pos (find-pos (car temp) coordinates))
       (cond ((eq 'nil current-pos)
	      (setf x 0)
	      (setf y 0)
	      (push (list (car temp) x y) coordinates))
	     (t
	      (setf x (cadr current-pos))
	      (setf y (caddr current-pos))))
       (dotimes (n (1- (length temp)))
	 (setf alpha
	       (* (modulo-alpha n) (/ (* (1+ n) pi) (expt 2 (1+ n)))))
	 (when (eq 'nil (find-pos (car (nth (1+ n) temp)) coordinates))
	   (push (list (car (nth (1+ n) temp))
		       (+ x
			  (* (cos (* alpha n)) (cadr (nth (1+ n) temp))))
		       (+ y
			  (* (sin (* alpha n))
			     (cadr (nth (1+ n) temp)))))
		 coordinates))))
    (reverse coordinates)))

(defun modulo-alpha (n) (if (= 0 (mod n 2)) 1 -1))

(defun find-pos (x list)
  (loop for n from 0 to (length list)
     when (not (eq 'nil (member x (nth n list) :test #'equalp)))
     return (nth n list)))

(defun take-coord (pt coord)
  (cdar (remove 'nil
		(mapcar #'(lambda (x)
			    (when (not (eq 'nil (member pt x :test #'equalp)))
			      x))
			coord))))

;(defmethod ndigit (num)
;  1)

(defmethod ndigit ((num integer))
  (cond ((< num 0) (1+ (floor (log (abs num) 10))))
	((= 0 num) 1)
	(t (1+ (floor (log num 10))))))

(defmethod ndigit ((num symbol)) (length (string num)))

(defmethod ndigit ((num string)) (length num))

(defun list->str (list)
  (if (not (member 'nil (mapcar #'listp list)))
      (mapcar #'list->str list)
      (let ((string
	     (make-string (1- (+ (apply #'+ (mapcar #'ndigit list))
				 (length list)))
			  :initial-element
			  #\ ))
	    (i 0))
	(dotimes (n (length list) string)
	  (let ((temp-string (format nil "~S" (nth n list))))
	    (dotimes (k (length temp-string))
	      (setf (elt string (+ i k)) (elt temp-string k)))
	    (setf i (+ i (length temp-string) 1)))))))

(defun test-tree (tree)
  (mapcar #'(lambda (elt-tree)
	      (mapcar #'(lambda (x) (if (listp x) (list->str x) x)) elt-tree))
	  tree))

(defun make-graph-tree (window tree nodes)
  (mapcar #'(lambda (segment)
	      (when (and (numberp (car segment)) (numberp (cadr segment)))
		(setf (car segment) (format nil "~S" (car segment))
		      (cadr segment) (format nil "~S" (cadr segment))))
	      segment)
	  tree)
  (let ((ntree (test-tree (copy-list tree)))
	(coordinates 'nil)
	scale
	minx
	maxx
	miny
	maxy)
    (setf coordinates (calculate-coordinates (copy-list ntree))
	  minx (apply #'min (mapcar #'cadr coordinates))
	  miny (apply #'min (mapcar #'caddr coordinates))
	  maxx (apply #'max (mapcar #'cadr coordinates))
	  maxy (apply #'max (mapcar #'caddr coordinates))
	  scale
	  (min (/ (- *screen-width* 100) (- maxx minx))
	       (/ (- *screen-height* 200) (- maxy miny)))
	  coordinates
	  (mapcar #'(lambda (a)
		      (list (car a)
			    (+ 20 (* scale (- (cadr a) minx)))
			    (+ 20 (* scale (- (caddr a) miny)))))
		  coordinates))
    (set-view-size window
		   (+ (round (apply #'max (mapcar #'cadr coordinates))) 20)
		   (+ (round (apply #'max (mapcar #'caddr coordinates))) 20))
    (with-focused-view window
      (dolist (coord coordinates)
	(if (member (if (stringp (car coord))
			(read-from-string (car coord))
			(car coord))
		    nodes
		    :test
		    #'equalp)
	    (set-fore-color window *blue-color*)
	    (set-fore-color window *black-color*))
	(draw-string (+ *eps* (round (+ *x* (cadr coord))))
		     (- (round (+ *y* (caddr coord))) *eps*)
		     (cond ((stringp (car coord)) (car coord))
			   ((numberp (car coord)) (format nil "~S" (car coord)))
			   ((symbolp (car coord)) (symbol-name (car coord)))
			   (t
			    (format t
				    "make-graph-tree : error : format not yet implemented.~%")
			    (abort)))))
      (dolist (pt ntree)
	(if (not (member nil
			 (mapcar #'(lambda (p)
				     (member (if
					      (stringp p)
					      (read-from-string p)
					      p)
					     nodes
					     :test
					     #'equalp))
				 (subseq pt 0 2))))
	    (set-fore-color window *blue-color*)
	    (set-fore-color window *black-color*))
	(let ((co1 (take-coord (car pt) coordinates))
	      (co2 (take-coord (cadr pt) coordinates)))
	  (move-to window (round (+ *x* (car co1))) (round (+ *y* (cadr co1))))
	  (line-to window (round (+ *x* (car co2)))
		   (round (+ *y* (cadr co2)))))))))

(defun etiquet (list)
  (let ((set (remove-duplicates (reverse list) :from-end '0 :test #'equalp)))
    (dotimes (n (length set) (reverse list))
      (setf list
	    (substitute (car (num->alpha (list (1+ n))))
			(nth n set)
			list
			:test
			#'equalp)))))

(defun rep-by-et (dist list et)
  (dotimes (n (length list) dist)
    (dolist (d dist) (nsubstitute (nth n et) (nth n list) d :test #'equalp))))

(defun center (x y) (setf *x* x) (setf *y* y))

(defun to-flag1 (list)
  (let ((set (remove-duplicates (reverse list) :from-end '0 :test #'equalp))
	(bag nil))
    (dotimes (n (length set))
      (setf list
	    (substitute (car (num->alpha (list (1+ n))))
			(nth n set)
			list
			:test
			#'equalp))
      (push (list (car (num->alpha (list (1+ n)))) (nth n set)) bag))
    (dolist (b (reverse bag)) (format t "~%~S <- ~S" (car b) (cadr b)))
    (values (reverse list) (reverse bag))))

(defun rep-by-flag1 (dist list flags)
  (dotimes (n (length list) dist)
    (dolist (d dist)
      (nsubstitute (nth n flags) (nth n list) d :test #'equalp))))

(defun rep-by-flag (dist list flags)
  
  (rep-by-flag1 dist list flags))


(defun fflat (liste)
  (cond ((null liste) nil)
	((atom liste) (list liste))
	(t (append (fflat (car liste)) (fflat (cdr liste))))))

(defun ldlp (l)
  "Test if every element of l is a list of lists."
  (not (member nil (mapcar #'listp l))))


(defun topotree (tree)
  (setf tree (mapcar #'butlast tree))
  (let ((points
	 (remove-duplicates
	  (append (mapcar #'car tree) (mapcar #'cadr tree))
	  :test
	  #'equalp))
	(extremites)
	(non-extr (copy-list tree))
	(noeuds 'nil))
    (setf extremites (extremites points tree))
    (dolist (x extremites) (setf non-extr (remove x non-extr :test #'equalp)))
    (setf non-extr (remove-duplicates (fflat non-extr) :test #'equalp)
	  extremites (remove-duplicates (fflat extremites) :test #'equalp))
    (dolist (x non-extr)
      (setf extremites (remove x extremites :test #'equalp)))
    (setf noeuds
	  (remove-ifonly-1
	   (mapcar #'(lambda (a) (remove 'nil a))
		   (mapcar #'(lambda (point)
			       (mapcar #'(lambda
					     (x)
					   (when
					       (not (equalp 'nil (member point x)))
					     x))
				       tree))
			   points))))
    (values extremites noeuds)))

(defun extr-to-extr (start extr noeuds r count)
  (let ((copy-of-noeuds (copy-tree noeuds)))
    (loop for i from 0 to (1- (length copy-of-noeuds))
       do (dotimes (j (length (nth i copy-of-noeuds)))
	    (when (and (not (member (nth j (nth i copy-of-noeuds))
				    r
				    :test
				    #'equalp))
		       (member start
			       (nth j (nth i copy-of-noeuds))
			       :test
			       #'equalp))
	      (push (nth j (nth i copy-of-noeuds)) r)
	      (setf start
		    (car (remove-if #'(lambda (x) (eq start x))
				    (nth j (nth i copy-of-noeuds))))
		    (nth j (nth i copy-of-noeuds)) 'nil
		    count 0))))
    (cond ((and (not (member start extr)) (= count 0))
	   (extr-to-extr start extr copy-of-noeuds r (1+ count)))
	  (t (list r start count)))))

(defun extr-to-extr2 (start extr noeuds r)
  (if (null extr)
      (mapcar #'reverse r)
      (let ((p (extr-to-extr start extr noeuds 'nil 0)))
	(cond ((> (car (last p)) 0)
	       (setf noeuds
		     (mapcar #'(lambda (x)
				 (remove-if #'(lambda (a) (member (cadr p) a))
					    x))
			     noeuds)
		     extr (remove (cadr p) extr))
	       (extr-to-extr2 start extr noeuds r))
	      (t
	       (push (car p) r)
	       (setf noeuds
		     (mapcar #'(lambda (x) (remove (caar r) x :test #'equalp))
			     noeuds)
		     extr (remove (cadr p) extr))
	       (extr-to-extr2 start extr noeuds r))))))

(defun extr-to-extr3 (start extr noeuds) (extr-to-extr2 start extr noeuds 'nil))

(defun parcours (start tree)
  (multiple-value-bind (extremites noeuds)
      (topotree tree)
    (mapcar #'lul1 (extr-to-extr3 start extremites noeuds))))

(defun all-paths (tree)
  (let ((extremites (topotree tree)))
    (mapcar #'(lambda (x) (remove 'nil (parcours x tree))) extremites)))

(defun find-path (tree start end)
  (multiple-value-bind (extremites noeuds)
      (topotree tree)
    (let ((long-path
	   (car (remove-if-not
		 #'(lambda (x)
		     (and (member start x :test #'equalp)
			  (member end x :test #'equalp)))
		 (mapcar #'lul1 (extr-to-extr3 start extremites noeuds))))))
      (subseq long-path 0 (1+ (position end long-path :test #'equalp))))))


(defmethod path ((tree list) (start null) (end null))
  (remove-duplicates (all-paths tree) :test #'(lambda (x y) (reveq x y))))

(defmethod path ((tree list) (start t) (end t)) (find-path tree start end))

(defmethod path ((tree list) (start t) (end null))
  (let ((extr (topotree tree)))
    (remove-duplicates
     (mapcar #'(lambda (a) (find-path tree start a)) extr)
     :test
     #'equalp)))

(defmethod path ((tree list) (start null) (end t))
  (let ((extr (topotree tree)))
    (remove-duplicates
     (mapcar #'(lambda (a) (find-path tree a end)) extr)
     :test
     #'equalp)))

(defmethod path ((tree list) (start list) (end t))
  (mapcar #'(lambda (a) (find-path tree a end)) start))

(defmethod path ((tree list) (start t) (end list))
  (mapcar #'(lambda (a) (find-path tree start a)) end))

(defmethod path ((tree list) (start list) (end null))
  (let ((extr (topotree tree)))
    (mapcar #'(lambda (s)
		(remove-duplicates
		 (mapcar #'(lambda (e) (find-path tree s e)) extr)
		 :test
		 #'equalp))
	    start)))

(defmethod path ((tree list) (start null) (end list))
  (let ((extr (topotree tree)))
    (mapcar #'(lambda (s)
		(remove-duplicates
		 (mapcar #'(lambda (e) (find-path tree s e)) end)
		 :test
		 #'equalp))
	    extr)))

(defmethod path ((tree list) (start list) (end list))
  (mapcar #'(lambda (s)
	      (remove-duplicates
	       (mapcar #'(lambda (e) (find-path tree s e)) end)
	       :test
	       #'equalp))
	  start))

(defun reveq (l1 l2) (or (equalp l1 l2) (equalp l1 (reverse l2))))

(defun lul (l1 l2)
  (cond ((equalp (car (last l1)) (car l2)) (append (butlast l1) l2))
	((equalp (car (last l1)) (cadr l2)) (append (butlast l1) (reverse l2)))
	(t (lul (reverse l1) l2))))

(defun lul1 (ldl)
  (if (null (cdr ldl))
      (fflat ldl)
      (lul1 (append (list (lul (car ldl) (cadr ldl))) (cddr ldl)))))

(defun tree-path (tree start end)
  "Finds all paths in prim-tree TREE from START to END>
Both START end END can be atoms (number, symbols or strings according to the tree)
or lists of atoms.
If no start and/or end are specified, returns all possible solutions (paths)."
  
  (assert (ldlp tree))
  (path tree start end))


(defvar *parameters* (quote nil))

(defun select-from-list (list &optional subject)
  (if (not subject)
      (setf subject "select :")
      (setf subject (concatstrings (list "select " subject " :"))))
  (select-item-from-list list :selection-type :disjoint :window-title subject))

(defun enter-string (subject)
  (error "TODO when the automatic code translation was made,
I was not able to translate this function.
Rewrite it by hand! :-P"))

(defun set-data-base (name &optional length)
  (if (not length)
      (setf (symbol-value name) (make-hash-table))
      (setf (symbol-value name) (make-hash-table :size length)))
  (print name))

(defun data-base (name action &optional length)
  
  list
  ""
  (cond ((= 1 action) (set-data-base name length) (setf *parameters* 'nil))
	((= 2 action)
	 (format t
		 "~% ~S entries in ~S."
		 (hash-table-count (symbol-value name))
		 name)
	 (print (symbol-value name))
	 (dolist (p (select-from-list *parameters* (symbol-name name)))
	   (format t "~%~S ~S : ~S" name p (gethash p (symbol-value name)))))
	((= 4 action) (add-to-datase name))))


(defun add-to-datase (name)
  (error "TODO when the automatic code translation was made,
I was not able to translate this function.
Rewrite it by hand! :-P"))

(defun add-to-data (name)
  
  list
  ""
  (add-to-datase name))


;;; Paolo Aralla code

(defun contrasts-lev.1 (sequence)
  "The Analysis of the Contrasts, formulated by Hervé Riviére  and Frederic Voisin, and implemented in the OpenMusic Morphologie Library, is a model able to describe the becoming of the form in the time.
It points out the hierarchic relation created by the temporal sequence of the events: in fact, for  the mnemonic activity, each event is datum point for every following event and datum point for the previous ones.
The numerical transcription carried out through the Analysis of Contrasts describes the entry order of the events in the time.
We could define the numerical transcription created using the analysis of contrasts as morphological structure of the entry order of the events.
From this starting point it is possible to identify the presence of internal patterns and analyse their potential capacity to describe and re-establish the form in its original status.

exemple: (morph::contrasts-lev.1 '(a d f g f)) ------> (1 2 3 4 3)
"
  (let* ((elements (remove-duplicates sequence :test #'equalp :from-end t)) ; TODO use from-end t
         (order (pw::arithm-ser 1 1 (length elements)))
         (analisis-contrasts-level.1
          (mapcar #'(lambda (x y)
                      (mapcar #'(lambda (z) (if (equalp x z) y 'nil)) sequence))
                  elements
                  order)))

    (pw::flat (pw::MAT-TRANS analisis-contrasts-level.1))))


(defun contrasts-all-lev (sequence)
  
  "The Analysis of the Contrasts, formulated by Hervé Riviére  and Frederic Voisin, and implemented in the OpenMusic Morphologie Library, is a model able to describe the becoming of the form in the time.
It points out the hierarchic relation created by the temporal sequence of the events: in fact, for  the mnemonic activity, each event is datum point for every following event and datum point for the previous ones.
The numerical transcription carried out through the Analysis of Contrasts describes the entry order of the events in the time.
We could define the numerical transcription created using the analysis of contrasts as morphological structure of the entry order of the events.
From this starting point it is possible to identify the presence of internal patterns and analyse their potential capacity to describe and re-establish the form in its original status.

exemple: (morph::contrasts-all-lev '(a d f g f)) ------> ((1 2 3 4 3) (1 2 3 2) (1 2 1) (1 2))"

  (let* ((counter-sequence (pw::arithm-ser (length sequence) -1 1))
	 (contrasts-lev.1-for-all-level
	  (mapcar #'(lambda (x)
		      (contrasts-lev.1 (last sequence x)))
		  counter-sequence)))
    (butlast contrasts-lev.1-for-all-level)))


(defun new-old-analysis (sequence)
  "The analysis of contrasts, which is the function at heart of the Morphologie Library developed by Jacopo Baboni Schilingi and Frederic Voisin, identifies the occurrences within any sequence of events.
Such analysis is of quantitative type, and has considerable development potentialities towards a qualitative description of the processes that put in relation morphologic structure of the message, mnemonicperceptive activity and psychic response.
The hierarchies that the analysis of contrasts describes become qualitatively pertinent to the mnemonic activity.
We have called New/Old Analysis the function that describes the newness level of an event in relation to the context in which it appears.
The importance of such a function is crucial, because it describes from the point of view of the psychic response the different newness level of the single event in the time.
The steps to define New/Old Analysis are three:

1. Measurement of the distances:
it allows to quantify the local distance between the different events in relation to their first appearance in the time.

\(defun distances (sequence)
  (mapcar #' (lambda (x) (x->dx x)) (Contrasts-all-lev sequence)))

2. Attribution of different weights to the datum points:
this step is crucial, because it strengthens the global hierarchy among the various analysis level in relation to the time parameter.

\(defun weights (sequence)
  (mapcar #' (lambda (x) (apply '+ x))
          (Contrasts-all-lev sequence)))

3. Application of weights to the distances:
this  further  step  is  just  the application of different weights - obtained considering every time one of the events as datum point (global parameter, ex. nr. 3) 
- to the distances between the various contiguous events (local parameter). 

\(defun Contrasts-lev.1*weights (sequence)
  (mapcar #' (lambda (x y) (om* y x))
          (distances sequence) (weights sequence)))

;--------

\(defun Contrasts-all-lev*weights (sequence)
  (reverse (mapcar #' (lambda (xx) (apply '+ xx))
          (pw::MAT-TRANS (mapcar #' (lambda (x) (reverse x)) (Contrasts-lev.1*weights sequence))))))

A theoretical problem we have faced is the relation between the object we have analysed and the previous and following events.
Any events chain perceived as belonging to a whole and complete organism stays anyway in relation with the previous and following sequential chain.
In case of performance of a music piece, the silence acts as a frame of the structure,  and, being a frame, it becomes organic element of the structure analysed.
It is worth to underline that even in case of extrapolation, like in the here quoted examples (a thematic fragment, a subject of a fugue, etc.),
the object is perceived as an unit, and therefore the silence places it in a well defined mental space.

\(x-append 'symbol-silence-start sequence 'symbol-silence-end)
"
  
  (let* ((sequence-whit-silence-start-end
	  (pw::x-append 'symbol-silence-start sequence
			       'symbol-silence-end))
	 (distances
	  (mapcar #'(lambda (x) (pw::x->dx x))
		  (contrasts-all-lev sequence-whit-silence-start-end)))
	 (weights
	  (mapcar #'(lambda (x) (apply '+ x))
		  (contrasts-all-lev sequence-whit-silence-start-end)))
	 (contrasts-lev.1*weights
	  (mapcar #'(lambda (x y) (pw::om* y x)) distances weights))
	 (contrasts-all-lev*weights
	  (reverse (mapcar #'(lambda (xx) (apply '+ xx))
			   (pw::MAT-TRANS (mapcar
						  #'(lambda (x) (reverse x))
						  contrasts-lev.1*weights))))))
    (butlast contrasts-all-lev*weights)))


(defun energy-prof-morph-analysis (sequence)
  "The step that allows to transform the New/Old Analysis function into a model able to simulate the psychic response of the perceptive act to the morphologic structure occurs using three functions.
Then, to this the three functions apply allowing to define the energy profile.
1. In the first passage, the transformation into absolute abs value contains all the relations with reference to the first element of the chain.
At this point, the data don't represent the ageing degree of the events anymore, but they are mere distance (it doesn't matter if they are old or new, they are to be intended nearly as physical distance between the various data stored  in space/memory) related to a virtual point zero (a kind of possible present)
2. In the second passage, the use of the local derivative, implemented in OpenMusic under the name of x-->dx, the contiguous relations are again pointed out, and the distance identified in the first  passage is assimilated to the energy needed to cover the contiguous distances in the space/memory
3 - Finally, the transformation into absolute  abs  value,  because  of  the transformation of the distances into energy, brings all the data back to positive values.
"
  (let* ((analysis-old-new (cons '0 (new-old-analysis sequence)))
	 (absolute-value (pw::om-abs analysis-old-new))
	 (local-derivative (pw::x->dx absolute-value))
	 (absolute-value2 (pw::om-abs local-derivative)))
    absolute-value2)) 





