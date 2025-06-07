(in-package cluster-engine)


(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices (simple-rule rhythm-engine1 rhythm-engine2 incl-rests-v1? weight)
  "Formats a heuristic switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are considered valid onsets. The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset).
Example: '(1/4 0)
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (timepoints1 (if incl-rests-v1? 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth
                       'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes-nth))
        (timepoints2 (if incl-rests-v1? 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes
                       'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes)))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list timepoints1 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'onsets-engine2 (list 'remove-gracenotes-from-timepointlist ;keep rests
                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args onsets-engine2 
                                                              engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                              '(declare (type number end-time-engine2))

                                              '(setf list-of-variables-to-check (mapcar 'list 
                                                                                        (the list (get-durations-at-timepoints engine vlinear-solution engine1-timepoints-to-check))
                                                                                        (the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list timepoints2 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'onsets-engine2 (list 'remove-gracenotes-from-timepointlist ;keep rests
                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule 0))

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                  (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                                           rhythm-engine1 'vlinear-solution 'engine1-timepoints-to-check))
                                                                                  '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check))))
                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                          'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check))))
                                                          weight
                                                          0)
                                           ))
                      ))
          )))


;fixed april 3
(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event (simple-rule rhythm-engine1 rhythm-engine2 incl-rests-v1? weight)
  "Formats a heuristic switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are valid onsets.
The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset duration-engine2).
Example: '(1/4 -1/8 1/4)"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (timepoints1 (if incl-rests-v1? 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth
                       'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes-nth))
        (events1 (if incl-rests-v1? 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth
                       'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes-nth))
        (timepoints2 (if incl-rests-v1? 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes
                       'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes))
        (events2 (if incl-rests-v1? 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes
                       'get-events-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes)))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check ))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list timepoints1 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                              (list 'the 'list (list events1 
                                                                                     rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate)))

                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'this-cell-events-plus-preceding-for-extra-args 
                                                                                                                   'this-cell-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list timepoints2 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                              (list 'the 'list (list events2 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                          'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check))))
                                                          weight
                                                          0)
                                           ))

                
                
                      ))
          )))







;fixed april 3
(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1 (simple-rule rhythm-engine1 rhythm-engine2 weight)
  "Formats a heuristic switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: gracenotes are ignored.
Rests in engine 1 will split up the check: durations on each side of a rest will not be cosidered cosecutive.
Rests in the 2nd engine are valid onsets.
The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset duration-engine2).
Example: '(1/4 -1/8 1/4)"
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check timepoints-for-backjump))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a gracenote)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                       rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate)))
                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'this-cell-events-plus-preceding-for-extra-args 
                                                                                                                   'this-cell-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))))
                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'let (list (list 'current-variables 
                                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                 'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check)))))
                                                          '(declare (type list current-variables))
                                                          (list 'if (list 'not '(member-if #'(lambda (var) (minusp (first var))) current-variables)) ;check that there is not a rest
                                                                (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                'current-variables)
                                                                      weight
                                                                      0)
                                                                0))))
                      ))
          )))



;fixed april 3
(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1 (simple-rule rhythm-engine1 rhythm-engine2 weight)
  "Formats a heuristic switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: gracenotes are removed and ignored.
Rests in engine 1 will split up the check: durations on each side of a rest will not be cosidered cosecutive.
Rests in the 2nd engine are valid onsets.
The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset duration-engine2).
Example: '(1/4 -1/8 1/4)"
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a gracenote)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                       rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate)))

                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'this-cell-events-plus-preceding-for-extra-args 
                                                                                                                   'this-cell-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'let (list (list 'current-variables 
                                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                 'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check)))))
                                                          '(declare (type list current-variables))
                                                          (list 'if (list 'not '(member-if #'(lambda (var) (minusp (first var))) current-variables)) ;check that there is not a rest
                                                                (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                'current-variables)
                                                                      weight
                                                                      0)
                                                                0))))
                                           ))
          )))




;;;;;
(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1-or-2 (simple-rule rhythm-engine1 rhythm-engine2 weight)
  "Formats a heuristic switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 1st or 2nd engine are used as breaking points to break up what the rule checks.
Grace notes are excluded in 2nd voice.
The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset).
Example: '(1/4 -1/8)"
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a gracenote)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                       rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate)))

                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'this-cell-events-plus-preceding-for-extra-args 
                                                                                                                   'this-cell-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'let (list (list 'current-variables 
                                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                 'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check)))))
                                                          '(declare (type list current-variables))
                                                          (list 'if (list 'not '(member-if #'(lambda (var) (or (minusp (first var)) (minusp (third var)))) current-variables)) ;check that there is not a rest
                                                                (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                '(mapcar 'butlast current-variables))
                                                                      weight
                                                                      0)
                                                                0))))
                                           )))
          ))



