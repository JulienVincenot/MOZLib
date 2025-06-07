(in-package cluster-engine)


;;METRIC RULES

(defun rule-2-engines-events-offset-to-metric-structure-include-rests (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for events (including rests and gracenotes), i.e. how events are positioned in relation to the pulse.
This rule is more efficient than rule-2-engines-durations-offset-to-metric-beat-ignor-rests since also endpoints for duratins and rests
can be used to check the rule. In this way, problems might be detected one step earlier, and some backtracking can be avoided.
If rests are not used in the domain, this rule is to prefer for this reason.
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule

                (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump))
                      '(declare (type fixnum metric-engine2))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps ;keep grace notes
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))
                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                         ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args beats-metric-engine2 
                                                              engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(declare (type number end-time-metric-engine2))

                                              '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))

                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              ))

                            (list (list '= 'engine 'metric-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                    (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                    (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                              engine1-timepoints-to-check beats-metric-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 beats-metric-engine2 
                                                        engine1-timepoints-to-check matching-or-following-timepoints))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this should NOT be CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                                                              
                                      
                                        '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                        )))
                     
                    ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'nth '(+ n nth-variable) 'list-of-offsets))))  ;;;BUG FIXED HERE
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))



(defun rule-2-engines-durations-offset-to-metric-structure-ignor-rests (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for durations (ignoring rests), i.e. how durations are positioned in relation to the pulse. The simple-rule
receives an offset for each duration in the engine.
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule
                (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump))
                      '(declare (type fixnum metric-engine2))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests ;keep grace notes
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args)))))
                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args beats-metric-engine2 
                                                              engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(declare (type number end-time-metric-engine2))

                                              '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))

                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              ))

                            (list (list '= 'engine 'metric-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                    (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                    (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                              engine1-timepoints-to-check beats-metric-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 beats-metric-engine2 
                                                        engine1-timepoints-to-check matching-or-following-timepoints))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                                                              
                                      
                                        '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                        )))

                      
                    ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-offsets)))))
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))



(defun rule-2-engines-events-offset-to-metric-structure-include-rests-ignor-gracenotes (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for events (including rests), i.e. how events are positioned in relation to the pulse.
Grace notes are ignored (they will be skipped: the rule will not know that they exist).
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule
                (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump durations-plus-preceding-for-extra-args-engine1))
                      '(declare (type fixnum metric-engine2))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                               ;last offset is included since it will mark the start of a future rest or duration
                                                                      (list 'mapcar '(quote abs) (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes ;remove grace notes, keep rests
                                                                                                                        rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args)))))

                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args beats-metric-engine2 
                                                              engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(declare (type number end-time-metric-engine2))

                                              '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                            
                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))

                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              ))

                            (list (list '= 'engine 'metric-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                         ;last offset is included since it will mark the start of a future rest or duration
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above)
                                                    (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                    (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                              engine1-timepoints-to-check beats-metric-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 beats-metric-engine2 
                                                        engine1-timepoints-to-check matching-or-following-timepoints))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)
                                      
                                        (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                                                              
                                      
                                        '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                        )))

                      
                    ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'nth '(+ n nth-variable) 'list-of-offsets)))) ;FIXED A BUG HERER OCTOBER 2022
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))




(defun rule-2-engines-durations-offset-to-metric-structure-ignor-rests-and-gracenotes (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for durations (ignoring rests), i.e. how durations are positioned in relation to the pulse.
Grace notes and rests are ignored (grace notes and rests will be skipped: the rule will not know that they exist).
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule
                (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump durations-plus-preceding-for-extra-args-engine1))
                      '(declare (type fixnum metric-engine2))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes ;keep grace notes
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args)))))
                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args beats-metric-engine2 
                                                              engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(declare (type number end-time-metric-engine2))

                                              '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                            
                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))

                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              ))

                            (list (list '= 'engine 'metric-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'beats-metric-engine2 metric-timepoints) ;keep the endtime since it is a grid (no rests possible)
                                                    (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                    (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                              engine1-timepoints-to-check beats-metric-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 beats-metric-engine2 
                                                        engine1-timepoints-to-check matching-or-following-timepoints))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)
                                      
                                        (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                                                              
                                      
                                        '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                        )))

                      
                    ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-offsets)))))
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))


;;;;;;;;;;indicate duration


