(in-package cluster-engine) (setf *random-state* (make-random-state t)) 


(print (clusterengine 
  16 t nil 
  '()  ; no rules
  '((4 4)) 
  ;;rhythm domain 
  '(((1/4)(1/8)(3/16)(1/4))
    nil)
    ))

(print (clusterengine 
  16 t nil 
  '()  ; no rules
  '((4 4)) 
  ;;rhythm domain 
  '(((1/16 1/16 1/8)(1/16 -1/8 1/16) (1/12 1/12 1/12) (1/2))
    nil)
    ))

