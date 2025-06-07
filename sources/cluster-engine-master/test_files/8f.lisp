(in-package cluster-engine) 
(setf *random-state* (make-random-state t)) 

	(print (cluster-engine::ClusterEngine 15 t nil 
		(append (cluster-engine::R-pitches-one-voice #'(lambda (x y) (member (abs (- x y)) '(1 2 3 4))) '(1) :pitches) 
			(cluster-engine::R-chords '(0 1 2) '((4 7)) '(0) :all :exclude-gracenotes)
			(cluster-engine::R-pitch-pitch #'(lambda (x) (>= (first x) (second x))) '((0 1)(1 2)) '(0) :beat :no_grace :pitch)
			(cluster-engine::R-pitch-pitch #'(lambda (x) (= (length (pw::rem-dups (pw::g-mod x 12))) 3) ) '(0 1 2) '(0) :1st-beat :no_grace :pitch) 

			(cluster-engine::R-pitch-pitch #'(lambda (x y) (if (not (equal x y)) (if (= (apply-minus x) 7) (/= (apply-minus y) 7) t) t))
			 '((0 1)(1 2) (0 2)) '(0) :beat :no_grace :pitch)			
			) 
		'((4 4)) 
		'(((1/4 1/4 1/4 1/4 1/4 1/4 1/2 1/4 1/4 1/4 1/4 1/4 1/4 1/2)) ((60 60 67 67 69 69 67 65 65 64 64 62 62 60))
			((1/4)) ((48) (50) (52) (53) (55) (57) (59) (60) (62) (64) (65) (67) (69) (71) (72))
			((1/4)) ((48) (50) (52) (53) (55) (57) (59) (60) (62) (64) (65) (67) (69) (71) (72))
			))
	)