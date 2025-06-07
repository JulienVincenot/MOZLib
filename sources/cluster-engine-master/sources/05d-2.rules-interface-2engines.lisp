(in-package cluster-engine)


(defun filter-timepoints-betwen-start-end (timepoints startpoint endpoint)
  "Return all times between start and end. Start and end time are incuded in the output.
The list does not need to be sorted. Does not work with rests."
  (declare (type list timepoints))
  (declare (type number endpoint))
  (the list (remove-if #'(lambda (timepoint) (or (> timepoint endpoint) (< timepoint startpoint))) timepoints)))





(defun rule-2-engines-rhythmic-hierarchy-range (rhythm-engine1 rhythm-engine2 start end)
  "Formats a rule for hierarchy between durations in two layers.  The onsets from the 1st engine are used 
for inputpoints (rests and gracenotes are removed and ignored). Rests are not allowed on hierarchical points
in engine2.
"

  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))

          ;find the information to check
        (list 'block 'this-rule
              (list 'let '(list-of-offsets
                           list-of-dur-engine2
                           timepoints-for-backjump)
                    '(declare (type list list-of-offsets list-of-dur-engine2 timepoints-for-backjump))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                              (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                    (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                           rhythm-engine1 'vindex 'vsolution 'vlinear-solution 0))))
                                                        (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                    (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                        (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))

                                                        ;;;;;HERE IT IS
                                                        (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end))

                                                        (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                          engine1-timepoints-to-check onsets-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args onsets-engine2 
                                                            engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                            '(declare (type number end-time-engine2))

                                            '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule t))

                                            (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                            (list 'setf 'list-of-dur-engine2 (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                                    rhythm-engine2 'vlinear-solution 
                                                                                                    'matching-or-preceding-timepoints-engine1)))
                                            '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                            ))

                          (list (list '= 'engine rhythm-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
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

                                                  ;;;;;HERE IT IS
                                                  (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end))


                                                  (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                    engine1-timepoints-to-check onsets-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                      engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                      '(declare (type number this-cell-starttime end-time-engine2))

                                      '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-preceding-timepoints-engine1)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                                                                      
                                      (list 'setf 'list-of-dur-engine2 (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                              rhythm-engine2 'vlinear-solution 
                                                                                              'matching-or-preceding-timepoints-engine1)))

                                      '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                      )))

                      
                      ;here is the rule test
                    (list 'loop 'for 'nth-variable 'from 0 
                          'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) 0))
                          'do (list 'when (list 'not '(and (= (the number (nth nth-variable list-of-offsets)) 0)
                                                           (plusp (the number (nth nth-variable list-of-dur-engine2)))))
                                    (list 'progn 
                                            ;backjump
                                          (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                'engine rhythm-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                          '(return nil)))
                          'finally '(return t)
                          )
                    ))
        ))





(defun rule-2-engines-rhythmic-hierarchy-incl-rests-range (rhythm-engine1 rhythm-engine2 start end)
  "Formats a rule for hierarchy between durations in two layers.  The onsets from the 1st engine are used 
for inputpoints (rests and gracenotes are removed and ignored). Rests are not allowed on hierarchical points
in engine2.
"

  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))

          ;find the information to check
        (list 'block 'this-rule
              (list 'let '(list-of-offsets
                           timepoints-for-backjump)
                    '(declare (type list list-of-offsets timepoints-for-backjump))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args ;all values positive (also rests)
                                                              (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes ;changed this
                                                                                     rhythm-engine1 'vindex 'vsolution 'vlinear-solution 0)))
                                                        (list 'onsets-engine2 (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                                     (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                        (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;edited this 
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))

                                                        (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end));;;ADDED FOR RANGE
                                                        (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                          engine1-timepoints-to-check onsets-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args onsets-engine2 
                                                            engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                            '(declare (type number end-time-engine2))

                                            '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule t))

                                            (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                            '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                            ))

                          (list (list '= 'engine rhythm-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                                  (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'remove-duplicates ;edited here
                                                              (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps ;positive timepoints 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime 0))))
                                             
                                                  (list 'onsets-engine2 (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                               (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                  (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime ;edited this 
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                  (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end));;;ADDED FOR RANGE
                                                  (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                    engine1-timepoints-to-check onsets-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                      engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                      '(declare (type number this-cell-starttime end-time-engine2))

                                      '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-preceding-timepoints-engine1)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                                                                      
                                      '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                      )))

                      
                      ;here is the rule test
                    (list 'loop 'for 'nth-variable 'from 0 
                          'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) 0))
                          'do (list 'when '(not (= (the number (nth nth-variable list-of-offsets)) 0))
                                    (list 'progn 
                                            ;backjump
                                          (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                'engine rhythm-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                          '(return nil)))
                          'finally '(return t)
                          )
                    ))
        ))



(defun rule-2-engines-rhythmic-hierarchy-cellstart-e1-range (rhythm-engine1 rhythm-engine2 start end)
  "Formats a rule for hierarchy between cells and durations in two layers.  The onsets for the CELLS from 
the 1st engine are used as inputpoints (rests and gracenotes are removed and ignored). Rests are not allowed 
on hierarchical points in engine2.
"

  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))

          ;find the information to check
        (list 'block 'this-rule
              (list 'let '(list-of-offsets
                           list-of-dur-engine2
                           timepoints-for-backjump)
                    '(declare (type list list-of-offsets list-of-dur-engine2 timepoints-for-backjump))
                
                    (list 'cond (list (list '= 'engine rhythm-engine1)
                                      (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                      (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                              ;add endpoint since the engine1 represents cellstarts (rests are not defined)
                                                              (list 'list (list 'get-current-index-starttime rhythm-engine1 'vindex 'vsolution)
                                                                    (list 'get-current-index-endtime rhythm-engine1 'vindex 'vsolution)))
                                                               
                                                        (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                    (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                        (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))


                                                        (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end));;;ADDED FOR RANGE
                                                        (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                          engine1-timepoints-to-check onsets-engine2)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args onsets-engine2 
                                                            engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                            '(declare (type number end-time-engine2))

                                            '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule t))

                                            (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                            (list 'setf 'list-of-dur-engine2 (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                                    rhythm-engine2 'vlinear-solution 
                                                                                                    'matching-or-preceding-timepoints-engine1)))
                                            '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                            ))

                          (list (list '= 'engine rhythm-engine2)
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                (list 'let* (list (list 'onsets-plus-preceding-for-extra-args-engine1
                                                        (list 'append
                                                              (list 'the 'list (list 'get-all-indexes-starttime rhythm-engine1 'vindex 'vsolution))
                                                              (list 'list (list 'the 'number (list 'get-current-index-endtime rhythm-engine1 'vindex 'vsolution)))))
                                             
                                                  (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                              (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                  (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))

                                                  (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end));;;ADDED FOR RANGE
                                                  (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                    engine1-timepoints-to-check onsets-engine2)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                      engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                      '(declare (type number this-cell-starttime end-time-engine2))

                                      '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-preceding-timepoints-engine1)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check)))
                                                                                      
                                      (list 'setf 'list-of-dur-engine2 (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                              rhythm-engine2 'vlinear-solution 
                                                                                              'matching-or-preceding-timepoints-engine1)))

                                      '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                      )))

                      
                      ;here is the rule test
                    (list 'loop 'for 'nth-variable 'from 0 
                          'to (list 'the 'fixnum (list '- '(1- (length list-of-offsets)) 0))
                          'do (list 'when (list 'not '(and (= (the number (nth nth-variable list-of-offsets)) 0)
                                                           (plusp (the number (nth nth-variable list-of-dur-engine2)))))
                                    (list 'progn 
                                            ;backjump
                                          (list 'set-vbackjump-indexes-from-failed-timepoint-duration 
                                                (list 'the 'number (list 'nth 'nth-variable 'timepoints-for-backjump))
                                                'engine rhythm-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                          '(return nil)))
                          'finally '(return t)
                          )
                    ))
        ))



;;;;


;;;;HEURISTIC SWITCH VERSIONS OF ABOVE RULES


(defun heuristic-switch-rule-2-engines-rhythmic-hierarchy-range (rhythm-engine1 rhythm-engine2 weight start end)
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

                                                        (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end));;;ADDED FOR RANGE

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

                                                  (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end));;;ADDED FOR RANGE

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




(defun heuristic-switch-rule-2-engines-rhythmic-hierarchy-incl-rests-range (rhythm-engine1 rhythm-engine2 weight start end)
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
                    '(declare (type list list-of-offsets list-of-dur-engine2))
                
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

                                                        (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end));;;ADDED FOR RANGE

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

                                                  (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end));;;ADDED FOR RANGE

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




(defun heuristic-switch-rule-2-engines-rhythmic-hierarchy-cellstart-e1-range (rhythm-engine1 rhythm-engine2 weight start end)
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
                                                        (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end));;;ADDED FOR RANGE

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

                                                  (list 'engine1-timepoints-to-check (list 'filter-timepoints-betwen-start-end 'engine1-timepoints-to-check start end));;;ADDED FOR RANGE


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
