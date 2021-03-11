(in-package cluster-engine)


(defun average (list)
"The function outputs the average of all numbers in the input list.
If the list is empty, 0 will be returned."
  (declare (type list list))
  (when (not list) (return-from average 0))
  (/ (apply '+ list) (length list)))



(defun heuristic-rule-1-engine-pitches (simple-rule this-engine)
  "Formats a heuristic rule for pitches in one engine.
Format: (lambda (vsolution vlinear-solution vindex engine nth) (rule)).
Outputs the average weight for the current variable (average if it is
looped over several variables."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'engine  ;this is just to take away error message for unused variables
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-nth-cell-at-current-index this-engine 'vindex 'vsolution 'nth)))
                           (list 'total-pitchcount (list 'get-total-pitchcount this-engine 'vlinear-solution)))
                '(declare (type fixnum length-this-variable total-pitchcount))
                (list 'if (list '>= 'total-pitchcount no-of-args)
                      (list 'average (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-pitchcount 'length-this-variable) (1- no-of-args)) 0)
                                           'to (list '- (list '1- 'total-pitchcount) (1- no-of-args))
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                          (list 'loop 'for 'n 'from 1 'to no-of-args
                                                                'collect (list 'get-pitch-at-pitchcount this-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                ))))
                      0)))))


(defun heuristic-switch-rule-1-engine-pitches (simple-rule this-engine weight)
  "Formats a heuristic switch rule for pitches in one engine.
A heuritsic switch rule outputs the weight if it is true, otherwise it outputs zero."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'engine ;this is just to take away error message for unused variables
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-nth-cell-at-current-index this-engine 'vindex 'vsolution 'nth)))
                           (list 'total-pitchcount (list 'get-total-pitchcount this-engine 'vlinear-solution)))
                '(declare (type fixnum length-this-variable total-pitchcount))
                (list 'if (list '>= 'total-pitchcount no-of-args)
                      (list 'average (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-pitchcount 'length-this-variable) (1- no-of-args)) 0)
                                           'to (list '- (list '1- 'total-pitchcount) (1- no-of-args))
                                           'collect (list 'if  (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                     (list 'loop 'for 'n 'from 1 'to no-of-args
                                                                           'collect (list 'get-pitch-at-pitchcount this-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                           ))
                                                          weight
                                                          0)))
                      0)))))


;added july 2013
(defun heuristic-rule-1-engine-pitches-with-pitchcount (simple-rule this-engine)
  "Formats a heuristic rule for pitches in one engine. Pitch-count is also indicated: '(pitch pitch-count).
Format: (lambda (vsolution vlinear-solution vindex engine nth) (rule)).
Outputs the average weight for the current variable (average if it is
looped over several variables."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'engine  ;this is just to take away error message for unused variables
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-nth-cell-at-current-index this-engine 'vindex 'vsolution 'nth)))
                           (list 'total-pitchcount (list 'get-total-pitchcount this-engine 'vlinear-solution)))
                '(declare (type fixnum length-this-variable total-pitchcount))
                (list 'if (list '>= 'total-pitchcount no-of-args)
                      (list 'average (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-pitchcount 'length-this-variable) (1- no-of-args)) 0)
                                           'to (list '- (list '1- 'total-pitchcount) (1- no-of-args))
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                          (list 'loop 'for 'n 'from 1 'to no-of-args
                                                                'collect (list 'list (list 'get-pitch-at-pitchcount this-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                                  (list '+ 'notecount 'n))
                                                                ))))
                      0)))))


;added july 2013
(defun heuristic-switch-rule-1-engine-pitches-with-pitchcount (simple-rule this-engine weight)
  "Formats a heuristic switch rule for pitches in one engine. Pitch-count is also indicated: '(pitch pitch-count).
A heuritsic switch rule outputs the weight if it is true, otherwise it outputs zero."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'engine ;this is just to take away error message for unused variables
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-nth-cell-at-current-index this-engine 'vindex 'vsolution 'nth)))
                           (list 'total-pitchcount (list 'get-total-pitchcount this-engine 'vlinear-solution)))
                '(declare (type fixnum length-this-variable total-pitchcount))
                (list 'if (list '>= 'total-pitchcount no-of-args)
                      (list 'average (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-pitchcount 'length-this-variable) (1- no-of-args)) 0)
                                           'to (list '- (list '1- 'total-pitchcount) (1- no-of-args))
                                           'collect (list 'if  (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                     (list 'loop 'for 'n 'from 1 'to no-of-args
                                                                           'collect (list 'list (list 'get-pitch-at-pitchcount this-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                                  (list '+ 'notecount 'n))
                                                                           ))
                                                          weight
                                                          0)))
                      0)))))


