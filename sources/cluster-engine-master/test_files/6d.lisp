(in-package cluster-engine) (setf *random-state* (make-random-state t)) 


(print

	(ClusterEngine 10 t nil 
		(r-rhythm-pitch-one-voice 
                         #'(lambda (x y) 

                             (= (second x)(second y))

                             ) 

                         0 :rhythm/pitch-segment :exclude-gracenotes) 
			
		'((4 4)) 

		`(((1/16) (1/8) (1/4) (-1/8)) 
                  
                  ,(mapcar #'list (pw::arithm-ser 60 1 79))


                  )
                )
        
	)


