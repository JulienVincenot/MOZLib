(in-package cluster-engine)

;;;;
;format for rule
;(function (lambda (vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine) (funcall rule (get-rhythm-motif-at-index engine vindex vsolution))))
;;;;;;;;;;;;;;;;;;;;;ONE ENGINE;;;;;;;;;;;;;;;;;;;;;;;;

(defun rule-1-engine-cells (simple-rule engine)
  "Formats a rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'progn 'vlinear-solution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'apply (compile-if-not-compiled nil simple-rule) (list 'get-rhythm-motifs-from-index-to-current-index engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset)))
                't)))))


(defun index-rule-1-engine-cells (simple-rule engine indexes)
  "Formats a rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args))
         (highest-index (apply 'max indexes)))
    
    (when (/= (length indexes) no-of-args) (error "Number of indexes does not correspond to number of arguments in index rule."))
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'block 'this-rule
                (list 'when (list '/= (list 'aref 'vindex engine) highest-index) '(return-from this-rule t)) ;values for all indexes must exist before rule is checked
                (list 'progn 'vlinear-solution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                      (list 'apply (compile-if-not-compiled nil simple-rule)
                            (list 'loop 'for 'index 'in (list 'quote indexes)
                                  'collect (list 'get-cell-at-index engine 'index 'vsolution)))
                      )))))

