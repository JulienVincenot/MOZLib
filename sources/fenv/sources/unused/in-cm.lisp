(in-package :cm)

;; this files needs CM 2 loaded!

(defmethod make-fenv-pattern ((env fe::env) (n cm::pattern) &rest keys)
  "Transforms a func-env into a CM pattern. A pattern period is a scan through the whole envelope of length (next n) -- n is a CM pattern. Of course n needs to return only integers > 0."
  (apply #'make-instance 'funcall
	 :of #'(lambda ()
		 (let ((number (next n)))
		   (assert (and (integerp number)
				(> number 0)))
		   (loop for fenv-i from 0 below 1 by (/ 1 number)
			 collect (fe::y env fenv-i))))
	 keys))

#|
(gp:plot (next (make-fenv-pattern (fe::sin-env1 (0 0) (0.7 1) (1 0.5))
			 (new cycle of '(20 10)))
	       50))
|# 