(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1-or-2 (simple-rule rhythm-engine1 rhythm-engine2 weight)
  "Formats a heuristic switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 1st engine are used as breaking points to break up what the rule checks.
Rests in the 1st or 2nd engine are used as breaking points to break up what the rule checks.
Grace notes are excluded in the 2nd engine. The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset duration-engine2).
Example: '(1/4 -1/8 1/4)"
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a gracenote)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                       rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate)))

                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'this-cell-events-plus-preceding-for-extra-args 
                                                                                                                   'this-cell-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))

                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'let (list (list 'current-variables 
                                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                 'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check)))))
                                                          '(declare (type list current-variables))
                                                          (list 'if (list 'not '(member-if #'(lambda (var) (or (minusp (first var)) (minusp (third var)))) current-variables)) ;check that there is not a rest
                                                                (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                'current-variables)
                                                                      weight
                                                                      0)
                                                                0))))
                      )))
    ))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;BELOW: LIST ALL

(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all (simple-rule rhythm-engine1 rhythm-engine2 incl-rests-v1? weight)
  "Formats a heuristic switch  rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset) (duration-engine1 offset) ...).

Example: '((1/4 0)(1/4 -1/8) ...)
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (all-onsets-v1 (if incl-rests-v1?
                           (list 'mapcar '(quote abs)
                                 (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                       (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                              (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))
                         (list 'butlast ;remove last events end-time (this might be the start of a rest)
                               (list 'the 'list (list 'remove-rests-and-gracenotes-from-timepointlist ;keep-rests
                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))

    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic switch rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                all-onsets-v1)
                                                          (list 'onsets-engine2 (list 'remove-gracenotes-from-timepointlist ;keep rests
                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args onsets-engine2 
                                                              engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                              '(declare (type number end-time-engine2))

                                              '(setf list-of-variables-to-check (mapcar 'list 
                                                                                        (the list (get-durations-at-timepoints engine vlinear-solution engine1-timepoints-to-check))
                                                                                        (the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check))))                                   
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          all-onsets-v1)
                                                    (list 'onsets-engine2 (list 'remove-gracenotes-from-timepointlist ;keep rests
                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                        '(declare (type number end-time-engine2))

                                        '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule 0))

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                                             rhythm-engine1 'vlinear-solution 'engine1-timepoints-to-check))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check))))
                                        )))

                      
                      ;here is the rule test
                      (list 'if (list 'funcall (compile-if-not-compiled nil simple-rule) 
                                      'list-of-variables-to-check)
                            weight
                            0)
                      )))
    ))




(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-events-list-all (simple-rule rhythm-engine1 rhythm-engine2 incl-rests-v1? weight)
  "Formats a heuristic switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset duration-engine2) (duration-engine1 offset duration-engine2) ...).
Example: '((1/4 0 -1/8) (1/4 -1/8 1/4) ...)
"
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (all-onsets-v1 (if incl-rests-v1?
                           (list 'mapcar '(quote abs)
                                 (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                       (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                              (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))
                         (list 'butlast ;remove last events end-time (this might be the start of a rest)
                               (list 'the 'list (list 'remove-rests-and-gracenotes-from-timepointlist ;keep-rests
                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1)))))))
        (all-events-v1 (if incl-rests-v1?
                           (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                  (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0))))
                         (list 'the 'list (list 'remove-rests-and-gracenotes-from-durationlist 
                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))))

    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic switch rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                all-onsets-v1)
                                                          (list 'all-events-plus-preceding-for-extra-args 
                                                                all-events-v1)

                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args all-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'all-events-plus-preceding-for-extra-args 
                                                                                                                   'all-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          all-onsets-v1)
                                                    (list 'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                          all-events-v1)
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 all-events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'all-onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))

                      
                      ;here is the rule test
                      (list 'if (list 'funcall (compile-if-not-compiled nil simple-rule) 
                                                 'list-of-variables-to-check)
                            weight
                            0)
                      ))
          )))




