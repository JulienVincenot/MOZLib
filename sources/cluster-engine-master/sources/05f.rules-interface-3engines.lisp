(in-package cluster-engine)

;;;;;;;;;;;;;;;;;;;;;THREE ENGINES;;;;;;;;;;;;;;;;;;;;;;;;
;
;       This file contains all the functions with 
;       meter-note and note-meter rules in one voice.
;

(defun rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration (simple-rule rhythm-engine2 pitch-engine3 flag-for-metric-access)
  "Formats a rule for how notes (i.e. durations with pitch or rests) are positioned at metric points. Grace notes are ignored. 
Also the length of the duration or rest will be passed to the logic statement.

The logic statement will receive '(offset duration pitch).

If the pitch information is not used: use the rule that only checks two engiens (it will be more efficient).
"
(when (/= (1+ rhythm-engine2) pitch-engine3) (error "Error in meter-note-rule: rhythm-engine and pitch engine has to be from the same voice."))

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
                             pitches-plus-preceding-for-extra-args-engine3
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump durations-plus-preceding-for-extra-args-engine2 
                                      pitches-plus-preceding-for-extra-args-engine3))
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
                                                                                                            metric-timepoints-to-check onsets-engine2))
                                                          (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))

                                              '(declare (type list this-cell-metric-timepoints-plus-preceding-for-extra-args onsets-engine2 
                                                              metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-rhythm-engine2))
                                              '(declare (type fixnum total-pitchcount))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                              (list 'setf 'durations-plus-preceding-for-extra-args-engine2 
                                                    (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                              (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                    (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine2 pitch-engine3 'vlinear-solution 'matching-or-preceding-timepoints-engine2 'total-pitchcount)))

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
                                                    (list 'end-time-rhythm-engine2 (list 'get-current-index-endtime rhythm-engine2 'vindex 'vsolution))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                         metric-timepoints-plus-preceding-for-extra-args-engine1 end-time-rhythm-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2))
                                                    (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))

                                        '(declare (type list metric-timepoints-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-rhythm-engine2))
                                        '(declare (type fixnum total-pitchcount))

                                        '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                        (list 'setf 'durations-plus-preceding-for-extra-args-engine2 
                                              (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                        (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                    (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine2 pitch-engine3 'vlinear-solution 'matching-or-preceding-timepoints-engine2 'total-pitchcount)))
                                                                              
                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        ))

                            (list (list '= 'engine pitch-engine3) 
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'first-pitchcount-this-cell (list 'get-current-index-first-pitchcount pitch-engine3 'vindex 'vsolution))
                                                          (list 'first-timepoint-at-first-pitchcount (list 'get-timepoint-at-notecount rhythm-engine2 'vlinear-solution 'first-pitchcount-this-cell))
                                                          )
                                        '(declare (type fixnum first-pitchcount-this-cell))
                                        '(declare (type t first-timepoint-at-first-pitchcount))

                                        ;check if there are any new timepoints that can be checked
                                        '(when (not first-timepoint-at-first-pitchcount) (return-from this-rule t))

                                        (list 'let* (list (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution))
                                                          (list 'end-time-pitchcount (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine2 'vlinear-solution 'total-pitchcount))
                                                          (list 'end-time-rhythm-with-pitch (list 'if 'end-time-pitchcount 'end-time-pitchcount
                                                                                                  (list 'get-current-index-endtime rhythm-engine2 'vindex 'vsolution)))
                                                          (list 'metric-timepoints-plus-preceding-for-extra-args-engine1
                                                                (list 'the 'list (list metric-timepoints2 ;this is set as an input option (see above)
                                                                                       'metric-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args))))
                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests 
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                         metric-timepoints-plus-preceding-for-extra-args-engine1 end-time-rhythm-with-pitch))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2)))

                                              '(declare (type fixnum total-pitchcount))
                                              '(declare (type t end-time-pitchcount))
                                              '(declare (type number end-time-rhythm-with-pitch))
                                              '(declare (type list metric-timepoints-plus-preceding-for-extra-args-engine1 onsets-engine2 metric-timepoints-to-check
                                                              matching-or-preceding-timepoints-engine2))
                                              '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                              (list 'setf 'durations-plus-preceding-for-extra-args-engine2 
                                                    (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                              (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                    (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine2 pitch-engine3 'vlinear-solution 
                                                                           'matching-or-preceding-timepoints-engine2 'total-pitchcount)))

                                              '(setf timepoints-for-backjump metric-timepoints-to-check)
                                              )))
                                  )
                     
                      
                      ;Special case: last durations might be grace notes. Remove these:
                      '(setf durations-plus-preceding-for-extra-args-engine2 (remove-if 'zerop durations-plus-preceding-for-extra-args-engine2))
                      ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(min (1- (length durations-plus-preceding-for-extra-args-engine2)) 
                                                                  (1- (length pitches-plus-preceding-for-extra-args-engine3)))
                                                         (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect '(list (the number (nth (+ n nth-variable) list-of-offsets))
                                                                                   (the number (nth (+ n nth-variable) durations-plus-preceding-for-extra-args-engine2))
                                                                                   (nth (+ n nth-variable) pitches-plus-preceding-for-extra-args-engine3))))) ;FIXED A BUG HERE OCTOBER 2022
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch 
                                                  (list 'the 'number (list 'nth (list '+ 'nth-variable (1- no-of-args)) 'timepoints-for-backjump))
                                                  'engine 'metric-engine1 rhythm-engine2 pitch-engine3 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))


