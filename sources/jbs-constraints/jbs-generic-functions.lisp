;;;       JBS-CONSTRAINTS for PWGL

;;; Copyright (c) 2009, Jacopo Baboni Schilingi.  All rights reserved.
;;; Copyright (c) 2007, Kilian Sprotte.  All rights reserved.

;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:

;;;   * Redistributions of source code must retain the above copyright
;;;     notice, this list of conditions and the following disclaimer.

;;;   * Redistributions in binary form must reproduce the above
;;;     copyright notice, this list of conditions and the following
;;;     disclaimer in the documentation and/or other materials
;;;     provided with the distribution.

;;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS' AND ANY EXPRESSED
;;; OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
;;; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;;; DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
;;; GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
;;; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.



(in-package :jbs-constraints)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  JACOPO BABONI SCHILINGI   -   2009    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     CONSTRAINTS       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   GENERIC FUNCTIONS     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;(pw::create-list '10 '(1 2 3))
;;;
;;;===========================
;;;
(defun conta-elemento-una-volta? (lista)
  (if (= (length lista)
	 (length (remove-duplicates lista)))
      t nil))
;;;
;;;====================================
;;;
(defun my-arithm-ser (start end step)
  (pw::arithm-ser start step end))
;;;
;;;====================================
;;;
(defun my-mod (list)
  (pw::g-mod list 12))
;;;
;;;====================================
;;;
(defun my-mod-atom (numero)
  (mod (/ numero 100) 12))
;;;
;;;====================================
;;;
(defun my-included? (list1 list2)
  "verifica se una sottolista è inclusa in in una lista di liste o no"
  (let ((ris nil))
    (dolist (y list2 (first (nreverse ris)))
      (push (equalp y list1)
	    ris))))
;;;
;;;====================================
;;;
;
;;;==============================================================================================
;                                  arithm-ser-stop
;;;==============================================================================================
;
(defun mio-repeat (self num)
  ""
  (let (rep)
    (loop for i from 1 to num do
          (push self rep))
    (reverse rep)))
;
(defun arithm-ser-stop (start step stop)
  "ItÕs an arithmetical series who, rather than arrive to an end, 
stops after the number of steps indicated in Ôstop. ThatÕs the old pw::arithm-ser2"
  (let* ((steps (mio-repeat step (1- stop)))
         (ris nil)
         (mio-start start))
    (dolist (y steps (pw::x-append mio-start (nreverse ris)))
      (push (incf start y) ris))))
