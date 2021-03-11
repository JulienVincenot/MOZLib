(in-package cluster-engine) 

(print 
		(cluster-engine::R-pitches-one-voice #'(lambda (x y) (> y x)) 0 :pitches)
	)
	

	(print 
		(cluster-engine::R-canon '(0 1) :rhythm 1/2 7) 
	)

