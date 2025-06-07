(in-package cluster-engine) 
(setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 15 t nil 
		(append (r-pitches-one-voice #'(lambda (x) (not (member (car (last (pw::g-mod (last x 12) 12))) (butlast (pw::g-mod (last x 12) 12))))) '(0 1) :all-pitches)
			(r-pitch-pitch #'(lambda (x) (if (= (apply-minus (mapcar #'third x)) 0) (member (apply-minus (mapcar #'first x)) '(4 8)) (member (apply-minus (mapcar #'first x)) '(5 7))))
						'(0 1) '(0) :all :no_grace :p_d_offs)
				(r-pitch-pitch #'(lambda (x) (>= (first x) (second x))) 
						'(0 1) '(0) :all :no_grace :pitch)

			)
				
			 
		'((4 4)) 
		'(((1/4)(1/16)(1/8)(3/16)(3/8)) ((60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71) (72) (73) (74) (75) (76) (77) (78) (79))
			((1/4)(1/16)(1/8)(3/16)(3/8)) ((60) (61) (62) (63) (64) (65) (66) (67) (68) (69) (70) (71) (72) (73) (74) (75) (76) (77) (78) (79))
			)
	))