(in-package cluster-engine) (setf *random-state* (make-random-state t)) 
(print
	(cluster-engine::ClusterEngine 12 t nil 
		(append 
		(cluster-engine::R-pitches-one-voice #'(lambda (x) (not (member (car (last x)) (butlast x) ))) 0 :all-pitches)
		(cluster-engine::R-rhythms-one-voice #'(lambda (a b c d e) (equal a e)) 0 :durations))	

		'((4 4)) 
		'(((1/4) (1/8) (1/16) (3/8)) 
			((60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71)))
	)
)
	