(defun rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration-and-meter (simple-rule rhythm-engine2 pitch-engine3 flag-for-metric-access)
  "Formats a rule for how notes (i.e. durations with pitch or rests) are positioned at metric points. Grace notes are ignored. 
Also the length of the duration or rest will be passed to the logic statement, and the time signature at the metric time point.

The logic statement will receive '(offset duration pitch timesign).

If the pitch information is not used: use the rule that only checks two engiens (it will be more efficient).
"
(when (/= (1+ rhythm-engine2) pitch-engine3) (error "Error in meter-note-rule: rhythm-engine and pitch engine has to be from the same voice."))

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
                             pitches-plus-preceding-for-extra-args-engine3
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets list-of-timesigns timepoints-for-backjump durations-plus-preceding-for-extra-args-engine2 
                                      pitches-plus-preceding-for-extra-args-engine3))
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
                                                                                                            metric-timepoints-to-check onsets-engine2))
                                                          (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))

                                              '(declare (type list this-cell-metric-timepoints-plus-preceding-for-extra-args onsets-engine2 
                                                              metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-rhythm-engine2))
                                              '(declare (type fixnum total-pitchcount))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                              (list 'setf 'durations-plus-preceding-for-extra-args-engine2 
                                                    (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                              (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                    (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine2 pitch-engine3 'vlinear-solution 'matching-or-preceding-timepoints-engine2 'total-pitchcount)))
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
                                                    (list 'end-time-rhythm-engine2 (list 'get-current-index-endtime rhythm-engine2 'vindex 'vsolution))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                         metric-timepoints-plus-preceding-for-extra-args-engine1 end-time-rhythm-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2))
                                                    (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))

                                        '(declare (type list metric-timepoints-plus-preceding-for-extra-args-engine1 onsets-engine2 
                                                        metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number this-cell-starttime end-time-rhythm-engine2))
                                        '(declare (type fixnum total-pitchcount))

                                        '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                        (list 'setf 'durations-plus-preceding-for-extra-args-engine2 
                                              (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                 ;'(print "error here")
                                        (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                    (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine2 pitch-engine3 'vlinear-solution 'matching-or-preceding-timepoints-engine2 'total-pitchcount)))

                                        (list 'setf 'list-of-timesigns '(the list (remove nil (get-time-signature-at-timepoints metric-engine1 vsolution vlinear-solution metric-timepoints-to-check))))
                                                                    
                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        ))

                            (list (list '= 'engine pitch-engine3) 
                              
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'first-pitchcount-this-cell (list 'get-current-index-first-pitchcount pitch-engine3 'vindex 'vsolution))
                                                          (list 'first-timepoint-at-first-pitchcount (list 'get-timepoint-at-notecount rhythm-engine2 'vlinear-solution 'first-pitchcount-this-cell))
                                                          )
                                        '(declare (type fixnum first-pitchcount-this-cell))
                                        '(declare (type t first-timepoint-at-first-pitchcount))

                                        ;check if there are any new timepoints that can be checked
                                        '(when (not first-timepoint-at-first-pitchcount) (return-from this-rule t))

                                        (list 'let* (list (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution))
                                                          (list 'end-time-pitchcount (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine2 'vlinear-solution 'total-pitchcount))
                                                          (list 'end-time-rhythm-with-pitch (list 'if 'end-time-pitchcount 'end-time-pitchcount
                                                                                                  (list 'get-current-index-endtime rhythm-engine2 'vindex 'vsolution)))
                                                          (list 'metric-timepoints-plus-preceding-for-extra-args-engine1
                                                                (list 'the 'list (list metric-timepoints2 ;this is set as an input option (see above)
                                                                                       'metric-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args))))
                                                          (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests 
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                          (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                         metric-timepoints-plus-preceding-for-extra-args-engine1 end-time-rhythm-with-pitch))
                                                          (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2)))

                                              '(declare (type fixnum total-pitchcount))
                                              '(declare (type t end-time-pitchcount))
                                              '(declare (type number end-time-rhythm-with-pitch))
                                              '(declare (type list metric-timepoints-plus-preceding-for-extra-args-engine1 onsets-engine2 metric-timepoints-to-check
                                                              matching-or-preceding-timepoints-engine2))
                                              '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                              (list 'setf 'durations-plus-preceding-for-extra-args-engine2 
                                                    (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                              (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                    (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine2 pitch-engine3 'vlinear-solution 
                                                                           'matching-or-preceding-timepoints-engine2 'total-pitchcount)))
                                              (list 'setf 'list-of-timesigns '(the list (remove nil (get-time-signature-at-timepoints metric-engine1 vsolution vlinear-solution metric-timepoints-to-check))))

                                              '(setf timepoints-for-backjump metric-timepoints-to-check)
                                              )))
                                  )
                     
                      
                      ;Special case: last durations might be grace notes. Remove these:
                      '(setf durations-plus-preceding-for-extra-args-engine2 (remove-if 'zerop durations-plus-preceding-for-extra-args-engine2))
                      ;here is the rule test

                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(min (1- (length durations-plus-preceding-for-extra-args-engine2)) 
                                                                  (1- (length pitches-plus-preceding-for-extra-args-engine3))
                                                                  (1- (length list-of-timesigns)))
                                                         (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect '(list (nth (+ n nth-variable) list-of-offsets) ;removed type declaration number Feb 2021
                                                                                   (nth (+ n nth-variable) durations-plus-preceding-for-extra-args-engine2) ;removed type declaration number Feb 2021
                                                                                   (nth (+ n nth-variable) pitches-plus-preceding-for-extra-args-engine3) ;removed type declaration number Feb 2021
                                                                                   (the list (nth (+ n nth-variable) list-of-timesigns)))))) ;changed from type number to list - 2015
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch 
                                                  (list 'the 'number (list 'nth (list '+ 'nth-variable (1- no-of-args)) 'timepoints-for-backjump))
                                                  'engine 'metric-engine1 rhythm-engine2 pitch-engine3 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))