(defun heuristic-rule-1-engine-cells (simple-rule engine)
  "Formats a heuristic rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vlinear-solution ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'apply (compile-if-not-compiled nil simple-rule) (list 'get-rhythm-motifs-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth))
                0))))


(defun heuristic-switch-rule-1-engine-cells (simple-rule engine weight)
  "Formats a heuristic switch rule for rhythm or pitch motifs. The rule should be compiled before used.
A heuritsic switch rule outputs the weight if it is true, otherwise it outputs zero."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vlinear-solution ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                (list 'get-rhythm-motifs-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth))
                      weight
                      0)
                0))))


;;;New july 2013
(defun heuristic-rule-1-engine-rhythmcells-with-starttime (simple-rule engine)
  "Formats a heuristic rule for rhythm motifs with start time of motifs indicated. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vlinear-solution ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'apply (compile-if-not-compiled nil simple-rule) 
                      (list 'matrix-trans
                            (list 'list
                                  (list 'get-rhythm-motifs-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth)
                                  (list 'mapcar (quote #'(lambda (list) (1- (abs (first list))))) 
                                        (list 'get-rhythm-motifs-onsets-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth))
                                  )))
                0))))


;;;New july 2013
(defun heuristic-switch-rule-1-engine-rhythmcells-with-starttime (simple-rule engine weight)
  "Formats a heuristic rule for rhythm motifs with start time of motifs indicated. 
The rule should be compiled before used.
A heuritsic switch rule outputs the weight if it is true, otherwise it outputs zero."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vlinear-solution ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                (list 'matrix-trans
                                      (list 'list
                                            (list 'get-rhythm-motifs-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth)
                                            (list 'mapcar (quote #'(lambda (list) (1- (abs (first list))))) 
                                                  (list 'get-rhythm-motifs-onsets-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth))
                                            )))
                      weight
                      0)
                0))))


;;;New july 2013
(defun heuristic-rule-1-engine-pitchcells-with-pitchcount (simple-rule engine)
  "Formats a heuristic rule for pitch motifs. Pitchcount is indicated: '((pitchcell) (pitchcount))
 The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vlinear-solution ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'apply (compile-if-not-compiled nil simple-rule) (list 'matrix-trans (list 'list (list 'get-rhythm-motifs-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth)
                                                                                                 (list 'get-pitchcount-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth))))      
                0))))

;;;New july 2013
(defun heuristic-switch-rule-1-engine-pitchcells-with-pitchcount (simple-rule engine weight)
  "Formats a heuristic switch rule for for pitch motifs. Pitchcount is indicated: '((pitchcell) (pitchcount)). The rule should be compiled before used.
A heuritsic switch rule outputs the weight if it is true, otherwise it outputs zero."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vlinear-solution ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                (list 'matrix-trans (list 'list (list 'get-rhythm-motifs-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth)
                                                          (list 'get-pitchcount-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth))))
                      weight
                      0)
                0))))

;;;New july 2013
(defun heuristic-rule-1-engine-pitchcells-with-index (simple-rule engine)
  "Formats a heuristic rule for pitch motifs. Index is indicated: '((pitchcell) index)
The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vlinear-solution ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'apply (compile-if-not-compiled nil simple-rule) (list 'matrix-trans (list 'list (list 'get-rhythm-motifs-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth)
                                                                                                 (list 'list-indexnumbers-from-index-to-current-index engine 'vindex (list '- (list 'aref 'vindex engine) index-offset)))))
                0))))

;;;New july 2013
(defun heuristic-switch-rule-1-engine-pitchcells-with-index (simple-rule engine weight)
  "Formats a heuristic switch rule for pitch motifs. Index is indicated: '((pitchcell) index)
The rule should be compiled before used.
A heuritsic switch rule outputs the weight if it is true, otherwise it outputs zero."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vlinear-solution ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                (list 'matrix-trans (list 'list (list 'get-rhythm-motifs-from-index-to-current-index-nth engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset) 'nth)
                                                          (list 'list-indexnumbers-from-index-to-current-index engine 'vindex (list '- (list 'aref 'vindex engine) index-offset)))))
                      weight
                      0)
                0))))

