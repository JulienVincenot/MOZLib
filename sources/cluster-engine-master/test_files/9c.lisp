(in-package cluster-engine) 
(setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 15 t nil 
		(append (r-canon '(0 1) :rhythm&pitch 1/2 -7)
				(r-pitch-pitch #'(lambda (x) (if (and (first x) (second x)) (member (- (first x) (second x)) '(0 3 4 5 7 8 9)) t)) '(0 1) '(0) :beat :no_grace :pitch)
				(r-pitches-one-voice #'(lambda (x y) (member (abs (- x y)) '(1 2 3 4 5 7 12))) 0 :pitches)
				(r-rhythm-rhythm #'(lambda (x) (if (= (second x) 0) (not (and (plusp (first x)) (plusp (third x)))) t) ) 0 1 :d1_offs_d2 :norm :at-durations-v1)
				)
			 
		'((4 4)) 
		'(((1/2)(1/4)(3/8)(3/16)(1/8)(1/16)) ((60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71) (72) (73) (74) (75) (76) (77) (78) (79))
			((-1/2)(1/2)(1/4)(3/8)(3/16)(1/8)(1/16)) ((53) (54) (55) (56) (57) (58) (59) (60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71) (72))
			)
	))