;;;
;;;===========================
;;;
(defun ddd (list1 list2)
  "verifica se ogni elemento di lista1 si trova allo stesso posto di ogni elemento di lista2"
  (let ((ris nil) (ros nil))
    (dotimes (x (length list1) (nreverse ros))
      (dolist (y list2 (nreverse ris))
	(if (= (nth x list1) (nth x y))
	    (push 'c ros)
	    (push nil ris))))))
;;;
;;;===========================
;;;
(defun hhh (list1 list2)
  (pw::included? '(c) (ddd list1 list2)))
;;;
;;;===========================
;;;
(defun prx2 (lista1 lista2)
  "Crea la lettura modulare di lista1 in funzione della lunghezza di lista2.
   Se lista1  pi corta di lista2 allora lista1 viene riletta per il numero di volte
   identico a lista 2. Ma viene riletto il om::x->dx di lista1 in funzione del
   om::x->dx di lista2."
  (let ((ros nil))
    (dotimes (y (length (pw::x->dx lista2)) (nreverse ros))
      (push
       (if (< (length (pw::x->dx lista1)) (length (pw::x->dx lista2)))
	   (nth
	    (mod y (length (pw::x->dx lista1)))
	    (pw::x->dx  lista1))
	   (nth y (pw::x->dx  lista1))) ros))))
;;;
;;;===========================
;;;
;; (defun om-floor (self)
;;  (pw::g-floor self))
;;;
;;;===========================
;;;
(defun deep-mapcar (fun fun1 list? &rest args)
  "Mapcars <fun> or applies <fun1> to <list?> <args> whether <list?> is a list or not."
  (cond
    ((null list?) ())
    ((not (consp list?)) (apply fun1 list? args))
    (t (cons (apply #'deep-mapcar fun fun1 (car list?) args)
	     (apply #'deep-mapcar fun fun1 (cdr list?) args)))))
;;;
;;;===========================
;;;
(defun l-nth (list l-nth)
  "<l-nth> may be a number or a list of numbers.  Returns a copy of <l-nth> where
each number is replaced by the corresponding element in the list <l>.
Eg: (l-nth  '(2 (0) 1) '(a b c d)) => (c (a) b)."
  (deep-mapcar 'l-nth 'nth l-nth list))
;;;
;;;===========================
;;;

#|
(defun my-explode (list nlists)
  "list-explode divides a list into <nlist> sublists of consecutives elements.
For example, if list is (1 2 3 4 5 6 7 8 9), and ncol is 2, the result is ((1 2 3 4 5)
(6 7 8 9)),
if list is (1 2 3 4 5 6 7 8 9), and ncol is 5, the result is: ((1 2) (3 4) (5 6) (7 8) (9)).
If the number of divisions exceeds the number of elements in the list, the
remaining divisions are returned as nil."

  (if (> nlists (length list))
    (setq list (append list (make-list (- nlists (length list)) :initial-element (first (last list))))))
  (if (<= nlists 1) list
      (let* ((length (length list))
	     (low (floor length nlists))
	     (high (ceiling length nlists))
	     (step (if (< (abs (- length (* (1- nlists) high))) (abs (- length (* nlists low))))
		     high  low))
	     (rest (mod length nlists))
	     (end (- length 1 rest))
	     (ser (my-arithm-ser 0 (1- step) 1))
	     res)
	(for (i 0 step end)
	  (push (remove () (l-nth list (om+ i ser))) res))
	(setq low (length (flat-once res)))
	(if (< low length) (setq res (cons (append (first res) (nthcdr low list)) (rest res))))
	(cond ((> (length res) nlists)
	       (nreverse (cons (nconc (second res) (first res)) (nthcdr 2 res))))
	      ((< (length res) nlists)
	       (when (= (length (first res)) 1)
		 (setq res (cons (nconc (second res) (first res)) (nthcdr 2 res))))
	       (nreverse (nconc (nreverse (my-explode (first res) (1+ (- nlists (length res)))))
				(rest res))))
	      (t (nreverse res))))))

|#

;;;					;
;;;===========================		;
;;;					;
(defun count-positif (list)
  (let ((ris nil))
    (dolist (y list (apply '+ (nreverse ris)))
      (if (> y 0)
	  (push 1 ris)))))
;;;					;
;;;===========================		;
;;;					;
(defun count-negatif (list)
  (let ((ris nil))
    (dolist (y list (apply '+ (nreverse ris)))
      (if (< y 0)
	  (push 1 ris)))))
;;;					;
;;;===========================		;
;;;					;

(defun list-explode (list nlists)
  "From PatchWork; It groups the list in Ôlist in a number of sub-lists indicated in Ônlists. "
  (pw::list-explode list nlists))
;;;
;;;===========================
;;;
(defun octave (midic)
    "retourne l'octave  partir de c3=octave 3"
  (let ((midic (pw::list! midic)))
    (mapcar #'(lambda (x) (pw::om- (pw::om// x 12) 2) ) midic)))
;;;
;;;===========================
;;;
(defun makenote (index octave &optional mod)
    " construction d'une note à partir des donnes
	     de index, octave e modulo du index"
  (+ (/ (* index 1 12) mod) (* (+ 2 octave) 12)))
;;;
;;;===========================
;;;
(defun int-com (lista)

  "Restituisce l'intervallo complementare di un intervallo dato in funzione della
   prima nota dell'intervallo stesso. Questo significa che se ho SOL3 DO4, la
   funzione restituisce do4 sol4."

  (let ((ris nil))

    (pw::flat
     (dotimes (x (- (length lista) 1) (nreverse ris))
       (push
	(pw::x->dx (append
		    (list (nth x lista))
		    (list (-  (- (nth x lista)
				 (*  (- 12 (mod
					    (/ (- (first (pw::x->dx lista))
						  (*
						   (first
						    (pw::om// (pw::x->dx lista) 1200)) 1200)) 100) 12)) 100))
			      (* (first (pw::om// (pw::x->dx lista) 1200)) 1200)))))
	ris)))))
;;;
;;;===========================
;;;
(defun prof (lista1 lista2)
  "restituisce l'intervallo complentare tenendo le altezze assolute."
  (let ((ris nil))
    (pw::flat
     (dotimes (x (length (prx2 lista1 lista2)) (nreverse ris))
       (push (if (equalp (signum (nth x (prx2 lista1 lista2)))
			 (signum (nth x (pw::x->dx lista2))))
		 (nth x (pw::x->dx lista2))
		 (int-com (list
			   (nth x lista2)
			   (nth (1+ x) lista2))))
	     ris)))))
;;;
;;;===========================
;;;
(defun crea-liste-sfasate (lista)
  "crea la serie di coppie di elementi"
  (let ((ris nil)
	(prima (butlast lista))
	(seconda (rest lista)))

    (dotimes (x (length prima) (nreverse ris))
      (push (pw::x-append (nth x prima)
			  (nth x seconda))
	    ris))))
;;;
;;;===========================
;;;
(defun conta (list)
  "restituisce l'indicatore della dotimes ogni volta in cui c' un contrasto"
  (let ((ris nil))
    (dotimes (x (length list) (nreverse ris))
      (if (eq (nth x list) (nth (1+ x) list))
	  ()
	  (push x ris)))))
;;;
;;;===========================
;;;
(defun lisse (list)
  "supprime les lments contigus identiques"
  (let ((L()))
    (loop for x from 1 to (length list)
       do
       (cond ((not (equal (nth x list) (nth (1- x) list)))
	      (push (nth (1- x) list) L))
	     ((and (= x (length list))
		   (not (equal (nth x list) (nth (1- x) list))))
	      (push (nth x list) L))))
    (reverse L)))
;;;
;;;===========================
;;;
(defun contone (list)
  "restituisce il numero di comparse per ogni elemento associato all' elemento
corrispondente"
  (let ((calcolone (conta list)))
    (pw::mat-trans (list (append
			  (list (+ 1 (first calcolone)))
			  (pw::x->dx calcolone))
			 (lisse list)))))
;;;
;;;===========================
;;;
(defun smooth (list)
  "supprime les lments contigus identiques (Fred Voisin))"
  (let ((L()))
    (loop for x from 1 to (length list)
       do
       (cond ((not (equal (nth x list) (nth (1- x) list)))
	      (push (nth (1- x) list) L))
	     ((and (= x (length list))
		   (not (equal (nth x list) (nth (1- x) list))))
	      (push (nth x list) L))))
    (reverse L)))

;;;
;;;===========================
;;;
(defun primo-passo (lista n)
  "prende n elementi di una lista"
  (let ((f nil))
    (dotimes (x n)
      (push (nth x lista) f))
    (nreverse f)))
;;;
;;;===========================
;;;
(defun scom (lista1 n)
  "Scompone la lista1 in funzione delle lunghezze indicate nella n"
  (let ((ris nil))
    (cond ((equal n 'nil)
	   (loop for x from 2 to (floor (/ (length lista1) 2))
	      do
	      (dotimes (y (+ (- (length lista1) x) 1))
		(push (primo-passo
		       (nthcdr y lista1)
		       x)
		      ris))))
	  ((or (integerp n) (and (listp n) (= 1 (length n))))
	   (dotimes (y (+ (- (length lista1) n) 1))
	     (push (primo-passo
		    (nthcdr y lista1)
		    n)
		   ris)))
	  ((and (listp n) (= 2 (length n)))
	   (loop for x from (car n) to (cadr n)
	      do
	      (dotimes (y (+ (- (length lista1) x) 1))
		(push (primo-passo
		       (nthcdr y lista1)
		       x)
		      ris))))
	  (t (format t " Invalid optional input") (abort)))
    (reverse ris)))
;;;
;;;===========================
;;;
(defun rispero (lista n)
  (scom lista n))
;;;
;;;===========================
;;;
(defun risperiamo (lista n)
  "E' molto simile a speriamo : trova i pattern di n lunghezza
	     all'interno della lista"
  (let ((ris nil))
    (dolist (x (rispero lista n) (nreverse ris))
      (if (equalp
	   (pw::included? (list nil)
			  x) nil)
	  (push x ris)))))
;;;
;;;===========================
;;;
(defun ptrn-ridond-ctrl-prov (lista n)
  "Restituisce tutti i sotto-pattern che compaiono almeno
	     due volte (ridondanza) e le cui length sono decise da
	     noi in N."
  (let ((ris nil)
	(x (risperiamo lista n))
	y)

    (pw::while x
      (if (find (setf y (pop x)) x :test 'equal)
	  (push y ris))) (nreverse ris)))
;;;
;;;===========================
;;;
(defun mio-smooth (list)
  (let ((ris nil))
    (loop for x from 0 to (1- (length list)) do
	 (when (not (equal (nth (+ x 1) list) (nth x list)))
	   (push (list x (nth x list)) ris)))
    (reverse ris)))
;;;
;;;===========================
;;;
(defun ci-siamo-1 (list)
  (let* ((ris nil)
	 (ros nil)
	 (calcolo (pw::x-append (list (list 0 0)) (mio-smooth list)))

	 (calcolone (dotimes (y (1- (length calcolo)) (remove nil (nreverse ros)))
		      (push (pw::posn-match
			     (rest list)
			     (my-arithm-ser (first (nth y calcolo))
					    (1- (first (nth (1+ y) calcolo)))
					    1))
			    ros))))
    (if (equalp (first (first calcolone))
		(first list))
	(pw::x-append (list (pw::x-append (first list) (first calcolone)))
		      (rest calcolone))
	(pw::x-append (list (pw::x-append (first list) nil))
		      calcolone))))
;;;
;;;===========================
;;;
(defun profile-condition (list)
  (let ((ris nil)
	(calcolo (voice-scanner list)))
    (dolist (y calcolo (nreverse ris))
      (push (if (= (length (first (second y))) 1)
		'profilo) ris))))
;;;
;;;===========================
;;;
(defun ci-siamo-2 (list)
  (let* ((ris nil)
	 (ros nil)
	 (calcolo (pw::x-append (list (list 0 0)) (mio-smooth list)))
	 (calcolone (dotimes (y (1- (length calcolo)) (remove nil (nreverse ros)))
		      (push (pw::posn-match
			     (rest list)
			     (pw::arithm-ser (first (nth y calcolo))
					     (1- (first (nth (1+ y) calcolo)))
					     1))
			    ros))))
    (if (equalp (first (first calcolone))
		(first list))
	(pw::x-append (list (pw::x-append (first list) (first calcolone)))
		      (rest calcolone))
	(pw::x-append (list (pw::x-append (first list) nil))
		      calcolone))))
;;;
;;;===========================
;;;
(defun group-equals (list)
  "It groups identical elements with consecutive identical elements"
  (funcall 'ci-siamo-2 list))
;;;
;;;===========================
;;;
(defun scomp (list1 list2)
  "Restituisce la nostra lista1 di partenza suddivisa nei segmenti
	     da noi scelti tramite lista2."
  (let (ris)			  ;Prende ogni elemento di lista2 e lo
    (dotimes (x (length list2) (nreverse ris)) ;usa per estrarre i valori da lista1.
      (if (= x 0)
	  (push (primo-passo	  ;Per fare in modo che (nth x lista2)
		 (nthcdr	   ;non prenda il successivo di lista1

		  (let (ros)	   ;uso (nthcdr) la cui y  data da
		    (dotimes (y (length ris)) ;(apply '+ ros) cio dalla somma
		      (push (nth y list2) ros))	;delle y precedenti.
		    (apply '+ ros))

		  list1)			      ;
		 (nth x list2))			      ;
		ris)
	  (push (primo-passo	  ;Per fare in modo che (nth x lista2)
		 (nthcdr	   ;non prenda il successivo di lista1
		  (-
		   (let (ros)	   ;uso (nthcdr) la cui y  data da
		     (dotimes (y (length ris)) ;(apply '+ ros) cio dalla somma
		       (push (nth y list2) ros)) ;delle y precedenti.
		     (apply '+ ros))
		   1)
		  list1)			      ;
		 (nth x list2))			      ;
		ris)))))
;;;
;;;(scomp '(1 2 3 1 2 3 1 2 3) '(1 2 3 4))
;;;===========================
;;;
(defun circular-lists-reading (list-1 list-2)
    "If list-1 is shorter than list-2, so list-1 is reded in a circular way in order to incerase
its length to be identical to list-2."
    ()
  (let ((ros nil))
    (dotimes (y (length list-2) (nreverse ros))
      (push
       (if (< (length list-1) (length list-2))
	   (nth
	    (mod y (length list-1))
	    list-1)
	   (nth y list-1)) ros))))
;;;
;;;(circular-lists-reading '(1 2 3) '(a s d a s d a s d a s d))
;;;===========================
;;;
(defun scomposition (lista1 n)
    "It groups the list 1 in sublists of the lengths indicated in Ôn"
    ()
  (let ((ris nil))
    (cond ((equal n 'nil)
	   (loop for x from 2 to (floor (/ (length lista1) 2))
	      do
	      (dotimes (y (+ (- (length lista1) x) 1))
		(push (primo-passo
		       (nthcdr y lista1)
		       x)
		      ris))))
	  ((or (integerp n) (and (listp n) (= 1 (length n))))
	   (dotimes (y (+ (- (length lista1) n) 1))
	     (push (primo-passo
		    (nthcdr y lista1)
		    n)
		   ris)))
	  ((and (listp n) (= 2 (length n)))
	   (loop for x from (car n) to (cadr n)
	      do
	      (dotimes (y (+ (- (length lista1) x) 1))
		(push (primo-passo
		       (nthcdr y lista1)
		       x)
		      ris))))
	  (t (format t " Invalid optional input") (abort)))
    (reverse ris)))
;;;
;;;(scomposition '(a b c d e r f t g) '(1 8))
;;;===========================
;;;
(defun mk-bpf-connection (indexes &rest lists)

    "It allows to create a BPF from a series of BPF inserted in Ôlists,
who are recalled from the corresponding Ôindexes.
BE CAREFULL : to put the bpf y points you have to extend the number of inputs."
    ()
  (let* ((calcolo (pw::posn-match lists indexes))
	 (calcoli (pw::flat (mapcar #' (lambda (x) (pw::x->dx x)) calcolo))))

    (pw::dx->x (first (first calcolo)) calcoli)))
;;;
;;;===========================
;;;
(defun primo-passo1 (list)
  "rimuovi i doppioni e conta"
  (let ((ris nil)
	(calcolo (remove-duplicates list :test 'equalp :from-end 0)))

    (dotimes (x (length calcolo) (nreverse ris))
      (dolist (y list)
	(if (equalp (nth x calcolo) y)
	    (push (+ x 1) ris)
	    (push 'cacca ris)
	    )))))
;;;
;;;===========================
;;;
(defun find-it-in-lists (element lists)
  "Cerca un elemento e verifica che sia presente in tutte le liste in lists. Se non 
presente in tutte restituisce nil, altrimenti t"
  (let ((ris nil))
    (dolist (y lists (if (= (length lists)
			    (apply '+ (nreverse ris)))
			 t nil))
      (if (find element y :test 'equalp)
	  (push 1 ris)))))
;;;
;;;===========================
;;;
(defun one-dandolo-all-in-all (element lists)
  "Cerca un elemento e verifica che sia presente in tutte le liste in lists. Se non 
presente in tutte restituisce nil, lo restituisce"
  (let ((ris nil))
    (dolist (y lists (nreverse ris))
      (if (find element y :test 'equalp)
	  (push element ris)))))
;;;
;;;===========================
;;;
(defun find-one-of-them-once (elements lists)
    "This function gives t if at least one element is included in one list of lists. It gives nil if
not."
    ()
  (let ((ris nil))
    (dolist (y elements (first (remove-duplicates (nreverse ris))))
      (push (find-it-once y lists) ris))))
;;;
;;;(find-one-of-them-once '(2) '((1 2) (2 3)))
;;;===========================
;;;
(defun find-it-once (element lists)
    "This function gives t if element is included at least in one list of lists. It gives nil if
not."
    ()
  (let ((ris nil))
    (dolist (y lists (if (> (apply '+ (nreverse ris))
			    0) t nil))
      (push (count element y :test 'equalp) ris))))
;;;
;;;(find-it-once 2 '((1 2) (4 3)))
;;;===========================
;;;
(defun find-all-in-lists (elements lists)
    "It verifies if each element in 'elements is included in all the the sub-list of
'lists is put out, otherwise not."
    ()
  (let* ((ris nil)
	 (ros nil)
	 (calcolo (dolist (y elements (nreverse ris))
		    (push (one-dandolo-all-in-all y lists) ris))))
    (dolist (y calcolo (nreverse ros))
      (if (= (length lists)
	     (length y))
	  (push (first y) ros)))))
;;;
;;;(find-all-in-lists '(1 2) '((1 2 3) (4 3 2 1)  (1)))
;;;===========================
;;;
(defun find-at-least-one-element-in-list (list-1 list-2)
    "?????????"
    ()
  (let* ((ris nil)
	 (ros nil)
	 (calcolo (dolist (y list-1 (nreverse ris))
		    (push (one-dandolo-all-in-all y list-2) ris))))
    (dolist (y calcolo (nreverse ros))
      (if (= (length list-2)
	     (length y))
	  (push (first y) ros)))))
;;;
;;;(find-at-least-one-element-in-list '(1 2 3) '((3 4 5) (2 3 4)))
;;;===========================
;;;
(defun general-member (list item)
    "This function looks for list-1 into the list of lists list-2. If it finds it it outputs t,
otherwise nil."
    ()
  (if (> (count item list :test 'equalp)
	 0) t nil))
;;;
;;;(general-member '((3 4 5) (1 2 3)) '(1 2 3))
;;;===========================
;;;
(defun find-them-in-list (items list)
  "This function looks for items into a list. If all itmes are there it it outputs t,
otherwise nil."
  ()
  (if (= (apply '+ (mapcar #' (lambda (x) (if (> (count x list :test 'equalp) 0)
                             1 0)) items))
         (length items)) t nil))
;;;
;;;(general-member '((3 4 5) (1 2 3)) '(1 2 3))
;;;===========================
;;;


;;;
;;;(general-member '((3 4 5) (1 2 3)) '(1 2 3))
;;;===========================
;;;
(defun genero-lista-segno-maggiore (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append '> y) ris))))
;;;
;;;(genero-lista-segno-maggiore '(1 2 3 4))
;;;===========================
;;;
(defun genero-lista-segno-minore (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append '< y) ris))))
;;;
;;;(genero-lista-segno-minore '(1 2 3 4))
;;;===========================
;;;
(defun genero-lista-segno-uguale (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append 'equalp y) ris))))
;;;
;;;(genero-lista-segno-uguale '(1 2 3 4))
;;;===========================
;;;
(defun genero-lista-segno-meno (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append '- y) ris))))
;;;
;;;(genero-lista-segno-meno '(1 2 3 4))
;;;===========================
;;;
(defun genero-signum (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append 'signum y) ris))))
;;;
;;;(genero-signum '(1 2 3 4))
;;;===========================
;;;
(defun genero-signum2 (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append 'signum (list y)) ris))))
;;;
;;;(genero-signum2 '(1 2 3 4))
;;;===========================
;;;
(defun genero-segno-meno (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append '- y) ris))))
;;;
;;; (genero-segno-meno '(1 2 3 4))
;;;===========================
;;;
(defun genero-m-for-?1 (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append 'm y) ris))))
;;;
;;; (genero-m-for-?1 '(1 2 3 4))
;;;===========================
;;;
(defun genero-m-for-?1-con-parts (lista part?)
  (let ((ris nil))
    (dolist (y (make-?1 lista) (nreverse ris))
      (push (pw::x-append 'm y :parts part?) ris))))
;;;
;;; (genero-m-for-?1-con-parts '(1 2 3 4) 1)
;;;===========================
;;;
(defun genero-harm-int-for-rule (lista)
  (let ((ris nil)
        (lista (make-?1 lista)))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append 'm y :data-access :harm-int) ris))))
;;;
;;; (genero-harm-int-for-rule '(1 2 3 4))
;;;===========================




;;;===========================
;;;

(defun create-difference-between-2-parts (lista)
  (let ((ris nil))
    (dolist (y (pw::mat-trans lista) (nreverse ris))
      (push (pw::x-append '- y) ris))))
;;;
;;; 
;;;===========================
;;;
(defun trova-ripetizioni (lista)
  "se trova in una lista di liste che il secondo elemento di ogni sotto lista  maggiore di 1 allora
restituisce un nil altrimenti da t"
  (let ((ris nil))
    (dolist (y lista (if (> (apply '+ (nreverse ris)) 0)
			 nil t))
      (dolist (k y)
	(if (> (second k) 1)
	    (push 1 ris)
	    (push 0 ris))))))
;;;
;;;(genero-lista-segno-uguale '(1 2 3 4))
;;;===========================
;;;
(defun list-member-list (list-1 list-2)
  "dice t se una lista, list-1, fa parte di una lista di liste, list-2"
  (find list-1 list-2 :test 'equalp))
;;;
;;;(list-member-list '(1 2 3) '( (1 2 3) (1 2 3 4)))
;;;===========================
;;;

;;;
;;;
;;;===========================
;;;
(defun conta-elemento-una-volta (lista)
    "restituisce t se ogni elemento  presente una volta e nil se non  cos"
    ()
  (if (= (length lista)
	 (length (remove-duplicates lista)))
      t
      nil))
;;;(conta-elemento-una-volta '(1 2 3 4))
;;;
;;;===========================
;;;
(defun genero-lista-differenza-uguale (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append '- y) ris))))
;;;(genero-lista-differenza-uguale '(1 2 3 4))
;;;
;;;===========================
;;;
(defun genero-lista-differenza-e-uguale (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::x-append '= y) ris))))
;;;(genero-lista-differenza-e-uguale '(1 2 3 4))
;;;
;;;===========================
;;;
(defun genero-abs (lista)
  (let ((ris nil))
    (dolist (y lista (nreverse ris))
      (push (pw::list 'abs y) ris))))
;;;(genero-abs '(1 2 3 4))
;;;
;;;===========================
;;;
(defun metti-segno (segno)
  (let ((ris nil))
    (push segno ris)))
;;;(metti-segno '>)
;;;
;;;===========================
;;;
(defun find-all-intervals (chord)
    "This function outputs all intervals done by all the note of a given chord."
  (let ((ris nil)
	(chord (pw::sort-list chord)))
    (dotimes (x (1- (length chord)) (nreverse ris))
      (push (rest (pw::om- (nthcdr x chord) (nth x chord))) ris))))

;;; (find-all-intervals '(60 62 66 64 65))
;;;
;;;===========================
;;;
(defun eq-ints? (ints &rest midis)
  "FROM-LAURSON : returns true if midis (a list of midi-values) forms
the interval succession given by ints,
where ints can be an interval or a list of intervals or a list of lists of intervals,
midis can be either single midi-values or a list of midi-values"
  (when (atom ints) (setq ints (list ints)))
  (if (atom (car ints))
      (equal ints (mapcar #'- (cdr midis) midis))
      (member (mapcar #'- (cdr midis) midis) ints :test #'equal)))
;;;
;;;===========================
;;;
;; (defun count-any-element ((list '(1 2 3 4)))
;;     "This function outputs how many times each element is repeated"
;;     ()
;;   (let ((ris nil))
;;     (dolist (y (remove-duplicates list :test 'equalp) (nreverse ris))
;;       (push (count y list) ris))))
;;;(count-any-element '(1 2 3 4))
;;;===========================
;;;
(defun count-this-element (element list times)
    "This function outputs t if any element in list is repeated as indicated in times."
    ()
    (if (= (count element list :test 'equalp) times)
    t nil))
; (count-this-element 1 '(1 2 3 2 1 1) 3)



(defun count-exactly-any-element (list times)
    "This function outputs t if any element in list is repeated as indicated in times."
    ()
  (let* ((ris nil)
	 (calcolo (dolist (y (remove-duplicates list :test 'equalp) (apply '+ (nreverse ris)))
		    (if (= (count y list :test 'equalp) times)
			(push 1 ris)))))
    (if (= calcolo 0)
	nil
	(if (= (/ (length list) calcolo)
	       times)
	    t nil))))
;;;(count-exactly-any-element '(1 2 3 4 2) 1)
;;;===========================
;;;
(defun count-exactly-for-bigger-element (list times)
    "This function outputs t if any element in list is repeated as indicated in times."
    ()
  (let* ((ris nil)
	 (calcolo (dolist (y (remove-duplicates list :test 'equalp) (apply '+ (nreverse ris)))
		    (if (> (count y list :test 'equalp) times)
			(push 1 ris)))))
    (if (= calcolo 0)
	nil
	(if (= (length (remove-duplicates list :test 'equalp))
	       calcolo)
	    t nil))))
;;;(count-exactly-for-bigger-element '(1 2 3 4 1 2 3 4) 2)
;;;===========================
;;;
(defun canto-dato (list1 list2)
  (mapcar #' (lambda (x y) (equalp x y)) list1 list2))
;;;
;;;===========================
;;;
(defun min-max-picco (lista)
  "restituisce la min-flex-max dando la curva trovata e il picco numerio su cui si trova,
in altre parole restituisce i massimi e minimi relativi"
  (mapcar #'(lambda (x) (list (nth 0 x)
			      (nth 2 x))) (min-flex-max lista 4)))
;;;
;;;===========================
;;;
(defun sig (x)
  (cond ((= 0 x)
	 0)
	((plusp x)
	 1)
	(t -1)))
;;;
;;;===========================
;;;
(defun dx (list)
  (let ((r '()))
    (dotimes (n (1- (length list)) (reverse r))
      (push (- (nth (1+ n) list)
	       (nth n list))
	    r))))
;;;
;;;===========================
;;;
(defun derivees-locales (list)
  (mapcar #'sig (dx list)))
;;;
;;;===========================
;;;
(defun ptrn-smooth (list)
    "It returns the list <list> without local repetitions.
	     For example : list equal to (a a b c a b b c d c c)
	     it reurns (a b c a b c d c))"
    ()
  (let ((L()))
    (loop for x from 0 to (1- (length list)) do
	 (when (not (equal (nth (+ x 1) list) (nth x list)))
	   (push (nth x list) L)))
    (reverse L)))
;;;
;;;===========================
;;;
(defun match-prim (list)
  (let ((new-list (ptrn-smooth list)))
    (cond ((or (equalp (list 1 0 -1) new-list)
	       (equalp (list 1 -1) new-list))
	   "max")			;max
	  ((or (equalp (list -1 0 1) new-list)
	       (equalp (list -1 1) new-list))
	   "min")			;min
	  ((equalp (list -1 0 -1) new-list)
	   "flex")			;flex-
	  ((equalp (list 1 0 1) new-list)
	   "flex")			;flex+
	  ((equalp (list 0 -1 0) new-list)
	   "sig-")			;sig-
	  ((equalp (list 0 1 0) new-list)
	   "sig+")			;sig+
	  (t nil))))
;;;
;;;===========================
;;;
(defun find-primitives (list)
  (let ((derivees (derivees-locales list))
	(r '()))
    (loop for i from 0
       until (> (+ 2 i) (length derivees))
       do
       (let ((seq '()))
	 (loop for j from 0 to (- (length derivees) i 1)
	    until (stringp (match-prim seq))
	    do
	    (setf seq (append seq (list (nth (+ i j) derivees))))
	    finally
	    (return
	      (push (list i (+ i (1- j)) (match-prim seq)) r)))))

    (setf r (mapcar #'(lambda (x)
			(list
			 (third x)	; primitives
			 (second x)	; positions
			 (abs (- (car x) (cadr x))) ; profondeur (steps)
			 ))
		    (remove nil r :key #'third)))
    (reverse
     (remove-duplicates r :key #'cadr))))
;;;
;;;===========================
;;;
(defun min-flex-max (seq result?
		       &optional d-cte
		       )
    "analyse une sequence en detectant trois formes primitives:
minima: element prcd et suivi par un lment
de valeur plus grande.
maxima: element prcd et suivi par un lment
de valeur plus petite
flex: element prcd et suivi par un lment
de valeur gale
ex : (10 8 8 6 6 5 2 2 2 1)
OM->(pure-flex- (8 2) (6 2) (2 3))
le premier chiffre indique la valeur rpte
 et le deuxime terme de la liste indique son nombre d'occurrences.
la deuxime entre est un menu <which> qui permet de selectionner
 les informations:
prim: succession des primitives
prof: succession des primitives et profondeur en nombre d'lments de
chaque primitive
vals: idem que prof + valeur correspondant  chaque primitive
every:  idem que vals + position de chaque primitive"
  (let ((primitives (find-primitives seq))
	(result? (cmi-result? result?)))
    (case result?
      (1 (mapcar #'first primitives))
      (2 (mapcar #'(lambda (p)
		     (list (first p)
			   (abs (- (nth (second p) seq)
				   (nth (- (second p) (third p)) seq)))))
		 primitives))
      (3 (mapcar #'(lambda (p)
		     (list (first p)
			   (nth (second p) seq)
			   (third p)))
		 primitives))
      (4 (mapcar #'(lambda (p)
		     (list (first p)
			   (third p)
			   (nth (second p) seq)
			   (second p)))
		 primitives))
      )))
;;;(min-flex-max '(1 2 3 4 3 2 3 4 3 2 1 2 3 4 3 2 3 2) ':prof)
;;;===========================
;;;
(defun count-pattern (pattern list)
    "It counts how mnay times a pattern is repeated in the list 'list."

  (let ((ris nil)
	(calcolo (scom list (length pattern))))
    (dolist (y calcolo (apply '+ (nreverse ris)))
      (if (equalp y pattern)
	  (push 1 ris)))))
;;; (count-pattern '(a b c) '(a b c a b c))
;;;===========================
;;;
(defun count-element-first-list-in-second (list1 list2)
  "questa funziona conta quanti sono gli elementi di lista1 presenti in lista2"
  (let ((ris nil))
    (dolist (y list1 (apply '+ (nreverse ris)))
      (if (find y list2 :test 'equalp)
	  (push 1 ris)))))
;;;
;;;===========================
;;;
(defun conto-note-uguali (list)
  "permette di contare tutti gli elementi di una lista data"
  (let ((ris nil))
    (dolist (y list (nreverse ris))
      (push (count (mod y 12)
		   (my-mod list)) ris))))
;;;(conto-note-uguali '(60 67 62 36 48))
;;;===========================
;;;
(defun genero-lista-segno-minore-poly (lista which-voice)
  (let* ((ris nil)
	 (ros nil)
	 (rus nil)
	 (calcolo (dolist (y lista (mapcar 'reverse (scom (nreverse ros) 2)))
		    (dolist (k y (nreverse rus))
		      (push (pw::x-append which-voice k) ros)))))
    (dolist (y calcolo (nreverse ris))
      (push (pw::x-append '< y) ris))))
;;;(genero-lista-segno-minore-poly '((?1 ?2) (?3 ?4)) 'first)
;;;===========================
;;;
(defun genero-lista-segno-maggiore-poly (lista which-voice)
  (let* ((ris nil)
	 (ros nil)
	 (rus nil)
	 (calcolo (dolist (y lista (mapcar 'reverse (scom (nreverse ros) 2)))
		    (dolist (k y (nreverse rus))
		      (push (pw::x-append which-voice k) ros)))))
    (dolist (y calcolo (nreverse ris))
      (push (pw::x-append '> y) ris))))
;;;(genero-lista-segno-maggiore-poly '((?1 ?2) (?3 ?4)) 'first)
;;;===========================
;;;
(defun ptrn-reson (list windw
		     &optional step set)
    "Avance dans la sequence <list> avec avec une taille de fenetre <windw>
et un pas d'avancement (optionnel) <step> .
Renvoie pour chaque fentre le nombre d'occurrences d'un lment.
L'entre optionnelle <set> specifie les segments recherches dans <list>."
    ()
  (count-ptrn-win list windw step set))
;;;
;;;===========================
;;;
(defun count-ptrn-win (seq win &optional step ptrn-set)
  (assert (listp ptrn-set))
  (when (null step) (setf step win))
  (let ((result '())
	(elements (if ptrn-set
		      ptrn-set
		      (remove-duplicates seq :test #'equalp))))

    (loop for i from 0 to (floor (/ (length seq) step))
       until (> (+ (* i step) win) (length seq))
       do
       (let* ((window (subseq seq (* i step) (+ (* i step) win))))
	 (push (mapcar #'(lambda (elt)
			   (list elt (count elt window :test #'equalp)))
		       elements)
	       result))
       finally
       (let ((result-not-sorted (append (reverse result)
					(list (mapcar #'(lambda (elt)
							  (list elt
								(count elt
								       (subseq seq (* i step))
								       :test #'equalp)))
						      elements)))))
	 (return
	   (values
	    (mapcar #'(lambda (a)
			(sort-list-char
			 (remove-if-cadr-not-max a)
			 #'car)) (copy-tree result-not-sorted))

	    (mapcar #'(lambda (a)
			(sort-list-char a #'car))
		    result-not-sorted)))))))
;;;
;;;===========================
;;;
(defun remove-if-cadr-not-max (list)
  (let ((max (apply #'max (mapcar #'cadr list))))
    (remove-if #'(lambda (x)
		   (< (cadr x) max))
	       list)))
;;;
;;;===========================
;;;
(defun sort-list-char (list &optional fct)
  "Trie dans l'ordre ascendant tous les caracteres alpha-numeriques et symboles."
  (sort list '< :key #'(lambda (x)
			 (if (numberp (if fct (funcall fct x) x))
			     (* 1000 (if fct (funcall fct x) x))
			     (char-code (char (string (if fct (funcall fct x) x)) 0))))))
;;;
;;;===========================
;;;
(defun crea-spazio (list segm)
  (let ((place (pw::dx->x 0 segm)))
    (remove nil (mapcar #'(lambda (pl el) (segment list pl el 1)) place segm))))
;;;
;;;===========================
;;;
(defun pr (lista1 lista2)
  "Se lista1  pi corta di lista2 allora lista1 viene riletta per il numero di volte
   identico a lista 2."
  (let ((ros nil))
    (dotimes (y (length lista2) (nreverse ros))
      (push
       (if (< (length lista1) (length lista2))
	   (nth
	    (mod y (length lista1))
	    lista1)
	   (nth y lista1)) ros))))

(defun group-list (list
		     group
		     mode?)
    "It groups a list"
  (let ((calcolo (pr list (pw::create-list (apply'+ group) 0)))
	(mode? (cmi-group-menu mode?)))

    (case mode?
      (1 (crea-spazio list group))
      (2 (scomp calcolo group)))))

;;;
;;;
;;;--------------------------------------
;;;
;;;
(defun lin-list (init end steps)
  "inteporlazione lineare"
  (if (eq init end) (make-list steps :initial-element init)
      (pw::arithm-ser init (/ (-  end init ) (+ 1 steps)) end)))
;;;
;;;
;;;--------------------------------------
;;;
;;;
(defun inter-dyn0 (init end steps
		     tab
		     inclu?)
    ""
  (let* ((inclu? (Profile-inclu? inclu?))
	 (listetab (when tab (pw::om-scale (pw::pwgl-sample tab (+ 2 steps))
					    0.0
					    1.0)))
	 (liste1 (if tab listetab
		     (lin-list 0 1 steps)))
	 (liste2 (pw::om+ (pw::om* liste1 (- end init)) init)))
    (case inclu?
      (1 liste2)
      (2 (butlast (rest liste2))))))
;;;
;;;
;;;--------------------------------------
;;;
;;;
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;          INTER-DYN      OX           ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
(defun inter-dyn (begin
		    end
		    steps
		    tab
		    inclu?
		    note?)

    ""
  (let* ((inclu? (Profile-inclu? inclu?))
	 (initio (pw::list! begin))
	 (endio (pw::list! end))
	 (le-note (when note?
		    (if (atom (first note?))
			(list note?) note?)))
	 (interpo (pw::mat-trans (mapcar #'(lambda
					       (liste1 liste2)
					     (inter-dyn0 liste1 liste2 steps
							 tab
							 2))
					 initio endio)))
	 (con-scala (when note?
		      (if (= (length begin) 1)
			  (pw::list-explode
			   (notes-change (pw::flat interpo) (pw::flat le-note) 48)
			   (length interpo))
			  (cambia-ogni-accordo interpo le-note))))
	 (fine-calcolo (append (list begin)
			       (if note? con-scala interpo)
			       (list end))))
    (case inclu?
      (1 fine-calcolo)
      (2 (butlast (rest fine-calcolo))))))

;;;
;;;--------------------------------------
;;;
(defun map-group-pos? (l size pos)
  "FROM-LAURSON : l is first grouped into subsequences of equal
length (given by size). map-group-pos?
returns true if the last item of the last subsequence is
at the position given by pos (the position is counted from 1)
within the last subsequence. This function is useful if a rule wants
to check if the last item of a partial solution is at a given position
where the partial solution is been split into subsequences of equal length.
For instance, if we split the list (1 2 3 1 2 3 1) into subsequences
of length 3 and check whether the last item of the last subsequence
is at position 1, we call:
(map-group-pos? '(1 2 3 1 2 3 1) 3 1)
which returns true as the last item (1) is at the 1st position of the last subsequence."
  (let ((mod (mod (length l) size)))
    (if (= mod 0)
      (= pos size)
      (= mod pos))))
;;;					
;;;-------------------------------------- 
;;;
;
(defun check-major/minor-dup (midis duplicate-pitch)
  (let* ((offset (second (pw::sc+off midis)))
          (modulo (pw::g-mod midis 12))) 
       (eq 2 (count (mod (+ offset duplicate-pitch) 12) modulo))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;               FOR FRIENDS    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





