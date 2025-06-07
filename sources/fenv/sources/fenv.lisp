(in-package :fe)

;;;
;;; Defines ways to use numerical functions as envelopes,
;;; and provides a rich set of functions to generate, combine and transform
;;; these envelopes.
;;; 


;;;
;;; data structure
;;;

(defclass fenv ()
  ((fenv :accessor fenv 
	:initarg :fenv
	:initform (make-fenv #'identity)
	:type function
	:documentation "A unary numeric function, which defines an envelope in the function interval [0,1].")))

(defmethod fenv? ((x fenv))
  T)
(defmethod fenv? ((x T))
  NIL)

(defmethod y ((fenv fenv) (x number))
  "Access the y value of fenv at x."
  (funcall (fenv fenv) x))


(defun fenv->list (fenv &optional (number 100) (number=1 :last))
  "Samples a fenv from 0 to 1 (including) and collects samples in a list. Number is number of samples. If number equals 1, then number=1 sets which element is chosen (can be :first, :middle or :last)."
  (case number
    (0 nil)
    (1 (list (y fenv (case number=1
		      (:first 0)
		      (:middle 0.5)
		      (:last 1)))))
    (T (loop for n from 0 to 1 by (/ 1 (1- number))
	  collect (y fenv n)))))

;; (fenv->list (make-fenv #'sin :max pi) 10)
;; (om:list-plot (fenv->list (make-fenv #'sin :max pi) 10))
;; In case of number = 1 chose the first element
;; (fenv->list (linear-fenv (0 0) (1 1)) 1 :first)
;; (fenv->list (make-fenv #'sin :max pi) 0)


(defun l (fenv &optional (number 100))
  "Shorthand name function for fenv->list Convenience function for using fenvs, e.g., in Opusmodus."
  (fenv->list fenv number))

(defun fenv->vector (fenv &optional (number 100))
  "Samples a fenv from 0 to 1 (including) and collects samples in a vector. Number is number of samples (if number=1, then the last fenv value is returned)."
  (apply #'vector (fenv->list fenv number)))

(defun v (fenv &optional (number 100))
  "Shorthand name function for fenv->vector. Convenience function for using fenvs, e.g., in Opusmodus."
  (fenv->vector fenv number))


;;;
;;; generators
;;;

(defun make-fenv (func &key (min 0) (max 1))
  "Builds a fenv from a given numeric function, such that interval [0,1] of the resulting env-func is mapped to [min, max] of the argument function."
  (make-instance 'fenv
    :fenv #'(lambda (x)
	     (assert (<= 0 x 1))
	     (funcall func (+ min (* x (- max min)))))))

; (fenv? (make-fenv #'identity :min 1 :max 2))
 
(defun make-fenv1 (func &key (min 0) (max 1))
  "Builds a fenv from a given numeric function, such that interval [min,max] of resulting fenv is mapped to [0,1] of the argument function."
  (make-instance 'fenv
    :fenv #'(lambda (x)
	     (assert (<= min x max))
	     (funcall func (/ (-  x min) (- max min))))))

(defun points->fenv (func points)
  "Converts a list of points to a single fenv. A point is an x-y-pair as (xi yi). x values of the points range from 0--i (including), e.g., ((0 y1) (x2 y2) ... (1 yn)). The function defines the shape of the fenv segments and must return a fenv. It expects four numeric arguments, which describe the start and end points of the segment in the form (x1 y1 x2 y2)."
  (let* ((xs (mapcar #'first points))
	 (ys (mapcar #'second points))
	 (fenvs (mapcar func
		       (butlast xs)
		       (butlast ys)
		       (cdr xs)
		       (cdr ys))))
    (make-fenv
    #'(lambda (x)
	(let ((pos (position x (cdr xs) :test #'<=)))
	  (y (nth pos fenvs) x))))))

(defun mk-linear-fenv (points)
  "Returns a fenv which interpolates the given points by a linear function. Expects a list of x-y-pairs as (0 y1) ... (1 yn)"
  (points->fenv #'(lambda (x1 y1 x2 y2)
			(make-fenv1 #'(lambda (x)
					    (+ (* (- y2 y1) x) y1))
					:min x1 :max x2))
		points))

#| ;; Why is this definition here? Can I remove it?
(defun matrix-multiply (a b)
  (let ((*print-array* nil))
    (assert (and (= (array-rank a) (array-rank b) 2)
		 (= (array-dimension a 1) (array-dimension b 0)))
	    (a b)
	    "Cannot multiply ~S by ~S." a b)
    (really-matrix-multiply a b)))
|#

(defun list->fenv (numbers &key (type :linear) xs)
  "Translates a list of numbers into a fenv. If type is :linear, the fenv linearly interpolates equidistant points, but it type is :steps then the fenv simply switches between the points in a step fashion.

If xs is non-nil, it is a list of the x values to use (arg numbers contains the y values). By default, equidistant x values are used.
xs should be as long as numbers. 

NOTE: If :type is :linear, xs should be in the interval [0, 1], i.e. include 0 and 1. By contrast, if :type is :steps then xs should be the start positions of numbers, i.e. in the interval [0, 1) -- excluding the final 1 (which is internally added automatically).
"
  (assert (if xs
	      (= (length numbers) (length xs))
	      T)
	  (numbers xs)
	  "Uneven length: numbers is ~A and xs is ~A" numbers xs)
  (let ((l (length numbers)))
    (case l
      (0 (error "numbers cannot be an empty list."))
      (1 (apply #'constant-fenv numbers))
      (T
       (let ((actual-xs (if xs
			    (ccase type
			      (:linear xs)
			      (:steps (append xs '(1))))
			    (loop for x from 0 to 1 by (/ 1 (ccase type
							      (:linear (1- l))
							      (:steps l)))
			       collect x))))
	 (ccase type
	   (:linear (linear-fenv-fn ; mk-linear-fenv
		     (loop for x in actual-xs
			for y in numbers
			collect (list x y))))
	   (:steps (constant-segements-fenv-fn
		    (loop for x in actual-xs
		       ;; Note: constant-segements-fenv-fn never reachest last y value, hence some dummy y value is added.
		       for y in (append numbers '(1))
		       collect (list x y))))))))))
;; (apply #'steps-fenv numbers)

; (l (list->fenv '(2 4 3 5)) 4)
; (l (list->fenv '(2 4 3 5)) 6)
; (l (list->fenv '(2 4 3 5) :type :steps) 8)
; (l (list->fenv '(2 4 3 5) :type :steps) 6)
;; a list of a single value results in a constant fenv
; (l (list->fenv '(2)) 6)
; (l (list->fenv '(2 4 3 5) :type :steps :xs '(0 1/8 1/4 1/2)) 8)
; => (2 4 3 3 5 5 5 5)


;; (defun mk-sin-fenv (points)
;;   "Returns a fenv which interpolates the given points by a sin function. Using only the intervals [0,pi/2] and [pi, 3pi/4] results in edges. Expects a list of x-y-pairs as (0 y1) ... (1 yn)."
;;   (points->fenv #'(lambda (x1 y1 x2 y2)
;; 			(make-fenv1
;; 			 #'(lambda (x)
;; 			     (+ (* (sin (* x pi 0.5)) 
;; 				   (- y2 y1))
;; 				y1))
;; 			 :min x1 :max x2))
;; 		    points))

;; (defun mk-sin-fenv1 (points)
;;   "Returns a fenv which interpolates the given points by a sin function without clear edges. Expects a list of x-y-pairs as (0 y1) ... (1 yn)."
;;   (points->fenv #'(lambda (x1 y1 x2 y2)
;; 			(make-fenv1
;; 			 #'(lambda (x)
;; 			     (+ (* (+ (* (sin (- (* x pi) (* pi 0.5)))
;; 					 0.5)
;; 				      0.5)
;; 				   (- y2 y1))
;; 				y1))
;; 			 :min x1 :max x2))
;; 		    points))

;; (defun mk-expon-fenv-fn (points)
;;   "Returns a fenv described be exponential functions. Expects a list of x-y-pairs as (0 y1) ... (1 yn). y values can not be negative.

;; BUG: Definition wrong -- slope completely bogus!"
;;   (points->fenv #'(lambda (x1 x2 y1 y2)
;; 			(make-fenv1 #'(lambda (x)
;; 					    (+ (expt (/ y2 y1) x) y1 -1))
;; 					:min x1 :max x2))
;; 		    points))


(flet ((aux (fenvs points)
	    ;; points: (0 ... 1)
	    (make-fenv
	     #'(lambda (x)
		 (let* ((pos (position x points :test #'<))
			(fenv (if pos
			  (make-fenv1 (fenv (nth (1- pos) fenvs))
					  :min (nth (1- pos) points)
					  :max (nth pos points))
			  (first (last fenvs)))))
		   (y fenv x))))))

  (defun fenv-seq (&rest funcenvs-and-points)
    "Combines an arbitrary number of fenvs to a single fenv. Expects its args of form &rest func num func num ... func. The numbers between the funcenvs specify the start resp. end point of a certain fenv. All numbers should be between 0--1 (exclusive)."
    (let ((points (append		; 0, <vals>, 1
		    (tu:at-even-position
		     (cons 0 funcenvs-and-points)) (list 1))) 
	  (fenvs (tu:at-even-position funcenvs-and-points)))
      (aux fenvs points)))
  
  (defun funcs->fenv (funcs &key (min 0) (max 1))
    "Converts a list of unary numeric functions to a single fenv. Max and min a given for all functions and the functions are equally spaced in the func fenv."
    (let ((points (loop for n from 0 to 1 by (/ 1 (length funcs))
			collect n))
	  (fenvs (mapcar #'(lambda (f)
				 (make-fenv f :min min :max max))
			     funcs)))
      ;;(format T "~%debug: points:~A fenvs ~A" points fenvs)
      (aux fenvs points)))

  (defun osciallator (fenv n)
    "Defines a fenv by repeating fenv n times."
    (let ((fenvs (make-list n :initial-element fenv))
	  (points (loop for i from 0 to 1 by (/ 1 n)
			collect i)))
      (aux fenvs points))))

;; inconsistently named, but function name sin-fenv already taken by a macro
(defun mk-sin-fenv (n &key (phase 0) (amplitude 1) (offset 0))
  "Defines an fenv of sin shape with n periods. Phase is measured in cycles, i.e., 0.5 means sin is mirrored along x axis."
  (scale-fenv (make-fenv #'(lambda (x) (sin (* (* (+ x phase) pi 2) n))))
   amplitude offset))

(defun tan-fenv (n &key (phase 0) (amplitude 1) (offset 0))
  "Defines an fenv of tan shape with n periods. Phase is measured in cycles, i.e., 0.5 means sin is mirrored along x axis."
  (scale-fenv (make-fenv #'(lambda (x) (tan (* (* (+ x phase) pi 2) n))))
   amplitude offset))

(defun saw-fenv (n &key (amplitude 1) (offset 0))
  "Defines an fenv of saw shape (ascending) with n periods."
  (scale-fenv
   (osciallator (make-fenv #'(lambda (x)
				   (- (* 2 x) 1)))
		n)
   amplitude offset))

(defun saw1-fenv (n &key (amplitude 1) (offset 0))
  "Defines an fenv of saw shape (descending) with n periods."
  (reverse-fenv (saw-fenv n :amplitude amplitude :offset offset)))

; (v (saw1-fenv 10))

(defun triangle-fenv (n &key (amplitude 1) (offset 0))
  (scale-fenv
   (osciallator (mk-linear-fenv '((0 -1) (0.5 1) (1 -1))) n)
   amplitude offset))

(defun square-fenv (n &key (amplitude 1) (offset 0))
  (scale-fenv
   (osciallator (make-fenv #'(lambda (x)
				   (if (< x 0.5)
				       -1
				     1)))
		n)
   amplitude offset))

;; irregular-steps (number max min)

(defun steps-fenv (&rest numbers)
  "Outputs a fenv composed of constant functions defined by numbers."
  (funcs->fenv (mapcar #'(lambda (x) #'(lambda (_)
					 (declare (ignore _))
					 x))
			   numbers)))

; (v (steps-fenv 2 4 3 5) 6)

#| ;; currently depends on pw::g-random
(defun random-fenv (&key (min-y 0.0) (max-y 1.0))
  "A fenv of random numbers between min-y and max-y, which can be numbers or other fenvs."
  (assert (<= min-y max-y))
  (make-fenv #'(lambda (x)
		 (pw::g-random (if (fenv? min-y) 
				   (y min-y x)
				   min-y)
			       (if (fenv? max-y) 
				   (y max-y x)
				   max-y)))))
|#

(defun random-steps-fenv (n &key (min-y 0.0) (max-y 1.0))
  (assert (<= min-y max-y))
  (apply #'steps-fenv
	 (loop repeat n
	       collect (+ (random (abs (* (- max-y min-y)
					  1.0)))
			  min-y))))	

; (v (random-steps-fenv 10))       

(defun rising-expon-fenv (shape)
  "Outputs an rising fenv with exponential shape. y in interval (0, 1]. The bigger shape is the steeper the fenv is. shape must be > 0."
  (assert (> shape 0))
  (make-fenv #'(lambda (x) (exp x)) :min (- shape) :max 0))

(defun constant-fenv (value)  
  (make-fenv #'(lambda (x)
		 (declare (ignore x))
		 value)))


;;;
;;; transformers
;;;

(defun combine-fenvs (combi-func &rest fenvs)
  "Returns a fenv which combines the given fenvs with an n-ary numeric function. fenvs can consist of fenvs and numeric values (i.e. constant functions) in any order. The combine-func must except as much numeric values as arguments to fenv are given."
  (make-fenv
   #'(lambda (x)
       (apply combi-func
	      (mapcar
	       #'(lambda (fenv)
		   (cond ((fenv? fenv) (y fenv x))
			 ((numberp fenv) fenv)
			 (T (error "~A is neither a fenv nor a number"
				   fenv))))
	       fenvs)))))

(defun add-fenvs (&rest fenvs)
  "Returns a fenv which adds all given fenvs. fenvs can consist of fenvs and numeric values (i.e. constant functions) in any order."
  (apply #'combine-fenvs (cons #'+ fenvs)))

(defun multiply-fenvs (&rest fenvs)
  "Returns a fenv which multiplies all given fenvs. fenvs can consist of fenvs and numeric values (i.e. constant functions) in any order."
  (apply #'combine-fenvs (cons #'* fenvs)))


(defun expt-fenvs (fenv1 fenv2)
  "Returns a fenv which raises fenv1 to the power of fenv2. fenvs can consist of fenvs and numeric values (i.e. constant functions)."
  (apply #'combine-fenvs (list #'expt fenv1 fenv2)))


#| ;; depends on random-fenv, which in turn currently depends on pw::g-random
(defun randomise-fenv (fenv &key (max-random-offset 1.0))
  "Returns a randomised version of fenv, were y values can be over/under compared to fenv by up to max-random-offset. max-random-offset can be a number or another fenv."
  (add-fenvs fenv (random-fenv :min-y (* -1 max-random-offset) :max-y max-random-offset)))
|#

(defun reverse-fenv (fenv)
  "Reverse fenv (turn it backwards)."
  (make-fenv
   #'(lambda (x)
       (y fenv (- 1 x)))))


(defun inverse-fenv (fenv &optional (axis 0))
  "Inverse (mirror) fenv horizontally at the y value axis (the fenv is shifted so that axis becomes the former 0)."
  (make-fenv
   #'(lambda (x)
       (- axis (y fenv x)))))


(defun scale-fenv (fenv mul add)
  (combine-fenvs #'+ add
		(combine-fenvs #'* mul fenv)))


(defun rescale-fenv (fenv &key oldmin oldmax newmin newmax)
  ;; see CM 2.3.4 definition of rescale
  (combine-fenvs
   #'+
   (combine-fenvs #'* (combine-fenvs #'/ (combine-fenvs #'- newmax newmin)
				   (combine-fenvs #'- oldmax oldmin))
		 (combine-fenvs #'- fenv oldmin))
   newmin))

; (plot (rescale-fenv (make-fenv #'sin :max (* pi 2)) :oldmin -1 :oldmax 1 :newmin 0 :newmax 0.5))

;; noise...

;; hp-filter (fenv)
;; lp-filter (fenv)

(defun fenv-section (fenv &key min max)
  "New fenv that is segment of fenv from its x values min to max."
  (make-fenv  #'(lambda (x) (y fenv x)) 
             :min min :max max))

(defun waveshape (fenv1 fenv2)
  "Returns an fenv which reads fenv1 'through' fenv2: the y value of fenv2 at a given x value access the y of fenv1 (take care to keep output of fenv2 in interval [0,1])."
  (make-fenv
   #'(lambda (x)
       (y fenv1 (y fenv2 x)))))
 



;;; EOF