(defun rule-2-engines-events-and-their-offset-to-metric-structure-include-rests (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for events (including rests), i.e. how events are positioned in relation to the pulse.
The rule will also access the event ratio (= length). Grace notes are inluded.
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule
                (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                             events-plus-preceding-for-extra-args-engine1
                             list-of-offsets
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1))
                      '(declare (type fixnum metric-engine2))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps ;keep grace notes and rests
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args)))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))
                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(declare (type number end-time-metric-engine2))

                                              '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                              (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))

                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              ))

                            (list (list '= 'engine 'metric-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (duration is onknown on teh last endtime)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                    (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                    (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                              engine1-timepoints-to-check beats-metric-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)
                                        (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                              (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                        (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                                                              
                                      ;onsets-plus-preceding-for-extra-args-engine1
                                        '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                        )))

                      
                    ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                                   (list 'nth '(+ n nth-variable) 'list-of-offsets))))))
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))



(defun rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for events (including rests), i.e. how events are positioned in relation to the pulse.
The rule will also access the event ratio (= length). Grace notes are ignored (they will be skipped: the rule will not 
know that they exist).
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))

        ;find the information to check
        (list 'block 'this-rule
              (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                           events-plus-preceding-for-extra-args-engine1
                           list-of-offsets
                           timepoints-for-backjump)
                    '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1))
                    '(declare (type fixnum metric-engine2))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                              (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                    (list 'mapcar '(quote abs) (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes ;remove grace notes, keep rests
                                                                                                                      rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))))
                                                        (list 'this-cell-events-plus-preceding-for-extra-args 
                                                              (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes 
                                                                                     rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))

                                                        (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                        (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                        (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                  engine1-timepoints-to-check beats-metric-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                            beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                            '(declare (type number end-time-metric-engine2))

                                            '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                            (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))
                                            
                                            (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))

                                            '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                            ))

                          (list (list '= 'engine 'metric-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                  (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                              (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                  (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                              (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))

;
                                                  (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above)
                                                  (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK 
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                  (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets 
                                                      beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                      '(declare (type number this-cell-starttime end-time-engine2))

                                      '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)
                                      (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                      (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                                                              
                                      
                                      '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                      )))

                      
                    ;here is the rule test
                    (list 'loop 'for 'nth-variable 'from 0 
                          'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                          'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                 'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                                 (list 'nth '(+ n nth-variable) 'list-of-offsets))))))
                                    (list 'progn 
                                            ;backjump
                                          (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                          '(return nil)))
                          'finally '(return t)
                          )
                    )))
        ))





(defun rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for durations (ignoring rests), i.e. how durations are positioned in relation to the pulse.
The rule will also access the duration ratio. Rests are ignored (they will be skipped: the rule will not know that they exist).
Grace notes are included.
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))

        ;find the information to check
        (list 'block 'this-rule
              (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                           events-plus-preceding-for-extra-args-engine1
                           list-of-offsets
                           timepoints-for-backjump)
                    '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1))
                    '(declare (type fixnum metric-engine2))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                              (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                    (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests ;keep grace notes
                                                                                           rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args)))))
                                                        (list 'this-cell-events-plus-preceding-for-extra-args 
                                                              (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-rests 
                                                                                     rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))
                                                        (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                        (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                        (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                  engine1-timepoints-to-check beats-metric-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                            beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                            '(declare (type number end-time-metric-engine2))

                                            '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                            (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))
                                            
                                            (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))

                                            '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                            ))

                          (list (list '= 'engine 'metric-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                  (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                              (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                  (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                        (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-rests 
                                                                               rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                  (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                  (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK 
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                  (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                            engine1-timepoints-to-check beats-metric-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                      beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                      '(declare (type number this-cell-starttime end-time-engine2))
                                      '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)
                                      (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                                                              
                                      
                                      '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                      )))

                      
                    ;here is the rule test
                    (list 'loop 'for 'nth-variable 'from 0 
                          'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                          'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                 'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                                 (list 'nth '(+ n nth-variable) 'list-of-offsets))))))
                                    (list 'progn 
                                            ;backjump
                                          (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                          '(return nil)))
                          'finally '(return t)
                          )
                    )))
        ))




