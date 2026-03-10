;;;;;; EXAMPLE ENGINE CALL

(defvar *rulecounter* 0)

(time (engine_v0.1 2 '(1 2 3 4 5 6 7 8 9 10 11 12) 'integer
	(list 
	;	(format-RL-rule #'(lambda (&rest x) (if (cdr x)   (not (member (car x) (cdr x))) t))  0 )
	;(format-RL-rule #'(lambda (&rest x) (progn (print x)  t))  0 )
	(format-indexrule #'(lambda (y) (progn (incf *rulecounter*) (print (list '1st_rule *rulecounter* y)) t)) '(0))
	(format-indexrule #'(lambda (x) (> x 6)) '(0))
	(format-indexrule #'(lambda (y) (progn (incf *rulecounter*) (print (list '2nd_rule *rulecounter* y)) t)) '(0))
	)))