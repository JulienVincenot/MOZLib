(in-package cluster-engine) (setf *random-state* (make-random-state t)) 

(print (cluster-engine::ClusterEngine 12 t nil 
                               (append (r-index-pitches-one-voice 
                                        #'(lambda (x y) (equal x y )) 
                                        '(0 2) 
                                        0 
                                        :index-for-cell) 
                                         
                                         )

                                '((4 4)) 

                                '(
                                  ((1/4) (1/8) (1/16) (3/8)) 
                                  ((60) (62 67) (64) (66 67) (67) (69) (71) (72)) 
                                  )
                                
 ) )