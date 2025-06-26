
;;;;;;;;;;; 21 December 2022 - Julien Vincenot ;;;;;;;;;;;;;;;
;;;;;;;;;; THIS VERSION of FV-MORPHOLOGIE ONLY FOR TESTS WITH GRAPH-SPAN


 ;;;; fv-morphologie.lisp
;;;;
;;;; Lisp tools to analyse sequences of symbols or signs wich represent music,
;;;; for PWGL and OpenMusic (and Lisp).
;;;;
;;;; Frederic Voisin, Paris - Montbeliard, 1994-2010
;;;; rewriting of morphologie for Common-Lisp, OpenMusic and PWGL
;;;;
;;;; Thank's to Jacopo Baboni-Scilingi, Giacomo Platini, Paolo Aralla, Killian Sprotte, Julien Vincenot, Carlo Ciceri...
;;;;
;;;; use freely and at your own risk :)

;;; TODO
;; struct ---> pourcentage de completion !!!!
;; adding a som somewhere in classification - with save weigths then analysing weigth (> tutorial)
;; etc

;;; Loading fv-morphologie
(in-package :fv-morphologie)

;(asdf:oos 'asdf:load-op :fv-morphologie)

;;; GENERAL VARIABLES

(defparameter *alpha* (quote (#\A #\B #\C #\D #\E #\F #\G #\H #\I #\J #\K #\L #\M
				    #\N #\O #\P #\Q #\R #\S #\T #\U #\V #\W #\X #\Y #\Z #.(code-char 176))))

(defparameter *num* (quote (#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)))

(defparameter *months* '("january" "february" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december"))

(defun date ()
  (multiple-value-bind (s m h d mo y a b c) (get-decoded-time)
    (declare (ignore a b c s))
    (list y mo d h m)))
    
;;; FOR WARNINGS ETC.

(defun message (message)
  (format t "~%~S~%" message))

;;; lisp hacks if necessary

(defun sum-loop (list)
; apply #'+ may not work with huge lists in LW
  (let ((r 0))
    (dolist (x list r)
      (incf r x))))

;;; SOME "MATHS"
;; a-zero is for me (fred) today in sept 2009, my very first exemple for a kind of deleuzian differentiation...

(defun log! (x b)
  (if (zerop x) 0 (log x b)))

(defun mean (data)
  (float (/ (apply #'+ data) (length data))))

(defun xor (a b)
  (if (and a b)
      nil
    (or a b)))

(defun test (mode)
  (case mode
    (null 0)
    (:charcode 2)
    (t 1)))

(defgeneric a-zero (x &optional quasi-zero)
 (:documentation "Replace all zeros by small value (optional: quasi-zero value).
If x is a graph or tree (a list of lists), change only the third element of each node considered to be a distance."))

(defmethod a-zero ((x number) &optional (quasi-zero .001))
  (if (zerop x) (random quasi-zero) x))

(defmethod a-zero ((x list) &optional (quasi-zero .001))  ;; not to be removed used for tres etc
  (if (not (member nil (mapcar #'listp x)))
      (mapcar #'(lambda (a) (append (butlast a) (a-zero (last a) quasi-zero))) x)
      (mapcar #'(lambda (a) (a-zero a quasi-zero)) x)))

(defun normalize (data)
  (let ((sum (apply #'+ data)))
    (if (= 1 sum) data
    (mapcar #'(lambda (x) (/ x sum)) data))))


;; then, quasi-zero should me renamed schism and be a kind of random number when 0 is a float (epsilon = eteron ?), not integer
;; ( 0 =? nil) 
;; in a dynamical - chaotic - dynamic model for emergence 
  
(defun dnoise (x y &optional (test #'=))
  (let* ((s (- y x))
         (z (funcall test x y)))
    (if z
        (if (minusp s)
            (+ y (random (abs s)))
          (+ x (random s)))
      (values x y))))


;;; FOR COMPATIBILITIES (OM, PWGL etc)

(defun list! (self)
  (if (listp self) self (list self)))

(defun mat-transpos (liste)
  (assert (apply #'= (mapcar #'length liste)) nil
	  "we usually consider regular matrix. so, this should not happen. Please report this to Kilian Sprotte or Fred Voisin")
  (when liste (apply #'mapcar #'list liste)))

; when list have decreasing size (used by newold function)
(defun ldlrot (ldl &optional (r (list)))
  (if (caar ldl)
      (ldlrot (mapcar #'cdr ldl) (cons (remove 'nil (mapcar #'car ldl)) r))
      (reverse r)))

(defun group-list (liste segmentation mode)
  "Segments <liste> in successives sublists 
which lengths are successive values of the list <segmentation>.
 <mode> indicates if <liste> is to be read in a circular way."
  (let ((list2 liste) (res nil))
    (catch 'gl
      (loop for segment in segmentation
	 while (or list2 (eq mode 'circular))
	 do (push (loop for i from 1 to segment
		     when (null list2)
		     do (ecase mode
			  (linear (push sublist res) (throw 'gl 0))
			  (circular (setf list2 liste)))
		     end
		     collect (pop list2) into sublist
		     finally (return sublist))
		  res)))
    (nreverse res)))

(defun deep-sort-list (liste &optional (pred '<)) ; ex sort-list
  (cond ((null liste) nil)
        ((atom (first liste)) (sort liste pred))
        (t (cons (deep-sort-list (first liste) pred) (deep-sort-list (rest liste) pred)))))

(defun flat-1 (liste)
  (if (consp (car liste))
      (apply 'append liste)
      liste))

(defun dx (seq)
  (let (r (n-1 (pop seq)))
    (loop while seq
       do (let ((n (pop seq)))
	    (push (- n n-1) r)
	    (setf n-1 n)))
    (nreverse r)))

;;; ABOUT LISTS

(defun lmin (liste)
  (let ((a (nth (random (length liste)) liste)))
    (loop until (null liste)
          do
          (let ((e (pop liste)))
            (when (< e a) (setf a e))))
    (values a)))

(defun lmax (liste)
  (let ((a (nth (random (length liste)) liste)))
    (loop until (null liste)
          do
          (let ((e (pop liste)))
            (when (> e a) (setf a e))))
    (values a)))

(defgeneric findpos (item seq &key test)
  (:documentation "finds all positions of items into seq."))

(defmethod findpos ((item t) (seq t) &key (test #'eql))
  (let (pos)
    (dotimes (i (length seq) (nreverse pos))
      (when (funcall test (nth i seq) item)
        (push i pos)))))

(defmethod findpos ((item null) (seq t) &key (test #'eql))
  (declare (ignore test item))
  seq)

(defmethod findpos ((item list) (seq t) &key (test #'eql))
  (let (pos)
    (dotimes (i (length seq) (nreverse pos))
      (when (member (nth i seq) item :test test)
        (push i pos)))))

(defun split-list-using-marks (liste marks)
  (cond ((listp marks)
	 (let ((r (list nil)))
	   (loop until (null liste)
	      do
		(let ((e (pop liste)))
		  (if (member e marks)
		      (push (list) r)
		      (setf (car r) (append (car r) (list e))))))
	   (nreverse (remove 'nil r))))
      ((functionp marks)
       (let ((r (list nil)))
	   (loop until (null liste)
	      do
		(let ((e (pop liste)))
		  (if (funcall marks e)
		      (push (list) r)
		      (setf (car r) (append (car r) (list e))))))
	   (nreverse (remove 'nil r))))
      (t liste)))
	

;(split-list-using-marks '(1 2 3 4 1 2 3 1 2 1) '(1 2))
;(split-list-using-marks '(1 2 3 4 1 2 3 1 2 1) #'(lambda (x) (< x 3)))

(defun concat (liste)
  (if (atom liste) liste
      (let ((a (car liste)))
	(cond ((listp a)
	       (apply #'append liste))
	      ((stringp a)
	       (eval `(concatenate 'string .,liste)))
	      (t
	       (read-from-string (concat (mapcar #'(lambda (x) (format nil "~S" x))
						 liste))))))))

(defun 2first (liste)
  (if liste
      (subseq liste 0 2)
    nil))

(defun randnth (list)
  (nth (random (length list)) list))

(defun randswap (list &optional iter)
  (when (not iter) (setf iter (floor (/ (length list) 2))))
  (let ((l (copy-tree list))
        (le (length list)))
    (loop repeat iter do
	 (let* ((i (random le))
		(j (random le))
		(k (nth i l)))
          (setf  (nth i l) (nth j l)
		 (nth j l) k)))
    (values l)))

;(randswap '(1 2 3 4 5 6 7 8 9 0) 10)

(defgeneric randsort (list &optional n)
  (:documentation "Sort randomly elements of list.
Optional argument is the amount randomness if <n> a float (0.0 to 1.0) or the number of iterations if <n> is an integer
(where each iteration change the place of one element of list)."))

(defmethod randsort ((list list) &optional (n 1.0))
  (randswap list (if (floatp n) (floor (* n (length list))) n)))

(defgeneric fnoise (list &optional mode val)
 (:documentation "noise based on variation"))

(defmethod fnoise ((list list) &optional mode val)
  (if (member nil  (mapcar #'numberp list))
      (randsort list val)
    (let* ((sorted (sort (copy-tree list) '<))
              (min (car sorted))
              (max (car (last sorted))))
      (case mode
        (:nozero (a-zero list (* val (- max min))))
        (:swap (randsort list val))
        (t (message "not yet.")
           list)))))

(defmethod filt-noise ((seq t) &optional (mode :nozero) (val 0.1))
  "Add noise into seq seq"
  (fv-morphologie::fnoise seq mode val))

#|
; deep-tree to do
(defmethod fnoise ((x list) &optional (quasi-zero .001))
  (if (null x) nil
    (if (numberp x)
        (a-zero x quasi-zero)
      (cons (a-zero (first x) quasi-zero)
            (a-zero (rest x) quasi-zero)))))
|#

(defun rev-cons (self) ; inutile ?
  (if (consp self)
      (if (listp (cdr self))
          (append (cdr self) (list (car self)))
        (list (cdr self) (car self)))
    self))

;(rev-cons (cons 1 2))

(defun list-print (liste &optional (stream t))
  "Prints out list into listener."
  (dolist (l liste (format t "~&"))
    (format stream "~&~S" l)))

(defun list-save (liste file)
  "Writes list to file."
  (with-open-file (out-stream (if file file "liste")
			      :direction :output
			      :if-exists :supersede
			      :if-does-not-exist :create)
    (format out-stream "(~&")
    (dolist (l liste (format out-stream "~&)"))
      (format out-stream "~&~S" l))))

(defun list-mod (liste &optional ncol) ; list-modulo box
  "partitions LISTE in NCOL lists containing the elements modulo NCOL"
  ;; new implementation by Kilian
  ;; should produce the same result
  ;; I assume that NCOL would not be a very
  ;; large number - so efficiency should be fine
  (let ((result-lists (make-list ncol)))
    (loop for i = 0 then (mod (1+ i) ncol)
       for elt in liste 
       do (push elt (nth i result-lists)))
    (map-into result-lists #'nreverse result-lists)))

(defun less-deep-mapcar (fun liste &rest args)
  "Applies FUN to LISTE ARGS if LISTE is a one-level list;
   Mapcars FUN to LISTE ARGS if LISTE is a multi-level list. "
  (cond ((null liste) nil)
	((atom (car liste)) (apply fun liste args))
	((atom (car (car liste)))
	 (cons (apply fun (car liste) args)
	       (apply #'less-deep-mapcar fun (cdr liste) args)))
	(t
	 (cons (apply #'less-deep-mapcar fun (car liste) args)
	       (apply #'less-deep-mapcar fun (cdr liste) args)))))

(defun deep-mapcar (fun fun1 liste &rest args)
  "Mapcars FUN or applies FUN1 to LISTE ARGS whether LISTE is a list or not."
  (cond ((null liste) nil)
	((not (consp liste)) (apply fun1 liste args))
	(t
	 (cons (apply #'deep-mapcar fun fun1 (car liste) args)
	       (apply #'deep-mapcar fun fun1 (cdr liste) args)))))

(defun remove-local-dup-rec (liste test r) ; ex ptrn-smooth
  "Returns the list LIST without local repetitions."
  (if liste
      (if (car r)
	  (if (funcall test (car liste) (car r))
	      (remove-local-dup-rec (cdr liste) test r)
	      (remove-local-dup-rec (cdr liste) test (cons (car liste) r)))
	  (remove-local-dup-rec (cdr liste) test (cons (car liste) r)))
      (nreverse r)))

(defgeneric rem-local-rep (seq &optional test)
  (:documentation "Removes local repetitions.
 A condition may be specified with optional argument test (default: equalp)."))

(defmethod rem-local-rep ((seq list) &optional (test #'equalp))
  (remove-local-dup-rec seq test nil))

(defmethod rem-local-rep ((seq t) &optional test)
  (declare (ignore test)) 
  seq)


(defmethod filt-local-rep ((seq t) &optional (mode nil) (test #'equalp))
  "Delete identical values or symbols."
  (cond ((eq mode :delete)
         (fv-morphologie::rem-local-rep seq test))
        ((eq mode :linear)
         (if (not (member 'nil (mapcar #'numberp seq)))
             (fv-morphologie::nocons= seq test)
           (fv-morphologie::filt-local-rep seq :delete test)))
        ((eq mode :interp) 
          (fv-morphologie::filt-local-rep seq :linear test))

        (t (fv-morphologie::filt-local-rep seq :delete test))))




(defun sort-list-char (list &optional fct) ;; todo
  "ascending sort of characters and numbers."
  (sort list '<	:key #'(lambda (x)
			 (if (numberp (if fct (funcall fct x) x))
			     (* 1000 (if fct (funcall fct x) x))
			     (char-code (char (string (if fct (funcall fct x) x)) 0))))))

;;; SOME NUMERIC DATA PROCESSING

; fmax fmin because of limitations of min max in LW...
(defun fmax (seq)
  "max value of s"
  (let ((s (copy-tree seq)))
    (if (cdr s)
        (let ((x (pop (cdr s))))
          (if (> (car s) x)
              (fmax (cons (car s) (cdr s)))
            (fmax (cons x (cdr s)))))
      (car s))))

(defun fmin (seq)
  (let ((s (copy-tree seq)))
    (if (cdr s)
        (let ((x (pop (cdr s))))
          (if (< (car s) x)
              (fmin (cons (car s) (cdr s)))
            (fmin (cons x (cdr s)))))
      (car s))))

;(defun resample (data n &optional mode)
;  (let ((l (length data)))
;    ))

(defun resample-binary (data n)
  (let ((l (length data))
        (r (list)))
    (if (= n l)
        data
      (let ((k (/ l n)))
        (dotimes (a n (nreverse r))
          (push (nth (min (round (* a k)) (1- l)) data) r))))))

(defun median-simple (list w)
  (let ((r nil) (i  (1+ (floor (/ w 2)))))
    (loop until (null list)
          do
          (let ((window (loop for k from 0 to w
                              collect (let ((z (nth k list))) (if z z (car r))))))
            (push (nth i (sort window '<)) r)
            (pop list)))
    (nreverse r)))

(defun median (list w) ;; ???
  (let ((r nil) ) ; (i  (1+ (floor (/ w 2)))))
    (loop until (null list)
          do
          (let (z (window (loop repeat w collect (if list (pop list) (car r)))))
            (setf z (sort window '<))
            (setf r (append r (remove-if #'(lambda (x) (or (= (car z) x) (= (car (last z)) x))) window)))))
    (reverse r)))

(defgeneric median-filter (seq window)
  (:documentation "Median filter."))

(defmethod median-filter ((seq list) (window integer))
  (when (evenp window)
    (incf window)
    (message (format nil "~&> median-filter : window size set to ~S" window)))
  (median-simple seq window))

(defmethod filt-median ((seq t) (window number))
  "median filter"
  (fv-morphologie::median-filter seq window))






(defun exponential-smoothing (data alpha)
  (let ((r (list (car data))))
    (dolist (x (cdr data) (reverse r))
      (push (+ (car r) (* alpha (- x (car r)))) r))))

(defun double-exponential-smoothing (data alpha gamma)
  (let ((r (list ))
        (b (- (cadr data) (car data)))
        (st (car data)))
    (dolist (x (cdr data) (reverse r))
      (push st r)
      (setf st (+ (* alpha x) (* (1- alpha) (+ (car r) b))))
      (setf b (+ (* gamma (- st (car r))) (* (1- gamma) b))))))


(defmethod filt-exponential ((seq t) (alpha number) &optional (gamma nil))
  "Low-pass filter"
  (if (not gamma)
      (fv-morphologie::exponential-smoothing seq alpha)
    (fv-morphologie::double-exponential-smoothing seq alpha gamma)))


;; TOOLS for NUMERIC SERIES
;; primitives are contour features - ie signatures or landmarks - (forme of changes of direction) in a sequence of numeric values ;
;; a primitive is made of 3 dots defining 2 segments combining ascending, descending or inflexion contour...

(defun next-sign (seq &optional (state 0) (i 0))
  "returns next local extrema : position sign value"
  (if seq
      (let ((a (pop seq)))
        (if seq
            (let ((b (car seq)))
              (if (cdr seq)
                  (let* ((c (cadr seq))
                         (d (- b a))
                         (e (- c b)))
                    (setf d (if (zerop d) 0 (if (plusp d) 1 -1))
                          e (if (zerop e) 0 (if (plusp e) 1 -1)))
                    (if (zerop e)
                        (if (zerop d)
                            (list (1+ i) 0 b)
                          (next-sign seq state (1+ i)))
                      (if (and (not (zerop state)) (not (= state e)))
                          (list (1+ i) e b)
                        (if (plusp d)
                            (if (plusp e)
                                (next-sign seq 1 (1+ i))
                              (if (minusp e)
                                  (list (1+ i) -1 (car seq))
                                (next-sign seq 1 (1+ i))))
                          (if (minusp d)
                              (if (plusp e)
                                  (list (1+ i) 1 (car seq))
                                (if (minusp e)
                                    (next-sign seq -1 (1+ i))
                                  (next-sign seq -1 (1+ i))))
                            (next-sign seq e (1+ i)))))))
                nil)) nil)) nil))

#|
(next-sign '(11 12 13 13 13 12 11))
(next-sign '(11 12 12 12 13 13 13 12 11))
(next-sign '(11 12 13 13 12 11))
(next-sign '(13 12 11 11 11 12 13))
(next-sign '(13 12 12 12 11 11 11 12 13))
(next-sign '(13 12 11 11 12 13))
(next-sign '(11 11 12 13 14))
(next-sign '(13 12 12 12 11 11))
|#

(defun derivee (seq seuil-a seuil-f)
  (let (r tmp (i 0))
    (loop until (not i) do
          (when (setf tmp (next-sign (subseq seq i) 0 i))
            (let ((previous (position-if #'(lambda (x) (or t ;(zerop (cadr x))
                                                           (= (* (cadr x) -1) (cadr tmp)))) r))
                  (next (if tmp (next-sign (subseq seq (1+ (car tmp))) 0 (1+ (car tmp))) nil)))
              ;(print (list i tmp (if previous (nth previous r) (nth i seq)) (if next next nil)))
              (if (or (>= (abs (- (caddr tmp) (if previous (caddr (nth previous r)) (nth i seq)))) seuil-a)
                      (if (and next t) ;(= (cadr tmp) (cadr next)))
                          nil
                        (>= (abs (- (caddr tmp) (if next (nth (car next) seq) (nth i seq)))) seuil-a)))
                  
                  (if r (if (zerop (cadar r))
                            (when (not (zerop (cadr tmp)))
                              (push tmp r))
                          (push tmp r))
                    (push tmp r))
                (when (>= (- (car tmp) (if r (caar r) 0)) seuil-f)
                  (if r (when (not (zerop (cadar r)))
                          (push (list (car tmp) 0 (caddr tmp)) r))
                    (push (list (car tmp) 0 (caddr tmp)) r))))))
          (setf i (car tmp)))
    (loop for e in r do (setf (cadr e) (* -1 (cadr e))))
    (reverse r)))

(defun sign (x &optional thres)
  (if (not thres)
      (if (zerop x) 0 (if (plusp x) 1 -1))
    (if (<= (abs x) thres) 0 (if (plusp x) 1 -1))))

(defun primitive-value (triplet &optional thres)
  (let ((a (sign (- (cadr triplet) (car triplet)) thres))
        (b (sign (- (caddr triplet) (cadr triplet)) thres)))
    (if (or (zerop a) (zerop b))  ;; and or or or xor ?
        ;(if (xor (zerop a) (zerop b))
         ;   (if (plusp a) 1 (if (minusp a) -1 0))
            0; )
      (cond ((and (plusp a) (minusp b)) 1)
            ((and (minusp a) (plusp b)) -1)
            (t nil)))))
#|
(defun primitive-value (triplet &optional thres)
  (let ((a (sign (- (cadr triplet) (car triplet)) thres))
        (b (sign (- (caddr triplet) (cadr triplet)) thres)))
    (cond ((and (zerop a) (zerop b)) 0)
          ((and (zerop a) (not (zerop b))) 0)
          ((and (plusp a) (zerop b)) 1)
          ((and (minusp a) (zerop b)) -1)
          ((and (plusp a) (minusp b)) 1)
          ((and (minusp a) (plusp b)) -1)
          (t (print 'x) nil))))
|#

(defun primitive-sign (a b thres) ; a ou b = (pos primitive-value value)
  (if b  ; b may be nil in some cases
      (sign (- (caddr b) (caddr a)) thres)
    (cadr a)))

(defun mfm (seq i)
  (if seq (let ((p (cadar seq)))
            (if (zerop p)
                (mfm (cdr seq) (1+ i))
              i)) i))

;(mfm '((1 0 1) (2 0 2) (3 0 3) (4 0 4)) 0)

(defun primitives-nothres (seq)
  (let ((lm))
    (loop for i from 0 to (- (length seq) 3) do
          (let ((k (primitive-value (subseq seq i (+ i 3)))))
            (when k
              (push (list (1+ i) k (nth (1+ i) seq)) lm))))
    (setf lm (nreverse lm))
    (loop for i from 0 to (- (length lm) 2) do
          (let ((p (nth (1+ i) lm))
                (p-1 (nth i lm))
                (n 0))
            (when (zerop (cadr p))
              (setf n (mfm (subseq lm i) 1))
              (when (= (cadr p-1) (cadr (nth (+ i n 1) lm)))
                (setf (cadr p) (* -1 (cadr p-1))))
              (incf i n))))
    lm))

(defun primitives-raw (seq thres)
  (if (or (zerop thres) (not thres))
      (primitives-nothres seq)
    (let ((lm (primitives-nothres seq)))
      (loop for i from 0 to (- (length lm) 2) do
            (let ((a (nth i lm))
                  (b (nth (1+ i) lm)))
              (when (zerop (primitive-sign a b thres))
                (setf (nth (1+ i) lm) (list (car b) 0 (caddr b))))))
      (values lm))))

(defun notzerop (x)
  (if x (not (zerop x)) nil))

(defun primitives-thres (seq thres &optional (flex-thres 2))
  (let ((lm (primitives-raw seq thres))
        (ft (max flex-thres 2))
        cime r)
    (if (or (zerop thres) (not thres)) lm
      (progn
        (loop until (null lm) do
              (let ((k (pop lm)))
                (if (zerop (cadr k))
                    (progn
                      (setf cime (list k))
                      (loop until (or (notzerop (primitive-sign (car cime) (car lm) thres))
                                      (not lm)) do
                            (push (pop lm) cime))
                      (if (eq (cadar r) (cadar lm))  ; m f f m > m M m / M f f M > M m M
                          (if (> (length cime) ft)
                              (let* ((vn (cadar lm))
                                     (max (if (plusp vn)
                                              (car (sort cime '< :key #'caddr))
                                            (car (sort cime '> :key #'caddr)))))
                                (setf (cadr max) (* -1 vn))
                                (push max r))
                              (setf r (cdr r)))
                        (if (> (length cime) ft)
                            (let ((mean (float (/ (apply #'+ (mapcar #'caddr cime)) (length cime)))))
                              (mapcar #'(lambda (x) (setf (caddr x) mean)) cime)
                              (setf r (append (list (car cime) (car (last cime))) r)))
                          (let* ((vn (cadar r))
                                 (max (if (plusp vn)
                                          (car (sort cime '> :key #'caddr))
                                        (car (sort cime '< :key #'caddr)))))
                            (if (plusp vn)
                                (when (< (caddar r) (caddr max))
                                  (setf (cadr max) (* 1 vn))
                                    (setf (car r) max))
                              (when (> (caddar r) (caddr max))
                                (setf (cadr max) (* 1 vn))
                                (setf (car r) max))) ))))
                  (push k r))))
        (values (nreverse r))))))

(defun primitives (seq thres &optional (mode t) (inflex-thres 2))
  (let ((lm (primitives-thres seq thres inflex-thres)))
    (if mode lm (remove-if #'(lambda (x) (zerop (cadr x))) lm))))


(defmethod int-primitives ((seq t)  &optional (out :prim) (thres nil))
  "Returns the sequence of primitives describing the sequence <seq>.
Optional menu <out> defines the output type:
 :prim for primitives only
 :pos for primitives and their positions in <seq>
 :amp for primitives, their positions and amplitudes.
Last optional argument <thres> fixes the minimum treshold for detecting a primitive according to its amplitude."
  (fv-morphologie::primitives seq out thres))









;; d'après Fink & Gandhi 2004 (Important Extrema of Time Series)
(defun output-ext (seq left right type res)
  (if (= left right)
      (push (list right type (nth right seq)) res)
    (progn
      (push (list left type (nth left seq)) res)
      (loop for flat from (1+ left) to (1- right) do
            (when (= (nth flat seq) (nth left seq))
              (push (list flat type (nth flat seq) ) res)))
      (push (list right type (nth right seq)) res)))
  res)

(defun find-max (seq i dist r res)
  (let ((left i) (right i) (n (1- (length seq))))
    (loop while (and (< i n) (and ;(> (nth (1+ i) seq) (nth left seq))
                                 (< (funcall dist (nth (1+ i) seq) (nth left seq)) r)))
          do (incf i)
          (when (< (nth left seq) (nth i seq))
            (setf left i))
          (when (<= (nth right seq) (nth i seq))
            (setf right i)))
    (setf res (output-ext seq left right 1 res))
    (list (1+ i) res)))

(defun find-min (seq i dist r res)
  (let ((left i) (right i) (n (1- (length seq))))
    (loop while (and (< i n) (and ;(> (nth (1+ i) seq) (nth left seq))
                                 (< (funcall dist (nth (1+ i) seq) (nth left seq)) r)))
          do (incf i)
          (when (> (nth left seq) (nth i seq))
            (setf left i))
          (when (>= (nth right seq) (nth i seq))
            (setf right i)))
    (setf res (output-ext seq left right -1 res))
    (list (1+ i) res)))

(defun find-first (seq r dist)
  (let (res 
        (i 0)
        (lmin 0) (rmin 0)
        (lmax 0) (rmax 0)
        (n (1- (length seq))))
    (loop while (and (< i n)
                     (< (funcall dist (nth (1+ i) seq) (nth lmax seq)) r)
                     (< (funcall dist (nth (1+ i) seq) (nth lmin seq)) r))
          do (incf i)
          (when (> (nth lmin seq) (nth i seq))
            (setf lmin i))
          (when (>= (nth rmin seq) (nth i seq))
            (setf rmin i))
          (when (< (nth lmax seq) (nth i seq))
            (setf lmax i))
          (when (<= (nth rmax seq) (nth i seq))
            (setf rmax i)))
    (incf i)
    (when (and (< i n) (> (nth i seq) (car seq)))
      (setf res (output-ext seq lmin rmin -1 res)))
    (when (and (< i n) (< (nth i seq) (car seq)))
      (setf res (output-ext seq lmax rmax 1 res)))
    (list i res)))

(defun important-extrema (seq r &optional (dist #'(lambda (a b) (abs (- b a)))))
  (let* ((ff (find-first seq r dist))
         (i (car ff))
         (res (cadr ff))
         (n (1- (length seq))))
    (when (and (< i n) (< (nth i seq) (car seq)))
      (let ((fm (find-min seq i dist r res)))
        (setf i (car fm)
              res (cadr fm))))
    (loop while (< i n) do
          (let ((fmax (find-max seq i dist r res)))
            (setf i (car fmax)
                  res (cadr fmax)))
          (let ((fmin (find-min seq i dist r res)))
            (setf i (car fmin)
                  res (cadr fmin))))
    (butlast (remove-if #'(lambda (x) (member 'nil x))
                        (sort res '< :key #'car)))))

;; from Perng, Parker & Leung 1999 "Representing Time Series by Landmarks", CIKM 1999, rev. 2000.
(defun mdpp (lm d p)  ;; best ?
  (let (r)
    (loop while lm do
          (let ((yi (pop lm))
                (yi+1 (when lm (pop lm))))
            (if yi+1
                (when (not (and (< (- (car yi+1) (car yi)) d)
                              (< (/ (* 2 (- (caddr yi+1) (caddr yi))) (+ (abs (caddr yi+1)) (abs (caddr yi)))) p)))
                  (progn (push yi r) (push yi+1 r)))
              (push yi r))))
  (values (nreverse r))))

(defgeneric signature (seq mode thres &optional option)
  (:documentation
"Signature of a sequence with some threshold <thres> for variation in intensity.
The argument <thres> may be nil (no threshold for variations in intensity), or an amount of the overall range of variation in the sequence <seq>, from 0.0 to 1.0 (where 0.0 means no threshold and 1.0 to remove all variation but the first).
 Argument <mode> define the algorithm to compute signature which may require the optional argument <option> :
:miflexnmax, returns minima, maxima and inflexions using Fred Voisin pragmatic method.
:minmax, same with only maxima and minima (without inflexions);
:major-extrema, using Fink & Gandhi method (cf. Conference on Systems, Man and Cybernetics, 2007);
:landmarks, using Perng, Parker and Leung method for landmarks (cf. Conference on Information and Knowledge Management, 1999);
Argument <thres> is the treshold value (delta) in amplitude.
Argument <option> is an optional parameter depending to the choosen method :
with :minflexmax method, <option> is the time (rank) distance threshold for detecting inflexions (a nul or positive number);
with :major-extrema, <option> defines the distance for comparing local extrema ; 
with :landmarks method, <option> is the time (rank) distance threshold for detecting a major extrema."))

(defmethod signature ((seq list) (mode t) (thres number) &optional (option nil))
  (let* ((max (lmax seq))
         (min (lmin seq))
         (thres1 (if thres thres 0.0))
         (thres2 (if (integerp option) option (floor (* (- max min) (if (numberp option) option 0) (length seq)))))) ;) (* y x th)
    (case mode
      (:minmax (primitives seq thres1 nil thres2))
      (:minflexmax (derivee seq thres1 thres2))
      (:major-extrema (important-extrema seq thres (if (functionp option) option #'(lambda (x y) (abs (- y x))))))
      (:landmarks (mdpp (primitives-nothres seq)
                   (max 2 thres2)
                   (/ thres1 (- max min))))
      (t (signature seq :minflexmax thres option)))))

(defmethod signature ((seq list) (mode t) (thres null) &optional (option nil))
  (signature seq mode 0 option))

(defun droite (a b)
  (if (= (cadr a) (cadr b))
      (list 0 (cadr a))
    (let ((pente (/ (- (cadr a) (cadr b)) (- (car a) (car b)))))
      (list pente (- (cadr a) (* pente (car a)))))))

(defun echantillonage (seq method mode thres option)
  (let ((pos (case method
               (:major-extrema
                (append (mapcar #'car (remove-if #'(lambda (x) (zerop (cadr x))) (signature seq method thres option)))
                        (list (1- (length seq)))))
               (t (append (list 0) (mapcar #'car (signature seq method thres option)) (list (1- (length seq))))))))
    (case mode
      (:untimed
       (mapcar #'(lambda (x) (nth x seq)) pos))
      (:timed
       (let ((r (list)))
         (loop for i from 0 to (- (length pos) 2) do
               (let* ((xa (nth i pos))
                      (xb (nth (1+ i) pos))
                      (steps (- xb xa 1))
                      (ya (nth xa seq))
                      (yb (nth xb seq))
                      (d (droite (list xa ya) (list xb yb))))
                 (push ya r)
                 (when (> steps 0)
                   (loop for j from 1 to steps do
                         (push (+ (* (car d) (+ xa j)) (cadr d)) r)))))
         (append (nreverse r) (last seq)))))))
       

;;; DISTANCES DISSEMBLANCE ETC

;; 1. Distance euclidienne

(defgeneric dist-euclid (a b)
  (:documentation "Euclidian distance between points a and b.
Point coordinates are represented by a list of values in any euclidian space.
 if a is a list of coordinates (lists) and b null,
output is the list of distances for all points to all others ;
 if a or b is a number, consider b or a as list of numbers (1 dim).
If a and b are lists with not same size (i.e points with not same dimensions),
 returns NIL (no distance)."))

(defmethod dist-euclid ((a number) (b number))
      (abs (- b a)))

(defmethod dist-euclid ((a list) (b number))
  (assert (not (member 'nil (mapcar #'numberp a))))
  (mapcar #'(lambda (x) (dist-euclid x b)) a))

(defmethod dist-euclid ((a number) (b list))
  (assert (not (member 'nil (mapcar #'numberp (list a)))))
  (mapcar #'(lambda (x) (dist-euclid x b)) (list a)))

(defmethod dist-euclid ((a list) (b list))
  (when (equalp (mapcar #'numberp a) (mapcar #'numberp b))
      (sqrt (apply #'+ (loop for i in a for j in b collect (expt (- j i) 2))))))

(defmethod dist-euclid ((a list) (b null)) ;; ex euclidian-d
  (assert (apply #'= (mapcar #'length a)))
  (let ((r (list)))
    (dotimes (i (length a) (nreverse r))
      (loop for j from (1+ i) to (1- (length a))
            do (push (list i j (dist-euclid (nth i a) (nth j a))) r)))))

(defmethod dist-euclidian ((a t) (b t))
  "Euclidian distance between points a and b.
Point coordinates are represented by a list of values in any euclidian space with n dimensions (n integer > 0).
The dimensionality of the euclidian space is defined by the list representing <a> and <b>.
 If a is a list of coordinates (lists) and b null,
output is the list of distances for all points to all others ;
 if a or b is a number, consider b or a as list of numbers (1 dim).
If a and b are lists with not same size (i.e points with not same dimensions),
 returns NIL (no distance)."
  (fv-morphologie::dist-euclid a b))











(defgeneric city-bloc (a b)
  (:documentation "City-bloc distance between a and b in euclidian space with n dimensions (with integer n > 0)."))

(defmethod city-bloc ((a number) (b number))
 (if (> a b) (- a b) (- b a)))

(defmethod city-bloc ((a list) (b list))
  (assert (= (length a) (length b)))
  (apply #'+ (mapcar #'(lambda (x y) (city-bloc x y)) a b)))

(defmethod city-bloc ((a list) (b null))
  (assert (apply #'= (mapcar #'length a)))
  (let ((r (list)))
    (dotimes (i (length a) (nreverse (remove 'nil r)))
      (loop for j from (1+ i) to (1- (length a)) do
	 (push (list i j (city-bloc (nth i a) (nth j a))) r)))))

(defmethod dist-citybloc ((a t) (b t))
 "City-bloc distance between <x> and <y> which represent 'points' into kind of euclidian space.
If <y> is null, <x> may represent a list of points, then the output is the list of city-bloc distances for all points to all others."
  (fv-morphologie::city-bloc a b))











(defgeneric close-p (a b thresh &optional dist)
  (:documentation "Tests if a and b are close according to their distance."))

(defmethod close-p ((a list) (b list) (thresh number) &optional (dist #'dist-euclid))
  (let ((d (funcall dist a b)))
    (when d (<= d thresh))))

(defmethod close-p ((a number) (b number) (thresh number) &optional (dist #'dist-euclid))
  (let ((d (funcall dist a b)))
    (when d (<= d thresh))))

(defmethod close-p ((a null) (b null) (thresh number) &optional (dist #'dist-euclid))
  (declare (ignore dist))
  nil)

(defmethod close-p ((a t) (b null) (thresh number) &optional (dist #'dist-euclid))
  (declare (ignore dist))
  nil)

(defmethod close-p ((a null) (b t) (thresh number) &optional (dist #'dist-euclid))
  (declare (ignore dist))
  nil)

; (close-p '(1.1 1.9) '(1 2) .5)


(defun hamming-distance (v1 v2 &optional (test #'eq))
  (assert (= (length v1) (length v2)))
  (let ((d 0))
    (dotimes (i (length v1) d)
      (when (not (funcall test (nth i v1) (nth i v2)))
        (incf d)))))

(defgeneric hamming-dist (v1 v2 &optional norm test)
  (:documentation "Hamming distance."))

(defmethod hamming-dist ((v1 list) (v2 list) &optional (norm t) (test #'eq))
  (let ((d (hamming-distance v1 v2 test)))
    (if norm (float (/ d (length v1))) d)))

(defmethod hamming-dist ((v1 list) (v2 null) &optional (norm t) (test #'eq))
  (let ((r (list)))
    (dotimes (i (1- (length v1)) (nreverse r))
      (dotimes (j (- (length v1) i 1))
        (push (list i (+ 1 j i) (hamming-dist (nth i v1) (nth (+ 1 j i) v1) norm test)) r)))))


(defmethod dist-hamming ((a t) (b t) &optional (norm t) (test #'eq))
  "Hamming distance between list a and list b."
  (fv-morphologie::hamming-dist a b norm test))











;; 2. 'Editing distance' (Distance d'edition)
;; I have red a paper on genomic analysis on ADN using, as I remember, also used by a unix text commande.
;; Finally, as I understand it now, it's a kind of measure of the work of a Turing Machine:
;; the less it does, the closest it is...
;; (I may write here a Turing machine here to do the same :)

(defun edit-dist1 (seq1 seq2 &key (change 1) (insert 1) (delete 1) (normalized nil) (test #'equalp))
"Smallest distance between two lists of symbols.
 Keywords arguments:
  change: cost if changing a elt in sequences;
  insert: cost if deleting or inserting;
  normalized (T or NIL): normalized distance - 0 the closest, 1 the farest."
  (let ((matcouts nil) d d1 d2 d3 c1 c2)
    (dotimes (j (+ (length seq2) 1))
      (dotimes (i (+ (length seq1) 1))
	(setf d (+ i (* j (+ (length seq1) 1))))
	(cond ((and (> i 0) (> j 0))
	       (if (funcall test (nth (- i 1) seq1) (nth (- j 1) seq2))
		   (setf c1 0)
		   (setf c1 change))
	       (setf d1 (nth (+ 1 (length seq1)) matcouts)
                     d2 (nth (length seq1) matcouts)
                     d3 (car matcouts))
	       (push (apply #'min (list (+ c1 d1) (+ insert d2) (+ delete d3))) matcouts))
	      (t
	       (if (and (zerop i) (zerop j))
                   (setf c1 0 c2 0)
                 (setf c1 insert c2 delete))
	       (cond ((and (zerop i) (> j 0))
		      (setf d (nth (length seq1) matcouts))
		      (push (+ c1 d) matcouts))
		     ((and (> i 0) (zerop j))
		      (setf d (car matcouts))
		      (push (+ c2 d) matcouts))
		     (t (push 0 matcouts)))))))
    (if normalized
	(if (> (length seq1) (length seq2))
		(float (/ (car matcouts) (length seq1)))
		(float (/ (car matcouts) (length seq2))))
	(car matcouts))))

(defun edit-dist2 (seq1 seq2 &key (change 1) (insert 1) (delete 1) (inex 0) (normalized nil) (test #'equalp))
  "Returns the smallest distance between two lists of symbols.
 Keywords arguments:
  change: cost if changing a elt in sequences;
  insert: cost if deleting or inserting;
  inex = cost if changing with an element which doesn't exist on the other sequence;
  normalized (T or NIL): normalized distance, 0 the closest, 1 the farest."
  (let ((matcouts nil) d d1 d2 d3 c1 c2 ex ey)
    (dotimes (j (+ (length seq2) 1))
      (dotimes (i (+ (length seq1) 1))
	(setf d (+ i (* j (+ (length seq1) 1))))
	(cond ((and (> i 0) (> j 0))
	       (if (not (member (nth (- i 1) seq1) seq2))
		   (setf ex 1)
		   (setf ex 0))
	       (if (not (member (nth (- j 1) seq2) seq1))
		   (setf ey 1)
		   (setf ey 0))
	       (if (funcall test (nth (- i 1) seq1) (nth (- j 1) seq2))
		   (setf c1 0)
		   (setf c1 (+ change (* (+ ex ey) inex))))
	       (setf d1 (nth (+ 1 (length seq1)) matcouts)
                     d2 (nth (length seq1) matcouts)
                     d3 (car matcouts))
	       (push (apply #'min (list (+ c1 d1) (+ insert (* ey inex) d2) (+ delete (* ex inex) d3))) matcouts))
	      (t
	       (if (and (zerop i) (zerop j))
		   (setf c1 0 c2 0)
		   (setf c1 insert c2 delete))
	       (cond ((and (zerop i) (> j 0))
		      (if (not (member (nth (- j 1) seq2) seq1))
			  (setf ey 1)
			  (setf ey 0))
		      (setf d (nth (length seq1) matcouts))
		      (push (+ c1 d (* ey inex)) matcouts))
		     ((and (> i 0) (zerop j))
		      (if (not (member (nth (- i 1) seq1) seq2))
			  (setf ex 1)
			  (setf ex 0))
		      (setf d (car matcouts))
		      (push (+ c2 d (* ex inex)) matcouts))
		     (t (push 0 matcouts)))))))
    (if normalized
	(if (> (length seq1) (length seq2))
		(float (/ (car matcouts) (length seq1)))
		(float (/ (car matcouts) (length seq2))))
	(car matcouts))))

(defun editing-dist (seq1 seq2 change insert delete inex normalized test)
"Editing distance between sequences of symbols.
 seq1: first sequence;
 seq2: second sequence;
 change: cost for changing a symbol;
 insert: cost for deleting or inserting a symbol;
 inex: cost for changig with a symbol from seq2 which doesn't exist in seq1;
 normalized: normalized output, in ratio to the length of the shortest sequence;
 test: any binary function to compare symbols (default: #'equalp)."
 (if (not inex)
     (edit-dist1 seq1 seq2 :change change :insert insert :delete delete :normalized normalized :test test)
     (if (zerop inex)
	 (edit-dist1 seq1 seq2 :change change :insert insert :delete delete :normalized normalized :test test)
	 (edit-dist2 seq1 seq2 :change change :insert insert :delete delete :inex inex :normalized normalized :test test))))

(defgeneric edit-dist (seq1 seq2 &optional change insert delete inex normalized test)
  (:documentation
"Dissemblance measurement between sequences of symbols <seq1> and <seq2>, according to the 'editing distance';
 the dissemblance is nul (zero) when the sequences are the considered to be the same or 'equal'.
 Argument <change> is the cost value when changing a symbol ;
 Argument <insert> is the cost value when inserting a symbol ;
 Argument <delete> is the cost value when deleting a symbol ;
 Argument <inex> is the cost value when changing a symbol in one of the sequence which does not exist in the other ;
 Argument <normalized> to choose (un-)normalized output. If normalized, value 1.0 in ratio to the length of the shortest sequence to be compared;
 test: any binary function to compare symbols (default: #'equalp)."))

(defmethod edit-dist ((seq1 list) (seq2 list) &optional (change 1) (insert 1) (delete 1) (inex 0) (normalized nil) (test #'equalp))
  ;(if (not (member t (mapcar #'listp seq2)))
  ;    (mapcar #'(lambda (a b) (edit-dist 
  (editing-dist seq1 seq2 change insert delete inex normalized test))

(defmethod edit-dist ((seq1 list) (seq2 null) &optional (change 1) (insert 1) (delete 1) (inex 0) (normalized nil) (test #'equalp))
  (declare (ignore seq2))
  (when (not (= (length seq1)
		(length (remove-duplicates (copy-tree seq1) :test #'equalp))))
    (message "gen-dist: warning ! duplicates in input list."))
  (let ((r nil) (l (length seq1)))
    (dotimes (i l (nreverse r))
      (dotimes (j (- l i 1))
        (push (list i (+ i j 1) (edit-dist (nth i seq1) (nth (+ i j 1) seq1) change insert delete inex normalized test)) r))) ))

(defmethod edit-dist ((seq1 symbol) (seq2 symbol) &optional (change 1) (insert 1) (delete 1) (inex 0) (normalized nil) (test #'equalp))
  (edit-dist (alpha>num seq1) (alpha>num seq2) change insert delete inex normalized test))

(defmethod edit-dist ((seq1 symbol) (seq2 number) &optional (change 1) (insert 1) (delete 1) (inex 0) (normalized nil) (test #'equalp))
  (edit-dist (alpha>num seq1) (alpha>num seq2) change insert delete inex normalized test))

(defmethod edit-dist ((seq1 number) (seq2 symbol) &optional (change 1) (insert 1) (delete 1) (inex 0) (normalized nil) (test #'equalp))
  (edit-dist (alpha>num seq1) (alpha>num seq2) change insert delete inex normalized test))

(defmethod edit-dist ((seq1 number) (seq2 number) &optional (change 1) (insert 1) (delete 1) (inex 0) (normalized nil) (test #'equalp))
  (edit-dist (alpha>num seq1) (alpha>num seq2) change insert delete inex normalized test))

(defun resemble-p  (a b thresh &key (change 1) (insert 1) (delete 1)  (inex 0) (test #'equalp))
  "test based on resemblance usind editing distance."
  (when (not thresh) (setf thresh 0))
  (<= (edit-dist a b change insert delete inex 'T test) thresh))

(defun edit-dist-ldl1 (seq1 seq2 &key (change 1) (insert 1) (delete 1) (wgth '(1 1)) (test #'equalp))
  (assert (and (apply #'= (mapcar #'length seq1))
	       (apply #'= (mapcar #'length seq2))
	       (= (length (car seq1)) (length (car seq2)))))
  (setf wgth (normalize wgth))
  (let* ((r 0)
	 (matrix1 (mat-transpos seq1))
	 (matrix2 (mat-transpos seq2))
	 (wgth (if (not (= (length wgth) (length (car seq1))))
		   (if (< (length wgth) (length (car seq1)))
		       (cons wgth (make-list (- (length (car seq1)) (length wgth))
					     :initial-element (car (last wgth))))
		       (subseq wgth 0 (length (car seq1))))
		   wgth)))
    (dotimes (n (length matrix1) r) ;(/ r (length (car seq1))))
      (incf r (* (nth n wgth)
		 (edit-dist1 (nth n matrix1) (nth n matrix2)
				   :change change :insert insert :delete delete :normalized 'T :test test))))))

(defun edit-dist-ldl2 (seq1 seq2 &key (change 1) (insert 1) (delete 1) (inex 0) (wgth '(1 1)) (test #'equalp))
  (assert (and (apply #'= (mapcar #'length seq1))
	       (apply #'= (mapcar #'length seq2))
	       (= (length (car seq1)) (length (car seq2)))))
  (setf wgth (normalize wgth))
  (let* ((r 0)
	 (matrix1 (mat-transpos seq1))
	 (matrix2 (mat-transpos seq2))
	 (wgth (if (not (= (length wgth) (length (car seq1))))
		 (progn (message "bad definition of wgth; setting all weigths to the first of wgth list")
			(if (< (length wgth) (length (car seq1)))
			    (cons wgth (make-list (- (length (car seq1)) (length wgth))
						  :initial-element (car (last wgth))))
			    (subseq wgth 0 (length (car seq1)))))
		 wgth)))
    (dotimes (n (length matrix1) r) ;(/ r (length (car seq1))))
      (incf r (* (nth n wgth)
		 (edit-dist2 (nth n matrix1) (nth n matrix2)
				   :change change :insert insert :delete delete :inex inex :normalized 'T :test test))))))

(defgeneric multi-edit-dist (seq1 seq2 wgth &key change insert delete inex test)
  (:documentation
 "Considering each element of sequences seq1 and seq2 as an event described into symbolic dimensions,
returns the editing distance between seq1 and seq2 according to the weigthed dimensions defined.
By symbolic dimensions, I consider a structured list of 'arbitrary' symbols describing an event, such as, for instance,
 '(a IV x)."))

(defmethod multi-edit-dist ((seq1 list) (seq2 list) (wgth list)
			    &key (change 1) (insert 1) (delete 1) (inex 0) (test #'equalp))
  (if inex
      (if (zerop inex)
	  (edit-dist-ldl1 seq1 seq2 :change change :insert insert :delete delete :wgth wgth :test test)
	  (edit-dist-ldl2 seq1 seq2 :change change :insert insert :delete delete :inex inex :wgth wgth :test test))
      (edit-dist-ldl1 seq1 seq2 :change change :insert insert :delete delete :wgth wgth :test test)))

(defmethod multi-edit-dist ((seq1 list) (seq2 list) (wgth number)
			    &key (change 1) (insert 1) (delete 1) (inex 0) (test #'equalp))
  (multi-edit-dist seq1 seq2 (make-list (length seq1) :initial-element wgth)
                   :change change :insert insert :delete delete :inex inex :test test))

(defmethod multi-edit-dist ((seq1 list) (seq2 null) (wgth number)
			    &key (change 1) (insert 1) (delete 1) (inex 0) (test #'equalp))
  (multi-edit-dist seq1 seq2 (make-list (length (car seq1)) :initial-element wgth)
                   :change change :insert insert :delete delete :inex inex :test test))

(defmethod multi-edit-dist ((seq1 list) (seq2 null) (wgth list)
			    &key (change 1) (insert 1) (delete 1) (inex 0) (test #'equalp))
  ;(assert (apply #'= (mapcar #'length seq1)))
  (let (r (l (length seq1)))
    (dotimes (i l (nreverse r))
      (dotimes (j (- l i 1))
        (push (list i (+ i j 1) (multi-edit-dist (nth i seq1) (nth (+ i j 1) seq1) wgth
                                                 :change change :insert insert :delete delete :inex inex :test test)) r)))))


(defmethod dist-edit ((seq1 t) (seq2 t)
          &key (sub 1) (ins 1) (del 1) (uncom 0) (norm NIL) (test #'equalp))
  (fv-morphologie::edit-dist seq1 seq2 sub ins del uncom norm test))

(defmethod dist-multi-edit ((seq1 t) (seq2 t) (wgth number)
          &key (sub 1) (ins 1) (del 1) (uncom 0) (test #'equalp))
  (fv-morphologie::multi-edit-dist seq1 seq2 wgth sub ins del uncom test))










(defgeneric match (a b))

(defmethod match ((a symbol) (b symbol)) (if (equalp a b) 1 0))

(defmethod match ((a number) (b number)) (if (= a b) 1 0))

(defmethod match ((a symbol) (b list))
  (mapcar #'(lambda (x) (match a x)) b))

(defmethod match ((a list) (b symbol))
  (mapcar #'(lambda (x) (match x b)) a))

(defmethod match ((a list) (b list))
  (mapcar #'(lambda (x) (mapcar #'(lambda (y) (match x y)) b)) a))

(defun ref-position (list &optional (test #'equalp))
  (mapcar #'(lambda (e) (position e list :test test)) list))

(defgeneric struct-dist (a b &optional w-occ w-rep test)
  (:documentation   "Resemblance value (0 to 1) between sequences a and b according to their interanl strcutures.
w-occ: weigth for 'occurence structure';
w-rep: weigth for 'repetition' structure."))

(defmethod struct-dist ((a list) (b list) &optional (w-occ 1) (w-rep 1) (test #'equalp))
  (let* ((ma (match a a))
	 (mb (match b b))
	 (occ-a (mapcar #'(lambda (x) (apply #'+ x)) ma))
	 (occ-b (mapcar #'(lambda (x) (apply #'+ x)) mb))
	 (ref-a (ref-position a))
	 (ref-b (ref-position b)))
    (multi-edit-dist (mapcar #'(lambda (x y) (list x y)) occ-a ref-a)
                     (mapcar #'(lambda (x y) (list x y)) occ-b ref-b)
                     (list w-occ w-rep) :inex 0 :test test)))

(defmethod struct-dist ((a list) (b null) &optional (w-occ 1.) (w-rep 1.) (test #'equalp))
  (let ((r 'nil))
    (dotimes (i (length a) (reverse r))
      (dotimes (j (- (length a) (1+ i)))
	(push (list i (+ i j 1)
		    (struct-dist (nth i a) (nth (+ i j 1) a) w-occ w-rep test))
	      r)))))

(defmethod dist-structure  ((a t) (b t) &key (w-occ 1.) (w-rep 1.) (test #'equalp))
  (fv-morphologie::struct-dist a b w-occ w-rep test))







;;; CONTRAST ANALYSIS - ANALYSE CONTRASTIVE (structure1 in previous version of morphologie)
; rewritten and optimized, thank's to lispme :)

(defun allpos (elt seq &optional (test #'equalp))
  "all positions of elt in seq, using identity  definied in optional argument test"
  (loop for e in seq for i from 0
        when (funcall test elt e)
        collect i))

(defun apos (seq &optional (test #'equalp))
  (let* ((e (list (list (pop seq) 0))) (tmp (caar e)) (ki nil) (i 1))
    (loop while seq
       do
       (setf ki (pop seq))
       (when (not (funcall test ki tmp))
         (let ((m (assoc ki e :test test)))
           (if m
               (setf (cdr (nth (position m e) e)) (append (cdr m) (list i)))
             (setf e (cons (list ki i) e)))))
       (setf tmp ki)
       (incf i))
    (reverse e)))

;(apos '(1 1 2 1 3 1 4 1 2 1 3 1 4) #'=)
;(apos '(a a b b a a a c c a d a e f g h a i a j a k l m n o) #'equal)

(defun segpos (seq pos &optional (rem-loc-rep t))
  (let ((r (list)))
    (dotimes (i (length pos) (reverse r))
      (if rem-loc-rep
          (setf r (cons (rem-local-rep (subseq seq (nth i pos) (nth (+ i 1) pos))) r))
        (setf r (cons (subseq seq (nth i pos) (nth (+ i 1) pos)) r))))))

;(segpos '(a a b a a c a d a b a c a d) (cdar (apos '(a a b a a c a d a b a c a d) #'eq)) t)

(defun segs (seq rem &optional (test #'equalp))
  "segmente la sequence seq pour chaque element different de seq,
selon le critere d'identite des elements defini par la fontion test."
  (let ((r (list)) (p (apos seq test)))
    (do ((i 0 (+ i 1)))	((= i (length p)) (sort r '> :key #'length))
      (setf r (cons (segpos seq (cdr (nth i p) ) rem) r)))))

;(segs '(a b a a c a d a e f g h a i a j a k l m n o) t)
;(segs '(a b a c a d a e f g h a i a j a k l m n o)
;      (lambda (x y) (< (abs (- (char-code (char (string x) 0)) (char-code (char (string y) 0)))) 3)))

(defun c-seg (seq &optional (rem t) (test #'equalp))
  (mapcar (lambda (x) (append (list (cdr x)) (segpos seq (cdr x) rem))) (apos seq test)))

;(c-seg '(a b a a c a b a d a e f g h a i a j a k l m n o))

(defun l-resp (l thresh inex test)
 (let ((r (list)))
   (dotimes (i (length l) (reverse (cdr r)))
     (let ((tmp (list)))
       (do ((j 1 (+ j 1))) ((= j (- (length l) i)))
	 (push (resemble-p (nth i l) (nth (+ i j) l) thresh :inex inex :test test) tmp))  ;;;
       (push (reverse tmp) r) ))))

;(l-resp (car (segs '(a b a c a a b a d a e f g h a b a j a k l m n o) t)) 0 1 #'equalp)

(defun nseg (lseg &optional (thresh 0) (inex 0) (test #'equalp))
  (let ((r (make-list (length lseg)))
	(tmp (l-resp lseg thresh inex test)))
    (dotimes (i (length tmp))
      (when (not (nth i r))
	(let ((k (allpos 't  (cons 't (nth i tmp)))))
	  (when k (mapcar (lambda (x) (setf (nth (+ x i) r) i)) k)))))
    (when (and (null (car (last r))) (car r))
	(setf (nth (1- (length r)) r) (1+ (car (sort (butlast r) '>))))) r))

;(nseg (cdar (c-seg '(a b a c a a a b b a d a e f g h a b a c a b b a k a m n o))) )
;(nseg (cdar (c-seg '(a b a c a d a e f g h a b a c a k a m n o))) .5)

(defun renum (seq &optional (test #'equalp) (start 0))
  "renums items in seq  according to the position of its first occurences - starts from 1."
  (let (r vu)
   (loop while seq
	do (let* ((elt (pop seq))
		  (o (assoc elt vu :test test)))
	     (if o
		 (push (cadr o) r)
		 (progn
		   (push (list elt (incf start)) vu)
		   (push start r)))))
   (reverse r)))

(defgeneric mark-strct (seq out &optional tolerence rem-loc-rep test)
  (:documentation "Constrative analysis of a sequence <seq>.
Output is sorted by structures's length.
<out> argument specifie output mode:
 :raw for each mark, list of the resulting structure, then list of segments with their positions in seq;
 :struct (default) list of structures.
Optional arguments are:
tolerance: maximum dissemblance threshold (0.0 to 1.0);
rem-loc-dup: t (default) for removing local repetitions in seq, or nil to keep seq as it is;
test: condition of identity for marks, for instance (lambda (x y) (< x y)) (default: #'equalp."))

(defmethod mark-strct ((seq list) (out symbol)  &optional (tolerance 0) (rem-loc-rep t) (test #'equalp))
  (when (not out) (setf out :struct))
  (let ((allsegs (c-seg seq rem-loc-rep test)) (r (list)))
    (dolist (a allsegs)
      (when (> (length a) 1)
	(let ((strct (renum (nseg (cdr a) tolerance 0 test) #'= -1)) ;; may inex value to be controled ?
	      tmp)
          (if (eq :pos out)
              (push (list strct a) r)
            (progn
              (dotimes (i (length (car a)))
                (let ((k (assoc (nth i (cdr a)) tmp :test #'equalp)))
                  (if k
                      (rplacd k (append (cdr k) (list (nth i (car a)))))
                    (push (list (nth i (cdr a)) (nth i (car a))) tmp))) )
              (push (list strct (reverse tmp)) r))))))
    (setf r (remove-if (lambda (x) (< (length x) 2)) r :key #'car))
    (case out
      (:raw (sort r '> :key (lambda (x) (length (car x)))))
      (:struct (sort (mapcar #'car r) '> :key #'length))
      (:pos  (sort r '> :key (lambda (x) (length (car x))))))))

;(mark-strct '(a b a a c a d a e f g h a a b b a c a k a m n o) :pos 0 t)
;(mark-strct '(a b a a c a d a e f g h a a b b a c a k a m n o) :raw 0 t)
;(mark-strct '(a b a c a d a e f g h a b a c a k a m n o) :struct)
;(mark-strct '(a b a c a d a e f g h a b a c a k a m n o) :raw .5)
;(mark-strct '(1 2 1 3 1 4 1 5 6 7 8 1 2 1 3 1 9 1 10 11 12) :raw .5 t (lambda (x y) (< (- y x) 2)))


(defmethod mark-structure  ((seq t) (out t) &key (diss 0) (rem-loc-dup t) (test #'equalp))
  "Returns possible structures of input <seq> based on marks retrieved from <seq>.
The output is sorted by structures's length.
Use output menu <out> to define result form:
:struct lists all possible structures according to different marks of <seq>
:pos each structure is consed to the list of positions for each segment followed by the list of the segments themselves
:raw each structure is consed to the list of each segment with its positions in <seq>.
Option :diss defines the dissemblance threshold to consider different segment as the same.
Option :test defines the test function to consider the marks."
  (when not out (setf out :struct))
  (fv-morphologie::mark-strct seq out diss rem-loc-dup test))













;;; mark analysis redone again - analyse contrastive autrement
;;; (as a state automaton : a machine mark run A or non-A if A or non-A...)
;;; with A and non-A changing differently state of machine mark...
;; faster... (integre remove-loc-rep !)
;; structure is (segment positions)
;; test : how to test if elt of seq is a mark or not (lambda (a) ...)
;; ident : how to test if elt of seq is same as previous (lambda (x y) ...)
;; if : what to do if mark
;; ifnot : what to do if not mark

(defun doifnot (e c m)
  (declare (ignore c))
  (if (null m) m
      (progn (setf (caar m) (append (caar m) (list e))) (values m))))

(defun doif (e c m)
  (cons (list (list e) (list c)) m))

(defun not-forced (x y) (declare (ignore x y)) nil)

(defun mark (seq test ident if ifnot &optional (c 0) (m nil)) ; may be optimized...
  (if (car seq)
      (let ((e (pop seq)))
	(if m
	    (if (funcall test e) ; if e from seq is a mark...
		(if (funcall ident e (car (last (caar m)))) ; remove local duplicates
		    (mark seq test ident if ifnot (1+ c) m)
		    (mark seq test ident if ifnot (1+ c) (funcall if e c m)))
		(if (funcall ident e (car (last (caar m))))
		    (mark seq test ident if ifnot (1+ c) m)
		    (mark seq test ident if ifnot (1+ c) (funcall ifnot e c m))))
	    (if (funcall test e)
		(mark seq test ident if ifnot (1+ c) (list (list (list e) (list c))))
		(mark seq test ident if ifnot (1+ c) m))))
      (nreverse m)))

(defun posgroup (ldl test r)
  (if (car ldl)
      (let* ((p (pop ldl))
	     (i (position (car p) r :key #'car :test test)))
	(if i
	    (progn (rplacd (nth i r) (list (append (cadr (nth i r)) (cadr p))))
		   (posgroup ldl test r))
	    (posgroup ldl test (cons p r))))
      (sort (nreverse r) '> :key (lambda (x) (length (cadr x))))))

#|
(posgroup (mark '(a b a a a b b a c a a d e f a a b a a c c c a k l l m)
		(lambda (x) (equalp x 'b))
		#'equalp
		#'doif #'doifnot)
	  #'intersection nil)
(position '(e f) '(((a b a) (0 9)) ((d e f) (1))) :key #'car :test #'intersection)
|#

(defun mark-r (seq mark test ident grouptest) ;; fusionner  test+ident ????
  (if mark
      (posgroup (eval `(mark ',seq (lambda (x) (funcall ,test x ',mark)) ,ident #'doif #'doifnot))
		grouptest  nil)
      (mapcar (lambda (x) (mark-r seq x test ident grouptest)) (remove-duplicates seq :test test))))

(defgeneric mark-pos (seq mark &optional test ident) ;;;;;;;test2! > fusionner test+ident = test1?
  (:documentation "For each 'mark', returns all subseq starting with the mark consed to its positions in seq.
If no mark specified, returns subseqs and positions for mark.
Optional arguments:
test: test defining a mark - for instance: #'equalp ;
ident: test to compare resulting subsequences, for instance: #'equalp."))

(defmethod mark-pos ((seq list) (mark t) &optional (test #'equalp) (ident #'equalp))
  (mark-r seq mark test test ident))

(defmethod mark-pos ((seq list) (mark null) &optional (test #'equalp) (ident #'equalp))
  (sort (mark-r seq mark test test ident) '> :key #'length))

; (mark-pos '(a b a a a b b a c a a d e f a a b a a c c c a k l l m) 'b #'equalp)

(defmethod mark-list ((seq t) (mark t) &key (mark-t #'equalp) (seg-t #'equalp))
  "Returns the list of all segments and their position in <seq> beginning with some marks defined with argument <mark>.
If no argument mark (nil), considers all different symbols in <seq>.
Option :mark-t defines the test function for searching the marks (equalp by default).
Option :group-t defines the test function for comparing the different segments."
  (when (and (symbolp mark-t) (not (boundp mark-t))) (setf mark-t (eval `(function ,mark-t))))
  (when (and (symbolp seg-t) (not (boundp seg-t))) (setf seg-t (eval `(function ,seg-t))))
  (fv-morphologie::mark-pos seq mark mark-t seg-t))



















;;;
;; contrasts-all-lev from Paolo Aralla rewritten

(defun renum-mat (seq &optional (test #'equalp) r)
  (if seq
      (renum-mat (cdr seq) test (cons (renum seq test) r))
      (butlast (reverse r))))

; (renum-mat  '(a b a c a d a e f g h a b a c a k a m n o))

(defun new-old-analysis (seq &optional (test #'equalp))
  "'new-old' Paolo Aralla algorithm inspired by contrast/mark analysis, rewritten."
  (let* ((seq+ (cons '*xstart* (append seq '(*xstop*))))
	 (d (mapcar #'dx (renum-mat seq+ test)))
	 (w (mapcar (lambda (x) (apply #'+ x)) (renum-mat seq+ test)))
	 (c (mapcar (lambda (x y) (mapcar (lambda (z) (* x z)) y)) w d)))
    (butlast (reverse (mapcar (lambda (x) (apply #'+ x)) (ldlrot (mapcar #'reverse c)))))))

;(new-old-analysis '(a b c a d e a))

(defgeneric mark-dynamic (seq &optional test)
  (:documentation "Kind of inner dynamic of the distribution of the different symbols (or marks) in the sequence <seq>,
computed by a kind of integration of contrast/mark analysis, novelty of marks and their echoing in the sequence.
Code is rewritten from Paolo Aralla so called 'energy profil' - may be tuned eventually.
Cf. also Baboni-Schilingi, Giacomo Platini."))

(defmethod mark-dynamic ((seq list) &optional (test #'equalp ))
  (mapcar #'abs (dx (mapcar #'abs (cons 0 (new-old-analysis seq test))))))

; (mark-dynamic '(a b a c a d a e f g h a b a c a k a m n o))


(defmethod  inner-dynamic ((seq t) &optional (test #'equalp))
  (fv-morphologie::mark-dynamic seq test))









(defun cutifback (seq &key (test #'equalp))
"Yet another trivial cut following more or less an established general idea,
a  kind of contrast-analysis is to cut when an old elt is back,
according to keyword test for sameless or 'identity' (Fred)"
  (let ((r '()) (old '()) tmp)
   (loop while seq
	do (let ((elt (pop seq)))
	     (if (member elt old :test test)
		 (progn
		   (push (reverse tmp) r)
		   (setf tmp (list elt)))
		 (progn
		   (push elt tmp)
		   (push elt old)))))
   (reverse r)))

;(cutifback '(a b a c a d a e f g h a b a c a k a m n o))

(defun subpos-p (posa posb)
  ;is posa sub-positions of posb ?
  (cond ((and (integerp posa) (integerp posb)) (= posa posb))
	((and (listp posa) (listp posb)) (and (>= (car posa) (car posb))
					(<= (cadr posa) (cadr posb))))
	(t nil)))

;(subpos-p '(1 4) '(0 4))
;(subpos-p '(0 4) '(1 4))
;(subpos-p '(0 4) '(3 8))

(defun l-subpos-p (a b)
  (if (= (length a) (length b))
      (let ((s (mapcar #'(lambda (x y) (subpos-p x y)) a b)))
	(eval `(and .,s)))
      nil))

;;; PATTERN STRUCTURE is old Structure 2 totally rewritten

(defgeneric find-pos (motif seq
			    &optional diss l-var change insert delete inex test)
  (:documentation "Yet another find pattern in a sequence with resemblance (default) criteria.
Returns the positions of sequence <ptrn> into sequence <seq> with some tolerance in comparing to be adjusted by optional arguments.
<motif> : motif to search;
<seq> : sequence of symbols.
Optional arguments:
<diss> : maximum dissimilarity allowed, from 0 (same) to 1 (not same at all);
<l-var> : length variation allowed, from 0 to 1 - warning: it os not only a ratio of length !."))

(defmethod find-pos ((motif list) (seq list)
		     &optional (diss 0) (l-var 0) (change 1) (insert 1) (delete 1) (inex 0) (test #'equalp))
  (let* (pos
	 (y nil) (z t) ; switches to stop loop
	 (l (length motif))
	 (lseq (length seq))
	 (l+ (floor (* l l-var)))) ; for length tolerance
    (loop for i from 0 to (- lseq l+ 1)
          do
          (loop for j from (if (< (- l l+) 1) 1 (- l l+)) to (+ l l+)
                while (and (<= (+ i j) lseq) z)
                do
	       (if (resemble-p motif (subseq seq i (+ i j)) diss
				 :change change :insert insert :delete delete :inex inex :test test)
		       (progn
			 (setf y t)
			 (push (list i (+ i j -1)) pos))) ;)
		       (setf z (if y nil t)))
	 (setf y nil z t))
    (reverse (remove-if #'(lambda (x)
			    (let ((s (mapcar #'(lambda (a)
						 (subpos-p x a))
					     (remove x pos :test #'equalp))))
			      (eval `(or .,s))))
			pos))))
			    

; (time (find-pos '(a b c) '(t x a  b c y  t a e  b c k  r a b  c)))
; (time (find-pos  '(a b c) '(t x a b c y t a e b c k r a b c) .25 .34))
; (time (find-pos  '(a b c) '(t x a b c y t a e b c k r a b c) .25 .2 1 0 1 0))

(defmethod motif-find ((motif t) (seq t) &key (diss 0) (l-var 0) (change 1) (insert 1) (delete 1) (uncom 0) (test #'equalp))
  "Returns all the positions of the segment <motif> into sequence <seq>.
Argument :diss is a threshold (from 0 to 1.0) of dissimilarity according to the normalized editing distance under which two different segments are considered to be the same ;
argument :l-var is the threshold for variation in length of the motifs to be compared ;
arguments :change :ins/sup :uncom and :test for tuning the editing distance (see dist-edit)."
  (fv-morphologie::find-pos motif seq diss l-var change insert delete uncom test))









(defun subseq-p (subseq seq &optional (test #'equalp))
  "tests if <subseq> is a subsequence of sequence <seq>."
  (let ((ls (length subseq))
	(l (length seq)))
    (if (or (> ls l) (not seq) (not subseq)) ; trivial test
	nil
	(if (equalp subseq seq) t ; another trivial test
	    (= (- l (edit-dist subseq seq :test test)) ls)))))

;(subseq-p '(a b c) '(x y a b c z))
;(subseq-p '(a b c) '(x y a b z))
;(subseq-p '(a b c) '(x y a c d z) #'(lambda (a b) (<= (- (char-code (elt (string a) 0)) (char-code (elt (string b) 0))) 1)))


(defmethod motif-subseq ((motif t) (seq t) &optional (test #'equalp))
  "Tests if a motif is a subsequence of a sequence.
The test is based on the editing distance where each elements are compared to others according to the optional argument <test>."
  (fv-morphologie::subseq-p motif seq test))












(defun whenlooploopwhenwhen (seq diss l-var n change insert delete inex test)
  (let ((r (list))
	(n- 2)
	(n+ nil)
	(l (length seq)))
    (if (numberp n)
	(setf n+ n)
	(setf n- (car n)
	      n+ (cadr n)))
    (loop for i from 0 to (- l (max 2 n-)) 
       do
	 (loop for j from n- to (if n+ (min n+ (- l i)) (- l i))
	    do
	      (let (f
		    (candidat (subseq seq i (+ i j))))
		(when (not (assoc candidat r :test #'equalp))
		  (setf f (mapcar (lambda (p) (if (listp p) (mapcar (lambda (q) (+ q i j)) p) (+ p i j)))
				  (find-pos candidat (subseq seq (+ i j))
					    diss l-var change insert delete inex test ))))
		(when f (push (append (list candidat) (cons (list i (+ i j -1)) f)) r)))))
    (remove-if #'(lambda (x) (let ((s (mapcar #'(lambda (a)
						  (l-subpos-p (cdr x) (cdr a)))
					      (remove x r :test #'equalp))))
			       (eval `(or .,s))))
			 r)))

#|
(print (whenlooploopwhenwhen '(t x a  b c y  t a e  b c k  r t x  a t x  a b c  i y t  a e c  e i b  c k r)
			     0 0 '(3 5) 1 1 1 0 #'equalp))
(print (whenlooploopwhenwhen '(t x a  b c y  t a e  b c k  r t x  a t x  a b c  i y t  a e c  e i b  c k r)
			      0. .0 nil 1 0 1 1 #'equalp))
(print (whenlooploopwhenwhen '(t x a  b c y  t a e  b c k  r t x  a t x  a b c  i y t  a e c  e i b  c k r)
			     0 .4 nil 1 1 0 1 #'equalp))
|#

;; next function does also an brut-force run on the seqs which may be not well adapted to huge lists
;; for huge lists of symbols, I rather like to do the same but using an random search to be tuned - kind of sondage or windowing -
;; in the list, following more flexible or fuzzy/lazy rules for probabiltistic retrieval - may be use of a dict ?

(defgeneric find-self (seq out
			   &optional diss l-var n change insert delete inex test)
  (:documentation "List all patterns in seq found using ptrn-find."))

(defmethod find-self ((seq list) (out symbol)
		      &optional (diss 0) (l-var 0) (n nil) (change 1) (insert 1) (delete 1) (inex 0) (test #'equalp))
  (when (null diss) (setf diss 0))
  (when (null l-var) (setf l-var 0))
  (when (null out) (setf out ':length))
  (case out
    (:length
     (sort (whenlooploopwhenwhen seq diss l-var n change insert delete inex test) '>
	   :key (lambda (x) (length (car x)))))
    (:freq
     (sort (whenlooploopwhenwhen seq diss l-var n change insert delete inex test) '> 
	   :key (lambda (x) (length (cadr x)))))
    (t (message "FIND-SELF: argument <out> may be :freq or :length"))))

;(print (find-self '(t x a  b c y  t a e  b c k  r t x  a t x  a b c  i y t  a e c  e i b  c k r) :length) )
;(print (find-self '(t x a  b c y  t a e  b c k  r t x  a t x  a b c  i y t  a e c  e i b  c k r) :length  0 0 nil 1 0 0 1 #'equalp) )


(defmethod motif-list ((seq t) (out t)
           &key (diss 0) (l-var 0) (n nil) (change 1) (insert 1) (delete 1) (uncom 0) (test #'equalp))
  "Returns the list of all motifs found into <seq> where a motif is any segment repeted at least one time according to editing distance.
Output can be sorted according to the length of segment (:length) or to their frequency (:freq).
Argument :diss is a threshold (from 0 to 1.0) of dissimilarity according to the normalized editing distance under which two different segments are considered to be the same ;
argument :l-var is the threshold for variation in length of the segments to be compared ;
argument :n is the maxinum length of segments to be compared ;
arguments :change :ins/sup :uncom and :test for tuning the editing distance (see dist-edit)."
  ;(when (not out) (set out :length)) ;;;;; temporary fix for SBCL (JV)

  (fv-morphologie::find-self seq out diss l-var n change insert delete uncom test))






(defgeneric rep-strct (seq)
  (:documentation "Possibles structures of seq based of automatically found patterns (plist)."))

(defmethod rep-strct ((seq t))
  (declare (ignore seq))
  (message "sorry, not yet ready: please use ptrn-list for now..."))
(defun permut-p (l1 l2)
  (not (or (member 'nil (mapcar #'(lambda (x) (member x l1)) l2))
	   (member 'nil (mapcar #'(lambda (x) (member x l2)) l1)))))

(defmethod  motif-structure ((seq t))
  "To be set"
  (fv-morphologie::rep-strct seq))


;;; TREES AND GRAPHS
; 1. minimum spanning tree (in french: arbre de longueur minimum ou arbre de recouvrement)
; using Prim's algorithm

;; deep first search
(defun dfs (tree &optional (test #'atom) res)
  (COND ((null tree) res)
	((funcall test tree) (dfs tree test (cons tree res)))
	(T (dfs (car tree) test res)
	   (dfs (cdr tree) test res))))

;(dfs '(YOU (WALRUS (HURT THE) ONE ((YOU) LOVE))))

(defun remove-ifnot-1 (set)
  (remove-if #'(lambda (s) (not (= 1 (length s)))) set))

(defun remove-ifonly-1 (set)
  (remove-if #'(lambda (s) (= 1 (length s))) set))

(defun extremites (points tree)
  (mapcar #'car
	  (remove-ifnot-1
	   (mapcar #'(lambda (a) (remove 'nil a))
		   (mapcar #'(lambda (point)
                               (mapcar #'(lambda (x)
                                           (when (not (equalp 'nil (member point x))) x))
                                       tree))
			   points)))))

(defun tronc (extrem noeuds)
  (dolist (e extrem (remove-duplicates (flat-1 noeuds) :test 'equalp))
    (dotimes (n (length noeuds))
      (setf (nth n noeuds) (remove-if #'(lambda (x) (equalp e x)) (nth n noeuds))))))

(defun commun (list)
  "presuppose qu'il y a au moins un elt commun a toutes les sous-listes de list."
  (car (remove-if #'numberp (intersection (car list) (cadr list)))))

(defun noeuds (points tree)
  (remove-ifonly-1
   (mapcar #'(lambda (a) (remove 'nil a))
	   (mapcar #'(lambda (point) (mapcar #'(lambda (x) (when (not (equalp 'nil (member point x))) x)) tree))
		   points))))

(defun remove-arete (arete set)
  (remove-if #'(lambda (x) (equalp arete x)) set))

(defun add-sommet (arete set)
  (if (not (member (car arete) set))
      (push (car arete) set)
    (when (not (member (cadr arete) set)) (push (cadr arete) set)))
  (values set))

(defun lookformin-if-set (i dist set)
  "Returns a list with i and its nearest point and the distance separating them,
given the semi-matrix of distances dist."
  (let ((d-min (car (sort (mapcar #'caddr dist) '>)))
        arete)
    (dolist (n dist)
        (when (member i (butlast n))
          (when (and (< (caddr n) d-min)
                     (not (member (car (remove i (butlast n))) set)))
            (setf d-min (caddr n)
                  arete n))))
    arete))

(defun zeroize (x e)
  (if (> (third x) e) x (list (car x) (cadr x) 0)))

(defun prim-tree (dist-mat)
  (let* ((min (float (/ (car (sort (remove-if #'zerop (mapcar #'third dist-mat)) '<)) 100)))
         (distances (mapcar #'(lambda (x)
				(list (car x) (cadr x) (a-zero (third x) min)))
			    dist-mat))
         (omega (remove-duplicates (append (mapcar #'car distances) (mapcar #'cadr distances)) :test #'equalp))
         (te (list (nth (random (length omega)) omega)))
         (aretes nil)
         (aretes-temp nil)
         (arete-min nil))
    ;(push (car omega) te)
    (loop for n from 0
       until (= (length te) (length omega))
       do (setf aretes-temp 'nil)
       (dolist (p te)
         (push (lookformin-if-set p distances te) aretes-temp))
       (setf arete-min (car (sort (remove 'nil aretes-temp) '< :key 'caddr)))
       (setf distances (remove-arete arete-min distances))
       (push arete-min aretes)
       (setf te (add-sommet arete-min te)))
    (mapcar #'(lambda (x) (zeroize x min))
            (remove 'nil aretes))))

(defgeneric minimum-spanning-tree (graph)
  (:documentation "Returns the span tree for a list of points according to the list of their distance.
The list of distances must have the form: ((xi yi) di) etc.).
Algorithm from: E. Diday & all, 1982 : Elements d'analyse de donnees, Dunod, Paris. pp. 110-111."))

(defmethod minimum-spanning-tree ((graph list))
  (sort (prim-tree graph) '< :key #'car))

(defmethod graph-span ((mat-dist t))
  (fv-morphologie::minimum-spanning-tree mat-dist))






(defun lul (l1 l2)
  (cond ((equalp (car (last l1)) (car l2)) (append (butlast l1) l2))
	((equalp (car (last l1)) (cadr l2)) (append (butlast l1) (reverse l2)))
	(t (lul (reverse l1) l2))))

(defun lul1 (ldl)
  (if (null (cdr ldl))
      (flat-1 ldl)
      (lul1 (append (list (lul (car ldl) (cadr ldl))) (cddr ldl)))))

(defun topotree (tree)
  (setf tree (mapcar #'butlast tree))
  (let ((points (remove-duplicates (append (mapcar #'car tree) (mapcar #'cadr tree)) :test #'equalp))
	(non-extr (copy-list tree))
	noeuds extremites)
    (setf extremites (extremites points tree))
    (dolist (x extremites) (setf non-extr (remove x non-extr :test #'equalp)))
    (setf non-extr (remove-duplicates (flat-1 non-extr) :test #'equalp)
	  extremites (remove-duplicates (flat-1 extremites) :test #'equalp))
    (dolist (x non-extr)
      (setf extremites (remove x extremites :test #'equalp)))
    (setf noeuds
	  (remove-ifonly-1
	   (mapcar #'(lambda (a) (remove 'nil a))
		   (mapcar #'(lambda (point) (mapcar #'(lambda (x) (when (not (equalp 'nil (member point x))) x)) tree))
			   points))))
    (values extremites noeuds)))

(defun extr-to-extr (start extr noeuds r count)
  (let ((copy-of-noeuds (copy-tree noeuds)))
    (loop for i from 0 to (1- (length copy-of-noeuds))
       do (dotimes (j (length (nth i copy-of-noeuds)))
	    (when (and (not (member (nth j (nth i copy-of-noeuds)) r :test #'equalp))
		       (member start (nth j (nth i copy-of-noeuds)) :test #'equalp))
	      (push (nth j (nth i copy-of-noeuds)) r)
	      (setf start (car (remove-if #'(lambda (x) (eq start x)) (nth j (nth i copy-of-noeuds))))
		    (nth j (nth i copy-of-noeuds)) 'nil
		    count 0))))
    (cond ((and (not (member start extr)) (zerop count))
	   (extr-to-extr start extr copy-of-noeuds r (1+ count)))
	  (t (list r start count)))))

(defun extr-to-extr2 (start extr noeuds r)
  (if (null extr)
      (mapcar #'reverse r)
      (let ((p (extr-to-extr start extr noeuds 'nil 0)))
	(cond ((> (car (last p)) 0)
	       (setf noeuds (mapcar #'(lambda (x) (remove-if #'(lambda (a) (member (cadr p) a)) x)) noeuds)
		     extr (remove (cadr p) extr))
	       (extr-to-extr2 start extr noeuds r))
	      (t (push (car p) r)
		 (setf noeuds
		       (mapcar #'(lambda (x) (remove (caar r) x :test #'equalp)) noeuds)
		       extr (remove (cadr p) extr))
		 (extr-to-extr2 start extr noeuds r))))))

(defun extr-to-extr3 (start extr noeuds)
  (extr-to-extr2 start extr noeuds 'nil))

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
	   (car (remove-if-not #'(lambda (x) (and (member start x :test #'equalp) (member end x :test #'equalp)))
			       (mapcar #'lul1 (extr-to-extr3 start extremites noeuds))))))
      (subseq long-path 0 (1+ (position end long-path :test #'equalp))))))

(defgeneric tree-path (from to tree)
  (:documentation "path from vertex to vertex in tree."))

(defmethod tree-path ((from number) (to number) (tree list))
  (find-path tree from to))

(defmethod tree-path ((from symbol) (to symbol) (tree list))
  (find-path tree from to))

(defmethod tree-path ((from null) (to null) (tree list))
   (apply #'append (all-paths tree)) )

(defmethod tree-path ((from t) (to null) (tree list))
  (parcours from tree))

(defmethod tree-path ((from null) (to t) (tree list))
  (parcours to tree))

(defmethod tree-path ((from list) (to null) (tree list))
  (mapcar #'(lambda (v) (parcours v tree)) from))

(defmethod tree-path ((from null) (to list) (tree list))
  (mapcar #'(lambda (v) (parcours v tree)) to))

(defmethod tree-path ((from list) (to list) (tree list))
  (mapcar #'(lambda (s)
              (remove-duplicates (mapcar #'(lambda (e)
                                             (find-path tree s e)) to)
                                 :test #'equalp))
	  from))


(defmethod graph-path ((from t) (to t) (tree t))
  (fv-morphologie::tree-path from to tree))




;; a tree is a list of list of edges each defined by two vertices, such as: ( (a b) (b c) (b d) (c e)...) 
; any edge can be defined by some properties in the rest of the list of its vertices ;
; for instance: (a b .1 2 z) is an edge between vertices a and b with (.12 z) as properties of the edge.

(defun all-vertices (tree)
  (let ((v (remove-duplicates (apply #'append (mapcar #'(lambda (x) (subseq x 0 2)) tree)) :test #'equalp)))
    (cond ((not (member 'nil (mapcar #'numberp v)))
           (sort v '<))
          (t (sort v #'string-lessp)))))

(defun min-total-length (tree)
  (apply #'+ (mapcar #'caddr tree)))

(defgeneric tree-minlen (tree)
  (:documentation "Minimum total length of a tree (sum of all edge's length)."))

(defmethod tree-minlen ((tree list))
  (min-total-length tree))

(defmethod graph-len ((graph t))
  (fv-morphologie::tree-minlen graph))






(defun tree-degree (vertex tree)
  (length (remove-if-not #'(lambda (x) (member vertex (butlast x))) tree)))

(defgeneric tree-deg (vertex tree)
  (:documentation "Degree of a vertex in a tree."))

(defmethod tree-deg ((vertex t) (tree list))
  (tree-degree vertex tree))

(defmethod tree-deg ((vertex list) (tree list))
  (mapcar #'(lambda (x) (tree-deg x tree)) vertex))

(defmethod tree-deg ((vertex null) (tree list))
  (tree-deg (all-vertices tree) tree))

(defmethod graph-deg ((node t) (graph t))
  (fv-morphologie::tree-deg node graph))






(defun nodes (tree &optional (min-degree 2))
  (let* ((e  (mapcar #'butlast (remove-if #'(lambda (x) (zerop (caddr x))) tree)))  ;; remove if dist = 0
         (v (remove-duplicates (apply #'append e)))
         (r (list)))
    (dolist (k v)
      (push (list k (remove-if-not #'(lambda (x) (member k x :test #'equalp)) e)) r))
    (mapcar #'car (remove-if #'(lambda (x) (< (length (cadr x)) min-degree)) r))))

(defgeneric tree-nodes (tree &optional min-deg)
   (:documentation "List of nodes in a tree."))

(defmethod tree-nodes ((tree list) &optional (min-deg 2))
  (nodes tree min-deg))

(defmethod graph-nodes ((graph t))
  (fv-morphologie::tree-nodes graph))







(defun leaves (tree)
  (let* ((e  (mapcar #'butlast tree))
         (v (remove-duplicates (apply #'append e)))
         (r (list)))
    (dolist (k v)
      (push (list k (remove-if-not #'(lambda (x) (member k x :test #'equalp)) e)) r))
    (mapcar #'car (remove-if-not #'(lambda (x) (= (length (cadr x)) 1)) r))))

(defgeneric tree-leaves (tree &optional min-deg)
   (:documentation "List of leaves in a tree."))

(defmethod tree-leaves ((tree list) &optional (min-deg 2))
  (leaves tree))

(defgeneric tree-dist (vertex1 vertex2 tree)
   (:documentation "Distance between vertex1 and vertex2 in tree."))

(defmethod tree-dist ((vertex1 t) (vertex2 t) (tree list))
  (let ((d 0)
	(path (tree-path vertex1 vertex2 tree)))
    (dotimes (i (1- (length path)) d)
      (incf d (third (find-if #'(lambda (x)
				  (let ((s (subseq x 0 2)))
				    (and (member (nth i path) s) (member (nth (1+ i) path) s))))
			      tree))))))

(defmethod tree-dist ((vertex1 t) (vertex2 list) (tree list))
  (mapcar #'(lambda (x) (tree-dist vertex1 x tree)) vertex2))

(defmethod tree-dist ((vertex1 t) (vertex2 null) (tree list))
  (mapcar #'(lambda (x) (length (tree-path vertex1 x tree))) (remove vertex1 (all-vertices tree) :test #'equalp)))

(defmethod dist-graph ((v1 t) (v2 t) (graph t))
  (fv-morphologie::tree-dist v1 v2 graph))






;;Strahler number


;; graphs - suite

(defun adj-matrix (l-graph)
  (let* ((v (all-vertices l-graph))
         (m (make-list (length v))))
    (dotimes (i (length m))
      (setf (nth i m) (make-list (length v) :initial-element 0)))
    (dolist (g l-graph m)
      (let ((i (position (car g) v :test #'eq))
            (j (position (cadr g) v :test #'eq))
            (d (caddr g)))
        (setf (nth j (nth i m)) d
              (nth i (nth j m)) d)))))

;;; MATRICES

(defun const*matrix (const matrix)
  (let ((m (nth 0 (array-dimensions matrix)))
	(n (nth 1 (array-dimensions matrix)))
	result)
    (setq result (make-array (list m n)))
    (dotimes (o m result)
      (dotimes (p n) (setf (aref result o p) (* const (aref matrix o p)))))))

(defun multiply-two-matrices (a-matrix b-matrix &key (result (make-array (list
									  (nth 0 (array-dimensions a-matrix))
									  (nth 1 (array-dimensions b-matrix))))))
  "given
   [1] a-matrix (required)
       ==> a 2d matrix
   [2] b-matrix (required)
       ==> another 2d matrix, with dimensions such that the product of a-matrix and b-matrix is defined
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

(defun matvar (matrix)
  (const*matrix (/ 1 (car (array-dimensions matrix)))
		(multiply-two-matrices (transpose matrix) matrix)))

;;; CLASSIFICATION

(defun pos (item list)
  (loop for n from 0 to (1- (length list))
     when (= (nth n list) item) collect n))

(defun normalize-class (classes &optional (test #'equalp))
  "reordonne les classes de nueesdynamiques, l'ordre de la classe etant le numero de sa premiere occurence dans la liste des classes."
  (let ((set nil) (r nil) (marker -1))
    (when (stringp classes) (setf classes (str->symb classes)))
    (dotimes (c (length classes) (nreverse r))
      (if (not (member (nth c classes) set :test (eval test)))
	  (progn (setf set (append set (list (nth c classes))))
 		 (setf marker (1+ marker))
		 (push marker r))
	  (push (position (nth c classes) set) r)))))

(defun norm-class (classes)
  "reordonne les classes de class-1.
L'ordre de la classe etant le numero de sa premiere occurence dans la liste des classes.
Se connecte typiquement apres class-1 ou meta-class1.
IN : string or list (of symbols or lists or strings)."
  (if (or (stringp classes) (not (listp (car classes))))
      (normalize-class classes)
      (mapcar #'(lambda (x) (normalize-class x)) classes)))

(defun rand-classes (m n)
  "liste de m nombre de n classes"
  (let ((alea nil) (alea-test nil))
    (dotimes (a m alea) (push (random n) alea))
    (setf alea-test (remove-duplicates alea))
    (cond ((= n (length alea-test)) (setf alea alea)) (t (rand-classes m n)))))

(defun quasi-rand-classes (m n data)
  "hack of rand-class with not-completely random :)"
  (let* ((max (apply #'max data))
         (min (apply #'min data))
         (mx (position-if #'(lambda (x) (= max x)) data))
         (mn (position-if #'(lambda (x) (= min x)) data))
         (alea (rand-classes m n)))
    (setf (nth mx alea) (1- n)
          (nth mn alea) 0)
    (values alea)))

;(quasi-rand-classes 10 2 '(0 1 2 3 7 8 9 0 9 0 8))

(defun random-dot (data)
  "A random point in the space defined by data"
  (loop for j from 0 to (length (car data))
        collect 
        (let* ((min (apply #'min (mapcar #'(lambda (x) (nth j x)) data)))
               (max (apply #'max (mapcar #'(lambda (x) (nth j x)) data)))
               (range (- max min)))
                    (if (minusp max)
                        (float (+ min (* -1 (random (float range)))))
                      (float (+ min (random  (float range))))))))

;(random-dot '((0 0) (1 0) (0 -1) (2 -.1) (.1 -2)))

(defun isobarycentre (points)
  (let ((c (make-list (length (car points)) :initial-element 0))
        (l (length  points)))
    (loop until (null points)
          do
          (loop for p in (pop points)
                for i from 0
                do (incf (nth i c) p)))
    (mapcar #'(lambda (x) (float (/ x l))) c)))

;;; The 'Dynamic Clouds' algorithm (nuees dynamiques)

(defgeneric nuees (data n &optional dist)
  (:documentation   "'Nuees dynamiques' algorithm :
Classify data into n classes.
Returns: classes of data, respective centers coordinates and iterations.
Abort if number of found classes lower than n."))

(defmethod nuees ((data list) (n integer) &optional (dist #'dist-euclid))
  (let (;(k (length (car data))) ; k dimensions
        (l (length data))
        (centres (make-list n))
        (r (rand-classes (length data) n)) ;; data)) ; classement aleatoire
        (iter 0)
        (nc (make-list n))
        tmp nr
	(z 0))
    (when (not dist) (setf dist #'dist-euclid))
    (loop until (if tmp (equalp (car tmp) (cadr tmp)) nil) do
          (incf iter)
          (setf tmp (list (copy-tree r) (car tmp)))
          (dolist (i (remove-duplicates r))  ; mise a jour des centres de gravite de chaque classe
            (let ((elts (loop for j from 0 to (1- l)
                              when (= i (nth j r))
                              collect
                              (nth j data))))
              (when elts (setf (nth i centres) (isobarycentre elts)))))
          (loop for i from 0 to (1- l) do ; attribution des classes selon centre
                (let ((d (mapcar #'(lambda (c) (when c (funcall dist c (nth i data)))) centres)))
                  (setf (nth i r) (position-if #'(lambda (x) (= x (apply #'min d))) d)))))
    (setf nr (normalize-class r #'=)) ; output
    (loop until (or (not (member nil nc)) (= z l)) do
          (setf (nth (nth z nr) nc) (nth (nth z r) centres))
	 (incf z))
    (values nr nc iter)))

;(nuees '((0 0) (.1 -.1) (.1 0)  (1 1) (1.1 1.1)  (.9 1) (1.9 .5)  (-2 -2) (-2.1 -1.5)) 3)
;(nuees '((0) (.1) (.11)  (1) (1.1)  (.9) (1.9)  (-2) (-2.1)) 3)

(defmethod nuees ((data list) (n list) &optional (dist #'dist-euclid))
  (let (;(k (length (car data))) ; k dimensions
        (l (length data))
        (centres n)
        (r (make-list (length data))) ; n)) ;; data)) ; classement aleatoire
        (iter 0)
        (nc (make-list (length n)))
        tmp nr
	(z 0))
    (when (not dist) (setf dist #'dist-euclid))
    (loop until (if tmp (equalp (car tmp) (cadr tmp)) nil) do
          (incf iter)
          (setf tmp (list (copy-tree r) (car tmp)))
          (loop for i from 0 to (1- l) do ; attribution des classes selon centre
                (let ((d (mapcar #'(lambda (c) (when c (funcall dist c (nth i data)))) centres)))
                  (setf (nth i r) (position-if #'(lambda (x) (= x (apply #'min d))) d))))
          (dolist (i (remove-duplicates r))  ; mise a jour des centres de gravite de chaque classe
            (let ((elts (loop for j from 0 to (1- l)
                              when (= i (nth j r))
                              collect
                              (nth j data))))
              (when elts (setf (nth i centres) (isobarycentre elts)))))
          )
    (setf nr (normalize-class r #'=)) ; output
    (loop until (or (not (member nil nc)) (= z l)) do
          (setf (nth (nth z nr) nc) (nth (nth z r) centres))
	 (incf z))
    (values nr nc iter)))

(defgeneric dynclouds (data n &optional iter dist)
  (:documentation "Classification of data into N classes using the 'dynamic clouds' algorithm.
Adapted from Diday & all: Elements d'analyse de donnees, Dunod, Paris, 1982.
The first optional argument <iter> fixes the output form:
if nil, runs only one iteration of the main algorithm ;
if t, returns N * N iterations of the algorithm, where N is the number of classes to be find ;
if <iter> is a number, returns this number iterations of the algorithm ;
if <iter> is a list of one number, returns the classification which have the higher probability after number tries.
The second argument <dist> is the distance function (#'dist-euclid by default).
"))

(defmethod dynclouds ((data list) (n t) &optional (iter nil) (dist nil))
  (when (not (member nil (mapcar #'numberp data)))
    (setf data (mat-transpos (list data (make-list (length data) :initial-element 0)))))
  (cond
   ((null iter) (multiple-value-bind (r c i) (nuees data n dist) (list r c i)))
   ((listp iter) (let* ((r (loop for i from 0 to (car iter)
                                 collect
                                 (multiple-value-bind (k) (nuees data n dist)
                                   (values k))))
                        (p (remove-duplicates r :test #'equalp)))
                   (sort (mapcar #'(lambda (x)
                                     (list x (float (/ (length (remove-if-not #'(lambda (y) (equalp x y)) r))
                                                       (car iter)))))
                                 p) '> :key #'cadr)))
   ((integerp iter)
    (let ((r (dynclouds data n (list iter) dist)))
      (values (caar r) (cadar r))))
   (t (caar (dynclouds data n (list (* n n)) dist)))))

;(dynclouds '((0) (.1) (.11)  (1) (1.1)  (.9) (1.9)  (-2) (-2.1)) 2 nil)
;(dynclouds '((0) (.1) (.11)  (1) (1.1)  (.9) (1.9)  (-2) (-2.1)) 2 t)
;(dynclouds '((0) (.1) (.11)  (1) (1.1)  (.9) (1.9)  (-2) (-2.1)) 2 8)
;(dynclouds '((0) (.1) (.11)  (1) (1.1)  (.9) (1.9)  (-2) (-2.1)) 2 '(8))

(defgeneric n-class (data n &optional iter dist)
  (:documentation "Classification of data into N classes using the 'dynamic clouds' algorithm.
Adapted from Diday & all: Elements d'analyse de donnees, Dunod, Paris, 1982.
The first optional argument <iter> fixes the output form:
if nil, runs only one iteration of the main algorithm ;
if t, returns N * N iterations of the algorithm, where N is the number of classes to be find ;
if <iter> is a number, returns this number iterations of the algorithm ;
if <iter> is a list of one number, returns the classification which have the higher probability after number tries.
The second argument <dist> is the distance function (#'dist-euclid by default).
"))

(defmethod n-class ((data list) (n t) &optional (iter nil) (dist nil))
  (if data (dynclouds data n iter dist) nil))

(defgeneric 1d-class (data n &optional fct)
  (:documentation "quantifies data by partitioning dx."))

(defmethod 1d-class ((data list) (n null) &optional (fct #'identity))
  (declare (ignore n))
  (let* ((sx (sort (copy-tree data) '<))
         (dx (dx sx))
         px c2)
    (setf c2 (nuees (mat-transpos (list (mapcar fct dx) (make-list (length dx) :initial-element 0))) 2)
          px (allpos 1 c2))
    (multiple-value-bind (r c i)
        (nuees (mat-transpos (list data (make-list (length data) :initial-element 0)))
               (mat-transpos (list (mapcar #'(lambda (x) (nth x sx)) px) (make-list (length px) :initial-element 0))))
      (values (list r (mapcar #'car c) i)))))

(defmethod 1d-class ((data list) (n integer) &optional (fct #'identity))
  (let ((x (1d-class data nil fct)))
    (loop while (> (length (cadr x)) n)
          do
          (setf x (1d-class (mapcar #'(lambda (a) (nth a (cadr x))) (car x))
                            nil fct)))
    (values x)))


(defmethod class-num ((data t) (classes integer) (mode symbol) &key (iter nil) (dist nil))
  "Classify a set (list) of points <data> into different <classes> into s space with n dimensions (n integer > 0),
where each point is represented as a list of values into each dimension.
Argument :mode defines the algorithm used for partioning the points.
:centroids for centroids algorithm (in french : nuees dynamiques.
Keyword argument :iter to set the maximum iterations to run for partitioning ;
:dist to set the distance or metric to be used (by default: euclidian distance)."
  (case mode
    (nil (fv-morphologie::n-class data classes iter dist))
    (:centroids (fv-morphologie::n-class data classes iter dist))
    (:1d-centroids (fv-morphologie::1d-class data classes (if dist dist #'identity))) 
     (t nil)))







(defun -reverse (list r)
  "A special working reverse for dotted lists."
    (if (listp list)
          (-reverse (cdr list) (cons (car list) r))
      (cons list r)))

;(-reverse (cons 1 '(2)) nil) !!crash
;(-reverse (cons 1 2) nil)
;(-reverse '(1 2 . 3) nil)
; > flatten

;; groupadjif1 / 2 a optimiser !

(defun groupadjif1 (data test r)
  "Groups adjacent elts in data if test is verified. Elts are atoms."
  (if (null data)
      (reverse (mapcar #'(lambda (x) (if (listp x) (-reverse x nil) x)) r))
    (let ((x (pop data)))
      (groupadjif1 data test
                  (if r
                      (let* ((c (car r)) (y (if (listp c) (car c) c)))
                        (if (funcall test x y)
                            (if (listp c)
                                (cons (cons x c) (cdr r))
                              (cons (cons x c) (cdr r)))
                          (cons x r)))
                    (cons x r))))))

;(groupadjif1 '(1 2 3 3 4 5 6 6 6 6 7 8 9) #'= nil) ;duscutable cf v if2

(defun groupadjif2 (data test r)
  (if (null data)
      (nreverse (mapcar #'nreverse r))
     (let ((x (pop data)))
      (groupadjif2 data test
                   (if r
                       (let* ((c (car r)) (y (if (listp (car c)) (car c) c)))
                         (if (funcall test x y)
                             (cons (cons x c) (cdr r))
                           (cons (list x) r)))
                     (cons (list x) r))))))

;(groupadjif '((0 1) (1 8) (2 1) (3 8) (4 8) (5 8) (9 1) (9 1) (9 2) (1 1)) #'(lambda (x y) (= (cadr x) (cadr y))) nil)

(defun groupadjif (data test r)
  (groupadjif2 data test r))

(defgeneric adj-group (seq test &optional key)
  (:documentation "Groups adjacent elts in data according to the function test ('eq by default).
A function key specifies the position or value to be tested for each element of seq with optional argument.
If no key (by default), the test apply to the element itself."))

(defmethod adj-group ((seq list) (test function) &optional (key nil))
  (when (not (functionp test)) (setf test #'eq) (message "adj-group: test is not a function, using test 'eq"))
  (cond ((not (member nil (mapcar #'atom seq)))
         (if (not key)
             (groupadjif1 seq test nil)
           (groupadjif1 seq #'(lambda (x y) (funcall test (funcall key x) (funcall key y))) nil)))
        ((not (member nil (mapcar #'listp seq)))
          (if (not key)
             (groupadjif2 seq test nil)
           (groupadjif2 seq #'(lambda (x y) (funcall test (funcall key x) (funcall key y))) nil))) ))

(defmethod adj-group ((seq list) (test t) &optional (key nil))
   (message "adj-group: test is a function, using default 'eq")
   (adj-group seq #'eq key))

;(adj-group '(0 1 2 3 3 3 4 3 2 1 1 1 1 2 1) #'=)
;(adj-group '((0 1) (1 8) (2 1) (3 8) (4 8) (5 8) (9 1) (9 1) (9 2) (1 1)) #'(lambda (x y) (= (cadr x) (cadr y))) )

(defgeneric conc-group (seq test &optional key)
  (:documentation "Concatenates adjacent groups of elts in data according to a test comparing groups ('eq by default).
A function key specifies the position or value to be tested for each group of seq with optional argument.
If no key (by default), the test apply to the element itself."))

;;;
#|(defun regroup (data test r)
  "Groups adjacent elts in data if test is verified. Elts are lists."
  (if (null data)
      (reverse r)
    (let ((x (pop data)))
      (regroup data test
                  (if r
                      (let ((c (car r)))
                        (if (funcall test x c)
                            (cons (append c x) (cdr r))
                          (cons x r)))
                    (cons x r))))))

;(regroup '((0 8) (1 2 3) (4 8 6) (7 8 9) (1 8 1) (10 11 12)) #'(lambda (x y) (and (member 8 y) (member 8 x))) nil)
|#

(defun regroup (data test r)
  (if (null data)
      (nreverse r);(mapcar #'nreverse r))
    (let ((x (pop data)))
      (regroup data test
               (if r
                   (let* ((c (car r))) ; (y (car c)) );(if (listp (car c)) (car c) c)))
                     (if (funcall test x c)
                         (cons (append c x) (cdr r))
                       (cons x r)))
                 (cons x r))))))

;(regroup '(((1 2)) ((0 1) (1 8)) ((5 8) (7 8)) ((10 11)) ((1 2))) #'(lambda (x y) (= 2 (length x))) nil)
;(regroup '(((1 2)) ((0 1) (1 8)) ((5 8) (7 8)) ((10 11)) ((1 2))) #'(lambda (x y) (= 2 (length y))) nil)

;; classification par partitionnement de graphe

(defun sym-isocentre (data)
  "To make simple, the centre of a list of words is the list of words with no duplicates ;)"
  (remove-duplicates (mapcar #'append data) :test #'equalp))

(defun update-c-r (c r) ;;to be optimized...
  (let ((edge (position-if-not #'(lambda (z)
                                (member 'nil z)) (mapcar #'(lambda (a)
                                                             (mapcar #'(lambda (x) (member x r :key #'car)) a)) c))))
    (if edge
        (remove-if #'(lambda (x) (member (car (nth edge c)) x)) r)
      r)))

;(update-c-r '((1 2) (0 4) (1 3) (5 7) (4 5)) '((2) (5) (4) (6)))

(defun regroup-if-intersection (ldl)
  (loop for i from 0 to (- (length ldl) 2)
        do
        (when (nth i ldl)
          (loop for j from (1+ i) to (1- (length ldl))
                do
                (when (nth j ldl)
                  (when (intersection (nth i ldl) (nth j ldl))
                    (setf (nth i ldl) (append (nth i ldl) (nth j ldl))
                          (nth j ldl) nil))))))
  (values (remove nil ldl)))
                
(defun part-tree-dist (tree &optional (mode t)) ; mode = choix (random unique ou tous), seuil distance
  ;; split a tree into partitions by cuting edges wich have max dist
  (if (< (length tree) 2)
      (if (= 1 (length (car tree))) tree (mapcar #'list (mapcar  #'list (2first (car tree)))))
      (let* ((s (sort tree '> :key #'third))
	     (u (let ((n (remove-if #'(lambda (x) (< (third x) (third (car s)))) s)))
		  (if mode n (nth (random (length n)) n))))
	     ;(e (mapcar #'2first tree))
	     (r (if mode (mapcar #'list (apply #'append (mapcar #'(lambda (x) (2first x)) u)))
		    (mapcar #'list (2first u))))
	     (c (if mode (mapcar #'2first (remove-if #'(lambda (x) (member x u :test #'equalp)) s))
		  (mapcar #'2first (remove u s :test #'equalp)))))
	(when mode (setf r (update-c-r c r)))
	(loop until (null c)
	   do
	     (let* ((k (pop c))
		    (z (mapcar #'(lambda (i)
				   (mapcar #'(lambda (x) (member i x)) r)) k))
		    (w (remove 'nil
			       (mapcar #'(lambda (y)
					   (position-if-not #'null
							    (mapcar #'(lambda (x) (position-if-not #'null x)) y))) z))))
	       (if w (setf (nth (car w) r) (append k (nth (car w) r)))
		   (setf c (append c (list k)))) ))
	(setf r (regroup-if-intersection (remove-duplicates (mapcar #'remove-duplicates r) :test #'equalp)))
	(values
	 (loop for e in r
	    collect (remove-duplicates (apply #'append
					      (mapcar #'(lambda (f)
							  (let ((w (remove-if-not #'(lambda (x) (member f (2first x)))
										  (if mode
										      (remove-if #'(lambda (x) (member x u :test #'equalp)) s)
                                                                                    (remove u s :test #'equalp)))))
							    (if w w (list (list f))))) e))
				       :test #'equalp))
	 r))))

#|
(defun part-tree-dist-rec (tree &optional (n nil))
  (if (not n)
      (part-tree-dist tree t)
    (let ((
|#

(defgeneric part-graph (graph  mode)
  (:documentation "Does a partition of a graph <graph>."))

(defmethod part-graph ((graph list) (mode symbol))
  (case mode
    (:distance (part-tree-dist graph t))
    (t (message "Actually one mode is avalaible, please use :distance"))))
  
(defmethod graph-part ((graph t) &optional (mode :distance))
  "Partition a graph according according to edges which have maximum length."
  (fv-morphologie::part-graph graph mode))







(defun mmax (&rest x)
  (if x (apply #'max (remove nil x)) x))

(defun feuille-p (self)
  (if (not (cdr self))
      (null (cdar self))
      (null (cadr self))))

;(feuille-p '((1)))
;(feuille-p '((1) (0)))
;(feuille-p '((1 0)))

(defun s-class (data n &optional (norm nil) (change 1) (insert 1) (delete 1) (inex 1) (mst nil)) ; (dist #'e-dist 1 1 .5)
  "Classification of symbolic data according to their ressemblance, by clustering the minimum spanning tree of the list of data."
  (let* (;(l (length data))
         (symlist (remove-duplicates data :test #'equalp))
         (symdist (edit-dist symlist nil change insert delete inex norm))
         ;; une distance (metrique) quelconque (if (atom dist) (funcall dist &rest args
         (symtab (loop for i from 0 for s in symlist collect (list i s)))
         (grm (if mst mst (minimum-spanning-tree symdist)))
         (r (part-tree-dist grm t)) ;; if (numberp mode >>>dist) 
         (classes (list))
         tmp) ; nr)
    (loop until (or (>= (length r) n)
                    (null (remove-if #'(lambda (x) (feuille-p x)) r))) ; ou si tous singletons
          do
          (let* ((d (mapcar #'(lambda (p) (mapcar #'third p)) r))
                 (max  (apply #'mmax (mapcar #'(lambda (x) (apply #'mmax (remove nil x))) d)))
                 (k (remove 'nil (loop for e in d for j from 0 when (member max e)  collect j)))
                 (kr (mapcar #'(lambda (x) (nth x r)) k)))
            (loop for kri in kr for ki in k do
                  (if (feuille-p kri)
                      (setf r (append  (subseq r 0 ki) (list kri) (subseq r (1+ ki))))
                    (let ((pkr  (part-tree-dist kri t)))
                      (setf r (remove kri (append pkr r))))))))
    (setf classes
          (loop for p in r for i from 0
                collect
                (list i (remove-duplicates (mapcar #'(lambda (x) (assoc x symtab)) 
                                                   (apply #'append p)) :test #'equalp))))
    (loop for c in classes do
          (let ((elts (mapcar #'cadr (cadr c))))
            (loop for e in elts do
                  (when e
                    (push (list e (car c)) tmp)))))
    (values
     (loop until (null data)
           collect
           (cadr (assoc (pop data) tmp :test #'equalp)))
     classes)))

(defun s-class-with-fixed (data n fixed &optional (fixed-dist nil) (norm nil) (mode t) (change 1) (insert 1) (delete 1) (inex 1) (mst nil))
  (declare (ignore mode))
  (let* ((f-dist (if fixed-dist fixed-dist #'equalp)) ; may be edit-dist change insert inex ?
         (f-length (length fixed))
         (fixed-pos (mat-transpos (list (mapcar #'(lambda (f) (allpos f data f-dist)) fixed) fixed)))
         (data-f (remove-if #'(lambda (x) (member x fixed :test f-dist)) data)) ; :test #'equalp))
         (c-data (s-class data-f n norm change insert delete inex mst)))
    (loop ;for d in data
          for i from 0 to (1- (length data))
          collect
          (let ((k (assoc i fixed-pos :test #'member)))
            (if k
                (position (cadr k) fixed :test #'equalp)
              (+ f-length (pop c-data)))))))


(defmethod class-sym ((data t) (classes integer) (mode symbol) &key (uncom .5) (ins 1) (del 1) (change 1) (excluded nil) (mst nil))
  "Classify a set of segments or sequences into different classes according to their editing distance to each other and
by partitioning the resulting spanning tree (see class-graph).
The output is a list of numbers (from zero) as instances of the different classes retrieved.
Keyword arguments :uncom :ins/del :change for tuning editing distance (see dist-edit).
The argument :excluded is a list of elements of data excluded from classification ;
in the output, the numbering of the different instances begins by numbering these elements first (from zero), 
in the order defined with the argument :excluded."
  (if (not excluded)
      (cond ((or (eq mode :edit-nn) (not mode))
             (fv-morphologie::s-class data classes nil change ins del uncom mst))
            ((eq mode :edit-norm)
             (fv-morphologie::s-class data classes t change ins del uncom mst))
            (t nil))
    (cond ((eq mode :edit-nn)
           (fv-morphologie::s-class-with-fixed data classes excluded nil nil nil change ins del uncom mst))
          ((eq mode :edit-norm)
           (fv-morphologie::s-class-with-fixed data classes excluded nil nil t change ins del uncom mst))
          (t nil))))











;;;


;;; 2.2 DESCRIPTION - STATS - INFORMATION

;; stats

(defun histogramme (data &key (test #'equalp) (thes nil))
  (let ((cl (if thes thes (remove-duplicates data :test test)))
	(histo (list)))
    (dolist (c cl)
      (push (list c (length (remove-if-not #'(lambda (x) (funcall test c x)) data)))
	    histo))
    (if (not (member nil (mapcar #'numberp cl)))
        (sort histo '< :key 'car)
      (sort histo '> :key 'cadr))))


(defgeneric histogram (data &key test thes))

(defmethod histogram ((data t) &key (test #'=) (thes nil))
  (fv-morphologie::histogramme data :test test :thes thes))











;;;
;; information theory - Shannon Entropy

(defparameter *e* 2.7182818284590452353602874) ; (/ 848456353 312129649) = (exp 1)

#-Lispworks
(defun e-shannon (data &optional (base nil) (test #'equalp))
  "Returns the shannon entropy value of data.
Shannon entropy value may be between 0 and (log n base)."
  (let* ((cl (remove-duplicates data :test test))
	 (n (length data))
	 (p nil)
	 (b (if (numberp base)
		base
		(if (eql base 'e)
		    (exp 1)
		    (max 2 (length cl))))))
    (dolist (ci cl (- 0 (apply #'+ (mapcar #'(lambda (x) (* x (log! x b))) p))))
      (push (/ (length (remove-if-not #'(lambda (x) (funcall test x ci)) data)) n)
            p))))

#+Lispworks
(defun e-shannon (data &optional (base nil) (test #'equalp))
  "Returns the shannon entropy value of data.
Shannon entropy value may be between 0 and (log n base)."
  (let* ((cl (remove-duplicates data :test test))
	 (n (length data))
	 (p nil)
	 (b (if (numberp base)
		base
		(if (eql base 'e)
		    (exp 1)
		    (max 2 (length cl))))))
    (dolist (ci cl (- 0 (sum-loop(mapcar #'(lambda (x) (* x (log! x b))) p))))
      (push (/ (length (remove-if-not #'(lambda (x) (funcall test x ci)) data)) n)
            p))))

(defun windowed-e-shannon (data n &optional (base 2) (test #'equalp))
  ;; applique e-shannon sur fenetres de taille n echantillons
  (let* ((L (length data))
	 (w (/ L n)) )
    (loop for i from 0 to (1- n) ;(floor (/ L step)))
       collect
	 (let ((k (floor (* (1+ i) w))))
	   (e-shannon (subseq data (floor (* i w)) (if (< k L) k L))
		      base test)))))

(defun shannon-entropy (data &optional (base nil) (samples nil) (test #'equalp))
  "Returns the entropy value of the data according to Shannon definition."
  (assert (or (integerp samples) (null samples)))
  (if (not samples)
      (e-shannon data base)
      (windowed-e-shannon data samples base test)))

#-Lispworks
(defun kind-of-entropie-conditionnelle (data &optional (base 2) (test #'equalp))
  "Kind of conditionnal entropy based on a hack of shannon entropy by me. Experimental."
  (let* ((p nil) (len (length data))
	 (s (remove-duplicates data :test #'equalp)) ;test))
	 (n (length s))
	 (b (if (numberp base)
		base
		(if (eql base 'e) (exp 1) (max 2 n))))
	 (r (mapcar (lambda (x) (cons x (mapcar (lambda (y) (list y 0)) s))) s)))
    (dotimes (d (1- (length data))) ;build table of P(a if b)
      (let ((k (assoc (nth d data) r :test test))
	    (l (nth (1+ d) data)))
	(incf (cadr (assoc l (cdr k) :test test)) )))
    (dolist (i r (- 0 (apply #'+ (mapcar #'(lambda (x) (* x (log! x (* b b)))) p)))) ; sqr log to scale
      (dolist (j (cdr i))
	(push (/ (cadr j) len) p))))) ; P(i)

#+Lispworks
(defun kind-of-entropie-conditionnelle (data &optional (base 2) (test #'equalp))
  "Kind of conditionnal entropy based on a hack of shannon entropy by me. Experimental."
  (let* ((p nil) (len (length data))
	 (s (remove-duplicates data :test #'equalp)) ;test))
	 (n (length s))
	 (b (if (numberp base)
		base
		(if (eql base 'e) (exp 1) (max 2 n))))
	 (r (mapcar (lambda (x) (cons x (mapcar (lambda (y) (list y 0)) s))) s)))
    (dotimes (d (1- (length data))) ;build table of P(a if b)
      (let ((k (assoc (nth d data) r :test test))
	    (l (nth (1+ d) data)))
	(incf (cadr (assoc l (cdr k) :test test)) )))
    (dolist (i r (- 0 (sum-loop (mapcar #'(lambda (x) (* x (log! x (* b b)))) p)))) ; sqr log to scale
      (dolist (j (cdr i))
	(push (/ (cadr j) len) p))))) ; P(i)

;(kind-of-entropie-conditionnelle (loop for i from  0 to 1000 collect (random 2)) nil)

(defun windowed-entropie-cond (data n &optional (base nil) (test #'equalp))
  ;; applique e-shannon sur fenetres de taille n echantillons
  (let* ((L (length data))
	 (w (/ L n)) )
    (loop for i from 0 to (1- n) ;(floor (/ L step)))
       collect
	 (let ((k (floor (* (1+ i) w))))
	   (kind-of-entropie-conditionnelle (subseq data (floor (* i w)) (if (< k L) k L))
		      base test)))))

(defgeneric entropie-conditionnelle (data &optional base samples test)
  (:documentation "Kinf of conditionnal entropy based on Shannon entropy (hack)."))

(defmethod entropie-conditionnelle ((data list) &optional (base nil) (samples nil) (test #'equalp))
  (if samples
      (windowed-entropie-cond data (floor (/ (length data) samples)) base test)
      (kind-of-entropie-conditionnelle data base test)))

(defmethod entropy ((data t) &optional (mode nil) (samples nil))
  (cond 
    ((not mode)
     (message "Entropy: using 'shannon-2 mode (default).")
     (shannon-entropy data 2 samples))
    ((eql mode :shannon-2)
     (shannon-entropy data 2 samples))
    ((eql mode :shannon-e)
     (shannon-entropy data (exp 1) samples))
    ((eql mode :shannon-n)
     (shannon-entropy data nil samples))
    ((eql mode :cond-sh)
     (entropie-conditionnelle data nil samples))
    (t (message "Entropy: unknown mode. Avalaible modes are: 'shannon-2, 'shannon-n, shannon-e."))))














(defgeneric self-info (data elt &optional test)
  (:documentation "Amount of information of each element <elt> in data.
Element <elt> is a symbol or a numeric value in a discrete space (for instance: binary).
If <elt> is null, self-info returns the amount of information for each element in data,
sorted in decreasing order of amount of information in data."))

(defmethod self-info ((data list) (elt symbol) &optional (test #'equalp))
  (when (not test) (setf test #'equalp))
  (- 0 (log (/ (length (remove-if-not #'(lambda (x) (funcall test x elt)) data)) (length data)) 2)))

(defmethod self-info ((data list) (elt integer) &optional (test #'equalp))
  (when (not test) (setf test #'equalp))
  (- 0 (log (/ (length (remove-if-not #'(lambda (x) (funcall test x elt)) data)) (length data)) 2)))

(defmethod self-info ((data list) (elt null) &optional (test #'equalp))
  (let ((elts (remove-duplicates data :test #'equalp)))
    (sort (mapcar #'(lambda (x) (list x (self-info data x test))) elts) '> :key #'second)))


(defmethod elt-info ((data t) (elt t) &optional (test #'equalp))
  (fv-morphologie::self-info data elt test))






;; (defun redondance

;(defmethod redundancy ((data t))
;  :non-generic t
;  :class morphologie-box
;  (fv-morphologie::redondance data))




;;; series
;; some tools for series

(defun xt2dt (xt)
  (let ((d (list (pop xt))))
    (dolist (x xt (reverse d))
      (when (not (= (cadr x) (cadar d)))
        (push x d)))))

(defun nocons= (seq &optional (test #'=))
  "reechantillonne seq en y interpolant lineairement les valeurs consecutives egales"
  (let ((l (length seq)))
    (loop for k from 0 to (- l 2)
       do
       (when (funcall test (nth k seq) (nth (+ k 1) seq))
         (let* ((z (loop for n from 0 while (and (funcall test (nth (+ k n) seq) (nth k seq))
						   (< (+ k n 1) l))
                         finally (return n)))
                (d (float (/ (- (nth (+ k z) seq) (nth k seq)) z))))
           (loop for n from 0 to (1- z) do
                 (setf (nth (+ k n) seq) (+ (nth (+ k n) seq) (* n d) )))
           (when (funcall test (nth k seq) (nth (+ k 1) seq)) ;
             (setf (nth (+ k 1) seq) (nth k seq))) ;
           (setf k (+ k z -1)))))
    (values seq)))

;;; shell utils

#+SBCL
(defun shell-command (string &rest args)
  (eval `(asdf:run-shell-command ,string ,args)))

#+Lispworks
(defun shell-command (string &rest args)
  (eval `(system:run-shell-command ,string .,args)))

;(shell-command "ls")







