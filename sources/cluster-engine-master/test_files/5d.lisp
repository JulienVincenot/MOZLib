(in-package cluster-engine) (setf *random-state* (make-random-state t)) 
(print
	(cluster-engine::ClusterEngine 12 t nil 
		(cluster-engine::R-pitches-one-voice #'(lambda (x y z w) (equal x w))

			0 :pitches) 
		'((4 4)) 
		'(((1/4) (1/8) (1/16) (3/8)) 
			((60) (62 67) (64) (66 67) (67) (69) (71) (72)))
	)
)
	