(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1 (simple-rule rhythm-engine1 rhythm-engine2 weight)
  "Formats a heuristci switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset) (duration-engine1 offset) ...).
The list will stop at a rest in voice 1 (every segment will be tested separately).
Example: '((1/4 0) (1 /4 -1/8) ...)
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic switch rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                         (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                          (list 'all-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                       (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))

                                                          (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args all-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'all-events-plus-preceding-for-extra-args 
                                                                                                                   'all-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                   (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                    (list 'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))
                                                    (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                           (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 all-events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'all-onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))))

                                        )))

                      ;group the list
                      '(setf list-of-variables-to-check (group-list-at-negative-numbers1 list-of-variables-to-check))
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'list-segment-of-variables 'in 'list-of-variables-to-check
                                           'collect (list 'if (list 'funcall (compile-if-not-compiled nil simple-rule) 
                                                                    'list-segment-of-variables)
                                                          weight
                                                          0)))
                      )))
    ))





(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1 (simple-rule rhythm-engine1 rhythm-engine2 weight)
  "Formats a heuristic switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset duration-engine2) (duration-engine1 offset duration-engine2) ...).
Example: '((1/4 0 1/8) (1/4 -1/8 1/4) ...)
The list will stop at a rest in voice 1 (every segment will be tested separately).
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic switch rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                         (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                          (list 'all-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                       (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))

                                                          (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args all-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'all-events-plus-preceding-for-extra-args 
                                                                                                                   'all-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                   (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                    (list 'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))
                                                    (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                           (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 all-events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'all-onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))
                      ;group the list
                      '(setf list-of-variables-to-check (group-list-at-negative-numbers1 list-of-variables-to-check))
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'list-segment-of-variables 'in 'list-of-variables-to-check 
                                           'collect (list 'if (list 'funcall (compile-if-not-compiled nil simple-rule) 
                                                                    'list-segment-of-variables)
                                                          weight
                                                          0)))
                      )))
    ))

(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1-or-2 (simple-rule rhythm-engine1 rhythm-engine2 weight)
  "Formats a heuristic switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset) (duration-engine1 offset) ...).
Example: '((1/4 0) (1/4 -1/8) ...)
The list will stop at a rest in voice 1 or voice 2 (or both). Every segment will be tested separately.
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic switch rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'vindex 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check timepoints-for-backjump))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                         (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                          (list 'all-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                       (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))

                                                          (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args all-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'all-events-plus-preceding-for-extra-args 
                                                                                                                   'all-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                   (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                    (list 'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))
                                                    (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                           (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 all-events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'all-onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))
                      ;group the list
                      '(setf list-of-variables-to-check (group-list-at-negative-numbers13 list-of-variables-to-check))
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'list-segment-of-variables 'in 'list-of-variables-to-check 'collect
                                           (list 'if (list 'funcall (compile-if-not-compiled nil simple-rule) 
                                                           '(the list (mapcar 'butlast list-segment-of-variables)))
                                                 weight
                                                 0)))
                      )))
    ))



(defun heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1-or-2 (simple-rule rhythm-engine1 rhythm-engine2 weight)
  "Formats a heuristic switch rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset duration-engine2) (duration-engine1 offset duration-engine2) ...).
Example: '((1/4 0 1/8) (1/4 -1/8 1/4) ...)
The list will stop at a rest in voice 1 or voice 2 (or both). Every segment will be tested separately.
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic switch rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'vindex 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check timepoints-for-backjump))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                              (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                          (list 'all-events-plus-preceding-for-extra-args 
                                                                 (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                                        (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))

                                                          (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args all-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'all-events-plus-preceding-for-extra-args 
                                                                                                                   'all-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                        (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                    (list 'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                                  (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))
                                                    (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 all-events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'all-onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))

                                        )))
                      ;group the list
                      '(setf list-of-variables-to-check (group-list-at-negative-numbers13 list-of-variables-to-check))
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'list-segment-of-variables 'in 'list-of-variables-to-check 'collect
                                           (list 'if (list 'funcall (compile-if-not-compiled nil simple-rule) 
                                                           'list-segment-of-variables)
                                                 weight
                                                 0)))
                      )))
          ))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;
;;;;;;;;;  BELOW ARE HEURISTIC VERSIONS OF THE HEURISTIC SWITCH RULES ABOVE