(defun rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration-list-all (simple-rule rhythm-engine2 pitch-engine3 flag-for-metric-access)
  "Formats a rule for how events (i.e. durations or rests) are positioned at metric points. Grace notes are ignored. 
Also the length of the duration or rest will be passed to the logic statement.

The logic statement will receive a list of all metric timepoints '((offset duration pitch) (offset duration pitch) ...).
"
  (when (/= (1+ rhythm-engine2) pitch-engine3) (error "Error in meter-note-rule: rhythm-engine and pitch engine has to be from the same voice."))
  (let ((no-of-args (length (function-lambda-list simple-rule)))
        (metric-timepoints1 (cond ((= flag-for-metric-access 1) ; all beats
                                   '(mapcar 'abs (the list (aref vlinear-solution metric-engine1 1)))) 
                                  ((= flag-for-metric-access 2) ; only first beat in measures
                                   '(remove-if 'minusp (the list (aref vlinear-solution metric-engine1 1))))))) 

    (when (/= no-of-args 1) (error "Error in meter-note-rule: the rule should have exactly one input when used in the list-all mode."))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          ;find the information to check
          (list 'block 'this-rule

                (list 'let '((metric-engine1 (1- (the fixnum (array-dimension vindex 0))))
                             list-of-offsets
                             matching-durations
                             matching-pitches
                             timepoints-for-backjump
                             list-of-variables-to-test)
                      '(declare (type list list-of-offsets timepoints-for-backjump matching-durations matching-pitches list-of-variables-to-test))
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
                                                                                                            metric-timepoints-from-start onsets-engine2))
                                                          (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))


                                              '(declare (type list metric-timepoints-from-start onsets-engine2 
                                                              metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                              '(declare (type number end-time-rhythm-engine2))
                                              '(declare (type fixnum total-pitchcount))

                                              '(when (not matching-or-preceding-timepoints-engine2) (return-from this-rule t))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                              (list 'setf 'matching-durations 
                                                    (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                              (list 'setf 'matching-pitches 
                                                    (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine2 pitch-engine3 'vlinear-solution 'matching-or-preceding-timepoints-engine2 'total-pitchcount)))

                                              '(setf timepoints-for-backjump metric-timepoints-to-check)
                                              ))

                            (list (list '= 'engine rhythm-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'metric-timepoints-from-start metric-timepoints1) ;this is set as an input option (see above)
                                                                ;keep the endtime since it is a grid (no rests possible)  
                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests - removed butlast
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'end-time-rhythm-engine2 (list 'get-current-index-endtime rhythm-engine2 'vindex 'vsolution))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                        metric-timepoints-from-start end-time-rhythm-engine2))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2))
                                                    (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))

                                        '(declare (type list metric-timepoints-from-start onsets-engine2 
                                                        metric-timepoints-to-check matching-or-preceding-timepoints-engine2))
                                        '(declare (type number end-time-rhythm-engine2))
                                        '(declare (type fixnum total-pitchcount))

                                        '(when (not onsets-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                        (list 'setf 'matching-durations 
                                              (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                        (list 'setf 'matching-pitches 
                                              (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine2 pitch-engine3 'vlinear-solution 'matching-or-preceding-timepoints-engine2 'total-pitchcount)))
                                                                              
                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        ))

                            (list (list '= 'engine pitch-engine3) 
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine1 1)) '(return-from this-rule t))
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine2 1)) '(return-from this-rule t))


                                  (list 'let* (list (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution))
                                                    (list 'end-time-pitchcount (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine2 'vlinear-solution 'total-pitchcount))
                                                    (list 'end-time-rhythm-with-pitch (list 'if 'end-time-pitchcount 'end-time-pitchcount
                                                                                            (list 'get-current-index-endtime rhythm-engine2 'vindex 'vsolution)))
                                                    (list 'metric-timepoints-from-start metric-timepoints1);this is set as an input option (see above)
                                                                ;keep the endtime since it is a grid (no rests possible)  

                                                    (list 'onsets-engine2 (list 'butlast (list 'the 'list (list 'remove-gracenotes-from-timepointlist ;keep-rests 
                                                                                                                (list 'the 'list (list 'aref 'vlinear-solution rhythm-engine2 1))))))
                                                    (list 'metric-timepoints-to-check '(filter-timepoints-keep-before-endtime
                                                                                        metric-timepoints-from-start end-time-rhythm-with-pitch))
                                                    (list 'matching-or-preceding-timepoints-engine2 '(find-all-timepoints-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                      metric-timepoints-to-check onsets-engine2)))

                                        '(declare (type fixnum total-pitchcount))
                                        '(declare (type t end-time-pitchcount))
                                        '(declare (type number end-time-rhythm-with-pitch))
                                        '(declare (type list metric-timepoints-from-start onsets-engine2 metric-timepoints-to-check
                                                        matching-or-preceding-timepoints-engine2))
                                        '(when (not (car matching-or-preceding-timepoints-engine2)) (return-from this-rule t))

                                        (list 'setf 'list-of-offsets '(the list (mapcar '- matching-or-preceding-timepoints-engine2 metric-timepoints-to-check)))
                                        (list 'setf 'matching-durations 
                                              (list 'the 'list (list 'get-durations-at-timepoints-skip-gracenotes rhythm-engine2 'vlinear-solution 'matching-or-preceding-timepoints-engine2)))
                                        (list 'setf 'matching-pitches 
                                              (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine2 pitch-engine3 'vlinear-solution 
                                                                     'matching-or-preceding-timepoints-engine2 'total-pitchcount)))

                                        '(setf timepoints-for-backjump metric-timepoints-to-check)
                                        ))

                            )
                     
                      
                      ;Special case: last durations might be grace notes. Remove these:
                      '(setf matching-durations (remove-if 'zerop matching-durations))
                      '(setf list-of-variables-to-test (mapcar 'list list-of-offsets matching-durations matching-pitches))
                      '(when (not list-of-variables-to-test) (return-from this-rule t))
                      ;here is the rule test
                      (list 'if (list 'not (list 'funcall (compile-if-not-compiled nil simple-rule) 'list-of-variables-to-test))
                            (list 'progn 
                                  ;backjump
                                  (list 'set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch 
                                        (list 'the 'number '(nth (1- (length list-of-variables-to-test)) timepoints-for-backjump))
                                        'engine 'metric-engine1 rhythm-engine2 pitch-engine3 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                  '(return-from this-rule nil))
                            '(return-from this-rule t))
                      )))
    ))


