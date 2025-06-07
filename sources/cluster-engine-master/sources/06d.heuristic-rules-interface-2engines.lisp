(in-package cluster-engine)

;;;;;;;HIERARCHY RULE

(defun heuristic-switch-rule-2-engines-rhythmic-hierarchy (rhythm-engine1 rhythm-engine2 weight)
  "Formats a heuristic switch rule for hierarchy between durations in two layers.  The onsets from the 1st engine are used 
for inputpoints (rests and gracenotes are removed and ignored). Rests are not prefered on hierarchical points
in engine2.
"

  (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
        '(declare (type array vsolution vlinear-solution vindex))
        '(declare (type fixnum engine nth-candidate))

          ;find the information to check
        (list 'block 'this-rule
              (list 'let '(list-of-offsets
                           list-of-dur-engine2)
                    '(declare (type list list-of-offsets list-of-dur-engine2))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                              (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                    (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes-nth 
                                                                                           rhythm-engine1 'vindex 'vsolution 'vlinear-solution 0 'nth-candidate))))
                                                        (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                    (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                        (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                        (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                          engine1-timepoints-to-check onsets-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args onsets-engine2 
                                                            engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                            '(declare (type number end-time-engine2))

                                            '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule 0))

                                            (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                            (list 'setf 'list-of-dur-engine2 (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                                    rhythm-engine2 'vlinear-solution 
                                                                                                    'matching-or-preceding-timepoints-engine1)))
                                            ))

                          (list (list '= 'engine rhythm-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                  (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                              (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime 0))))
                                             
                                                  (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                              (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                  (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                  (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                    engine1-timepoints-to-check onsets-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                      engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                      '(declare (type number this-cell-starttime end-time-engine2))

                                      '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-preceding-timepoints-engine1)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                                                                      
                                      (list 'setf 'list-of-dur-engine2 (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                              rhythm-engine2 'vlinear-solution 
                                                                                              'matching-or-preceding-timepoints-engine1)))

                                      )))

                      
                      ;here is the rule test
                    (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                         'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) 0))
                                         'collect (list 'if '(and (= (the number (nth nth-variable list-of-offsets)) 0)
                                                                  (plusp (the number (nth nth-variable list-of-dur-engine2))))

                                          
                                                        weight
                                                        0)
                                         ))
                    ))
        ))




(defun heuristic-switch-rule-2-engines-rhythmic-hierarchy-incl-rests (rhythm-engine1 rhythm-engine2 weight)
  "Formats a rule for hierarchy between durations in two layers.  The onsets from the 1st engine are used 
for inputpoints (rests and gracenotes are removed and ignored). Rests are not allowed on hierarchical points
in engine2.
"

  (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
        '(declare (type array vsolution vlinear-solution vindex))
        '(declare (type fixnum engine nth-candidate))

          ;find the information to check
        (list 'block 'this-rule
              (list 'let '(list-of-offsets
                           )
                    '(declare (type list list-of-offsets list-of-dur-engine2 timepoints-for-backjump))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args ;all values positive (also rests)
                                                              (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth ;changed this
                                                                                     rhythm-engine1 'vindex 'vsolution 'vlinear-solution 0 'nth-candidate)))
                                                        (list 'onsets-engine2 (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                                     (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                        (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;edited this 
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                        (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                          engine1-timepoints-to-check onsets-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args onsets-engine2 
                                                            engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                            '(declare (type number end-time-engine2))

                                            '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule 0))

                                            (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))

                                            ))

                          (list (list '= 'engine rhythm-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                  (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'remove-duplicates ;edited here
                                                              (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps ;positive timepoints 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime 0))))
                                             
                                                  (list 'onsets-engine2 (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                               (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                  (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;edited this 
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                  (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                    engine1-timepoints-to-check onsets-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                      engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                      '(declare (type number this-cell-starttime end-time-engine2))

                                      '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-preceding-timepoints-engine1)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                                                                      
                                      )))

                      
                      ;here is the rule test
                    (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                         'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) 0))
                                         'collect (list 'if '(= (the number (nth nth-variable list-of-offsets)) 0)
                                                        weight
                                                        0)

                                         ))
                    ))
        ))