(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are considered valid onsets. The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset).
Example: '(1/4 0)
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes-nth 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'onsets-engine2 (list 'remove-gracenotes-from-timepointlist ;keep rests
                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args onsets-engine2 
                                                              engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                              '(declare (type number end-time-engine2))

                                              '(setf list-of-variables-to-check (mapcar 'list 
                                                                                        (the list (get-durations-at-timepoints engine vlinear-solution engine1-timepoints-to-check))
                                                                                        (the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'onsets-engine2 (list 'remove-gracenotes-from-timepointlist ;keep rests
                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule 0))

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                  (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                                           rhythm-engine1 'vlinear-solution 'engine1-timepoints-to-check))
                                                                                  '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check))))
                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                          (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check))))
                                           ))
                      ))
          )))


;fixed april 3
(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are valid onsets.
The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset duration-engine2).
Example: '(1/4 -1/8 1/4)"
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check ))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes-nth 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                              (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes-nth 
                                                                                     rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate)))

                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'this-cell-events-plus-preceding-for-extra-args 
                                                                                                                   'this-cell-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                              (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                          (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check))))
                                           ))

                
                
                      ))
          )))







;fixed april 3
(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1 (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: gracenotes are ignored.
Rests in engine 1 will split up the check: durations on each side of a rest will not be cosidered cosecutive.
Rests in the 2nd engine are valid onsets.
The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset duration-engine2).
Example: '(1/4 -1/8 1/4)"
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check timepoints-for-backjump))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a gracenote)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                       rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate)))
                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'this-cell-events-plus-preceding-for-extra-args 
                                                                                                                   'this-cell-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))))
                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'let (list (list 'current-variables 
                                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                 'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check)))))
                                                          '(declare (type list current-variables))
                                                          (list 'if (list 'not '(member-if #'(lambda (var) (minusp (first var))) current-variables)) ;check that there is not a rest
                                                                (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                      'current-variables)
                                                                0))))
                      ))
          )))



;fixed april 3
(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1 (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: gracenotes are removed and ignored.
Rests in engine 1 will split up the check: durations on each side of a rest will not be cosidered cosecutive.
Rests in the 2nd engine are valid onsets.
The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset duration-engine2).
Example: '(1/4 -1/8 1/4)"
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a gracenote)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                       rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate)))

                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'this-cell-events-plus-preceding-for-extra-args 
                                                                                                                   'this-cell-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'let (list (list 'current-variables 
                                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                 'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check)))))
                                                          '(declare (type list current-variables))
                                                          (list 'if (list 'not '(member-if #'(lambda (var) (minusp (first var))) current-variables)) ;check that there is not a rest
                                                                (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                      'current-variables)
                                                                0))))
                                           ))
          )))




;;;;;
(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1-or-2 (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 1st or 2nd engine are used as breaking points to break up what the rule checks.
Grace notes are excluded in 2nd voice.
The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset).
Example: '(1/4 -1/8)"
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a gracenote)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                       rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate)))

                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'this-cell-events-plus-preceding-for-extra-args 
                                                                                                                   'this-cell-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'let (list (list 'current-variables 
                                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                 'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check)))))
                                                          '(declare (type list current-variables))
                                                          (list 'if (list 'not '(member-if #'(lambda (var) (or (minusp (first var)) (minusp (third var)))) current-variables)) ;check that there is not a rest
                                                                (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                      '(mapcar 'butlast current-variables))
                                                                0))))
                                           )))
          ))



(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1-or-2 (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 1st engine are used as breaking points to break up what the rule checks.
Rests in the 1st or 2nd engine are used as breaking points to break up what the rule checks.
Grace notes are excluded in the 2nd engine. The rule should be compiled before used.
A rule receives the format '(duration-engine1 offset duration-engine2).
Example: '(1/4 -1/8 1/4)"
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a gracenote)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth 
                                                                                       rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args) 'nth-candidate)))

                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'this-cell-events-plus-preceding-for-extra-args 
                                                                                                                   'this-cell-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime-nth rhythm-engine2 'vindex 'vsolution 'nth-candidate))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))

                                        )))

                      
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'nth-variable 'from 0 
                                           'to (list 'the 'fixnum (list '- '(1- (length list-of-variables-to-check)) (1- no-of-args)))
                                           'collect (list 'let (list (list 'current-variables 
                                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                 'collect (list 'the 'list (list 'nth '(+ n nth-variable) 'list-of-variables-to-check)))))
                                                          '(declare (type list current-variables))
                                                          (list 'if (list 'not '(member-if #'(lambda (var) (or (minusp (first var)) (minusp (third var)))) current-variables)) ;check that there is not a rest
                                                                (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                      'current-variables)
                                                                0))))
                      )))
    ))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;BELOW: LIST ALL