(defun rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for durations (ignoring rests), i.e. how durations are positioned in relation to the pulse.
The rule will also access the duration ratio. Grace notes and rests are ignored (they will be skipped: the rule will not know 
that they exist).
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule
                (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                             events-plus-preceding-for-extra-args-engine1
                             list-of-offsets
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1))
                      '(declare (type fixnum metric-engine2))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes ;keep grace notes
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args)))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))

                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(declare (type number end-time-metric-engine2))

                                              '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                              (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))
                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))

                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              ))

                            (list (list '= 'engine 'metric-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'beats-metric-engine2 metric-timepoints) ;keep the endtime since it is a grid (no rests possible)
                                                    (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                    (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                              engine1-timepoints-to-check beats-metric-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                              (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                        (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                                                              
                                      
                                        '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                        )))

                      
                    ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                                   (list 'nth '(+ n nth-variable) 'list-of-offsets))))))
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))

;;;;;;indicate time signature and duration

(defun rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-indicate-timesignature (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for events (including rests), i.e. how events are positioned in relation to the pulse.
The rule will also access the event ratio (= length) and the timesignature for the measure where the events onset exist. Grace notes are inluded.
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))



    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule
                (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                             events-plus-preceding-for-extra-args-engine1
                             list-of-offsets
                             list-of-timesigns
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1 list-of-timesigns))
                      '(declare (type fixnum metric-engine2))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps ;keep grace notes and rests
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args)))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))
                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated - timesign is not knowsn at endpoint
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(declare (type number end-time-metric-engine2))

                                              '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                              (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                              (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))

                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              ))

                            (list (list '= 'engine 'metric-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (duration is onknown on teh last endtime)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                    (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                    (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                              engine1-timepoints-to-check beats-metric-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)
                                        (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                              (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                        (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                        (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                                                                              
                                      ;onsets-plus-preceding-for-extra-args-engine1
                                        '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                        )))

                      
                    ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                                   (list 'nth '(+ n nth-variable) 'list-of-offsets)
                                                                                                   (list 'nth '(+ n nth-variable) 'list-of-timesigns))))))
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))



(defun rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for events (including rests), i.e. how events are positioned in relation to the pulse.
The rule will also access the event ratio (= length) and the timesignature for the measure where the events onset exist. 
Grace notes are ignored (they will be skipped: the rule will not know that they exist).
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))

        ;find the information to check
        (list 'block 'this-rule
              (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                           events-plus-preceding-for-extra-args-engine1
                           list-of-offsets
                           list-of-timesigns
                           timepoints-for-backjump)
                    '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1 list-of-timesigns))
                    '(declare (type fixnum metric-engine2))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                              (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                    (list 'mapcar '(quote abs) (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes ;remove grace notes, keep rests
                                                                                                                      rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))))
                                                        (list 'this-cell-events-plus-preceding-for-extra-args 
                                                              (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes 
                                                                                     rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))

                                                        (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                        (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated - timesign is not knowsn at endpoint
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                        (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                  engine1-timepoints-to-check beats-metric-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                            beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                            '(declare (type number end-time-metric-engine2))

                                            '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                            (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))
                                            
                                            (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                            (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))

                                            '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                            ))

                          (list (list '= 'engine 'metric-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                  (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                              (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                  (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                              (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))

;
                                                  (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above)
                                                  (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                  (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets 
                                                      beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                      '(declare (type number this-cell-starttime end-time-engine2))

                                      '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)
                                      (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                      (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                      (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                                                                              
                                      
                                      '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                      )))

                      
                    ;here is the rule test
                    (list 'loop 'for 'nth-variable 'from 0 
                          'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                          'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                 'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                                 (list 'nth '(+ n nth-variable) 'list-of-offsets)
                                                                                                 (list 'nth '(+ n nth-variable) 'list-of-timesigns))))))
                                    (list 'progn 
                                            ;backjump
                                          (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                          '(return nil)))
                          'finally '(return t)
                          )
                    )))
        ))



(defun rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for durations (ignoring rests), i.e. how durations are positioned in relation to the pulse.
The rule will also access the duration ratio and the timesignature for the measure where the events onset exist. Rests are ignored 
(they will be skipped: the rule will not know that they exist). Grace notes are included.
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))

        ;find the information to check
        (list 'block 'this-rule
              (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                           events-plus-preceding-for-extra-args-engine1
                           list-of-offsets
                           list-of-timesigns
                           timepoints-for-backjump)
                    '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1 list-of-timesigns))
                    '(declare (type fixnum metric-engine2))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                              (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                    (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests ;keep grace notes
                                                                                           rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args)))))
                                                        (list 'this-cell-events-plus-preceding-for-extra-args 
                                                              (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-rests 
                                                                                     rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))
                                                        (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                        (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated - timesign is not knowsn at endpoint
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                        (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                  engine1-timepoints-to-check beats-metric-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                            beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                            '(declare (type number end-time-metric-engine2))

                                            '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                            (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))
                                            
                                            (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                            (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))

                                            '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                            ))

                          (list (list '= 'engine 'metric-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                  (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                              (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                  (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                        (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-rests 
                                                                               rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                  (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                  (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                  (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                            engine1-timepoints-to-check beats-metric-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                      beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                      '(declare (type number this-cell-starttime end-time-engine2))
                                      '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)
                                      (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                      (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                                                                              
                                      
                                      '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                      )))

                      
                    ;here is the rule test
                    (list 'loop 'for 'nth-variable 'from 0 
                          'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                          'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                 'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                                 (list 'nth '(+ n nth-variable) 'list-of-offsets)
                                                                                                 (list 'nth '(+ n nth-variable) 'list-of-timesigns))))))
                                    (list 'progn 
                                            ;backjump
                                          (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                          '(return nil)))
                          'finally '(return t)
                          )
                    )))
        ))



(defun rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature (simple-rule rhythm-engine1 flag-for-metric-access)
  "Formats a rule for offsets for durations (ignoring rests), i.e. how durations are positioned in relation to the pulse.
The rule will also access the duration ratio and the timesignature for the measure where the events onset exist. Grace notes and rests are ignored 
(they will be skipped: the rule will not know that they exist).
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints (cond ((= flag-for-metric-access 1) ; all beats
                                  (list 'mapcar '(quote abs) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1))))
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  (list 'remove-if '(quote minusp) (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule
                (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                             events-plus-preceding-for-extra-args-engine1
                             list-of-offsets
                             list-of-timesigns
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1 list-of-timesigns))
                      '(declare (type fixnum metric-engine2))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes ;keep grace notes
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args)))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))

                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated - timesign is not knowsn at endpoint
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(declare (type number end-time-metric-engine2))

                                              '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                              (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))
                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                              (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))

                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              ))

                            (list (list '= 'engine 'metric-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'beats-metric-engine2 metric-timepoints) ;keep the endtime since it is a grid (no rests possible)
                                                    (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                    (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                              engine1-timepoints-to-check beats-metric-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                              (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                        (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                        (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                                      
                                        '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                        )))

                      
                    ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                                   (list 'nth '(+ n nth-variable) 'list-of-offsets)
                                                                                                   (list 'nth '(+ n nth-variable) 'list-of-timesigns))))))
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine rhythm-engine1 'metric-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))


;;;RULES FOR METRIC TIMEPOINTS (in relation to events)

(defun rule-2-engines-metric-timepoints-and-events-include-rests (simple-rule rhythm-engine2 flag-for-metric-access)
  "Formats a rule for how events (i.e. durations or rests) are positioned at metric points. Grace notes are ignored. 
This rule is more efficient than rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration since also endpoints for duratins and rests
can be used to check the rule. In this way, problems might be detected one step earlier, and some backtracking can be avoided.

The logic statement will receive offests for events.
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints1 (cond ((= flag-for-metric-access 1) ; all beats
                                  'get-timepoints-from-start-last-metric-cell-minus-nsteps) 
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests)))
        (metric-timepoints2 (cond ((= flag-for-metric-access 1) ; all beats
                                  'get-timepoints-from-any-timepoint-minus-nsteps);this function works for metric timepoints as well
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule

                (list 'let '((metric-engine1 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump))
                      '(declare (type fixnum metric-engine1))
                
                      (list 'cond (list (list '= 'engine 'metric-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-metric-timepoints-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list metric-timepoints1 ;this is set as an input option (see above)
                                                                                       'metric-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))  
                                                                                                           ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'onsets-engine2 (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                                       (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'metric-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                               this-cell-metric-timepoints-plus-preceding-for-extra-args end-time-rhythm-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                            metric-timepoints-to-check onsets-engine2)))


                                              '(declare (type list this-cell-metric-timepoints-plus-preceding-for-extra-args onsets-engine2 
                                                              metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-rhythm-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))

                                              '(setf timepoints-for-backjump metric-timepoints-to-check)
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                                    (list 'metric-timepoints-plus-preceding-for-extra-args-engine1
                                                          (list 'the 'list (list metric-timepoints2 ;this is set as an input option (see above)
                                                                                 'metric-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-upto-endtime
                                                                                         metric-timepoints-plus-preceding-for-extra-args-engine1 end-time-rhythm-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2)))

                                        '(declare (type list metric-timepoints-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-rhythm-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                                                              
                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        )))
                     
                    ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'the 'number (list 'nth '(+ n nth-variable) 'list-of-offsets)))))  ;;;change here
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine 'metric-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))



(defun rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration (simple-rule rhythm-engine2 flag-for-metric-access)
  "Formats a rule for how events (i.e. durations or rests) are positioned at metric points. Grace notes are ignored. 
Also the length of teh duration or rest will be passed to the logic statement.

The logic statement will receive '(offset duration).
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints1 (cond ((= flag-for-metric-access 1) ; all beats
                                  'get-timepoints-from-start-last-metric-cell-minus-nsteps) 
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests))) ;this functions works for metric timepoints as well
        (metric-timepoints2 (cond ((= flag-for-metric-access 1) ; all beats
                                  'get-timepoints-from-any-timepoint-minus-nsteps) ;this functions works for metric timepoints as well
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests)))) ;this functions works for metric timepoints as well

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule

                (list 'let '((metric-engine1 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             durations-plus-preceding-for-extra-args-engine2
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump))
                      '(declare (type fixnum metric-engine1))
                
                      (list 'cond (list (list '= 'engine 'metric-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-metric-timepoints-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list metric-timepoints1 ;this is set as an input option (see above)
                                                                                       'metric-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))  
                                                                                                           ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - remove endpoint
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime ;endpoint has unknown duration, and cannot be included
                                                                                               this-cell-metric-timepoints-plus-preceding-for-extra-args end-time-rhythm-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                            metric-timepoints-to-check onsets-engine2)))


                                              '(declare (type list this-cell-metric-timepoints-plus-preceding-for-extra-args onsets-engine2 
                                                              metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-rhythm-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                              (list 'setf 'durations-plus-preceding-for-extra-args-engine2 
                                                    (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))

                                              '(setf timepoints-for-backjump metric-timepoints-to-check)
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                                    (list 'metric-timepoints-plus-preceding-for-extra-args-engine1
                                                          (list 'the 'list (list metric-timepoints2 ;this is set as an input option (see above)
                                                                                 'metric-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                         metric-timepoints-plus-preceding-for-extra-args-engine1 end-time-rhythm-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2)))

                                        '(declare (type list metric-timepoints-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-rhythm-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                        (list 'setf 'durations-plus-preceding-for-extra-args-engine2 
                                              (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                                                              
                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        )))
                     
                      
                      ;Special case: last durations might be grace notes. Remove these:
                      '(setf durations-plus-preceding-for-extra-args-engine2 (remove-if 'zerop durations-plus-preceding-for-extra-args-engine2))
                      ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length durations-plus-preceding-for-extra-args-engine2)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect '(list (the number (nth (+ n nth-variable) list-of-offsets))
                                                                                   (the number (nth (+ n nth-variable) durations-plus-preceding-for-extra-args-engine2))))))  ;;;change here
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine 'metric-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))


(defun rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-and-meter (simple-rule rhythm-engine2 flag-for-metric-access)
  "Formats a rule for how events (i.e. durations or rests) are positioned at metric points. Grace notes are ignored. 
Also the length of teh duration or rest will be passed to the logic statement.

The logic statement will receive '(offset duration).
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints1 (cond ((= flag-for-metric-access 1) ; all beats
                                  'get-timepoints-from-start-last-metric-cell-minus-nsteps) 
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests))) ;this functions works for metric timepoints as well
        (metric-timepoints2 (cond ((= flag-for-metric-access 1) ; all beats
                                  'get-timepoints-from-any-timepoint-minus-nsteps) ;this functions works for metric timepoints as well
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests)))) ;this functions works for metric timepoints as well

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule

                (list 'let '((metric-engine1 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             list-of-timesigns
                             durations-plus-preceding-for-extra-args-engine2
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets list-of-timesigns timepoints-for-backjump))
                      '(declare (type fixnum metric-engine1))
                
                      (list 'cond (list (list '= 'engine 'metric-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-metric-timepoints-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list metric-timepoints1 ;this is set as an input option (see above)
                                                                                       'metric-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))  
                                                                                                           ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - remove endpoint
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime ;endpoint has unknown duration, and cannot be included
                                                                                               this-cell-metric-timepoints-plus-preceding-for-extra-args end-time-rhythm-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                            metric-timepoints-to-check onsets-engine2)))


                                              '(declare (type list this-cell-metric-timepoints-plus-preceding-for-extra-args onsets-engine2 
                                                              metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-rhythm-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                              (list 'setf 'durations-plus-preceding-for-extra-args-engine2 
                                                    (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                              (list 'setf 'list-of-timesigns '(the list (remove nil (get-time-signature-at-timepoints metric-engine1 vsolution vlinear-solution metric-timepoints-to-check))))

                                              '(setf timepoints-for-backjump metric-timepoints-to-check)
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                                    (list 'metric-timepoints-plus-preceding-for-extra-args-engine1
                                                          (list 'the 'list (list metric-timepoints2 ;this is set as an input option (see above)
                                                                                 'metric-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                         metric-timepoints-plus-preceding-for-extra-args-engine1 end-time-rhythm-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2)))

                                        '(declare (type list metric-timepoints-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-rhythm-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                        (list 'setf 'durations-plus-preceding-for-extra-args-engine2 
                                              (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                        (list 'setf 'list-of-timesigns '(the list (remove nil (get-time-signature-at-timepoints metric-engine1 vsolution vlinear-solution metric-timepoints-to-check))))
                                                                              
                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        )))
                     
                      
                      ;Special case: last durations might be grace notes. Remove these:
                      '(setf durations-plus-preceding-for-extra-args-engine2 (remove-if 'zerop durations-plus-preceding-for-extra-args-engine2))
                      ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(min (1- (length durations-plus-preceding-for-extra-args-engine2))
                                                                  (1- (length list-of-timesigns)))
                                                         (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect '(list (the number (nth (+ n nth-variable) list-of-offsets))
                                                                                   (the number (nth (+ n nth-variable) durations-plus-preceding-for-extra-args-engine2))
                                                                                   (nth (+ n nth-variable) list-of-timesigns)))))  ;;;BUG FIXED HERE OCTOBER 2022
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine 'metric-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))



