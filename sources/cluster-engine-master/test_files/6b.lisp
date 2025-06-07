(in-package cluster-engine) (setf *random-state* (make-random-state t)) 
(print
	(cluster-engine::ClusterEngine 12 t nil 
		(cluster-engine::R-rhythm-pitch-one-voice 
				#'(lambda (a) (= (second a) 
					(cond 
							((= (first a) 1/16) 60) 
							((= (first a) 1/8) 67)  
							((= (first a) 1/4) 72)  
							(t 0)) 
						))
					 0 :rhythm/pitch :exclude-gracenotes)

		'((4 4)) 
		'(((1/4) (1/8) (1/16) (0)) 
			((60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71) (72)))
	)
)
	