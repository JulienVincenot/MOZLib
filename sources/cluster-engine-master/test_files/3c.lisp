(in-package cluster-engine) (setf *random-state* (make-random-state t)) 

(print
(cluster-engine::ClusterEngine 16 t nil 
		'() 
		'((4 4)) 
		'(((1/4)) (((60 69)) (m (-2 5 5)) (m (-1 7)) (m (1 9)) (m (2 11)) )  )
		))



