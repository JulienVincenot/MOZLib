(defpackage :omchreode
  (:use :cl :sb-ext)
  (:nicknames :chreode))

(in-package :omchreode)

(defun my-list (&rest toto) toto)


;==================================
;APPROX_M
;==================================

(defmacro cassq (item list) `(cdr (assoc ,item ,list :test #'eq)))
;(defmacro cassq (item list) `(cdr (assq ,item ,list)))

(defvar *global-midi-approx* 2)
(setf *global-midi-approx* 2)

(defmethod approx-m  ((midic t) approx &optional (ref-midic 0))
 "
Returns an approximation of <midic> (in midicents) to the nearest tempered division of the octave.
<approx> = 1 whole tones
<approx> = 2 semi tones
<approx> = 4 quarter tones
<approx> = 8 eight tones

Floating values are allowed for <approx>.
<ref-midic> is a midicent that is subtracted from <midic> before computation: the computation can then be carried on an interval rather than an absolute pitch."
  (if (<= approx 0)
    midic
    (round (* (floor (+ (* (- midic ref-midic) approx) 1) 2) 2) approx)))

(defmethod approx-m  ((self list) approx &optional (ref-midic 0))
  (if (<= approx 0)
    self
    (loop for item in self
          collect (approx-m item approx ref-midic))))