(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset) (duration-engine1 offset) ...).

Example: '((1/4 0)(1/4 -1/8) ...)
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic rule with the list input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'the 'list (list 'remove-rests-and-gracenotes-from-timepointlist ;keep-rests
                                                                                                              (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1)))))))
                                                          (list 'onsets-engine2 (list 'remove-gracenotes-from-timepointlist ;keep rests
                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args onsets-engine2 
                                                              engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                              '(declare (type number end-time-engine2))

                                              '(setf list-of-variables-to-check (mapcar 'list 
                                                                                        (the list (get-durations-at-timepoints engine vlinear-solution engine1-timepoints-to-check))
                                                                                        (the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check))))                                   
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'the 'list (list 'remove-rests-and-gracenotes-from-timepointlist 
                                                                                                        (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1)))))))
                                                    (list 'onsets-engine2 (list 'remove-gracenotes-from-timepointlist ;keep rests
                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-upto-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine1 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        engine1-timepoints-to-check matching-or-preceding-timepoints-engine1))
                                        '(declare (type number end-time-engine2))

                                        '(when (not matching-or-preceding-timepoints-engine1) (return-from this-rule 0))

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints 
                                                                                                             rhythm-engine1 'vlinear-solution 'engine1-timepoints-to-check))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine1 engine1-timepoints-to-check))))
                                        )))

                      
                      ;here is the rule test
                      (list 'funcall (compile-if-not-compiled nil simple-rule) 
                            'list-of-variables-to-check)
                      )))
    ))




(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset duration-engine2) (duration-engine1 offset duration-engine2) ...).
Example: '((1/4 0 -1/8) (1/4 -1/8 1/4) ...)
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'the 'list (list 'remove-rests-and-gracenotes-from-timepointlist ;keep-rests
                                                                                                              (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1)))))))
                                                          (list 'all-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'the 'list (list 'remove-rests-and-gracenotes-from-durationlist 
                                                                                                        (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0))))))

                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args all-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'all-events-plus-preceding-for-extra-args 
                                                                                                                   'all-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'the 'list (list 'remove-rests-and-gracenotes-from-timepointlist ;keep-rests
                                                                                                        (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1)))))))
                                                    (list 'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'the 'list (list 'remove-rests-and-gracenotes-from-durationlist 
                                                                                                  (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0))))))
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 all-events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'all-onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))

                      
                      ;here is the rule test
                      (list 'funcall (compile-if-not-compiled nil simple-rule) 
                            'list-of-variables-to-check)
                      ))
          )))




(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1 (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristci rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset) (duration-engine1 offset) ...).
The list will stop at a rest in voice 1 (every segment will be tested separately).
Example: '((1/4 0) (1 /4 -1/8) ...)
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                         (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                          (list 'all-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                       (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))

                                                          (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args all-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'all-events-plus-preceding-for-extra-args 
                                                                                                                   'all-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                   (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                    (list 'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))
                                                    (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                           (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 all-events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'all-onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))))

                                        )))

                      ;group the list
                      '(setf list-of-variables-to-check (group-list-at-negative-numbers1 list-of-variables-to-check))
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'list-segment-of-variables 'in 'list-of-variables-to-check
                                           'collect (list 'funcall (compile-if-not-compiled nil simple-rule) 
                                                          'list-segment-of-variables)))
                      )))
    ))





(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1 (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset duration-engine2) (duration-engine1 offset duration-engine2) ...).
Example: '((1/4 0 1/8) (1/4 -1/8 1/4) ...)
The list will stop at a rest in voice 1 (every segment will be tested separately).
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                         (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                          (list 'all-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                       (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))

                                                          (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args all-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'all-events-plus-preceding-for-extra-args 
                                                                                                                   'all-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                   (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                    (list 'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))
                                                    (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                           (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 all-events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'all-onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))
                      ;group the list
                      '(setf list-of-variables-to-check (group-list-at-negative-numbers1 list-of-variables-to-check))
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'list-segment-of-variables 'in 'list-of-variables-to-check 
                                           'collect (list 'funcall (compile-if-not-compiled nil simple-rule) 
                                                          'list-segment-of-variables)))
                      )))
    ))

