(in-package cluster-engine) (setf *random-state* (make-random-state t)) (print

	(cluster-engine::ClusterEngine 20 t nil 
		(append (cluster-engine::R-rhythms-one-voice-at-timepoints #'(lambda (x) (equal x '(0 1/4))) 0 '(2) :dur-start) 
			(cluster-engine::R-only-m-motifs 0))
		'((4 4)) 
		'(((1/4) (1/8) (1/16) (3/8)) ((60)(m 7 -3)(m -7 3))))

	)