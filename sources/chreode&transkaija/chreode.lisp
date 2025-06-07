;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

;;; This file is part of omchreode.

;;; Copyright (c) 2010 - 2011, Kilian Sprotte. All rights reserved.

;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.

;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.

;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;#+om(in-package :om)
(in-package :omchreode)

; (ompw:define-menu omchreode)
; (ompw:in-menu omchreode)

(defun list2circlist (list)
  (rplacd (last list) list)
  list)

;;;;; class definitions


(defclass abstract-generator ()
  ())

(defclass flip (abstract-generator)
  ((generators :accessor generators :initarg :generators)
   (circ :accessor flip-circ)))

(defclass transformer (abstract-generator)
  ((generator :accessor transformer-generator :initarg :generator)
   (function  :accessor transformer-function  :initarg :function)))

(defclass tab (abstract-generator)
  ((vector :accessor tab-vector :initarg :tab-vector)))

(defclass tab-norm (tab) nil)

(defclass chreode (abstract-generator)
  ((nb-period :accessor chreode-nb-period :initarg :nb-period)
   (incr/decr :accessor chreode-incr/decr :initarg :incr/decr)
   (up/down :accessor chreode-up/down :initarg :up/down)
   (offset :accessor chreode-offset :initarg :offset)
   (deviation :accessor chreode-deviation :initarg :deviation)))

; (ompw:define-box get-value (generator x)
;  (declare (ignore x))
;  generator)



;;;;; get values