;;;;;;;

(defun heuristic-rule-1-engine-all-elements (simple-rule this-engine)
  "Formats a heuristic rule for a list of all durations or pitches in one engine. It includes rests as negative durations."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vsolution 'engine ;this is just to take away error message for unused variables
          (list 'funcall (compile-if-not-compiled nil simple-rule) (list 'aref 'vlinear-solution this-engine 0)))))


(defun heuristic-switch-rule-1-engine-all-elements (simple-rule this-engine weight)
  "Formats a heuristic switch rule for a list of all durations or pitches in one engine. It includes rests as negative durations.
A heuritsic switch rule outputs the weight if it is true, otherwise it outputs zero."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vsolution 'engine 'nth ;this is just to take away error message for unused variables
          (list 'if (list 'funcall (compile-if-not-compiled nil simple-rule) (list 'aref 'vlinear-solution this-engine 0))
                weight
                0))))

;----index 

(defun index-heuristic-rule-1-pitchengine-nth (simple-rule engine nths)
  "Formats a heuristic index rule for pitch. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-pitch heuristic rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-heuristic-rule
                (list 'when (list '> last-nth (list '1- (list 'get-current-index-nth-total-notecount engine 'vindex 'vsolution 'nth-candidate))) 
                      '(return-from this-heuristic-rule 0)) ;values for all indexes must exist before rule is checked
                (list 'progn 'engine  ;this is just to take away error message for unused variables
                      (list 'apply (compile-if-not-compiled nil simple-rule)
                            (list 'loop 'for 'nth 'in (list 'quote nths)
                                  'collect (list 'get-pitch-at-pitchcount engine 'vlinear-solution (list '1+ 'nth))))
                      )))))


(defun index-heuristic-switch-rule-1-pitchengine-nth (simple-rule engine nths weight)
  "Formats a heuristic index rule for pitch. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-pitch heuristic switch rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-heuristic-rule
                (list 'when (list '> last-nth (list '1- (list 'get-current-index-nth-total-notecount engine 'vindex 'vsolution 'nth-candidate))) 
                      '(return-from this-heuristic-rule 0)) ;values for all indexes must exist before rule is checked
                (list 'progn 'engine  ;this is just to take away error message for unused variables
                      (list 'if (list 'apply (compile-if-not-compiled nil simple-rule)
                                      (list 'loop 'for 'nth 'in (list 'quote nths)
                                            'collect (list 'get-pitch-at-pitchcount engine 'vlinear-solution (list '1+ 'nth))))
                            weight
                            0)
                      )))))


(defun index-heuristic-rule-1-rhythmengine-nth (simple-rule engine nths)
  "Formats a heuristic index rule for rhythm. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-rhythm heuristic rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-heuristic-rule
                (list 'when (list '> last-nth (list '1- (list 'length (list 'aref 'vlinear-solution engine 0)))) ;cannot use note count since rests have to be counted
                      '(return-from this-heuristic-rule 0)) ;values for all indexes must exist before rule is checked
                (list 'progn 'engine 'vsolution ;this is just to take away error message for unused variables
                      (list 'apply (compile-if-not-compiled nil simple-rule)
                            (list 'loop 'for 'nth 'in (list 'quote nths)
                                  'collect (list 'nth 'nth (list 'aref 'vlinear-solution engine 0)))) ;cannot use note count since rests have to be counted
                      )))))

(defun index-heuristic-switch-rule-1-rhythmengine-nth (simple-rule engine nths weight)
  "Formats a rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in heuristic index-rhythm switch rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-heuristic-rule
                (list 'when (list '> last-nth (list '1- (list 'length (list 'aref 'vlinear-solution engine 0))))
                      '(return-from this-heuristic-rule 0)) ;values for all indexes must exist before rule is checked
                (list 'progn 'vsolution 'engine 'vindex ;this is just to take away error message for unused variables
                      (list 'if (list 'apply (compile-if-not-compiled nil simple-rule)
                                      (list 'loop 'for 'nth 'in (list 'quote nths)
                                            'collect (list 'nth 'nth (list 'aref 'vlinear-solution engine 0))))
                            weight
                            0)
                      )))))