;;;;;;;;;;;; note-meter rules ;;;;;;;;;;;;

(defun rule-3-engines-notes-and-their-offset-to-metric-structure-include-rests-indicate-timesignature (simple-rule rhythm-engine1 pitch-engine3 flag-for-metric-access)
  "Formats a rule for offsets for notes (including pitches and rests), i.e. how notes are positioned in relation to the pulse.
The rule will also access the event ratio (= length), the timesignature for the measure where the events onset exist and the pitch. 
Grace notes are inluded.
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
                             pitches-plus-preceding-for-extra-args-engine3
                             list-of-offsets
                             list-of-timesigns
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1 pitches-plus-preceding-for-extra-args-engine3 list-of-timesigns))
                      '(declare (type fixnum metric-engine2))
                
                      (list 'cond (list (list '= 'engine rhythm-engine1)
                                        (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                        (list 'let* (list (list 'this-cell-onsets-plus-preceding-for-extra-args 
                                                                (list 'butlast ;remove last events end-time (this might be the start of a rest)
                                                                      (list 'the 'list (list 'get-timepoints-from-start-last-rhythmcell-minus-nsteps ;keep grace notes and rests
                                                                                             rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args)))))
                                                          (list 'this-cell-events-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-events-from-start-last-rhythmcell-minus-nsteps rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))
                                                          (list 'this-cell-notecounts-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-notecounts-from-start-last-rhythmcell-minus-nsteps rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))
                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated - timesign is not knowsn at endpoint
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2))
                                                          (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args this-cell-notecounts-plus-preceding-for-extra-args
                                                              beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(declare (type number end-time-metric-engine2))
                                              '(declare (type fixnum total-pitchcount))

                                              '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                              ;correct the notecount list
                                              '(setf this-cell-notecounts-plus-preceding-for-extra-args 
                                                     (put-nil-for-rests-in-notecountlist this-cell-notecounts-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args))

                                              (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                              (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))

                                              ;;added here
                                              (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                    (list 'the 'list (list 'get-pitches-at-notecounts pitch-engine3 'vlinear-solution 'this-cell-notecounts-plus-preceding-for-extra-args 'total-pitchcount)))
                                              ;;

                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              ))


                            (list (list '= 'engine 'metric-engine2)
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))
                                  (list 'let* (list (list 'this-cell-starttime (list 'get-current-index-starttime 'metric-engine2 'vindex 'vsolution))
                                                    (list 'onsets-plus-preceding-for-extra-args-engine1
                                                          (list 'butlast ;remove last events end-time (duration is onknown on the last endtime)
                                                                (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args)))))
                                                    (list 'events-plus-preceding-for-extra-args-matching-onsets
                                                          (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'notecounts-plus-preceding-for-extra-args-matching-onsets
                                                          (list 'the 'list (list 'get-notecounts-from-any-timepoint-minus-nsteps 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                    (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated 
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                    (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                              engine1-timepoints-to-check beats-metric-engine2))
                                                    (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                        beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                        '(declare (type number this-cell-starttime))
                                        '(declare (type fixnum total-pitchcount))

                                        '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        ;correct the notecount list
                                              '(setf notecounts-plus-preceding-for-extra-args-matching-onsets 
                                                     (put-nil-for-rests-in-notecountlist notecounts-plus-preceding-for-extra-args-matching-onsets events-plus-preceding-for-extra-args-matching-onsets))

                                        (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                              (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                        (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                        (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))

                                        ;;added here
                                        (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                              (list 'the 'list (list 'get-pitches-at-notecounts pitch-engine3 'vlinear-solution 'notecounts-plus-preceding-for-extra-args-matching-onsets 'total-pitchcount)))
                                        ;;
                                                                              
                                        ;onsets-plus-preceding-for-extra-args-engine1
                                        '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                        ))

;;continue here
                            ;;;Next paragraph is all new 
                            (list (list '= 'engine pitch-engine3) 
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))  
                                  (list 'let* (list (list 'first-pitchcount-this-cell (list 'get-current-index-first-pitchcount pitch-engine3 'vindex 'vsolution))
                                                    (list 'first-timepoint-at-first-pitchcount (list 'get-timepoint-at-notecount rhythm-engine1 'vlinear-solution 'first-pitchcount-this-cell)))
                                        '(declare (type fixnum first-pitchcount-this-cell))
                                        '(declare (type t first-timepoint-at-first-pitchcount))

                                         ;check if there are any new timepoints that can be checked
                                        '(when (not first-timepoint-at-first-pitchcount) (return-from this-rule t))

                                        (list 'let* (list (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution))
                                                          (list 'end-time-pitchcount (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine1 'vlinear-solution 'total-pitchcount))
                                                          (list 'end-time-rhythm-with-pitch (list 'if 'end-time-pitchcount 'end-time-pitchcount
                                                                                                  (list 'get-current-index-endtime rhythm-engine1 'vindex 'vsolution)))
                                                          (list 'onsets-plus-preceding-for-extra-args-engine1
                                                                (list 'butlast ;remove last events end-time (duration is onknown on teh last endtime)
                                                                      (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps 
                                                                                             rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args)))))
                                                          (list 'events-plus-preceding-for-extra-args-matching-onsets
                                                                (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args))))
                                                          (list 'notecounts-plus-preceding-for-extra-args-matching-onsets
                                                                (list 'the 'list (list 'get-notecounts-from-any-timepoint-minus-nsteps 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args))))
                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated 
                                                                                               onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power. Thiese are metric points.
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))
                                              '(declare (type fixnum total-pitchcount))
                                              '(declare (type t end-time-pitchcount))
                                              '(declare (type number end-time-rhythm-with-pitch end-time-metric-engine2))
                                              '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                              beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))

                                              ;correct the notecount list
                                              '(setf notecounts-plus-preceding-for-extra-args-matching-onsets 
                                                     (put-nil-for-rests-in-notecountlist notecounts-plus-preceding-for-extra-args-matching-onsets events-plus-preceding-for-extra-args-matching-onsets))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                              (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                              (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                                              (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                    (list 'the 'list (list 'get-pitches-at-notecounts pitch-engine3 'vlinear-solution 'notecounts-plus-preceding-for-extra-args-matching-onsets 'total-pitchcount)))
                                             ;onsets-plus-preceding-for-extra-args-engine1
                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              )))
                            )



                ;here is the rule test
                (list 'loop 'for 'nth-variable 'from 0 
                      'to (list 'the 'fixnum (list '- '(min (1- (length list-of-offsets)) ;this includes timepoint in both rhythm and meter
                                                            (1- (length pitches-plus-preceding-for-extra-args-engine3)))
                                                   (1- no-of-args)))
                      'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                       (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                             'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                             (list 'nth '(+ n nth-variable) 'list-of-offsets)
                                                                                             (list 'nth '(+ n nth-variable) 'list-of-timesigns)
                                                                                             (list 'nth '(+ n nth-variable) 'pitches-plus-preceding-for-extra-args-engine3))))))
                                (list 'progn 
                                            ;backjump
                                      (list 'set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch 
                                            (list 'the 'number (list 'nth (list '+ 'nth-variable (1- no-of-args)) 'timepoints-for-backjump))
                                            'engine rhythm-engine1 'metric-engine2 pitch-engine3 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                      '(return nil)))
                      'finally '(return t)
                      )
                )))
    ))