;;;new july 2013
(defun rule-1-engine-rhythmcells-with-starttime (simple-rule engine)
  "Formats a rule for rhythm motifs with start time of motifs indicated. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'progn 'vlinear-solution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                      (list 'apply (compile-if-not-compiled nil simple-rule) 
                            (list 'matrix-trans
                                  (list 'list
                                        (list 'get-rhythm-motifs-from-index-to-current-index engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset))
                                        (list 'mapcar (quote #'(lambda (list) (1- (abs (first list))))) 
                                              (list 'get-rhythm-motifs-onsets-from-index-to-current-index engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset)))
                                        )))
                      't)))))

;;;new july 2013
(defun rule-1-engine-pitchcells-with-pitchcount (simple-rule engine)
  "Formats a rule for pitch motifs. Pitchcount is indicated: '((pitchcell) (pitchcount))
The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'progn 'vlinear-solution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'apply (compile-if-not-compiled nil simple-rule) (list 'matrix-trans (list 'list (list 'get-rhythm-motifs-from-index-to-current-index engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset))
                                                                             (list 'get-pitchcount-from-index-to-current-index engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset)))))
                't)))))

;;;new july 2013
(defun rule-1-engine-pitchcells-with-index (simple-rule engine)
  "Formats a rule for pitch motifs. The index is indicated: '((pitchcell) index)
The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'progn 'vlinear-solution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
          (list 'if (list '>= (list 'aref 'vindex engine) index-offset)
                (list 'apply (compile-if-not-compiled nil simple-rule) (list 'matrix-trans (list 'list (list 'get-rhythm-motifs-from-index-to-current-index engine 'vindex 'vsolution (list '- (list 'aref 'vindex engine) index-offset))
                                                                             (list 'list-indexnumbers-from-index-to-current-index engine 'vindex (list '- (list 'aref 'vindex engine) index-offset)))))
                't)))))


;;;new july 2012
(defun rule-1-engine-cells-at-timepoints (simple-rule engine timepoints)
  "Formats a rule for rhythm motifs which startpoint exist at a given timepoint.  The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (nth-timepoint (1- no-of-args)))

    (setf timepoints (mapcar '1+ timepoints))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'progn 'vlinear-solution 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                (list 'let* (list '(current-index-starttime (get-current-index-starttime engine vindex vsolution))
                                  (list 'nth-1st-timepoint (list 'position 'current-index-starttime (list 'quote timepoints) ':test ''>= ':from-end 't))) ;May 2020: changed > to >=
                      '(declare (type number current-index-starttime))
                      '(declare (type t nth-1st-timepoint))

                      (list 'if (list 'and 'nth-1st-timepoint (list '>= 'nth-1st-timepoint nth-timepoint))
                            (list 'apply (compile-if-not-compiled nil simple-rule) 
                                  (list 'loop 'for 'nth 'from (list '- 'nth-1st-timepoint nth-timepoint) 'to 'nth-1st-timepoint 
                                        'collect (list 'let (list (list 'this-index (list 'the 'fixnum 
                                                                                          (list 'get-index-at-timepoint engine 'vsolution 'vlinear-solution (list 'nth 'nth (list 'quote timepoints))))))
                                                       '(declare (type fixnum this-index))
                                                       (list 'list
                                                             (list '- (list 'get-index-starttime engine 'this-index 'vindex 'vsolution) (list 'nth 'nth (list 'quote timepoints)))
                                                             (list 'get-cell-at-timepoint engine 'vsolution 'vlinear-solution (list 'nth 'nth (list 'quote timepoints)))))))
                            't))))))




(defun rule-1-engine-cells-end-at-timepoints (simple-rule engine timepoints)
  "Formats a rule for rhythm motifs which endpoint exist at a given timepoint. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (nth-timepoint (1- no-of-args)))

    (setf timepoints (mapcar '1+ timepoints))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'progn 'vlinear-solution 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                (list 'let* (list '(current-index-endtime (get-current-index-endtime engine vindex vsolution) )
                                  (list 'nth-1st-timepoint (list 'position 'current-index-endtime (list 'quote timepoints) ':test ''>= ':from-end 't)))
                      '(declare (type number current-index-starttime))
                      '(declare (type t nth-1st-timepoint))

                      (list 'if (list 'and 'nth-1st-timepoint (list '>= 'nth-1st-timepoint nth-timepoint))
                            (list 'apply (compile-if-not-compiled nil simple-rule) 
                                  (list 'loop 'for 'nth 'from (list '- 'nth-1st-timepoint nth-timepoint) 'to 'nth-1st-timepoint 
                                        'collect (list 'let* (list (list 'this-index (list 'the 'fixnum 
                                                                                          (list 'get-index-at-timepoint engine 'vsolution 'vlinear-solution (list '- (list 'nth 'nth (list 'quote timepoints)) 1/16))))
                                                                  (list 'this-cell (list 'get-cell-at-index engine 'this-index 'vsolution))
                                                                  '(length-this-cell (apply '+ (mapcar 'abs this-cell))))
                                                       '(declare (type fixnum this-index))
                                                       '(declare (type list this-cell))

                                                       (list 'list
                                                             (list '- (list '+ (list 'get-index-starttime engine 'this-index 'vindex 'vsolution) 'length-this-cell)
                                                                   (list 'nth 'nth (list 'quote timepoints)))
                                                             'this-cell))))
                            't))))))



(defun rule-1-engine-rhythm-at-timepoints (simple-rule engine timepoints)
  "Formats a rule for rhythm that exist at a give time point. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (nth-timepoint (1- no-of-args)))

    (setf timepoints (mapcar '1+ timepoints))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'progn 'vlinear-solution 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                (list 'let* (list '(current-index-endtime (get-current-index-endtime engine vindex vsolution) )
                                  (list 'nth-1st-timepoint (list 'position 'current-index-endtime (list 'quote timepoints) ':test ''> ':from-end 't)))
                      '(declare (type number current-index-starttime))
                      '(declare (type t nth-1st-timepoint))

                      (list 'if (list 'and 'nth-1st-timepoint (list '>= 'nth-1st-timepoint nth-timepoint))
                            (list 'apply (compile-if-not-compiled nil simple-rule) 
                                  (list 'loop 'for 'nth 'from (list '- 'nth-1st-timepoint nth-timepoint) 'to 'nth-1st-timepoint 
                                        'collect (list 'list (list '- (list 'get-starttime-for-duration-existing-at-timepoint engine 'vlinear-solution (list 'nth 'nth (list 'quote timepoints)))
                                                                   (list 'nth 'nth (list 'quote timepoints)))
                                                       (list 'get-duration-existing-at-timepoint engine 'vlinear-solution (list 'nth 'nth (list 'quote timepoints))))))
                            t))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun rule-1-engine-pitches (simple-rule this-engine)
  "Formats a rule for pitches in one engine."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index this-engine 'vindex 'vsolution)))
                           (list 'total-pitchcount (list 'get-total-pitchcount this-engine 'vlinear-solution)))
                '(declare (type fixnum length-this-variable total-pitchcount))
                (list 'if (list '>= 'total-pitchcount no-of-args)
                      (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-pitchcount 'length-this-variable) (1- no-of-args)) 0)

                            'to (list '- (list '1- 'total-pitchcount) (1- no-of-args))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 1 'to no-of-args
                                                                   'collect (list 'get-pitch-at-pitchcount this-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                   )))
                                      '(return nil))
                            'finally '(return t)
                            )
                      't)))))

;added july 2013
(defun rule-1-engine-pitches-with-pitchcount (simple-rule this-engine)
  "Formats a rule for pitches in one engine. Pitch-count is also indicated: '(pitch pitch-count)."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index this-engine 'vindex 'vsolution)))
                           (list 'total-pitchcount (list 'get-total-pitchcount this-engine 'vlinear-solution)))
                '(declare (type fixnum length-this-variable total-pitchcount))
                (list 'if (list '>= 'total-pitchcount no-of-args)
                      (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-pitchcount 'length-this-variable) (1- no-of-args)) 0)

                            'to (list '- (list '1- 'total-pitchcount) (1- no-of-args))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 1 'to no-of-args
                                                                   'collect (list 'list (list 'get-pitch-at-pitchcount this-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                                  (list '+ 'notecount 'n))
                                                                   )))
                                      '(return nil))
                            'finally '(return t)
                            )
                      't)))))


(defun index-rule-1-pitchengine-nth (simple-rule engine nths)
  "Formats a rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-pitch rule."))
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'block 'this-rule
                (list 'when (list '> last-nth (list '1- (list 'get-current-index-total-pitchcount engine 'vindex 'vsolution))) 
                      '(return-from this-rule t)) ;values for all indexes must exist before rule is checked
                (list 'progn 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                      (list 'apply (compile-if-not-compiled nil simple-rule)
                            (list 'loop 'for 'nth 'in (list 'quote nths)
                                  'collect (list 'get-pitch-at-pitchcount engine 'vlinear-solution (list '1+ 'nth))))
                      )))))



(defun rule-1-engine-all-elements (simple-rule this-engine)
  "Formats a rule for a list of all durations or pitches in one engine. It includes rests as negative durations."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes 'vindex ;this is just to take away error message for unused variables
          (list 'funcall (compile-if-not-compiled nil simple-rule) (list 'aref 'vlinear-solution this-engine 0)))))


(defun rule-1-engine-durations (simple-rule this-engine)
  "Formats a rule for durations in one engine. It includes rests as negative durations."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index this-engine 'vindex 'vsolution)))
                           (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution this-engine 0))))
                '(declare (type fixnum length-this-variable total-no-of-dur))

                'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                (list 'if (list '>= 'total-no-of-dur no-of-args)
                      (list 'loop 'for 'duration-count 'from (list 'max (list '- (list '- 'total-no-of-dur 'length-this-variable) (1- no-of-args)) 0)

                            'to (list '- (list '1- 'total-no-of-dur) (1- no-of-args))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 0))
                                                                   )))
                                      '(return nil))
                            'finally '(return t)
                            )
                      't)))))


;;;New july 2013
(defun rule-1-engine-durations-with-total-duration (simple-rule this-engine)
  "Formats a rule for durations in one engine with the start time for the duration indicated. 
The rule includes rests as negative durations."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index this-engine 'vindex 'vsolution)))
                           (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution this-engine 0))))
                '(declare (type fixnum length-this-variable total-no-of-dur))

                'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                (list 'if (list '>= 'total-no-of-dur no-of-args)
                      (list 'loop 'for 'duration-count 'from (list 'max (list '- (list '- 'total-no-of-dur 'length-this-variable) (1- no-of-args)) 0)

                            'to (list '- (list '1- 'total-no-of-dur) (1- no-of-args))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'list (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 0))
                                                                                  (list '1- (list 'abs (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 1)))))
                                                                   )))
                                      '(return nil))
                            'finally '(return t)
                            )
                      't)))))

;;;;;;;

(defun index-rule-1-rhythmengine-nth (simple-rule engine nths)
  "Formats a rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-rhythm rule."))
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          'vsolution 'vindex
          (list 'block 'this-rule
                (list 'when (list '> last-nth (list '1- (list 'length (list 'aref 'vlinear-solution engine 0))))
                      '(return-from this-rule t)) ;values for all indexes must exist before rule is checked
                (list 'progn 'vlinear-solution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                      (list 'apply (compile-if-not-compiled nil simple-rule)
                            (list 'loop 'for 'nth 'in (list 'quote nths)
                                  'collect (list 'nth 'nth (list 'aref 'vlinear-solution engine 0))))
                      )))))

