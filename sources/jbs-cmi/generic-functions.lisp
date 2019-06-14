;;;       JBS-CMI for PWGL

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

;;;==============================================================================================
;;;                                GENERIC-FUNCTIONS FOR JBS-Cmi    2009    
;;;==============================================================================================
;===================================     Package    =============================================
;
(in-package :jbs-cmi)
;
;============================  GENERIC FUNCTIONS  ===============================================
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
;;
(defun mio-smooth (list)
  (let ((ris nil))
    (loop for x from 0 to (1- (length list)) do
          (when (not (equal (nth (+ x 1) list) (nth x list)))
            (push (list x (nth x list)) ris)))
    (reverse ris)))
;
;
(defun num-comment-sort-1 (lista)
  "mette insieme i sottogruppi di calcolone dal pi piccolo al pi grande. 
N.B. l'ordinamento avviene in funzione del secondo elemento di ogni sottogruppo"
  (sort (numeric-comment lista 1) '< :key 'second))
;
(defun metti-insieme (list)
  (let ((ris nil))
    "raggruppa i sotto-gruppi partendo dalla cifra pi piccola"
    (dotimes (x (- (length list) 1) (jbs-cmi::group-list list
                                     (pw::x->dx (pw::x-append 0 (nreverse ris) (length list))) :stop))
      (if (/= (second (nth x list))
              (second (nth (1+ x) list)))
             (push (1+ x)  ris)
             ))))
