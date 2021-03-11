(in-package cluster-engine) 
(setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 35 t nil 
		(append (cluster-engine::R-pitches-one-voice #'(lambda (x y) (member (abs (- x y)) '(1 2 3 4))) '(0 2) :pitches) 

			(cluster-engine::R-pitch-pitch #'(lambda (x) (= (- (first x) (second x)) (- (second x) (third x)) ) ) '(0 1 2) '(0) :all :no_grace :pitch) 
			(cluster-engine::R-pitch-pitch #'(lambda (x) (member (- (first x) (second x)) '(2 3 4 5 6 7 8 9) )) '(0 1) '(0) :all :no_grace :pitch) 
			) 
		'((4 4)) 
		'(((1/4)) ((60) (62) (64) (65) (67) (69) (71) (72) (74) (76) (77) (79) (81) (83) (84))
			((1/4)) ((60) (62) (64) (65) (67) (69) (71) (72) (74) (76) (77) (79) (81) (83) (84))
			((1/4)) ((60) (62) (64) (65) (67) (69) (71) (72) (74) (76) (77) (79) (81) (83) (84))
			))
	)