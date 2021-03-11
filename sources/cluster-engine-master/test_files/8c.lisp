(in-package cluster-engine) 
(setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 35 t nil 
		(append (cluster-engine::R-mel-interval-one-voice '(0 1) :normal :normal := 1/16 :member '(1 2)) 
			(cluster-engine::R-mel-interval-one-voice '(0 1) :normal :normal :longer-than 1/16 :member '(1 2 3 4 5)) 
			(cluster-engine::R-pitch-pitch #'(lambda (x y) (not (equal (apply-minus x) (apply-minus y))) ) '(0 1) '(0) :all :no_grace :pitch) 
			(cluster-engine::R-pitch-pitch #'(lambda (x) (member (mod (apply-minus x) 12) '(2 5 7))) '(0 1) '(0) :1st-voice :no_grace :pitch) 
			(cluster-engine::R-pitch-pitch #'(lambda (x) (>= (first x) (second x)) ) '(0 1) '(0) :beat :no_grace :pitch) ) 
		'((4 4)) 
		'(((1/16 1/16 3/8) (1/4) (1/8) (3/8)) ((55) (57) (59) (60) (62) (64) (66) (67) (69) (71) (72) (74) (76) (78) (79))
			((1/16 1/16 3/8) (1/4) (1/8) (3/8)) ((55) (57) (59) (60) (62) (64) (66) (67) (69) (71) (72) (74) (76) (78) (79))
			))
	)