;
(defun num-comment-sort-2 (list)
 (let ((ris nil))
 (dotimes (x (length list) (nreverse ris))
      (push 
       (list 
         (apply '+ (first (pw::mat-trans (nth x list))))
         (second (first (nth x list)))) ris))))
;
(defun num-comment-sort-3 (list)
"ordina in tutto e prepara la ricorsione"
  (let* (
         (conto-1 (num-comment-sort-1 list))
         (conto-2 (metti-insieme conto-1))
         (conto-3 (num-comment-sort-2 conto-2)))
 conto-3))
;
(defun print-colonne (list)
   "stampa solo la prima linea indicante il numero di colonne"
  (let ((colonne (pw::arithm-ser 1 1 (length (first list)))))
    (dotimes (x 1)
      (format t "~%~a " 0)
      (dolist (elt colonne)
        (format t " ~a" elt))
      (format t "~%")     
      (format t "~a" '_______________________)
      )))
;
#|
(define-box print-matrix ((list ((1 11) (2 22) (3 33))))
  "It prints in the listener in a matrix redeable format."
(format t "~a" 'begin-of-matrix)
  (format t "~%")
  (print-colonne list)
 (dotimes (x (length list))
    (format t "~%~a," (1+ x))
    (dolist (elt (nth x list))
      (format t " ~a" elt))
    (format t "~%")
    (format t "~a" '_______________________))
  (format t "~%~a" 'end-of-matrix))
|#
;#||#
(defun calcola-indici-1 (number)
  "prepara gli indici per la lettura trasversale"
  (let ((ris nil))
    (dotimes (x (1+ number) (nreverse ris))
      (if (> x 0)
          (push (pw::mat-trans (list (pw::arithm-ser x -1 1)
                                     (pw::arithm-ser 1 1 x)
                                     )) ris)))))
;
(defun calcola-indici (number)
  (let* ((calcolo (- (* 2 number) 1))
         (ris nil)
         (calcoletto (calcola-indici-1 number))
         (calcolaccio (rest (reverse calcoletto))))
    (dotimes (x calcolo (nreverse ris))
      (push (if (< x number)
                (nth x calcoletto)
              (pw::om+ (+ 1 (- x number))
                      (nth (- x number) calcolaccio))) 
            ris))))
;
(defun quasi-inter-diagonal-reading (list indexes)
  "legge una matrice in diagonale discendente"
  (let ((ris nil)
        (indexes (pw::om- indexes 1)))
    (dolist (y indexes (nreverse ris))
      (push (nth (second y) (nth (first y) list)) ris))))
;
(defun cir (list )
  (let (risul)
    (dotimes (x (length list))
      (push (append (nthcdr x list)  
                    (reverse (set-difference list (nthcdr x list)))) risul))
    (nreverse risul)))
;
(defmacro my-repeat (count &body body)
  `(dotimes (,(gensym) ,count)
     ,.body))
;
;(defvar index-for-struttura nil)


#|
DOUBLON CI DESSOUS 

(defun cons-indexed-list (list)
  (cond
   ((null list) nil)
   ((numberp (car list))
    (setf index-for-struttura (+ index-for-struttura 1))
    (cons index-for-struttura (cons-indexed-list (cdr list))))
   (t
    (cons (cons-indexed-list (car list))
          (cons-indexed-list (cdr list))))))
|#
          
;
;--------------------------------------
;
;
(defun recostitute-structure1 (list)
  (setf index-for-struttura -1)
  (cons-indexed-list list))
;
;
;--------------------------------------
;
;
(defun last-index (list)
  (cond
   ((numberp (car (last list))) (car (last list)))
   (t (last-index (car (last list))))))
;
;
;--------------------------------------
;
;
(defun cons-indexed-list (list index)
  (cond
   ((null list) nil)
   ((numberp (car list))
    (cons index (cons-indexed-list (cdr list) (+ index 1))))
   (t (let ((firstlist (cons-indexed-list (car list) index)))
        (cons firstlist (cons-indexed-list (cdr list) (+ 1 (last-index firstlist))))))))
;
;
;--------------------------------------
;
;
(defun cons-indexed-list-jbs (list index)
  (cond
   ((null list) nil)
   ((atom (car list))
    (cons index (cons-indexed-list-jbs (cdr list) (+ index 1))))
   (t (let ((firstlist (cons-indexed-list-jbs (car list) index)))
        (cons firstlist (cons-indexed-list-jbs (cdr list) (+ 1 (last-index firstlist))))))))
;
(defun gold-section (number)
  (* number 0.618))

;
(defun mio-repeat (self num)
  ""
  (let (rep)
    (loop for i from 1 to num do
          (push self rep))
    (reverse rep)))
;
(defun cartesian (lista1 lista2 fun)
  "From PW"
  (mapcar #'(lambda (x) (mapcar #'(lambda (y) (funcall fun x y)) (pw::list! lista2))) (pw::list! lista1)))
;
;
;--------------------------------------
;
;
(defun jbs-combx (vals n)
  "From PW : crea tutte le combinazioni di n elementi. ATTENZIONE : n  sempre uguale a (+ n 1) per 
aun problema nella ricorsione"
  (cond
   ((<=  n 0) vals)
   (t (pw::flat-once 
       (cartesian vals (jbs-combx vals (1- n)) 'pw::x-append)))))
;
;
(defun depth-1 (liste n)
  (cond
   ((null liste) nil)
   ((atom liste) (list (list liste n)))
   (t (append (depth-1 (car liste) (1+ n)) (depth-1 (cdr liste) n)))))
;
;
;
(defun opopo (lista elemento)  ; ((lista (1 2 3 4 1 2 3 2)) (elemento 2))
  "From Aralla Music Topology"
  (let ((risultato nil)
        (fff  (pw::arithm-ser 0 1 (pw::om+ 10 (length lista)))))
    (remove 'nil
            (mapcar #' (lambda (x y) (if (equalp x elemento) y 'nil))
                    (pw::flat (list  lista -100000000)) fff))
    ))
;;;;;;;;;;;;;
(defun  segmenta-su-element1 (lista elemento) ; ((lista (1 2 3 4 1 2 3 2)) (elemento 2))
  "From Aralla Music Topology"
  (let* ((risultato nil)
         (ff  (remove-duplicates (pw::x-append 0 (jbs-cmi::opopo lista elemento) (length lista)) :test 'equalp :from-end 0))
         (f (pw::om- (rest ff) 1)))

    (mapcar #' (lambda (x y) (pw::arithm-ser x 1 y))
            ff f)))
    

;;;;;;;;;;                                                      ;;;;;;;;;;
(defun  segmenta-su-element2 (lista elemento) ; ((lista (1 2 3 4 1 2 3 2)) (elemento 2))
  "From Aralla Music Topology"
  (let ((risultato nil)
        (raggruppa (jbs-cmi::segmenta-su-element1 lista elemento)))
    (mapcar #' (lambda (x) (length x))
            raggruppa)))
;
;
;
(defun primo-passo (lista n) 
  (let (f)                             ;prende n elementi della lista
    (dotimes (x n)                     ;di partenza
      (push (nth x lista) f))
    (nreverse f)))
;
;
;
(defun circular-lists-reading (list list-2) ; ((list-1 (a b c)) (list-2 (1 2 3 4 5 6 7 8 9)))
    "If list-1 is shorter than list-2, so list-1 is reded in a circular way in order to incerase
its length to be identical to list-2."
  (let ((ros nil))
    (dotimes (y (length list-2) (nreverse ros))
      (push
       (if (< (length list-1) (length list-2))
	   (nth
	    (mod y (length list-1))
	    list-1)
	   (nth y list-1)) ros))))
;
;
;
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
;
;
;
(defun conta (list)
  "restituisce l'indicatore della dotimes ogni volta in cui c' un contrasto"
  (let ((ris nil))
    (dotimes (x (length list) (nreverse ris))
      (if (eq (nth x list) (nth (1+ x) list))
        ()
        (push x ris)))))

;
;
;
(defun contone (list)
  "restituisce il numero di comparse per ogni elemento associato all' elemento
corrispondente"
  (let ((calcolone (conta list)))
    (pw::mat-trans (list (append
			  (list (+ 1 (first calcolone)))
			  (pw::x->dx calcolone))
			 (lisse list)))))
;
;
;
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
;
;
;
(defun test-position1 (lista elements)
  (let ((ris nil))
    (dotimes (x (length lista) (nreverse ris))
     (progn 
       (push (first (list elements (nth x lista))) ris)
       (push (second (list elements (nth x lista))) ris))
        )))
;
;
;
;
;
;
(defun test-position2 (note grace-note grace-place)
  (let ((ris nil))
    (dotimes (x (length note) (nreverse ris))
      (if (= x grace-place)
          (progn 
            (push (first (list grace-note (nth x note))) ris)
            (push (second (list grace-note (nth x note))) ris))
        (push (nth x note) ris)))))
;
;
;
#|
(defun before-test-position (list1 list2 indici)
  (let ((ris nil))
    (dotimes (x (length list1) (nreverse ris))
      (if (member x indici)
          (push x ris)
        (push 0 ris)))))
      
;
;
;

(defun test-position3 (note grace-note grace-place)
  (let* ((ris nil)
         (ros nil)
         (index (before-test-position note grace-place))
         (grace-note (print (pw::posn-match grace-note index))))
    (dotimes (x (length note) (nreverse ris))
      (if (member x grace-place)
          (progn 
            (push (first (list (nth x  grace-note) (nth x note))) ris)
            (push (second (list (nth x grace-note) (nth x note))) ris))
        (push (nth x note) ris)))))

|#
(defun test-position3 (note grace-note grace-place)
  (let* ((ris nil)
         (ros nil)
         (delta (pw::x->dx (pw::x-append 0 grace-place)))
         (ripeti-grace-note (if (not (equalp (first grace-place) 0))
                                (dotimes (r (length delta) (pw::flat-once (pw::x-append (list (list (nth (first grace-place) grace-note))) (nreverse ros))))
                                  (if (equal (nth r delta) 0)
                                      (push (list (nth 0 grace-note)) ros)
                                    (push (jbs-cmi::mio-repeat (nth r grace-note) (nth r delta)) ros)))
                              (dotimes (r (length delta) (pw::flat-once (nreverse ros)))
                                (if (equal (nth r delta) 0)
                                    (push (list (nth 0 grace-note)) ros)
                                  (push (jbs-cmi::mio-repeat (nth r grace-note) (nth r delta)) ros))))))
    (dotimes (x (length note) (nreverse ris))
      (if (member x grace-place)
          (progn 
            (push (first (list (nth x ripeti-grace-note) (nth x note))) ris)
            (push (second (list (nth x ripeti-grace-note) (nth x note))) ris))
        (push (nth x note) ris)))))

;
;
;
(defun min-flex-max1 (list)
  "é una formattazione diversa di min-flex-max con every"
 (let ((calcolo (morph::min-flex-max list :every))
       (ris nil))
   (dolist (y calcolo (nreverse ris))
     (push (list (nth 3 y)
                 (nth 0 y)
                 (nth 2 y)
                 (nth 1 y)) ris))))
;
;
;

      