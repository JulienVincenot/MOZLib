(in-package cluster-engine) 
(setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 30 t nil 
		(append (cluster-engine::R-metric-hierarchy 0 :durations)
                        (r-meter-note #'(lambda (x) (equal x '(0 1/4)))
                                      0 :1st-beat :offset_dur :norm)
			 ) 
		'((4 4)) '(((1/12)(1/16)(1/8)(1/4)) 
                           ((60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71) (72) (73) (74) (75) (76) (77) (78) (79))))
	)