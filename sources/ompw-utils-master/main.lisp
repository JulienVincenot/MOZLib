;;; arch-tag: 74C791DD-1BA0-1213-E432EC20B761

;;; Copyright (c) 2007, Kilian Sprotte. All rights reserved.

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

(in-package :ompw-utils)

(defmacro while (form &body body)
  `(loop while ,form do (progn ,@body)))

(define-menu ompw-utils :print-name "OMPW-utils")
(in-menu ompw-utils)

(define-box list! (thing)
  :non-generic t
  (if (listp thing) thing (list thing)))

;; (define-box mat-trans ((matrix ((1 2 3) (a b c))))
;;   :non-generic t
;;   (assert (apply #'= (mapcar #'length matrix)) nil
;; 	  "this should not happen. Please report this to Kilian Sprotte")
;;   (when matrix (apply #'mapcar #'list matrix)))

(define-box mat-trans ((matrix ((1 2 3) (a b c))))
  #+digitool(om::mat-trans matrix)
  #+pwgl(pw::mat-trans matrix)
  #-(or digitool pwgl) (error "mat-trans is not defined."))

;;; flat
(defun lo-flat (list)
  (cond ((atom list) list)
        ((atom (car list)) (cons (car list) (lo-flat (cdr list))))
        ((atom (caar list)) (apply 'append list))
        (t (cons (lo-flat (car list)) (lo-flat (cdr list))))))

(defmethod flat-low ((list list))
  (lo-flat list))

(defmethod flat-once ((list list))
  (if (consp (car list))
      (apply 'append list)  list))

(defmethod flat-one ((list list))
  (loop for item in list
     append (list! item)))

(defmethod n-flat-one ((list list) (level integer))
  (let ((rep list))
    (loop for i from 1 to level do
	 (setf rep (flat-one rep)))
    rep))

(defmethod n-flat-one ((list list) (level integer))
  (let ((rep list))
    (loop for i from 1 to level do
	 (setf rep (flat-one rep)))
    rep))

(defun rev-flat (lst)
  (let ((l ()))
    (while lst
      (if (not (consp (car lst)))
	  (PUSH (POP LST) L)
	  (setq l (nconc (rev-flat (pop lst)) l))))
    l))

(define-box flat ((list (1 2 (3) 4)) &optional level)
  :non-generic t
  (cond
    ((null level) (nreverse (rev-flat list)))
    ((= level 0) list)
    ((and (integerp level) (plusp level))
     (n-flat-one list level))
    (t list)))

(define-box arithm-ser ((begin 1) (end 10) (step 1) &optional (nummax #.most-positive-fixnum))
  (if (plusp step)
      (loop for i from begin to end by step
	 for counter from 1 to nummax
	 collect i)
      (loop for i from begin downto end by (abs step)
	 for counter from 1 to nummax
	 collect i)))

;;; x-append
(define-box x-append ((l1? (1 2 3)) (l2? (4 5 6)) &rest lst?)
  "appends lists or atoms together to form a new list.
This box can be extended."
  (apply 'append l1? l2? (mapcar #'list! lst?)))

(defmethod x-append ((l1? t) (l2? list) &rest lst?)
  (apply 'append (list l1?) l2? (mapcar #'list! lst?)))

(defmethod x-append ((l1? list) (l2? t) &rest lst?)
  (apply 'append l1? (list l2?) (mapcar #'list! lst?)))

(defmethod x-append ((l1? t) (l2? t) &rest lst?)
  (apply 'append (list l1?) (list l2?) (mapcar #'list! lst?)))

(define-box x->dx ((self (1 2 3 4)))
  "computes a list of intervals from a list of points."
  :non-generic t
  (loop for x in self
     for y in (rest self)
     collect (- y x)))

(define-box dx->x ((start 0) (list (1 2 3 4)))
  "computes a list of intervals from a list of points."
  :non-generic t
  (cons start
	(loop for dx in list
	   collect (incf start dx))))

(define-box posn-match ((list (1 2 3 4 5 6 7)) (positions ((0 1) 4 (6))))
  :non-generic t
  #+digitool(om::posn-match list positions)
  #+pwgl(pw::posn-match list positions)
  #-(or digitool pwgl) (error "posn-match is not defined."))

(define-box m+ ((a 1) (b 2))
  :non-generic t
  #+digitool(om::om+ a b)
  #+pwgl(ccl::g+ a b)
  #-(or digitool pwgl) (error "m+ is not defined."))

(define-box m- ((a 1) (b 2))
  :non-generic t
  #+digitool(om::om- a b)
  #+pwgl(ccl::g- a b)
  #-(or digitool pwgl) (error "m- is not defined."))

(define-box m* ((a 1) (b 2))
  :non-generic t
  #+digitool(om::om* a b)
  #+pwgl(ccl::g* a b)
  #-(or digitool pwgl) (error "m* is not defined."))

(define-box m/ ((a 1) (b 2))
  :non-generic t
  #+digitool(om::om/ a b)
  #+pwgl(ccl::g/ a b)
  #-(or digitool pwgl) (error "m/ is not defined."))

(define-box m-abs ((a 1))
  :non-generic t
  #+digitool(om::om-abs a)
  #+pwgl(ccl::g-abs a)
  #-(or digitool pwgl) (error "m-abs is not defined."))

(define-box m-round ((self 1) &optional (decimals 0) (divisor 1))
  :non-generic t
  #+digitool(om::om-round self decimals divisor)
  #+pwgl(ccl::g-round self decimals divisor)
  #-(or digitool pwgl) (error "m-round is not defined."))

(define-box m-floor ((number 1) &optional (divisor 1))
  :non-generic t
  #+digitool(om::om// number divisor)
  #+pwgl(ccl::g-floor number divisor)
  #-(or digitool pwgl) (error "m-floor is not defined."))

(define-box m-scaling/sum ((list (1 2 3)) (sum 10))
  :non-generic t
  #+digitool(om::om-scaling/sum list sum)
  #+pwgl(ccl::g-scaling/sum list sum)
  #-(or digitool pwgl) (error "m-scaling/sum is not defined."))

(define-box permute-random ((list (1 2 3)))
  "Random permutation of LIST. Non-destructive."
  :non-generic t
  (flet ((vector-shuffle (vec)
	   (loop for ii downfrom (1- (length vec)) to 1
	      for jj = (random (1+ ii))
	      unless (= jj ii)
	      do (rotatef (aref vec ii) (aref vec jj))
	      finally (return vec))))
    (coerce (vector-shuffle (coerce list 'vector)) 'list)))

(define-box nth-random ((list (1 2 3)))
  "Pick a random element of LIST."
  :non-generic t
  (nth (random (length list)) list))

(define-box list-explode ((list (1 2 3 4 5 6 7 8 9 10)) (nlists 3))
  "list-explode segments a list into <nlist> sublists of (if possible) equal length.
For example, if <list> is (1 2 3 4 5 6 7 8 9), and <nlists> is 2, the result is
 ((1 2 3 4 5) (6 7 8 9)),
if list is (1 2 3 4 5 6 7 8 9), and ncol is 5, the result is:
 ((1 2) (3 4) (5 6) (7 8) (9)).
If the number of divisions exceeds the number of elements in the list, the
remaining divisions are returned as nil."
  :non-generic t
  (if (> nlists (length list))
      (setq list (append list (make-list (- nlists (length list))
					 :initial-element (first (last list))))))
  (if (<= nlists 1) list
      (let* ((length (length list))
             (low (floor length nlists))
             (high (ceiling length nlists))
             (step (if (< (abs (- length (* (1- nlists) high))) (abs (-
                                                                      length (* nlists low))))
		       high  low))
             (rest (mod length nlists))
             (end (- length 1 rest))
             (ser (arithm-ser 0  (1- step) 1))
             res)
        ;; (for (i 0 step end)
	;; 	     (push (remove () (posn-match  list (m+  i ser))) res))
	(LET ((I 0) (G26548 STEP) (G26549 END))
	  (IF (> G26548 0)
	      (LOOP (WHEN (> I G26549) (RETURN))
		 (PROGN (PUSH (REMOVE NIL (POSN-MATCH LIST (M+ I SER))) RES))
		 (INCF I G26548))
	      (LOOP (WHEN (< I G26549) (RETURN))
		 (PROGN (PUSH (REMOVE NIL (POSN-MATCH LIST (M+ I SER))) RES))
		 (INCF I G26548))))
        (setq low (length (flat-once res)))
        (if (< low length) (setq res (cons (append (first res) (nthcdr low
                                                                       list)) (rest res))))
        (cond ((> (length res) nlists)
               (nreverse (cons (nconc (second res) (first res)) (nthcdr 2
                                                                        res))))
              ((< (length res) nlists)
               (when (= (length (first res)) 1)
                 (setq res (cons (nconc (second res) (first res)) (nthcdr 2
                                                                          res))))
               (nreverse (nconc (nreverse (list-explode (first res) (1+ (-
                                                                         nlists (length res)))))
                                (rest res))))
              (t (nreverse res))))))

(install-menu ompw-utils)