;;Rhythm cells and meter - new July 16

(defun rule-2-engines-metric-timepoints-and-rhythmcells-include-rests-indicate-cell (simple-rule rhythm-engine2 flag-for-metric-access)
  "Formats a rule for how rhythmcells are positioned at metric points. Grace notes are included. If a cell only contains gracenotes, the first cell at the timepoint will be returned.
Also the cell itself will be passed as a list to the logic statement.

The logic statement will receive '(offset cell).
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints1 (cond ((= flag-for-metric-access 1) ; all beats
                                  'get-timepoints-from-start-last-metric-cell-minus-nsteps) 
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests))) ;this functions works for metric timepoints as well
        (metric-timepoints2 (cond ((= flag-for-metric-access 1) ; all beats
                                  'get-timepoints-from-any-timepoint-minus-nsteps) ;this functions works for metric timepoints as well
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests)))) ;this functions works for metric timepoints as well

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule

                (list 'let '((metric-engine1 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             rhythmcells-plus-preceding-for-extra-args-engine2
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump rhythmcells-plus-preceding-for-extra-args-engine2))
                      '(declare (type fixnum metric-engine1))
                
                      (list 'cond (list (list '= 'engine 'metric-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-metric-timepoints-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list metric-timepoints1 ;this is set as an input option (see above)
                                                                                       'metric-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))  
                                                                                                           ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'onsets-engine2 (list 'the 'list (list 'get-all-indexes-starttime rhythm-engine2 'vindex 'vsolution)))
                                                          (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime ;endpoint has unknown duration, and cannot be included
                                                                                              this-cell-metric-timepoints-plus-preceding-for-extra-args end-time-rhythm-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                            metric-timepoints-to-check onsets-engine2)))


                                              '(declare (type list this-cell-metric-timepoints-plus-preceding-for-extra-args onsets-engine2 
                                                              metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-rhythm-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))

                                              (list 'setf 'rhythmcells-plus-preceding-for-extra-args-engine2 
                                                    (list 'the 'list (list 'get-cells-at-timepoints rhythm-engine2 'vsolution 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))

                                              '(setf timepoints-for-backjump metric-timepoints-to-check)
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                                    (list 'metric-timepoints-plus-preceding-for-extra-args-engine1
                                                          (list 'the 'list (list metric-timepoints2 ;this is set as an input option (see above)
                                                                                 'metric-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'the 'list (list 'get-all-indexes-starttime rhythm-engine2 'vindex 'vsolution)))
                                                    (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                        metric-timepoints-plus-preceding-for-extra-args-engine1 end-time-rhythm-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2)))

                                        '(declare (type list metric-timepoints-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-rhythm-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                        (list 'setf 'rhythmcells-plus-preceding-for-extra-args-engine2 
                                              (list 'the 'list (list 'get-cells-at-timepoints rhythm-engine2 'vsolution 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                                                              
                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        )))
                     
                      
                      ;Special case: last durations might be grace notes. Remove these:
                      
                      ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(1- (length rhythmcells-plus-preceding-for-extra-args-engine2)) (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect '(list (the number (nth (+ n nth-variable) list-of-offsets))
                                                                                   (the list (nth (+ n nth-variable) rhythmcells-plus-preceding-for-extra-args-engine2))))))  ;;;change here
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine 'metric-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))


