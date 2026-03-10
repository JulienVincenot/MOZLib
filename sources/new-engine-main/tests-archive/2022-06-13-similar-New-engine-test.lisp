;;;;;; EXAMPLE ENGINE CALL

(defvar *rulecounter* 0)

(time (engine 12 '(1 2 3 4 5 6 7 8 9 10 11 12) 'integer
	(list 
	;	(format-RL-rule #'(lambda (&rest x) (if (cdr x)   (not (member (car x) (cdr x))) t))  0 )
	;(format-RL-rule #'(lambda (&rest x) (progn (print x)  t))  0 )
	(format-indexrule #'(lambda (x y) (= (- x y) 6)) '(1 5))
	(format-indexrule #'(lambda (y) (progn (incf *rulecounter*) (print *rulecounter*) t)) '(5))
	(format-wildcardrule #'(lambda (x y) (>  (- x y) 0)) '(0 2)) 
	)))