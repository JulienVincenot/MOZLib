(in-package cluster-engine) (setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 20 t nil 
		(cluster-engine::R-index-rhythms-one-voice #'(lambda (x) (= x 3/8))

			'(0) 0 :position-for-duration) 
		'((4 4)) 
		'(((1/4) (1/8) (1/16) (3/8)) ((60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71) (72)))
	))

	