;;;METER

(defun rule-1-engine-timesigns (simple-rule)
  "Formats a rule for time signatures. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args)))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'progn 'vlinear-solution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                (list 'let '((metric-engine (1- (the fixnum (array-dimension vindex 0)))))
                  (list 'if (list '>= (list 'aref 'vindex 'metric-engine) index-offset)
                        (list 'apply (compile-if-not-compiled nil simple-rule) (list 'get-timesigns-from-index-to-current-index 'metric-engine 'vindex 'vsolution (list '- (list 'aref 'vindex 'metric-engine) index-offset)))
                        't))))))


(defun rule-1-engine-all-timesigns (simple-rule)
  "Formats a rule for a list of all time signatures."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
          (list 'let '((metric-engine (1- (the fixnum (array-dimension vindex 0)))))
                (list 'funcall (compile-if-not-compiled nil simple-rule) (list 'aref 'vlinear-solution 'metric-engine 0))))))



(defun index-rule-timesigns (simple-rule indexes)
  "Formats a rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (index-offset (1- no-of-args))
         (highest-index (apply 'max indexes)))
    
    (when (/= (length indexes) no-of-args) (error "Number of indexes does not correspond to number of arguments in index rule."))
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'block 'this-rule
                (list 'let '((metric-engine (1- (the fixnum (array-dimension vindex 0)))))
                      (list 'when (list '/= (list 'aref 'vindex 'metric-engine) highest-index) '(return-from this-rule t)) ;values for all indexes must exist before rule is checked
                      (list 'progn 'vlinear-solution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                            (list 'apply (compile-if-not-compiled nil simple-rule)
                                  (list 'loop 'for 'index 'in (list 'quote indexes)
                                        'collect (list 'get-timesig-at-index 'metric-engine 'index 'vsolution)))
                            ))))))


(defun rule-only-m-motifs (this-engine)
  "Formats a rule for pitches in one engine."

  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))

        'engine 'vlinear-solution 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
        (list 'if (list '/= 0 (list 'aref 'vindex this-engine))
              (list 'm-motif? this-engine 'vindex 'vsolution)
              't)
        ))

;;;;;;;;;;;;;;;;;;;;;

(defun make-rule-instance (rule-vector)
  (let ((this-instance (make-instance 'rule)))
    (set-rule rule-vector this-instance)
    this-instance))



(defun rule-one-engine (rule engine)
  "Wraps a rule in a small array together with information regarding what engine it is valid for, and its backtracking route."
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    (setf (aref vrule 2) (list (list engine))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))



;;;;;;;;;experiment