(defun rule-2-engines-metric-timepoints-and-rhythmcells-include-rests-indicate-cell-and-timesign (simple-rule rhythm-engine2 flag-for-metric-access)
  "Formats a rule for how rhythmcells are positioned at metric points. Grace notes are included. If a cell only contains gracenotes, the first cell at the timepoint will be returned.
Also the cell itself will be passed as a list to the logic statement.  Also the time signature will be passed.

The logic statement will receive '(offset cell timesign).
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints1 (cond ((= flag-for-metric-access 1) ; all beats
                                  'get-timepoints-from-start-last-metric-cell-minus-nsteps) 
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests))) ;this functions works for metric timepoints as well
        (metric-timepoints2 (cond ((= flag-for-metric-access 1) ; all beats
                                  'get-timepoints-from-any-timepoint-minus-nsteps) ;this functions works for metric timepoints as well
                                 ((= flag-for-metric-access 2) ; only first beat in measures
                                  'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests)))) ;this functions works for metric timepoints as well

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule

                (list 'let '((metric-engine1 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             list-of-timesigns
                             rhythmcells-plus-preceding-for-extra-args-engine2
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets list-of-timesigns timepoints-for-backjump rhythmcells-plus-preceding-for-extra-args-engine2))
                      '(declare (type fixnum metric-engine1))
                
                      (list 'cond (list (list '= 'engine 'metric-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-metric-timepoints-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list metric-timepoints1 ;this is set as an input option (see above)
                                                                                       'metric-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))  
                                                                                                           ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'onsets-engine2 (list 'the 'list (list 'get-all-indexes-starttime rhythm-engine2 'vindex 'vsolution)))
                                                          (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime ;endpoint has unknown duration, and cannot be included
                                                                                              this-cell-metric-timepoints-plus-preceding-for-extra-args end-time-rhythm-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                            metric-timepoints-to-check onsets-engine2)))


                                              '(declare (type list this-cell-metric-timepoints-plus-preceding-for-extra-args onsets-engine2 
                                                              metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-rhythm-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))

                                              (list 'setf 'rhythmcells-plus-preceding-for-extra-args-engine2 
                                                    (list 'the 'list (list 'get-cells-at-timepoints rhythm-engine2 'vsolution 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                              (list 'setf 'list-of-timesigns '(the list (remove nil (get-time-signature-at-timepoints metric-engine1 vsolution vlinear-solution metric-timepoints-to-check))))

                                              '(setf timepoints-for-backjump metric-timepoints-to-check)
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                                    (list 'metric-timepoints-plus-preceding-for-extra-args-engine1
                                                          (list 'the 'list (list metric-timepoints2 ;this is set as an input option (see above)
                                                                                 'metric-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'the 'list (list 'get-all-indexes-starttime rhythm-engine2 'vindex 'vsolution)))
                                                    (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                        metric-timepoints-plus-preceding-for-extra-args-engine1 end-time-rhythm-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2)))

                                        '(declare (type list metric-timepoints-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-rhythm-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                        (list 'setf 'rhythmcells-plus-preceding-for-extra-args-engine2 
                                              (list 'the 'list (list 'get-cells-at-timepoints rhythm-engine2 'vsolution 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                        (list 'setf 'list-of-timesigns '(the list (remove nil (get-time-signature-at-timepoints metric-engine1 vsolution vlinear-solution metric-timepoints-to-check))))
                                                                             
                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        )))
                                          
                      ;Special case: last durations might be grace notes. Remove these:
                      
                      ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(min (1- (length rhythmcells-plus-preceding-for-extra-args-engine2))
                                                                  (1- (length list-of-timesigns)))(1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect '(list (the number (nth (+ n nth-variable) list-of-offsets))
                                                                                   (the list (nth (+ n nth-variable) rhythmcells-plus-preceding-for-extra-args-engine2))
                                                                                   (the list (nth (+ n nth-variable) list-of-timesigns)))))) 
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                  (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                  'engine 'metric-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))