(defun index-heuristic-rule-1-engine-cells (simple-rule engine indexes)
  "Formats a rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args))
         (highest-index (apply 'max indexes)))
    
    (when (/= (length indexes) no-of-args) (error "Number of indexes does not correspond to number of arguments in heuristic index rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-heuristic-rule
                (list 'when (list '/= (list 'aref 'vindex engine) highest-index) '(return-from this-heuristic-rule 0)) ;values for all indexes must exist before rule is checked
                (list 'progn 'vlinear-solution 'engine ;this is just to take away error message for unused variables
                      (list 'apply (compile-if-not-compiled nil simple-rule)
                            (list 'loop 'for 'index 'in (list 'quote indexes)
                                  'collect (list 'get-cell-at-index-for-heuristic engine 'index 'vindex 'vsolution 'nth-candidate)))
                      ))))) 


(defun index-heuristic-switch-rule-1-engine-cells (simple-rule engine indexes weight)
  "Formats a rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args))
         (highest-index (apply 'max indexes)))
    
    (when (/= (length indexes) no-of-args) (error "Number of indexes does not correspond to number of arguments in heuristic switch index rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-heuristic-rule
                (list 'when (list '/= (list 'aref 'vindex engine) highest-index) '(return-from this-heuristic-rule 0)) ;values for all indexes must exist before rule is checked
                (list 'progn 'vlinear-solution 'engine ;this is just to take away error message for unused variables
                      (list 'if (list 'apply (compile-if-not-compiled nil simple-rule)
                                      (list 'loop 'for 'index 'in (list 'quote indexes)
                                            'collect (list 'get-cell-at-index-for-heuristic engine 'index 'vindex 'vsolution 'nth-candidate)))
                            weight
                            0)
                      )))))

;-------rhythm
(defun heuristic-rule-1-engine-durations (simple-rule this-engine)
  "Formats a rule for durations in one engine. It includes rests as negative durations."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'engine  ;this is just to take away error message for unused variables
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-nth-cell-at-current-index this-engine 'vindex 'vsolution 'nth)))
                           (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution this-engine 0))))
                '(declare (type fixnum length-this-variable total-no-of-dur))

                (list 'if (list '>= 'total-no-of-dur no-of-args)
                      (list 'average (list 'loop 'for 'duration-count 'from (list 'max (list '- (list '- 'total-no-of-dur 'length-this-variable) (1- no-of-args)) 0)
                                           'to (list '- (list '1- 'total-no-of-dur) (1- no-of-args))
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                          (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                'collect (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 0))
                                                                ))))
                      0)))))



(defun heuristic-switch-rule-1-engine-durations (simple-rule this-engine weight)
  "Formats a rule for durations in one engine. It includes rests as negative durations."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'engine ;this is just to take away error message for unused variables
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-nth-cell-at-current-index this-engine 'vindex 'vsolution 'nth)))
                           (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution this-engine 0))))
                '(declare (type fixnum length-this-variable total-no-of-dur))

                (list 'if (list '>= 'total-no-of-dur no-of-args)
                      (list 'average (list 'loop 'for 'duration-count 'from (list 'max (list '- (list '- 'total-no-of-dur 'length-this-variable) (1- no-of-args)) 0)
                                           'to (list '- (list '1- 'total-no-of-dur) (1- no-of-args))
                                           'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                          'collect (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 0))
                                                                          ))
                                                          weight
                                                          0)))
                      0)))))

;;;New july 2013
(defun heuristic-rule-1-engine-durations-with-total-duration (simple-rule this-engine)
  "Formats a heuristic rule for durations in one engine with the start time for the duration indicated. 
The rule includes rests as negative durations."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'engine  ;this is just to take away error message for unused variables
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-nth-cell-at-current-index this-engine 'vindex 'vsolution 'nth)))
                           (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution this-engine 0))))
                '(declare (type fixnum length-this-variable total-no-of-dur))

                (list 'if (list '>= 'total-no-of-dur no-of-args)
                      (list 'average (list 'loop 'for 'duration-count 'from (list 'max (list '- (list '- 'total-no-of-dur 'length-this-variable) (1- no-of-args)) 0)
                                           'to (list '- (list '1- 'total-no-of-dur) (1- no-of-args))
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                          (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                'collect (list 'list (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 0))
                                                                               (list '1- (list 'abs (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 1)))))
                                                                ))))
                      0)))))


