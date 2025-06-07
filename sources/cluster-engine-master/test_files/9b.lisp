(in-package cluster-engine) 
(setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 15 t nil 
		(cluster-engine::R-rhythm-rhythm  #'(lambda (x) (if (= (second x) 0) (not (and (plusp (first x)) (plusp (third x)))) t)) 0 1 :d1_offs_d2 :norm :at-durations-v1)
			 
		'((4 4)) 
		'(((1/2)(1/4)(1/8)(1/16)(-1/4)) ((72))
			((1/2)(1/4)(1/8)(1/16)(-1/4)) ((67))
			)
	))