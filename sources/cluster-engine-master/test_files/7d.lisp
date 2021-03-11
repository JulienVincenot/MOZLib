(in-package cluster-engine) 
(setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 10 t t 
		(append (cluster-engine::R-metric-hierarchy 0 :durations) 
			(cluster-engine::R-meter-note #'(lambda (x) 
				(if (equal (fourth x) '(6 8)) 
					(= (third x) 60)
					(= (third x) 67)))
				0 :beats :offset_dur_pitch_meter :norm)

			(cluster-engine::R-meter-note #'(lambda (x) 
												(= x 0))
				0 :1st-beat :offset :norm))

		(cluster-engine::metric-domain '(4 4) '(1 2 3 4) nil '(6 8) '(1 3) 3/8)  '(((1/12)(1/16)(1/8)(1/4)) ((60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71) (72) (73) (74) (75) (76) (77) (78) (79))))
	)