;;;New july 2013
(defun heuristic-switch-rule-1-engine-durations-with-total-duration (simple-rule this-engine weight)
  "Formats a heuristic switch rule for durations in one engine with the start time for the duration indicated. 
The rule includes rests as negative durations."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'engine ;this is just to take away error message for unused variables
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-nth-cell-at-current-index this-engine 'vindex 'vsolution 'nth)))
                           (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution this-engine 0))))
                '(declare (type fixnum length-this-variable total-no-of-dur))

                (list 'if (list '>= 'total-no-of-dur no-of-args)
                      (list 'average (list 'loop 'for 'duration-count 'from (list 'max (list '- (list '- 'total-no-of-dur 'length-this-variable) (1- no-of-args)) 0)
                                           'to (list '- (list '1- 'total-no-of-dur) (1- no-of-args))
                                           'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                          'collect (list 'list (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 0))
                                                                                         (list '1- (list 'abs (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 1)))))
                                                                          ))
                                                          weight
                                                          0)))
                      0)))))


;;;METER

(defun heuristic-switch-rule-1-engine-timesigns (simple-rule weight)
  "Formats a heuristic switch rule for time signatures. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          (list 'progn 'vlinear-solution 'engine ;this is just to take away error message for unused variables
                (list 'let '((metric-engine (1- (the fixnum (array-dimension vindex 0)))))
                      (list 'if (list '>= (list 'aref 'vindex 'metric-engine) index-offset)
                            (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                            (list 'get-timesigns-from-index-to-current-index-nth 'metric-engine 'vindex 'vsolution (list '- (list 'aref 'vindex 'metric-engine) index-offset) 'nth))
                                  weight
                                  0)
                            0))))))


(defun heuristic-rule-1-engine-timesigns (simple-rule)
  "Formats a heuristic switch rule for time signatures. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          (list 'progn 'vlinear-solution 'engine ;this is just to take away error message for unused variables
                (list 'let '((metric-engine (1- (the fixnum (array-dimension vindex 0)))))
                      (list 'if (list '>= (list 'aref 'vindex 'metric-engine) index-offset)
                            (list 'apply (compile-if-not-compiled nil simple-rule) 
                                  (list 'get-timesigns-from-index-to-current-index-nth 'metric-engine 'vindex 'vsolution (list '- (list 'aref 'vindex 'metric-engine) index-offset) 'nth))
                            0))))))

(defun heuristic-switch-rule-1-engine-all-timesigns (simple-rule weight)
  "Formats a heuristic switch rule for a list of all time signatures."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
(list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vsolution 'engine 'nth ;this is just to take away error message for unused variables
          (list 'let '((metric-engine (1- (the fixnum (array-dimension vindex 0)))))
                (list 'if (list 'funcall (compile-if-not-compiled nil simple-rule) (list 'aref 'vlinear-solution 'metric-engine 0))
                      weight
                      0)
                      ))))

(defun heuristic-rule-1-engine-all-timesigns (simple-rule)
  "Formats a heuristic switch rule for a list of all time signatures."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

          'vsolution 'engine 'nth ;this is just to take away error message for unused variables
          (list 'let '((metric-engine (1- (the fixnum (array-dimension vindex 0)))))
                (list 'funcall (compile-if-not-compiled nil simple-rule) (list 'aref 'vlinear-solution 'metric-engine 0))
                ))))

