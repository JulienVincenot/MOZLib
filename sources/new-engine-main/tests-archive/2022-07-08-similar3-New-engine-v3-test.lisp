;;;;;; EXAMPLE ENGINE CALL

	(defvar *rulecounter* 0)

(time (engine_v3 16 '(1 2 3 4 5 6 7 8 9 10 11 12 13) 'integer
	(list 
	;	(format-RL-rule #'(lambda (&rest x) (if (cdr x)   (not (member (car x) (cdr x))) t))  0 )
	;(format-RL-rule #'(lambda (&rest x) (progn (print x)  t))  0 )
	(format-indexrule #'(lambda (y) (progn (incf *rulecounter*) (print (list '1st_rule *rulecounter* y)) t)) '(0))
	(format-wildcardrule #'(lambda (x y) (>  (- x y) 0)) '(0 2)) 
	(format-wildcardrule #'(lambda (x y) (= (- x y) 4)) '(0 5)) 
	(format-indexrule #'(lambda (y) (progn (incf *rulecounter*) (print (list '2nd_rule *rulecounter* y)) t)) '(0))
	)
	nil
	))