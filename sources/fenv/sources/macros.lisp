(in-package :fe)

;; NOTE: these definitions are not used in PWGL, because macros are not required in a visual programming language
;; Therefore, all corresponding functions (e.g., linear-fenv-fn) have been moved into fenv.lisp and renamed into the name previously taken by macros (e.g., linear-fenv).

(defun linear-fenv-fn (points)
  (points->fenv #'(lambda (x1 y1 x2 y2)
			(make-fenv1 #'(lambda (x)
					    (+ (* (- y2 y1) x) y1))
					:min x1 :max x2))
		    points))

(defmacro linear-fenv (&rest points)
  "Defines an fenv which interpolates the given points by a linear function. Expects a list of x-y-pairs as (0 y1) ... (1 yn)"
  `(linear-fenv-fn ',points))

; (v (linear-fenv (0 0) (0.5 1) (0.7 -1) (1 2)) 10)

(defun sin-fenv-fn (points)
  "Returns a fenv which interpolates the given points by a sin function. Using only the intervals [0,pi/2] and [pi, 3pi/4] results in edges. Expects a list of x-y-pairs as (0 y1) ... (1 yn)."
  (points->fenv #'(lambda (x1 y1 x2 y2)
			(make-fenv1
			 #'(lambda (x)
			     (+ (* (sin (* x pi 0.5)) 
				   (- y2 y1))
				y1))
			 :min x1 :max x2))
		    points))

(defmacro sin-fenv (&rest points)
  "Defines an fenv which interpolates the given points by a sin function. Using only the intervals [0,pi/2] and [pi, 3pi/4] results in edges. Expects a list of x-y-pairs as (0 y1) ... (1 yn)."
  `(sin-fenv-fn ',points))

(defun sin-fenv1-fn (points)
  "Returns a fenv which interpolates the given points by a sin function without clear edges. Expects a list of x-y-pairs as (0 y1) ... (1 yn)."
  (points->fenv #'(lambda (x1 y1 x2 y2)
			(make-fenv1
			 #'(lambda (x)
			     (+ (* (+ (* (sin (- (* x pi) (* pi 0.5)))
					 0.5)
				      0.5)
				   (- y2 y1))
				y1))
			 :min x1 :max x2))
		    points))

(defmacro sin-fenv1 (&rest points)
  "Defines an fenv which interpolates the given points by a sin function without clear edges. Expects a list of x-y-pairs as (0 y1) ... (1 yn)."
  `(sin-fenv1-fn ',points))

;; !!! noch voellig falsch: die Steilheit stimmt nicht !!!
(defun expon-fenv-fn (points)
  "Returns a fenv described be exponential functions. Expects a list of x-y-pairs as (0 y1) ... (1 yn). y values can not be negative.

BUG: Definition wrong -- slope completely bogus!"
  (points->fenv #'(lambda (x1 x2 y1 y2)
			(make-fenv1 #'(lambda (x)
					    (+ (expt (/ y2 y1) x) y1 -1))
					:min x1 :max x2))
		    points))

(defmacro expon-fenv (&rest points)
  "Defines an envelope described be exponential functions. Expects a list of x-y-pairs as (0 y1) ... (1 yn). y values can not be negative."
  `(expon-fenv-fn ',points))


(defun constant-segements-fenv-fn (points)
  (points->fenv #'(lambda (x1 y1 x2 y2)
                    (declare (ignore y2))
                    (make-fenv1 #'(lambda (x) 
                                    (declare (ignore x)) 
                                    ;; ensure result is a float
                                    ; (* y1 1.0)
                                    y1
                                    )
                                :min x1 :max x2))
                points))

(defmacro constant-segements-fenv (&rest points)
  "Defines an fenv that consists of constant segments, like a steps function or sample and hold. Expects a list of x-y-pairs as (0 y1) ... (1 yn).

NOTE: The last y value is ignored."
  `(constant-segements-fenv-fn ',points))
 
; (v (constant-segements-fenv (0 0) (0.5 1) (0.7 -1) (1 2)) 10)