;;;RULES FOR METRIC TIMEPOINTS (in relation to events) - LIST ALL EVENTS



(defun rule-2-engines-metric-timepoints-and-events-include-rests-list-all (simple-rule rhythm-engine2 flag-for-metric-access)
  "Formats a rule for how events (i.e. durations or rests) are positioned at metric points. Grace notes are ignored. 
This rule is more efficient than rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration since also endpoints for duratins and rests
can be used to check the rule. In this way, problems might be detected one step earlier, and some backtracking can be avoided.

The logic statement will receive a list of ALL offests for events. The rule should have only one input.
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints1 (cond ((= flag-for-metric-access 1) ; all beats
                                   '(mapcar 'abs (the list (aref vlinear-solution metric-engine1 1)))) ;these functions works for metric timepoints as well
                                  ((= flag-for-metric-access 2) ; only first beat in measures
                                   '(remove-if 'minusp (the list (aref vlinear-solution metric-engine1 1)))))))

    (when (/= no-of-args 1) (error "The r-meter-duration rule with the [list-all-offsets] setting should have exactly one argument."))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule

                (list 'let '((metric-engine1 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump))
                      '(declare (type fixnum metric-engine1))
                
                      (list 'cond (list (list '= 'engine 'metric-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'metric-timepoints-from-start metric-timepoints1) ;this is set as an input option (see above)
                                                                ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'onsets-engine2 (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                                       (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'metric-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                              metric-timepoints-from-start end-time-rhythm-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                            metric-timepoints-to-check onsets-engine2)))


                                              '(declare (type list metric-timepoints-from-start onsets-engine2 
                                                              metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-rhythm-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))

                                              '(setf timepoints-for-backjump metric-timepoints-to-check)
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'metric-timepoints-from-start metric-timepoints1) ;this is set as an input option (see above)
                                                                ;keep the endtime since it is a grid (no rests possible)
                                                    (list 'onsets-engine2 (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-upto-endtime
                                                                                        metric-timepoints-from-start end-time-rhythm-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2)))

                                        '(declare (type list metric-timepoints-from-start onsets-engine2 
                                                        metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-rhythm-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                                                              
                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        )))
                     
                    ;here is the rule test
                      (list 'if (list 'not (list 'funcall (compile-if-not-compiled nil simple-rule) 'list-of-offsets))
                            (list 'progn 
                                            ;backjump
                                  (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                        (list 'the 'number '(car (last timepoints-for-backjump)))
                                        'engine 'metric-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                  '(return-from this-rule nil))
                            '(return-from this-rule t))
                      )))
    ))





