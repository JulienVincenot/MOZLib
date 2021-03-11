(in-package cluster-engine) 
(setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 15 t nil 
		(cluster-engine::R-rhythm-hierarchy '(0 1 2)' :dur->dur) 
			 
		'((4 4)) 
		'(((1/2)(1/4)(1/8)) ((72))
			((1/4)(1/8)) ((67))
			((1/4)(1/8)(1/16)) ((60))) 
	))