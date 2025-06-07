(in-package cluster-engine)

;;;May 26, 2020. Updated canon rule (broken into 3 rules)

(defun duxrule (rule dux-engine comes-engine offset)
  (rule-one-engine (canonrule-1-engine-all-elements rule dux-engine comes-engine offset) dux-engine))

(defun comesrule (rule dux-engine comes-engine offset)
  (rule-one-engine (canonrule-1-engine-all-elements rule dux-engine comes-engine offset) comes-engine))



(defun canonrule-1-engine-all-elements (simple-rule dux-engine comes-engine offset)
  "Formats a rule for a list of all durations or pitches in one engine. It includes rests as negative durations."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes 'vindex ;this is just to take away error message for unused variables
           (list 'funcall (compile-if-not-compiled nil simple-rule)  (list 'aref 'vlinear-solution dux-engine 0) (list 'aref 'vlinear-solution comes-engine 0) offset))))



(defun canon-logic-statement (duxrhythm comesrhythm offset)
  (if (and duxrhythm comesrhythm)
      (progn
        (let* ((comes-onsetlist (dx-to-x-with-rests 0 comesrhythm))
               (comes-adjusted-rhythm
                (remove nil
                        (loop for x in comesrhythm
                              for y in comes-onsetlist
                              collect (if (>= (abs y) offset)
                                          x
                                        nil))))
               (shortest-rhythm-length (min (length duxrhythm) (length comes-adjusted-rhythm))))
          (list duxrhythm comes-adjusted-rhythm)
          (list 'subseq (subseq duxrhythm 0 shortest-rhythm-length) (subseq comes-adjusted-rhythm 0 shortest-rhythm-length))
          (equal (subseq duxrhythm 0 shortest-rhythm-length) (subseq comes-adjusted-rhythm 0 shortest-rhythm-length))))
    t))


;;;

(defun find-onset (engine onset)
  (rule-one-engine (rule-find-onset-1-engine engine onset) engine))

(defun rule-find-onset-1-engine (this-engine onset)
  "Formats a rule for a list of all durations or pitches in one engine. It includes rests as negative durations."

    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes 'vindex ;this is just to take away error message for unused variables

          (list 'let (list (list 'endtime (list '1- (list 'car (list 'last  (list 'aref 'vlinear-solution this-engine 1))))))
                (list 'aref 'vlinear-solution this-engine 1)
                (list 'if (list '> 'endtime onset)
                      (list 'member (list '1+ onset) (list 'aref 'vlinear-solution this-engine 1) ':test #'(lambda (x y) (= (abs x) (abs y))))
                      't))
          ))


;;;


(defun rules-rhythm-canon (voice1 voice2 offset)
    (list (find-onset (* voice2 2)  offset)
          (duxrule #'canon-logic-statement  (* voice1 2) (* voice2 2) offset)
          (comesrule #'canon-logic-statement  (* voice1 2) (* voice2 2) offset)))