(defun rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-list-all (simple-rule rhythm-engine2 flag-for-metric-access)
  "Formats a rule for how events (i.e. durations or rests) are positioned at metric points. Grace notes are ignored. 
Also the length of the duration or rest will be passed to the logic statement.

The logic statement will receive a list of all offset_duration pairs: '((offset duration) (offset duration) (offset duration)...).
The rule should have only one input.
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints1 (cond ((= flag-for-metric-access 1) ; all beats
                                   '(mapcar 'abs (the list (aref vlinear-solution metric-engine1 1)))) 
                                  ((= flag-for-metric-access 2) ; only first beat in measures
                                   '(remove-if 'minusp (the list (aref vlinear-solution metric-engine1 1)))))))

    (when (/= no-of-args 1) (error "The r-meter-duration rule with the [list-all-offs_dur] setting should have exactly one argument."))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

        ;find the information to check
          (list 'block 'this-rule

                (list 'let '((metric-engine1 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             matching-durations
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump))
                      '(declare (type fixnum metric-engine1))
                
                      (list 'cond (list (list '= 'engine 'metric-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'metric-timepoints-from-start metric-timepoints1) ;this is set as an input option (see above)
                                                                ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - remove endpoint
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime ;endpoint has unknown duration, and cannot be included
                                                                                              metric-timepoints-from-start end-time-rhythm-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                            metric-timepoints-to-check onsets-engine2)))


                                              '(declare (type list metric-timepoints-from-start onsets-engine2 
                                                              metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-rhythm-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                              (list 'setf 'matching-durations 
                                                    (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))

                                              '(setf timepoints-for-backjump metric-timepoints-to-check)
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'metric-timepoints-from-start metric-timepoints1) ;this is set as an input option (see above)
                                                                ;keep the endtime since it is a grid (no rests possible)
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-rhythm-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                        metric-timepoints-from-start end-time-rhythm-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2)))

                                        '(declare (type list metric-timepoints-from-start onsets-engine2 
                                                        metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-rhythm-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                        (list 'setf 'matching-durations 
                                              (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                                                              
                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        )))
                     
                      ;Special case: last durations might be grace notes. Remove these:
                      '(setf matching-durations (remove-if 'zerop matching-durations))

                      ;here is the rule test
                      (list 'if (list 'not (list 'funcall (compile-if-not-compiled nil simple-rule) '(mapcar 'list list-of-offsets matching-durations)))
                            (list 'progn 
                                  ;backjump
                                  (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                        (list 'the 'number '(car (last timepoints-for-backjump)))
                                        'engine 'metric-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                  '(return-from this-rule nil))
                            '(return-from this-rule t))
                      
                      )))
    ))