(defun rule-3-engines-notes-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature (simple-rule rhythm-engine1 pitch-engine3 flag-for-metric-access)
  "Formats a rule for offsets for notes (including rests), i.e. how notes are positioned in relation to the pulse.
The rule will also access the event ratio (= length), the timesignature for the measure where the events onset exist and the pitch. 
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
                           pitches-plus-preceding-for-extra-args-engine3
                           list-of-offsets
                           list-of-timesigns
                           timepoints-for-backjump)
                    '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1 pitches-plus-preceding-for-extra-args-engine3 list-of-timesigns))
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
                                                                                                  engine1-timepoints-to-check beats-metric-engine2))
                                                        (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args 
                                                            beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                            '(declare (type number end-time-metric-engine2))
                                            '(declare (type fixnum total-pitchcount))

                                            '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                            (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                  (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))
                                            
                                            (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                            (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))

                                            ;;added here
                                            (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                  (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine1 pitch-engine3 'vlinear-solution 'engine1-timepoints-to-check 'total-pitchcount)))
                                            ;;

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
                                                                                            engine1-timepoints-to-check beats-metric-engine2))
                                                  (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets 
                                                      beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                      '(declare (type number this-cell-starttime end-time-engine2))
                                      '(declare (type fixnum total-pitchcount))

                                      '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)
                                      (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                            (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                      (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                      (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                                                               
                                      ;;added here
                                      (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                            (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine1 pitch-engine3 'vlinear-solution 'engine1-timepoints-to-check 'total-pitchcount)))
                                      ;;
                                      
                                      '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                      ))
                          ;;;Next paragraph is all new 
                          (list (list '= 'engine pitch-engine3) 
                                (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))  
                                (list 'let* (list (list 'first-pitchcount-this-cell (list 'get-current-index-first-pitchcount pitch-engine3 'vindex 'vsolution))
                                                  (list 'first-timepoint-at-first-pitchcount (list 'get-timepoint-at-notecount rhythm-engine1 'vlinear-solution 'first-pitchcount-this-cell)))
                                      '(declare (type fixnum first-pitchcount-this-cell))
                                      '(declare (type t first-timepoint-at-first-pitchcount))

                                         ;check if there are any new timepoints that can be checked
                                      '(when (not first-timepoint-at-first-pitchcount) (return-from this-rule t))

                                      (list 'let* (list (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution))
                                                        (list 'end-time-pitchcount (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine1 'vlinear-solution 'total-pitchcount))
                                                        (list 'end-time-rhythm-with-pitch (list 'if 'end-time-pitchcount 'end-time-pitchcount
                                                                                                (list 'get-current-index-endtime rhythm-engine1 'vindex 'vsolution)))
                                                        (list 'onsets-plus-preceding-for-extra-args-engine1
                                                              (list 'butlast ;remove last events end-time (duration is onknown on teh last endtime)
                                                                    (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                           rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args)))))
                                                        (list 'events-plus-preceding-for-extra-args-matching-onsets
                                                              (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args))))
                                                        (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                        (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated 
                                                                                             onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                        (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power. Thiese are metric points.
                                                                                                  engine1-timepoints-to-check beats-metric-engine2)))
                                            '(declare (type fixnum total-pitchcount))
                                            '(declare (type t end-time-pitchcount))
                                            '(declare (type number end-time-rhythm-with-pitch end-time-metric-engine2))
                                            '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets  
                                                            beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                            '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))

                                            (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                            (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                  (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                            (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                                            (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                  (list 'the 'list (list 'get-pitches-at-timepoints-skip-gracenotes rhythm-engine1 pitch-engine3 'vlinear-solution 'engine1-timepoints-to-check 'total-pitchcount)))
                                             ;onsets-plus-preceding-for-extra-args-engine1
                                            '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                            ))))

                      
                    ;here is the rule test
                    (list 'loop 'for 'nth-variable 'from 0 
                      'to (list 'the 'fixnum (list '- '(min (1- (length list-of-offsets)) ;this includes timepoint in both rhythm and meter
                                                            (1- (length pitches-plus-preceding-for-extra-args-engine3)))
                                                   (1- no-of-args)))
                      'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                       (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                             'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                             (list 'nth '(+ n nth-variable) 'list-of-offsets)
                                                                                             (list 'nth '(+ n nth-variable) 'list-of-timesigns)
                                                                                             (list 'nth '(+ n nth-variable) 'pitches-plus-preceding-for-extra-args-engine3))))))
                                (list 'progn 
                                            ;backjump
                                      (list 'set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch 
                                            (list 'the 'number (list 'nth (list '+ 'nth-variable (1- no-of-args)) 'timepoints-for-backjump))
                                            'engine rhythm-engine1 'metric-engine2 pitch-engine3 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                      '(return nil)))
                      'finally '(return t)
                      )
                    )))
        ))


(defun rule-3-engines-notes-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature (simple-rule rhythm-engine1 pitch-engine3 flag-for-metric-access)
  "Formats a rule for offsets for notes (ignoring rests), i.e. how tnoes are positioned in relation to the pulse.
The rule will also access the duration ratio, the timesignature for the measure where the events onset exist and the pitch. Rests are ignored 
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
                           pitches-plus-preceding-for-extra-args-engine3
                           list-of-offsets
                           list-of-timesigns
                           timepoints-for-backjump)
                    '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1 pitches-plus-preceding-for-extra-args-engine3 list-of-timesigns))
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
                                                        (list 'this-cell-notecounts-plus-preceding-for-extra-args 
                                                              (list 'the 'list (list 'get-notecounts-from-start-last-rhythmcell-minus-nsteps-ignor-rests rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))

                                                        (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                        (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated - timesign is not knowsn at endpoint
                                                                                             this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                        (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                  engine1-timepoints-to-check beats-metric-engine2))
                                                        (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))
                                            '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args this-cell-notecounts-plus-preceding-for-extra-args
                                                            beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                            '(declare (type number end-time-metric-engine2))
                                            '(declare (type fixnum total-pitchcount))

                                            '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                            (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                  (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))
                                            
                                            (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                            (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))

                                            ;;added here
                                            (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                  (list 'the 'list (list 'get-pitches-at-notecounts pitch-engine3 'vlinear-solution 'this-cell-notecounts-plus-preceding-for-extra-args 'total-pitchcount)))
                                            ;;

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
                                                  (list 'notecounts-plus-preceding-for-extra-args-matching-onsets 
                                                        (list 'the 'list (list 'get-notecounts-from-any-timepoint-minus-nsteps-ignor-rests 
                                                                               rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                  (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                  (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                  (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated
                                                                                       onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                  (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                            engine1-timepoints-to-check beats-metric-engine2))
                                                  (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))

                                      '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets notecounts-plus-preceding-for-extra-args-matching-onsets
                                                      beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                      '(declare (type number this-cell-starttime))
                                      '(declare (type fixnum total-pitchcount))

                                      '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                      '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)
                                      (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                            (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))

                                      (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                      (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                            
                                      ;;added here
                                      (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                            (list 'the 'list (list 'get-pitches-at-notecounts pitch-engine3 'vlinear-solution 'notecounts-plus-preceding-for-extra-args-matching-onsets 'total-pitchcount)))
                                      ;;                                                  
                                      
                                      '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                      ))

                          ;;;Next paragraph is all new 
                          (list (list '= 'engine pitch-engine3) 
                                (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))  
                                (list 'let* (list (list 'first-pitchcount-this-cell (list 'get-current-index-first-pitchcount pitch-engine3 'vindex 'vsolution))
                                                  (list 'first-timepoint-at-first-pitchcount (list 'get-timepoint-at-notecount rhythm-engine1 'vlinear-solution 'first-pitchcount-this-cell)))
                                      '(declare (type fixnum first-pitchcount-this-cell))
                                      '(declare (type t first-timepoint-at-first-pitchcount))

                                        ;check if there are any new timepoints that can be checked
                                      '(when (not first-timepoint-at-first-pitchcount) (return-from this-rule t))

                                      (list 'let* (list (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution))
                                                        (list 'end-time-pitchcount (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine1 'vlinear-solution 'total-pitchcount))
                                                        (list 'end-time-rhythm-with-pitch (list 'if 'end-time-pitchcount 'end-time-pitchcount
                                                                                                (list 'get-current-index-endtime rhythm-engine1 'vindex 'vsolution)))
                                                        (list 'onsets-plus-preceding-for-extra-args-engine1
                                                              (list 'butlast ;remove last events end-time (duration is onknown on teh last endtime)
                                                                    (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests 
                                                                                           rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args)))))
                                                        (list 'events-plus-preceding-for-extra-args-matching-onsets
                                                              (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-rests 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args))))
                                                        (list 'notecounts-plus-preceding-for-extra-args-matching-onsets
                                                              (list 'the 'list (list 'get-notecounts-from-any-timepoint-minus-nsteps-ignor-rests 
                                                                                     rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args))))
                                                        (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                        (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                        (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated 
                                                                                             onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                        (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power. Thiese are metric points.
                                                                                                  engine1-timepoints-to-check beats-metric-engine2)))
                                            '(declare (type fixnum total-pitchcount))
                                            '(declare (type t end-time-pitchcount))
                                            '(declare (type number end-time-rhythm-with-pitch end-time-metric-engine2))
                                            '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets notecounts-plus-preceding-for-extra-args-matching-onsets
                                                            beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                            '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                            ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                            (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                  (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))

                                            (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                            (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                            
                                            ;;added here
                                            (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                  (list 'the 'list (list 'get-pitches-at-notecounts pitch-engine3 'vlinear-solution 'notecounts-plus-preceding-for-extra-args-matching-onsets 'total-pitchcount)))
                                            ;;                                                  
                                      
                                            '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                            ))))

                      
                    ;here is the rule test
                    (list 'loop 'for 'nth-variable 'from 0 
                      'to (list 'the 'fixnum (list '- '(min (1- (length list-of-offsets)) ;this includes timepoint in both rhythm and meter
                                                            (1- (length pitches-plus-preceding-for-extra-args-engine3)))
                                                   (1- no-of-args)))
                      'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                       (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                             'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                             (list 'nth '(+ n nth-variable) 'list-of-offsets)
                                                                                             (list 'nth '(+ n nth-variable) 'list-of-timesigns)
                                                                                             (list 'nth '(+ n nth-variable) 'pitches-plus-preceding-for-extra-args-engine3))))))
                                (list 'progn 
                                            ;backjump
                                      (list 'set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch 
                                            (list 'the 'number (list 'nth (list '+ 'nth-variable (1- no-of-args)) 'timepoints-for-backjump))
                                            'engine rhythm-engine1 'metric-engine2 pitch-engine3 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                      '(return nil)))
                      'finally '(return t)
                      )
                    )))
        ))


(defun rule-3-engines-notes-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature (simple-rule rhythm-engine1 pitch-engine3 flag-for-metric-access)
  "Formats a rule for offsets for notes (ignoring rests), i.e. how notes are positioned in relation to the pulse.
The rule will also access the duration ratio, the timesignature for the measure where the events onset exist and pitches. Grace notes and rests are ignored 
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
                             pitches-plus-preceding-for-extra-args-engine3
                             list-of-offsets
                             list-of-timesigns
                             timepoints-for-backjump)
                      '(declare (type list list-of-offsets timepoints-for-backjump events-plus-preceding-for-extra-args-engine1 pitches-plus-preceding-for-extra-args-engine3 list-of-timesigns))
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
                                                          (list 'this-cell-notecounts-plus-preceding-for-extra-args 
                                                                (list 'the 'list (list 'get-notecounts-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes rhythm-engine1 'vindex 'vsolution 'vlinear-solution (1- no-of-args))))

                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated - timesign is not knowsn at endpoint
                                                                                               this-cell-onsets-plus-preceding-for-extra-args end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                                    engine1-timepoints-to-check beats-metric-engine2))
                                                          (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))
                                              '(declare (type list this-cell-onsets-plus-preceding-for-extra-args this-cell-events-plus-preceding-for-extra-args this-cell-notecounts-plus-preceding-for-extra-args
                                                              beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(declare (type number end-time-metric-engine2))
                                              '(declare (type fixnum total-pitchcount))

                                              '(when (not matching-or-following-timepoints) (return-from this-rule t))

                                              (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'this-cell-events-plus-preceding-for-extra-args 'this-cell-onsets-plus-preceding-for-extra-args 'end-time-metric-engine2))
                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                              (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))

                                              ;;added here
                                              (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                    (list 'the 'list (list 'get-pitches-at-notecounts pitch-engine3 'vlinear-solution 'this-cell-notecounts-plus-preceding-for-extra-args 'total-pitchcount)))
                                              ;;

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
                                                    (list 'notecounts-plus-preceding-for-extra-args-matching-onsets 
                                                          (list 'the 'list (list 'get-notecounts-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                 rhythm-engine1 'vindex 'vlinear-solution 'this-cell-starttime (1- no-of-args))))
                                                    (list 'beats-metric-engine2 metric-timepoints) ;keep the endtime since it is a grid (no rests possible)
                                                    (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 2)))))
                                                    (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated
                                                                                         onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                    (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power
                                                                                              engine1-timepoints-to-check beats-metric-engine2))
                                                    (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution)))

                                        '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets notecounts-plus-preceding-for-extra-args-matching-onsets
                                                        beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                        '(declare (type number this-cell-starttime))
                                        '(declare (type fixnum total-pitchcount))

                                        '(when (not beats-metric-engine2) (return-from this-rule t))
                                        ;nothing to check - exist to avoid errors
                                        '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                        ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                        (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                              (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))
                                        (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                        (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                                      
                                        ;;added here
                                        (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                              (list 'the 'list (list 'get-pitches-at-notecounts pitch-engine3 'vlinear-solution 'notecounts-plus-preceding-for-extra-args-matching-onsets 'total-pitchcount)))
                                        ;;   
                                        '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                        ))
                            (list (list '= 'engine pitch-engine3) 
                                  (list 'when (list 'not (list 'aref 'vlinear-solution 'metric-engine2 1)) '(return-from this-rule t))
                                  (list 'when (list 'not (list 'aref 'vlinear-solution rhythm-engine1 1)) '(return-from this-rule t))  
                                  (list 'let* (list (list 'first-pitchcount-this-cell (list 'get-current-index-first-pitchcount pitch-engine3 'vindex 'vsolution))
                                                    (list 'first-timepoint-at-first-pitchcount (list 'get-timepoint-at-notecount rhythm-engine1 'vlinear-solution 'first-pitchcount-this-cell)))
                                        '(declare (type fixnum first-pitchcount-this-cell))
                                        '(declare (type t first-timepoint-at-first-pitchcount))

                                        ;check if there are any new timepoints that can be checked
                                        '(when (not first-timepoint-at-first-pitchcount) (return-from this-rule t))

                                        (list 'let* (list (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine3 'vlinear-solution))
                                                          (list 'end-time-pitchcount (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine1 'vlinear-solution 'total-pitchcount))
                                                          (list 'end-time-rhythm-with-pitch (list 'if 'end-time-pitchcount 'end-time-pitchcount
                                                                                                  (list 'get-current-index-endtime rhythm-engine1 'vindex 'vsolution)))
                                                          (list 'onsets-plus-preceding-for-extra-args-engine1
                                                                (list 'butlast ;remove last events end-time (duration is onknown on teh last endtime)
                                                                      (list 'the 'list (list 'get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                             rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args)))))
                                                          (list 'events-plus-preceding-for-extra-args-matching-onsets
                                                                (list 'the 'list (list 'get-events-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes 
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args))))
                                                          (list 'notecounts-plus-preceding-for-extra-args-matching-onsets
                                                                (list 'the 'list (list 'get-notecounts-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes
                                                                                       rhythm-engine1 'vindex 'vlinear-solution 'first-timepoint-at-first-pitchcount (1- no-of-args))))
                                                          (list 'beats-metric-engine2 metric-timepoints) ;this is set as an input option (see above) 
                                                                                                       ;keep the endtime since it is a grid (no rests possible)
                                                          (list 'end-time-metric-engine2 (list 'car (list 'last (list 'the 'list (list 'aref 'vlinear-solution 'metric-engine2 1)))))
                                                          (list 'engine1-timepoints-to-check '(filter-timepoints-keep-before-endtime ;this is specific for when timesign is indicated 
                                                                                               onsets-plus-preceding-for-extra-args-engine1 end-time-metric-engine2))
                                                          (list 'matching-or-following-timepoints '(find-all-timepoints2-convert-rests ; the convert rest is unnecessary, but does not use up much power. Thiese are metric points.
                                                                                                    engine1-timepoints-to-check beats-metric-engine2)))
                                              '(declare (type fixnum total-pitchcount))
                                              '(declare (type t end-time-pitchcount))
                                              '(declare (type number end-time-rhythm-with-pitch end-time-metric-engine2))
                                              '(declare (type list onsets-plus-preceding-for-extra-args-engine1 events-plus-preceding-for-extra-args-matching-onsets notecounts-plus-preceding-for-extra-args-matching-onsets
                                                              beats-metric-engine2 engine1-timepoints-to-check matching-or-following-timepoints))
                                              '(when (not (car matching-or-following-timepoints)) (return-from this-rule t))
                                                  ;this meanes that engine2 starts with rests - this is NOT CHECKED (use the rule that includes rests to check this...)

                                              (list 'setf 'events-plus-preceding-for-extra-args-engine1
                                                    (list 'filter-durations-keep-upto-endtime 'events-plus-preceding-for-extra-args-matching-onsets 'onsets-plus-preceding-for-extra-args-engine1 'end-time-metric-engine2))

                                              (list 'setf 'list-of-offsets '(the list (mapcar '- engine1-timepoints-to-check matching-or-following-timepoints)))
                                              (list 'setf 'list-of-timesigns '(the list (get-time-signature-at-timepoints metric-engine2 vsolution vlinear-solution engine1-timepoints-to-check)))
                            
                                              ;;added here
                                              (list 'setf 'pitches-plus-preceding-for-extra-args-engine3 
                                                    (list 'the 'list (list 'get-pitches-at-notecounts pitch-engine3 'vlinear-solution 'notecounts-plus-preceding-for-extra-args-matching-onsets 'total-pitchcount)))
                                              ;;                                                  
                                      
                                              '(setf timepoints-for-backjump engine1-timepoints-to-check)
                                              ))))
                                                  

                      ;here is the rule test
                      (list 'loop 'for 'nth-variable 'from 0 
                            'to (list 'the 'fixnum (list '- '(min (1- (length list-of-offsets)) ;this includes timepoint in both rhythm and meter
                                                                  (1- (length pitches-plus-preceding-for-extra-args-engine3)))
                                                         (1- no-of-args)))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'the 'list (list 'list (list 'nth '(+ n nth-variable) 'events-plus-preceding-for-extra-args-engine1)
                                                                                                   (list 'nth '(+ n nth-variable) 'list-of-offsets)
                                                                                                   (list 'nth '(+ n nth-variable) 'list-of-timesigns)
                                                                                                   (list 'nth '(+ n nth-variable) 'pitches-plus-preceding-for-extra-args-engine3))))))
                                      (list 'progn 
                                            ;backjump
                                            (list 'set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch 
                                                  (list 'the 'number (list 'nth (list '+ 'nth-variable (1- no-of-args)) 'timepoints-for-backjump))
                                                  'engine rhythm-engine1 'metric-engine2 pitch-engine3 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      )))
    ))





(defun rule-three-engines1 (rule engine1 engine2 engine3)
"This is for meter (engine1), rhythm (engine2) and pitch (engine3) in the same voice.
It prefers backtrack in the same engine.
The second preference is to backtrack the rhythm engine.
The third preference is to backtrack the pitch engine.
The fourth preference is to backtrack the metric engine.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine1 engine2 engine3)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)

    (setf (aref vrule 2) (list (list engine1 engine2 engine3)(list engine2 engine3 engine1)(list engine3 engine2 engine1))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))


(defun rule-three-engines2 (rule engine1 engine2 engine3)
"This is for meter (engine1), rhythm (engine2) and pitch (engine3) in the same voice.
It prefers backtrack in /the other engine/, i.e. not the metric engine.
The metric engine prefers to backtrack the rhythm engine (then the pitch engine).
The last preference is always to backtrack the metric engine.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine1 engine2 engine3)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)

    (setf (aref vrule 2) (list (list engine2 engine3 engine1)(list engine3 engine2 engine1)(list engine2 engine3 engine1))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))



(defun rule-three-engines3 (rule engine1 engine2 engine3)
"This is for meter (engine1), rhythm (engine2) and pitch (engine3) in the same voice.
It prefers backtrack in /the other engine/, i.e. not the metric engine.
The metric engine prefers to backtrack the pitch engine (then the rhythm engine).
The last preference is always to backtrack the metric engine.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine1 engine2 engine3)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)

    (setf (aref vrule 2) (list (list engine3 engine2 engine1)(list engine3 engine2 engine1)(list engine2 engine3 engine1))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))