(defun heuristic-switch-rule-2-engines-rhythmic-hierarchy-cellstart-e1 (rhythm-engine1 rhythm-engine2 weight)
  "Formats a heuristic switch rule for hierarchy between cells and durations in two layers.  The onsets for the CELLS from 
the 1st engine are used as inputpoints (rests and gracenotes are removed and ignored). Rests are not prefered 
on hierarchical points in engine2.
"

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
        (list 'block 'this-rule
              (list 'let '(list-of-offsets
                           list-of-dur-engine2)
                    '(declare (type list list-of-offsets list-of-dur-engine2))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                              ;add endpoint since the engine1 represents cellstarts (rests are not defined)
                                                              (list 'list (list 'get-current-index-starttime-nth rhythm-engine1 'vindex 'vsolution 'nth-candidate)
                                                                    (list 'get-current-index-endtime-nth rhythm-engine1 'vindex 'vsolution 'nth-candidate)))
                                                               
                                                        (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                    (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                        (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                        (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                          engine1-timepoints-to-check onsets-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args onsets-engine2 
                                                            engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                            '(declare (type number end-time-engine2))

                                            '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule 0))

                                            (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                            (list 'setf 'list-of-dur-engine2 (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                                    rhythm-engine2 'vlinear-solution 
                                                                                                    'matching-or-preceding-timepoints-engine1)))
                                            ))

                          (list (list '= 'engine rhythm-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                (list 'let* (list (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'append
                                                              ;The following two are not for the currentr engine, so don't use the nth-version.
                                                              (list 'the 'list (list 'get-all-indexes-starttime rhythm-engine1 'vindex 'vsolution)) 
                                                              (list 'list (list 'the 'number (list 'get-current-index-endtime rhythm-engine1 'vindex 'vsolution)))))
                                             
                                                  (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                              (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                  (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                  (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                    engine1-timepoints-to-check onsets-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                      engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                      '(declare (type number this-cell-starttime end-time-engine2))

                                      '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-preceding-timepoints-engine1)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                                                                      
                                      (list 'setf 'list-of-dur-engine2 (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                              rhythm-engine2 'vlinear-solution 
                                                                                              'matching-or-preceding-timepoints-engine1)))

                                      )))

                      
                    ;here is the rule test
                    (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                         'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) 0))
                                         'collect (list 'if '(and (= (the number (nth nth-variable list-of-offsets)) 0)
                                                                  (plusp (the number (nth nth-variable list-of-dur-engine2))))
                                                        weight
                                                        0)
                                         ))
                    ))
        ))





;;;;;;;;;;;;;METRIC HEURISTIC SWITCH RULES;;;;;;;;;;;;;;;;
;Thre are only heuristic SWITCH rules for the metric-grid rules. Heuristic rules have to use other accessors.

(defun heuristic-switch-rule-2-engines-metric-grid-rhythm-hierarchy (rhythm-engine1 weight)
  "Formats a rule for metric hierarchy, i.e. how durations (including gracenotes) are positioned within the metric structure.
The allowed positions are defined within the metric domain.
The effect of this heuriostic rule will typically be small, since the endpoints of durations are not chekced: a new event will
only be checked afetr its startpoint is knows. If rhythm candidates have more than one duration, it will be able to affect 
all durations but the last.

Consider using the heuristic-switch-rule-2-engines-metric-grid-rhythm-hierarchy-include-rests instead.
"

  (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
        '(declare (type array vsolution vlinear-solution vindex))
        '(declare (type fixnum engine nth-candidate))

       ;find the information to check
        (list 'block 'this-rule
              (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                           list-of-offsets
                           )
                    '(declare (type list list-of-offsets time))
                    '(declare (type fixnum metric-engine2))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule 0))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                              (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                    (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-nth ;keep grace notes
                                                                                           rhythm-engine1 'vindex 'vsolution 'vlinear-solution 0 'nth-candidate))))
                                                        (list 'onsetgrid-metric-engine2 (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2))) ;keep the endtime since it is a grid (no rests)
                                                        (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                        (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                          engine1-timepoints-to-check onsetgrid-metric-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args onsetgrid-metric-engine2 
                                                            engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                            '(declare (type number end-time-metric-engine2))

                                            '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule 0))

                                            (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                            ))

                          (list (list '= 'engine 'metric-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth 'metric-engine2 'vindex 'vsolution 'nth-candidate))
                                                  (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                              (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime 0))))
                                             
                                                  (list 'onsetgrid-metric-engine2 (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))
                                                  (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK 
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                  (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check onsetgrid-metric-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                      engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                      '(declare (type number this-cell-starttime end-time-engine2))

                                      '(when (not onsetgrid-metric-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-preceding-timepoints-engine1)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                      )))

                      
                    ;here is the rule test
                    (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                         'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) 0))
                                         'collect (list 'if '(= (the number (nth nth-variable list-of-offsets)) 0)
                                                        weight
                                                        0)
                                         ))
                    ))
        ))




(defun heuristic-switch-rule-2-engines-metric-grid-rhythm-hierarchy-include-rests (rhythm-engine1 weight)
  "Formats a heuristic switch rule for metric hierarchy, i.e. how durations and rests are positioned within the metric structure.
This rule is more efficient than rule-2-engines-metric-grid-rhythm-hierarchy since also endpoints for duratins and rests
can be used to check the rule. 
If rests are not used in the domain, this rule is to prefer for this reason.
"

  (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
        '(declare (type array vsolution vlinear-solution vindex))
        '(declare (type fixnum engine nth-candidate))

        ;find the information to check
        (list 'block 'this-rule
              (list 'let '((metric-engine2 (1- (the fixnum (array-dimension vindex 0))))
                           list-of-offsets
                           )
                    '(declare (type list list-of-offsets))
                    '(declare (type fixnum metric-engine2))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule 0))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                    (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-nth ;keep grace notes
                                                                                           rhythm-engine1 'vindex 'vsolution 'vlinear-solution 0 'nth-candidate)))
                                                        (list 'onsetgrid-metric-engine2 (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2))) ;keep the endtime since it is a grid (no rests)
                                                        (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                        (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                          engine1-timepoints-to-check onsetgrid-metric-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args onsetgrid-metric-engine2 
                                                            engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                            '(declare (type number end-time-metric-engine2))

                                            '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule 0))

                                            (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                            ))

                          (list (list '= 'engine 'metric-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth 'metric-engine2 'vindex 'vsolution 'nth-candidate))
                                                  (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps 
                                                                               rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime 0)))
                                             
                                                  (list 'onsetgrid-metric-engine2 (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))
                                                  (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;I changed this - I think this is OK 
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                  (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check onsetgrid-metric-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                      engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                      '(declare (type number this-cell-starttime end-time-engine2))

                                      '(when (not onsetgrid-metric-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-preceding-timepoints-engine1)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                      )))
                     
                    ;here is the rule test
                    (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                         'to (list 'the 'fixnum '(1- (length list-of-offsets)))
                                         'collect (list 'if '(= (the number (nth nth-variable list-of-offsets)) 0)
                                                        weight
                                                        0))
                          )
                    ))
        ))