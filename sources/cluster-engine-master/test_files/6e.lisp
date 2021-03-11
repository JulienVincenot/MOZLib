(in-package cluster-engine) (setf *random-state* (make-random-state t)) 


(print

	(ClusterEngine 10 t nil 
		(append 
                 (r-mel-interval-one-voice 0 :normal :normal
                                           := 1/4 := 5) 
                 (r-mel-interval-one-voice 0 :normal :normal
                                           := 1/8 :smaller-than 4)

                 )
			
		'((4 4)) 

		`(((1/8) (1/4)) 
                  
                  ,(mapcar #'list (pw::arithm-ser 60 1 79))


                  )
                )
        
	)