(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1-or-2 (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset) (duration-engine1 offset) ...).
Example: '((1/4 0) (1/4 -1/8) ...)
The list will stop at a rest in voice 1 or voice 2 (or both). Every segment will be tested separately.
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'vindex 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check timepoints-for-backjump))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                         (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                          (list 'all-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                       (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))

                                                          (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args all-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'all-events-plus-preceding-for-extra-args 
                                                                                                                   'all-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                                                   (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                    (list 'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                 (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))
                                                    (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                                           (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 all-events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'all-onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                        )))
                      ;group the list
                      '(setf list-of-variables-to-check (group-list-at-negative-numbers13 list-of-variables-to-check))
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'list-segment-of-variables 'in 'list-of-variables-to-check 'collect
                                           (list 'funcall (compile-if-not-compiled nil simple-rule) 
                                                 '(the list (mapcar 'butlast list-segment-of-variables)))))
                      )))
    ))



(defun heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1-or-2 (simple-rule rhythm-engine1 rhythm-engine2)
  "Formats a heuristic rule for offset between durations (including rests) in two layers. 
The onsets from the 1st engine are used for inputpoints: rests and gracenotes are removed and ignored.
Rests in the 2nd engine are included. The rule should be compiled before used.
A rule receives one list with all information in the format '((duration-engine1 offset duration-engine2) (duration-engine1 offset duration-engine2) ...).
Example: '((1/4 0 1/8) (1/4 -1/8 1/4) ...)
The list will stop at a rest in voice 1 or voice 2 (or both). Every segment will be tested separately.
"
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/= no-of-args 1) (error "Number of inputs to the rhythm-rhythm heuristic rule with the all input-mode2 must have exactly 1 input."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          ;find the information to check
          (list 'block 'this-rule
                'vsolution 'vindex 'nth-candidate ;unused
                (list 'let '(list-of-variables-to-check)
                      '(declare (type list list-of-variables-to-check timepoints-for-backjump))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule 0))
                                        (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                              (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                          (list 'all-events-plus-preceding-for-extra-args 
                                                                 (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                                        (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))

                                                          (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                      (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                          (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                               all-onsets-plus-preceding-for-extra-args end-time-engine2))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                            engine1-timepoints-to-check onsets-engine2)))
                                              '(declare (type list all-onsets-plus-preceding-for-extra-args all-events-plus-preceding-for-extra-args 
                                                              onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-engine2))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule 0))

                                              (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                            (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                                   'all-events-plus-preceding-for-extra-args 
                                                                                                                   'all-onsets-plus-preceding-for-extra-args 
                                                                                                                   'end-time-engine2))
                                                                                            '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                            (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                                   'vlinear-solution 'matching-or-preceding-timepoints-engine2))))
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule 0))
                                  (list 'let* (list (list 'all-onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                (list 'the 'list (list 'mapcar '(quote abs) (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                                        (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 1))))))))
                                                    (list 'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'remove-gracenotes-from-durationlist 
                                                                                                  (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine1 0)))))
                                                    (list 'onsets-engine2 (list 'mapcar '(quote abs) (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests
                                                                                ;butlast removes the endtime since the duration there is unknown
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))))
                                                    (list 'end-time-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime 
                                                                                         all-onsets-plus-preceding-for-extra-args-engine1 end-time-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests 
                                                                                                      engine1-timepoints-to-check onsets-engine2)))

                                        '(declare (type list all-onsets-plus-preceding-for-extra-args-engine1 all-events-plus-preceding-for-extra-args-matching-onsets  
                                                        onsets-engine2 engine1-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-engine2))

                                        '(when (not onsets-engine2) (return-from this-rule 0))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule 0))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-variables-to-check (list 'mapcar '(quote list)
                                                                                      (list 'the 'list (list 'filter-durations-keep-before-endtime 
                                                                                                             'all-events-plus-preceding-for-extra-args-matching-onsets 
                                                                                                             'all-onsets-plus-preceding-for-extra-args-engine1 
                                                                                                             'end-time-engine2))
                                                                                      '(the list (mapcar '- matching-or-preceding-timepoints-engine2 engine1-timepoints-to-check))
                                                                                      (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 
                                                                                                             'vlinear-solution 'matching-or-preceding-timepoints-engine2))))

                                        )))
                      ;group the list
                      '(setf list-of-variables-to-check (group-list-at-negative-numbers13 list-of-variables-to-check))
                      ;here is the rule test
                      (list 'average (list 'loop 'for 'list-segment-of-variables 'in 'list-of-variables-to-check 'collect
                                           (list 'funcall (compile-if-not-compiled nil simple-rule) 
                                                 'list-segment-of-variables)))
                      )))
          ))

