(in-package cluster-engine) (setf *random-state* (make-random-state t)) 


(print (clusterengine 
  16 t nil 
  '()  ; no rules
  '((4 4)) 
  '(((1/4))
    ;; chord domain
    ((60)(62)(64)(65)(67)(69)(71)(72)))
    ))

(print
 (clusterengine 
  16 t nil 
  '()  ; no rules
  '((4 4)) 
  '(((1/4))
    ;; chord sequence motif
    ((60 63 65)(67 66 65))
    )))

