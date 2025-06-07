(in-package :fe)

;; much code doubling...
;; !! over simplified: if some params are lists of numbers, env->list must use their length ! 
(defun transform-to-plotarg (val number)
  ;; aux definition
  (cond
   ;; constant vals
   ((numberp val) (make-list number :initial-element val))
   ;; fenvs 
   ((env? val) (env->list val number))
   ;; list of fenvs and/or constant numbers 
   ((every #'(lambda (val)
	       (or (env? val)
		   (numberp val)))
	   val)
    (mapcar #'(lambda (val)
		;; retesting!
		(format T "debug... number: ~A" number)
		(cond ((env? val) (env->list val number))
		      ((numberp val) (make-list number :initial-element val))))
	    val))
   ;; number list or listed number list
   ((or (every #'numberp val) 
	(every #'(lambda (val) (every #'numberp val))
	       val))
    val)
   (T (error "does not know how to handle ~A" val))))

(defun plot (y &rest args &key x z (number 100)
	       &allow-other-keys)
  "Similar to gp:plot, but params can also be fenvs."
  (let ((x (transform-to-plotarg x number))
	(y (transform-to-plotarg y number))
	(z (transform-to-plotarg z number)))
    (apply #'gp:plot y :x x :z z
	   args)))

;; code doubling...
(defun multiple-pages-plot (n y &rest args
			      &key x z (number 100)
			      &allow-other-keys)
   "Similar to gp:multiple-pages-plot, but params can also be fenvs."
   (let ((x (transform-to-plotarg x number))
	 (y (transform-to-plotarg y number))
	 (z (transform-to-plotarg z number)))
     (apply #'gp:multiple-pages-plot n y :x x :z z
	    args)))

#| ; tests

(plot '(0 5 3 4))
(plot (make-env #'sin :max pi))
(plot (list (make-env #'sin :max pi)
	    (linear-env (0 1) (1 0))))


(multiple-pages-plot 2 '(1 2 3 4 5 6 7 8 9 10))
;; for multiple plots on multiple pages x must be defined
;;(currently, however ;-)
(multiple-pages-plot 2 '((1 2 3 4 5 6 7 8 9 10)
			 (5 2 3 1 7 4 1 2 1 4))
		     :x '((1 2 3 4 5 6 7 8 9 10)
			  (1 2 3 4 5 6 7 8 9 10)))
(multiple-pages-plot 2 (make-env #'sin :max pi))
(multiple-pages-plot 2 (list (make-env #'sin :max pi)
			     (linear-env (0 1) (1 0)))
		     :x (list (make-env #'identity)
			      (make-env #'identity)))
|#
