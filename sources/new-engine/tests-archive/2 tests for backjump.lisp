;The first example takes 5min15sec without backjump, and 0.32 sec with backjump on my laptop.
;
;The second example makes no difference if you use backjumping or not (ca 0.4 sec).
;This is because the second rule will fdorce backtracking to teh neighbouring candidate.

#|
;EXAMPLE 1
(time 
(let ((pass 0) (fail 0))

	(loop for n from 0 to 1000
		do
(if (equal  
	(engine_v3.14 12 '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20) 'integer
	(list 
	 (format-wildcardrule #'(lambda (x y) (= (- x y) 5)) '(0 5))
	 (format-wildcardrule #'(lambda (x y) (>  (- x y) 0)) '(0 4)) 
	)
	nil
	2
	t)

 'NO_SOLUTION

) (incf fail) (incf pass)

))
(print (list 'pass pass 'fail fail))))


|#



;EXAMPLE 2
(time 
(let ((pass 0) (fail 0))

	(loop for n from 0 to 1000
		do
(if (equal  
	(engine_v3.14 12 '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20) 'integer
	(list 
	 (format-wildcardrule #'(lambda (x y) (= (- x y) 3)) '(0 3))
	 (format-wildcardrule #'(lambda (x y) (>  (- x y) 0)) '(0 1)) 
	)
	nil
	2
	t)

 'NO_SOLUTION

) (incf fail) (incf pass)

))
(print (list 'pass pass 'fail fail))))
