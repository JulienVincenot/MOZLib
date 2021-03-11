(in-package cluster-engine) (setf *random-state* (make-random-state t)) 

(print
(cluster-engine::ClusterEngine 16 t nil 
		'() 
		'((4 4)(5 8)) 
		'(((1/4)) ((62)) )
		))


(print
(cluster-engine::ClusterEngine 16 nil nil 
		'() 
		(metric-domain '(4 4) '(1 2 3 4) nil '(6 8) '(1 3) 3/8)
		'(((1/4)) ((62)) )
		))