(defun mat-trans (matrix)
  "Matrix transposition. 
The matrix is represented by a list of rows. Each row is a list of items.
Rows and columns are interchanged.

Ex. (mat-tran '((1 2 3) (a b c) (4 5 6))  =>  ((1 a 4) (2 b 5) (3 c 6))"

  (let ((maxl (1- (loop for elt in matrix maximize (length elt))))
        result)
    (loop for i from 0 to maxl do
          (push ;;; (remove nil    ; (why this remove NIL here ??)
                       (mapcar #'(lambda (list) (nth i list)) matrix)
                ;;;  )
          result))
    (nreverse result)))

(defun round_0 (arg &optional div)
  (if (plusp arg)
  (truncate (+ (/ arg div) 0.5))
  (truncate (- (/ arg div) 0.5))))

(defun approx-decimals (x y nbdec)
  (let ((ndec 
         (if (> nbdec 0 ) (float (expt 10 nbdec)) (expt 10 nbdec))))
    (/ (round_0 (/ x y) (/ ndec)) ndec)))


(defmethod om-round ((n number) &optional (decimals 0) (divisor 1))
 "Rounds a number or a list of numbers with a given number of decimals (default = 0, i.e. returns integer values) and a divisor.
This function can be applied to numbers or lists.
Ex. (om-round 4.3)  => 4
Ex. (om-round '(4.3 5.0 6.8))  => (4 5 7)
Ex. (om-round '(4.308 5.167 6.809) 2)  => (4.31 5.17 6.81)
Ex. (om-round '(4.308 5.167 6.809) 0 2)  => (2 3 3)
Ex. (om-round '(4.308 5.167 6.809) 1 2)  => (2.2 2.6 3.4)
"
  (approx-decimals n divisor decimals))

(defmethod om-round ((n list) &optional (decimals 0) (divisor 1))
  (mapcar #'(lambda (input)
              (om-round input decimals divisor)) n))

(defmethod rang-p ((liste list) (elem number) &optional (test 'eq) (key nil)) 
  "Returns the position(s) of <elem> in <liste>.

<test> is a function or function name used to test if the elements of the list are equal to <elem>.
<key> is a function or function name that will be applied to elements before the test.

Ex. (rang-p '(0 1 2 3 4 3 2) 3)  =>  (3 5)
Ex. (rang-p '(0 1 2 3 4 3 2) 3 '<)  =>  (0 1 2 6)    [elements at positions 0, 1,2 and 6 are lower than 3]
"
  (let ((aux nil) (index 0))
    (mapcar #'(lambda (z) (progn (when (funcall test (if key (funcall key z) z) elem) (push index aux))
                                 (incf index))) 
            liste)
    (reverse aux)))


(defmethod rang-p ((liste list) (elem list) &optional (test 'eq) (key nil)) 
  (let ((aux nil) (index 0))
    (mapcar #'(lambda (z) (progn (when (funcall test (if key (funcall key z) z) elem) (push index aux))
                                 (incf index))) 
            liste)
    (reverse aux)))




(defun x-around (x paires)
  "trouve les paires en dessous et au dessus de x"
  (let ((plus-grand (find x paires :test #'(lambda (x r) (<= x (first r))))))
    (if plus-grand
        (let* ((rang (if (< (1- (first (rang-p paires plus-grand 'equalp))) 0) 
                        0 
                      (1- (first (rang-p paires plus-grand 'equalp)))))
              (plus-petit (nth rang paires)))
          (list 
           (if (< rang 0) plus-grand plus-petit)
           plus-grand))
      (let ((max (car (last paires))))
        (list max max)))))

(defun linear-interpol (x1 x2 y1 y2 x)
  "
          ^
          |
          |
        y2|..................*
          |                  .
        y0|............X     .
          |            .     . 
        y1|......*     .     . 
          |      .     .     . 
          |      .     .     . 
          |      .     .     .    
          |______._____._____.______>
                 x1    x     x2

"
  (if (= x1 x2) y1
    (+ y1
       (* (- y2 y1)
          (/ (- x x1)
             (- x2 x1))))))


(defmethod x-transfer ((self list) (x-val number) &optional (dec nil))    
   "Returns the interpolated Y value(s) in a BPF or a list ((x1 y1) (x2 y2) ...) corresponding to an X value or a list of X values (<x-val>).
Optional <dec> is the number of decimals in the result."

  (let* ((paires self) 
         (bornes (x-around x-val paires))
         (ypts (linear-interpol (first (first bornes)) 
                                (first (second bornes))
                                (second (first bornes)) 
                                (second (second bornes)) 
                                x-val)))
    (if dec (om-round ypts dec) ypts)))

(defmethod x-transfer ((self list) (x-val list) &optional (dec nil))    
  (mapcar #'(lambda (x) (x-transfer self x dec)) x-val))

;(defmethod x-transfer ((self bpf) x-val &optional (dec nil))  
;   (x-transfer (point-pairs self) x-val dec))


(defun interpole (list-x list-y x-min x-max nbsamples)
  (if (= 1 nbsamples) (list (x-transfer (mat-trans (list list-x list-y)) (+ x-min (/ (- x-max x-min) 2))))
  (let ((step (/ (- x-max x-min) (1- (coerce nbsamples 'double-float)))))
    (loop with x = (pop list-x) and xx = (pop list-x) 
          and y = (pop list-y) and yy = (pop list-y)
          with x-index = x-min
          with s-index = 0
          while (and xx  (< s-index nbsamples))
          if (and (>= x-index x) (<= x-index xx))
          collect (linear-interpol x xx y yy x-index)
          and do (setf x-index (+ x-min (* (incf s-index) step)))
          else do (setf x xx xx (pop list-x) y yy yy (pop list-y))))))


(defun interpolate (list-x list-y step)
  (loop for pointer from (first list-x) by step
        with x1
        with y1 
        with x2 = (pop list-x)
        with y2 = (pop list-y)
        if (>= pointer x2)  do (setf x1 x2 y1 y2 x2 (pop list-x) y2 (pop list-y))
        if (null x2) collect y1 and do (loop-finish)
        collect (linear-interpol x1 x2 y1 y2 pointer)))

(defun number-interpolation (n1 n2 n curve)
  (+ n1 (* (- n2 n1) (expt n (exp curve)))))

(defun number-interpole-values (begin end samples curve)
  (if (<= samples 1)
      (list (number-interpolation begin end 0.5 curve))
    (let ((step (/ 1 (1- samples))))
      (loop for j from 0 to (1- samples) collect
            (number-interpolation begin end (* j step) (- curve))))))

(defmethod interpolation ((begin number) (end number) (samples integer) (curve number))
  "Interpolates 2 numbers or lists (from <begin> to <end>) through <samples> steps.

<curve> is an exponential factor interpolation (0 = linear).
" 
  (number-interpole-values begin end samples curve))

(defmethod interpolation ((begin number) (end list) (samples integer) (curve number))
  (mat-trans (mapcar #'(lambda (item)  (interpolation  begin item samples curve))
          end)))
          
(defmethod interpolation ((begin list) (end number) (samples integer) (curve number))
  (mat-trans (mapcar #'(lambda (item) (interpolation item end samples  curve))
          begin)))
          
(defmethod interpolation ((begin list) (end list) (samples integer) (curve number))
  (mat-trans (mapcar #'(lambda (item1 item2) (interpolation item1 item2 samples curve))
          begin end)))








(defmethod om-sample ((self t) (nbs-sr number) &optional (xmin nil) (xmax nil) (dec nil))
   "Resamples a function, a list, a BPF or a BPC object.

Returns :
 - The result as an object (BPF or BPC) (1st output)
 - The list of x points (2nd output)
 - The list of sample values (3rd output)

If <nbs-sr> is an integer (e.g. 100) it is interpreted as the number of samples to be returned
If <nbs-sr> is an float (e.g. 0.5, 1.0...) it is interpreted as the sample rate (or step between two samples) of the function to return

<xmin> and <xmax> allow to specify the x-range to resample.
<dec> (decimals) is the precision of the result
"   
      nil)

(defmethod first-n ((list list) (n integer))
 "Returns the <n> first elements of <list>

Ex. (first-n '(1 2 3 4 5) 3)  => (1 2 3)
"
  (cond
   ((< (length list)  n) list )
   (t  (butlast list (- (length list) n)))))

(defmethod arithm-ser ((begin number) (end number) (step number) &optional (nummax MOST-POSITIVE-FIXNUM))
 "Arithmetic series: returns a list of numbers from <begin> to <end> with increment of <step>. 
<nummax> allows to limit the number of elements returned.

Ex. (arithm-ser 1 5 0.5) => (1 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0)"

  (if (plusp step)
    (loop for i from begin to end by step
          for counter from 1 to nummax
          collect i)
    (loop for i from begin downto end by (abs step)
          for counter from 1 to nummax
          collect i)))


(defmethod om-sample ((self list) (nbs-sr number) &optional xmin xmax dec)
   (cond ((numberp (car self))
          (let* ((x0 (or xmin 0))
                 (x1 (or xmax (1- (length self))))
                 (lst (nthcdr x0 (if xmax (first-n self (1+ xmax)) self)))
                 (xpts (arithm-ser 0 (1- (length lst)) 1))
                 (ylist (if (integerp nbs-sr) 
                            (interpole xpts lst x0 x1 nbs-sr)
                          (interpolate xpts lst nbs-sr)))
                 (xlist (arithm-ser 0 (1- (length ylist)) 1)))
            ylist))
         (t nil)))
