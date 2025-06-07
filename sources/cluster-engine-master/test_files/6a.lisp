(in-package cluster-engine) (setf *random-state* (make-random-state t)) 
(print
	(cluster-engine::ClusterEngine 12 t nil 
		(append 
		(cluster-engine::R-index-rhythm-pitch-one-voice #'(lambda (a b) (if (= (first a) 1/4) (equal b '(1/4 60)) (equal a b)) ) '(0 1) 0 :nth-note))	

		'((4 4)) 
		'(((1/4) (1/8) (1/16) (3/8)) 
			((60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71)))
	)
)
	