(defmethod get-value ((generator abstract-generator) x)
  (declare (ignore x))
  (error "Abstract-generator get-value should not be called.~%~
	  Probably a get-value method for ~S is missing." generator))

;;;; ajouté pour éviter erreur interne lors de la récursion
(defmethod get-value ((generator number) (x number))
  generator)

(defmethod get-value ((generator function) x) (funcall generator x))

(defmethod get-value ((generator flip) x)
  (get-value (pop (flip-circ generator)) x))

(defmethod get-value ((generator transformer) x)
  (funcall (transformer-function generator)
	   (get-value (transformer-generator generator) x)))




(defmethod get-value ((generator tab) (x integer))
  (aref (tab-vector generator) x))

(defmethod get-value ((generator tab) (x number))
  (get-value generator (round x)))

(defmethod get-value ((generator tab-norm) x)
  (let ((int-index
	 (min (floor (* x (length (tab-vector generator))))
	      (1- (length (tab-vector generator))))))
    (aref (tab-vector generator) int-index)))



(defmethod get-value ((generator omchreode::chreode) x)
  (let ((nx
	 (if (eql (chreode-incr/decr generator) :decr) (- 1.0 x) x)))
    
    (assert (<= 0.0 x 1.0))
    (+ (get-value (chreode-offset generator) x)
       (* (get-value (chreode-deviation generator) x)
	  (case (chreode-up/down generator)
	    (:down (xcosx nx (chreode-nb-period generator)))
	    (:up (-xcosx nx (chreode-nb-period generator)))
	    (otherwise
	     (error "Got ~s, was expecting one of :DOWN, :UP."
		    (chreode-up/down generator))))))))

(defun get-values (generator x) ; exemple de x (0 0.5 1)
  ;:non-generic t
  (mapcar #'(lambda (x) (get-value generator x)) x))





;;;;; make functions

(defun reset-flip (flip)
  (setf (flip-circ flip) (list2circlist (copy-list (generators flip))))
  flip)

(defun make-flip (&rest generators)
 ; :non-generic t
  (reset-flip (make-instance 'flip :generators generators)))

(defun make-transformer (generator function) ;; ex function : abs
;  :non-generic t
  (make-instance 'transformer :generator generator :function  function))

(defun make-tab (values)
  ;:non-generic t
  (make-instance 'tab :tab-vector (coerce values 'vector)))

(defun make-tab-norm (values)
 ; :non-generic t
  (make-instance 'tab-norm :tab-vector (coerce values 'vector)))

(defun make-chreode (nb-period ;; 4
                     incr/decr ;; :incr / :decr
                     up/down ;; :up / :down
                     offset  ;; 0
                     deviation) ;; 1
  ; :non-generic t
  ; :menu (incr/decr (:decr "decr") (:incr "incr"))
  ; :menu (up/down (:down "down") (:up "up"))
 
  (assert (member incr/decr '(:incr :decr)))
  (assert (member up/down '(:up :down)))
  (make-instance 'chreode 
    :nb-period nb-period 
    :incr/decr incr/decr 
    :up/down up/down 
    :offset offset 
    :deviation deviation))

; (get-values (make-chreode 4 :incr :up 0 1) '(0 0.2 0.4 0.6 0.8 1))

(defun xcosx (x y) (* x (cos (* x y (* 2 pi)))))

(defun -xcosx (x y) (- (* x (cos (* x y (* 2 pi))))))

(defun cosx (x y) (cos (* x y (* 2 pi))))

(defun -cosx (x y) (- (cos (* x y (* 2 pi)))))

; (eval-when (:compile-toplevel :load-toplevel :execute)

(defclass dur-sampler nil
  ((generator :accessor generator :initarg :generator)
   (duration :accessor duration :initarg :duration)))

; )

(defun make-dur-sampler (generator duration)
 ; :non-generic t
  (make-instance 'dur-sampler :generator generator :duration duration))

(defun dur-sampler-next-dur (dur-sampler time)
  (let ((dur (get-value (generator dur-sampler) time)))
    (if (<= dur 0)
	(error "dur-sampler got from ~S at time ~S the dur ~S~%~
                Please consider using make-transformer with abs to ~
                avoid negative durations."
	       (generator dur-sampler) time dur)
	dur)))

(defun get-durs (dur-sampler mode ;; modes => :durs :offsets :noffsets or :all (in list)
                             &optional (max 1000))
  "The 3 outputs return
  - durs, say (1 2 3)
  - the offsets (0 1 3)
  - the offsets scaled between 0 and 1"
 ; :non-generic t
 ; :outputs 3
  (multiple-value-bind (durs offsets noffsets)
         

          (loop
           with time = 0
           while (< time (duration dur-sampler))
           for norm-time = (/ time (duration dur-sampler))
           for dur = (dur-sampler-next-dur dur-sampler norm-time)
           for i upfrom 0
           collect dur into durs
           collect time into offsets
           collect norm-time into norm-offsets
           do (progn
                (when (> i max)
                  (error "We exceeded the number of allowed iterations, which is ~S.~%~
  Please see the documentation of \"get-durs\"." max))
                (incf time dur))
           finally (return (values durs offsets norm-offsets))) 
 

   (case mode (:durs durs)
              (:offsets offsets)
              (:noffsets noffsets)
              (:all (list durs offsets noffsets))
     ))
   ;;; ici je route les différents résultats en fonction du nouveau paramètre de mode
    
    
  )

(defun mat-trans (matrix)
  (assert (apply #'= (mapcar #'length matrix)) nil
	  "this should not happen. Please report this to Kilian Sprotte")
  (when matrix (apply #'mapcar #'list matrix)))

(defun save-text-simple (path &rest params)
  ;:non-generic t
 ; (unless path (setq path (ompw:choose-new-file-dialog)))
  (with-open-file (out path :direction :output :if-exists :supersede)
    (loop for event in (mat-trans params) do
	 (format out "~{~A~^ ~}~%" event))))

(defun save-text-coll (path &rest params)
  ;:non-generic t
  ;(unless path (setq path (ompw:choose-new-file-dialog)))
  (with-open-file (out path :direction :output :if-exists :supersede)
    (loop for event in (mat-trans params) for i upfrom 1 do
	 (format out "~A, ~{~A~^ ~};~%" i event))))