(defun index-heuristic-switch-rule-timesigns (simple-rule indexes weight)
  "Formats a heuristic switch index rule for time signatures. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args))
         (highest-index (apply 'max indexes)))
    
    (when (/= (length indexes) no-of-args) (error "Number of indexes does not correspond to number of arguments in heuristic switch index rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-heuristic-rule
                (list 'let '((metric-engine (1- (the fixnum (array-dimension vindex 0)))))
                      (list 'when (list '/= (list 'aref 'vindex 'metric-engine) highest-index) '(return-from this-heuristic-rule 0)) ;values for all indexes must exist before rule is checked
                      (list 'progn 'vlinear-solution 'engine ;this is just to take away error message for unused variables
                            (list 'if (list 'apply (compile-if-not-compiled nil simple-rule)
                                            (list 'loop 'for 'index 'in (list 'quote indexes)
                                                  'collect (list 'get-cell-at-index-for-heuristic 'metric-engine 'index 'vindex 'vsolution 'nth-candidate)))
                                  weight
                                  0)
                            ))))))


(defun index-heuristic-rule-timesigns (simple-rule indexes)
  "Formats a heuristic index rule for time signatures. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args))
         (highest-index (apply 'max indexes)))
    
    (when (/= (length indexes) no-of-args) (error "Number of indexes does not correspond to number of arguments in heuristic switch index rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-heuristic-rule
                (list 'let '((metric-engine (1- (the fixnum (array-dimension vindex 0)))))
                      (list 'when (list '/= (list 'aref 'vindex 'metric-engine) highest-index) '(return-from this-heuristic-rule 0)) ;values for all indexes must exist before rule is checked
                      (list 'progn 'vlinear-solution 'engine ;this is just to take away error message for unused variables
                            (list 'apply (compile-if-not-compiled nil simple-rule)
                                  (list 'loop 'for 'index 'in (list 'quote indexes)
                                        'collect (list 'get-cell-at-index-for-heuristic 'metric-engine 'index 'vindex 'vsolution 'nth-candidate)))
                            ))))))


(defun heuristic-switch-rule-only-m-motifs (this-engine weight)
  "Formats a rule for pitches in one engine."

    (list 'lambda '(vsolution vlinear-solution vindex engine nth)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth))

        'engine 'vlinear-solution  ;this is just to take away error message for unused variables
        (list 'if (list '/= 0 (list 'aref 'vindex this-engine))
              (list 'if (list 'nth-m-motif? this-engine 'vindex 'vsolution 'nth) weight
                    0)
              0)
        ))

;;;;Added May 2020

(defun heuristic-switch-rule-1-engine-cells-at-timepoints (simple-rule engine timepoints weight)
  "Formats a rule for rhythm motifs which startpoint exist at a given timepoint.  The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (nth-timepoint (1- no-of-args)))

    (setf timepoints (mapcar '1+ timepoints))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-h)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-h))

          (list 'progn 'vlinear-solution  ;this is just to take away error message for unused variables
                (list 'let* (list '(current-index-starttime (get-current-index-starttime-nth engine vindex vsolution nth-h))
                                  (list 'nth-1st-timepoint (list 'position 'current-index-starttime (list 'quote timepoints) ':test ''>= ':from-end 't)));;;;; '> changed to '>= 
                      '(declare (type number current-index-starttime))
                      '(declare (type t nth-1st-timepoint))

                      (list 'if (list 'and 'nth-1st-timepoint (list '>= 'nth-1st-timepoint nth-timepoint))
                            (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                            (list 'loop 'for 'nth 'from (list '- 'nth-1st-timepoint nth-timepoint) 'to 'nth-1st-timepoint 
                                                  'collect (list 'let (list (list 'this-index (list 'the 'fixnum 
                                                                                                    (list 'get-index-at-timepoint-nth 'engine 'vsolution 'vlinear-solution 'vindex (list 'nth 'nth (list 'quote timepoints)) 'nth-h))))
                                                                 '(declare (type fixnum this-index))
                                                                 (list 'list
                                                                       (list '- (list 'get-index-starttime 'engine 'this-index 'vindex 'vsolution) (list 'nth 'nth (list 'quote timepoints)))
                                                                       (list 'get-cell-at-timepoint-for-heuristic 'engine 'vsolution 'vlinear-solution 'vindex (list 'nth 'nth (list 'quote timepoints)) 'nth-h)))))
                                  weight
                                  0)
                            0))))))



(defun heuristic-rule-1-engine-cells-at-timepoints (simple-rule engine timepoints)
  "Formats a rule for rhythm motifs which startpoint exist at a given timepoint.  The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (nth-timepoint (1- no-of-args)))

    (setf timepoints (mapcar '1+ timepoints))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-h)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-h))

          (list 'progn 'vlinear-solution  ;this is just to take away error message for unused variables
                (list 'let* (list '(current-index-starttime (get-current-index-starttime-nth engine vindex vsolution nth-h))
                                  (list 'nth-1st-timepoint (list 'position 'current-index-starttime (list 'quote timepoints) ':test ''>= ':from-end 't)));;;;; '> changed to '>= 
                      '(declare (type number current-index-starttime))
                      '(declare (type t nth-1st-timepoint))

                      (list 'if (list 'and 'nth-1st-timepoint (list '>= 'nth-1st-timepoint nth-timepoint))
                            (list 'apply (compile-if-not-compiled nil simple-rule) 
                                  (list 'loop 'for 'nth 'from (list '- 'nth-1st-timepoint nth-timepoint) 'to 'nth-1st-timepoint 
                                        'collect (list 'let (list (list 'this-index (list 'the 'fixnum 
                                                                                          (list 'get-index-at-timepoint-nth 'engine 'vsolution 'vlinear-solution 'vindex (list 'nth 'nth (list 'quote timepoints)) 'nth-h))))
                                                       '(declare (type fixnum this-index))
                                                       (list 'list
                                                             (list '- (list 'get-index-starttime 'engine 'this-index 'vindex 'vsolution) (list 'nth 'nth (list 'quote timepoints)))
                                                             (list 'get-cell-at-timepoint-for-heuristic 'engine 'vsolution 'vlinear-solution 'vindex (list 'nth 'nth (list 'quote timepoints)) 'nth-h)))))

                            0))))))



(defun heuristic-switch-rule-1-engine-cells-end-at-timepoints (simple-rule engine timepoints weight)
  "Formats a rule for rhythm motifs which endpoint exist at a given timepoint. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (nth-timepoint (1- no-of-args)))

    (setf timepoints (mapcar '1+ timepoints))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-h)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-h))



          (list 'progn 'vlinear-solution ;this is just to take away error message for unused variables
                (list 'let* (list '(current-index-endtime (get-current-index-endtime-nth engine vindex vsolution nth-h) )
                                  (list 'nth-1st-timepoint (list 'position 'current-index-endtime (list 'quote timepoints) ':test ''>= ':from-end 't)))
                      '(declare (type number current-index-starttime))
                      '(declare (type t nth-1st-timepoint))



                      (list 'if (list 'and 'nth-1st-timepoint (list '>= 'nth-1st-timepoint nth-timepoint))
                            (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 


                                  (list 'loop 'for 'nth 'from (list '- 'nth-1st-timepoint nth-timepoint) 'to 'nth-1st-timepoint 
                                        'collect (list 'let* (list (list 'this-index (list 'the 'fixnum 
                                                                                           (list 'get-index-at-timepoint-nth engine 'vsolution 'vlinear-solution 'vindex (list '- (list 'nth 'nth (list 'quote timepoints)) 1/16) 'nth-h)))
                                                                   (list 'this-cell (list 'get-cell-at-index-for-heuristic engine 'this-index 'vindex 'vsolution 'nth-h))
                                                                   '(length-this-cell (apply '+ (mapcar 'abs this-cell))))
                                                       '(declare (type fixnum this-index))
                                                       '(declare (type list this-cell))



                                                       (list 'list
                                                             (list '- (list '+ (list 'get-index-starttime engine 'this-index 'vindex 'vsolution) 'length-this-cell)
                                                                   (list 'nth 'nth (list 'quote timepoints)))
                                                             'this-cell))))
                                  weight
                                  0)
                            0))))))



(defun heuristic-rule-1-engine-cells-end-at-timepoints (simple-rule engine timepoints)
  "Formats a rule for rhythm motifs which endpoint exist at a given timepoint. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (nth-timepoint (1- no-of-args)))

    (setf timepoints (mapcar '1+ timepoints))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-h)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-h))


          (list 'progn 'vlinear-solution ;this is just to take away error message for unused variables
                (list 'let* (list '(current-index-endtime (get-current-index-endtime-nth engine vindex vsolution nth-h) )
                                  (list 'nth-1st-timepoint (list 'position 'current-index-endtime (list 'quote timepoints) ':test ''>= ':from-end 't)))
                      '(declare (type number current-index-starttime))
                      '(declare (type t nth-1st-timepoint))



                      (list 'if (list 'and 'nth-1st-timepoint (list '>= 'nth-1st-timepoint nth-timepoint))
                            (list 'apply (compile-if-not-compiled nil simple-rule) 


                                  (list 'loop 'for 'nth 'from (list '- 'nth-1st-timepoint nth-timepoint) 'to 'nth-1st-timepoint 
                                        'collect (list 'let* (list (list 'this-index (list 'the 'fixnum 
                                                                                           (list 'get-index-at-timepoint-nth engine 'vsolution 'vlinear-solution 'vindex (list '- (list 'nth 'nth (list 'quote timepoints)) 1/16) 'nth-h)))
                                                                   (list 'this-cell (list 'get-cell-at-index-for-heuristic engine 'this-index 'vindex 'vsolution 'nth-h))
                                                                   '(length-this-cell (apply '+ (mapcar 'abs this-cell))))
                                                       '(declare (type fixnum this-index))
                                                       '(declare (type list this-cell))



                                                       (list 'list
                                                             (list '- (list '+ (list 'get-index-starttime engine 'this-index 'vindex 'vsolution) 'length-this-cell)
                                                                   (list 'nth 'nth (list 'quote timepoints)))
                                                             'this-cell))))
                            0))))))



(defun heuristic-switch-rule-1-engine-rhythm-at-timepoints (simple-rule engine timepoints weight)
  "Formats a rule for rhythm that exist at a give time point. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (nth-timepoint (1- no-of-args)))

    (setf timepoints (mapcar '1+ timepoints))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-h)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-h))

          (list 'progn 'vlinear-solution  ;this is just to take away error message for unused variables
                (list 'let* (list '(current-index-endtime (get-current-index-endtime-nth engine vindex vsolution nth-h) )

                                  (list 'nth-1st-timepoint (list 'position 'current-index-endtime (list 'quote timepoints) ':test ''> ':from-end 't))) ;;;;check this
                      '(declare (type number current-index-starttime))
                      '(declare (type t nth-1st-timepoint))

                      (list 'if (list 'and 'nth-1st-timepoint (list '>= 'nth-1st-timepoint nth-timepoint))
                            (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                  (list 'loop 'for 'nth 'from (list '- 'nth-1st-timepoint nth-timepoint) 'to 'nth-1st-timepoint 
                                        'collect (list 'list (list '- (list 'get-starttime-for-duration-existing-at-timepoint engine 'vlinear-solution (list 'nth 'nth (list 'quote timepoints)))
                                                                   (list 'nth 'nth (list 'quote timepoints)))
                                                       (list 'get-duration-existing-at-timepoint engine 'vlinear-solution (list 'nth 'nth (list 'quote timepoints))))))
                                  weight
                                  0)
                            0))))))



(defun heuristic-rule-1-engine-rhythm-at-timepoints (simple-rule engine timepoints)
  "Formats a rule for rhythm that exist at a give time point. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (nth-timepoint (1- no-of-args)))

    (setf timepoints (mapcar '1+ timepoints))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-h)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-h))

          (list 'progn 'vlinear-solution  ;this is just to take away error message for unused variables
                (list 'let* (list '(current-index-endtime (get-current-index-endtime-nth engine vindex vsolution nth-h) )

                                  (list 'nth-1st-timepoint (list 'position 'current-index-endtime (list 'quote timepoints) ':test ''> ':from-end 't))) ;;;;check this
                      '(declare (type number current-index-starttime))
                      '(declare (type t nth-1st-timepoint))

                      (list 'if (list 'and 'nth-1st-timepoint (list '>= 'nth-1st-timepoint nth-timepoint))
                            (list 'apply (compile-if-not-compiled nil simple-rule) 
                                  (list 'loop 'for 'nth 'from (list '- 'nth-1st-timepoint nth-timepoint) 'to 'nth-1st-timepoint 
                                        'collect (list 'list (list '- (list 'get-starttime-for-duration-existing-at-timepoint engine 'vlinear-solution (list 'nth 'nth (list 'quote timepoints)))
                                                                   (list 'nth 'nth (list 'quote timepoints)))
                                                       (list 'get-duration-existing-at-timepoint engine 'vlinear-solution (list 'nth 'nth (list 'quote timepoints))))))
                            0))))))





(defun heuristic-rule-one-engine (rule engine)
  "Wraps a rule in a small array together with information regarding what engine it is valid for, and its backtracking route."
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(2))))
    (setf (aref vrule 0) (list engine)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
     ;no backtrack route in heuristic rules
    (make-heuristic-rule-instance vrule)))




;---






