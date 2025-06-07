(in-package cluster-engine) 
(setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 10 t t 
		(append (cluster-engine::R-metric-hierarchy 0 :durations) 
			(cluster-engine::R-note-meter #'(lambda (x) (if (= (first x) 1/4) (= (second x) 0) t)) 0 :d_offs :beats :incl-rests :normal) ) 
		'((4 4)) '(((1/12)(1/16)(1/8)(1/4)) ((60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71) (72) (73) (74) (75) (76) (77) (78) (79))))
	)