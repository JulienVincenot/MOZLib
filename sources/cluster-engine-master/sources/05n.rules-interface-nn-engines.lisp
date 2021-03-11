(in-package cluster-engine)

;;;;;;;;;;;;;;;;;;;;;THREE ENGINES;;;;;;;;;;;;;;;;;;;;;;;;

;;;TO DO: Make instances of rule arrays!!!!!!! (se one and two engines files....





(defun rule-three-engines (rule engine1 engine2 engine3)
"This is for rhythm, pitch and meter in the same voice"
  (let ((compiled-rule (compile nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine1 engine2 engine3)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    ;The backtrack route might not be ideal if more than 1 argument in rule
    (setf (aref vrule 2) (list (list engine2 engine3 engine1)(list engine3 engine1 engine2)(list engine1 engine2 engine3))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))


;;;;;;;;;;;;;;;;;;;;;FOUR ENGINES;;;;;;;;;;;;;;;;;;;;;;;;

(defun shift-start-point-in-list (start-point list offset)
  "The objective is to move offset-steps before the startime in the list. 
Starttime must exist in the list. If the offset is larger is to before the start point, the start point will be given. "
  (declare (type number start-point))
  (declare (type list list))
  (declare (type fixnum offset))
  (let ((new-position (position start-point list :test '<=)))
    (declare (type t new-position))
    (if (not new-position) (setf new-position (- (length list) offset 1))
      (setf new-position (- new-position offset)))
    (if (minusp new-position)
        (first list)
      (nth new-position list))))

;(shift-start-point-in-list 7/4 '(1 5/4 3/2 7/4) 1)
;(position 7/4 '(1 9/8 5/4 3/2 13/8) :test '<=)

;This function is replaced (see 5g)
(defun old-rule-4-engines-pitch-and-pitch (simple-rule rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let* (list (list 'pitch-count-1st-voice (list 'get-total-pitchcount pitch-engine1 'vlinear-solution))
                            (list 'note-count-1st-voice (list 'get-total-notecount rhythm-engine1 'vlinear-solution))
                            (list 'end-time-1st-voice (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine1 'vlinear-solution '(min pitch-count-1st-voice note-count-1st-voice)))

                            (list 'pitch-count-2nd-voice (list 'get-total-pitchcount pitch-engine2 'vlinear-solution))
                            (list 'note-count-2nd-voice (list 'get-total-notecount rhythm-engine2 'vlinear-solution))
                            (list 'end-time-2nd-voice (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine2 'vlinear-solution '(min pitch-count-2nd-voice note-count-2nd-voice))))
                '(declare (type fixnum pitch-count-1st-voice note-count-1st-voice pitch-count-2nd-voice note-count-2nd-voice))
                '(declare (type t end-time-1st-voice end-time-2nd-voice))
;'(print (list '1st pitch-count-1st-voice note-count-1st-voice end-time-1st-voice pitch-count-2nd-voice note-count-2nd-voice end-time-2nd-voice vlinear-solution))          
                (list 'if '(and end-time-1st-voice end-time-2nd-voice) ;if not all engines exist, don't check the rule
                      (list 'let (list (list 'timepoints-1st-voice (list 'remove-rests-from-list (list 'butlast (list 'aref 'vlinear-solution rhythm-engine1 1))))
                                       (list 'timepoints-2nd-voice (list 'remove-rests-from-list (list 'butlast (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                       (list 'endtime-common-onsets (list 'min
                                                                          'end-time-1st-voice
                                                                          'end-time-2nd-voice))
                                       (list 'start-time-this-variable (list 'cond (list (list '= 'engine rhythm-engine1)
                                                                                         (list 'get-current-index-starttime rhythm-engine1 'vindex 'vsolution))
                                                                             (list (list '= 'engine rhythm-engine2)
                                                                                   (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                                                             (list (list '= 'engine pitch-engine1)
                                                                                   (list 'get-timepoint-at-notecount rhythm-engine1 'vlinear-solution 
                                                                                         (list 'get-current-index-first-pitchcount pitch-engine1 'vindex 'vsolution)))
                                                                             (list 't
                                                                                   (list 'get-timepoint-at-notecount rhythm-engine2 'vlinear-solution 
                                                                                         (list 'get-current-index-first-pitchcount pitch-engine2 'vindex 'vsolution))))))
                            '(declare (type list timepoints-1st-voice timepoints-2nd-voice))
                            '(declare (type number endtime-common-onsets))
                            '(declare (type t start-time-this-variable))
;'(print (list '2nd timepoints-1st-voice timepoints-2nd-voice endtime-common-onsets start-time-this-variable))
;;here it could check that starttime is not outside the range of the other voice
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list '(all-timepoints (remove-duplicates (sort (append timepoints-1st-voice timepoints-2nd-voice) '<)))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))
                                                    (list 'notecounts-1st-voice (list 'get-notecount-at-timepoints rhythm-engine1 'vlinear-solution 'filtered-timepoints))
                                                    (list 'notecounts-2nd-voice (list 'get-notecount-at-timepoints rhythm-engine2 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitch-pairs (list 'loop 'for 'notecount-voice1 'in 'notecounts-1st-voice
                                                                                 'for 'notecount-voice2 'in 'notecounts-2nd-voice
                                                                                 'collect (list 'list (list 'if 'notecount-voice1 
                                                                                                            (list 'get-pitch-at-pitchcount pitch-engine1 'vlinear-solution 'notecount-voice1) 'nil)
                                                                                                (list 'if 'notecount-voice2 
                                                                                                      (list 'get-pitch-at-pitchcount pitch-engine2 'vlinear-solution 'notecount-voice2) 'nil)))))
                                        '(declare (type list all-timepoints filtered-timepoints notecounts-1st-voice notecounts-2nd-voice all-pitch-pairs))
                                        '(declare (type number start-time-include-earlier-variables))

;'(print (list '3rd all-timepoints start-time-include-earlier-variables filtered-timepoints notecounts-1st-voice notecounts-2nd-voice all-pitch-pairs))
                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-pairs)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-pairs))) 
                                                        t
                                                        (list 'progn 
                                      ;backjump routine here
                                                              (list 'cond (list (list '= 'engine rhythm-engine1)
                                                                                (list 'let (list (list 'failed-countvalue1 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-voice))  ;maybe (+ n (1- no-of-args))
                                                                                                 (list 'failed-countvalue2 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-2nd-voice))) ;maybe (+ n (1- no-of-args))
                                                                                      '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                      (list 'when 'failed-countvalue1 ;if there is a rest, there is no countvalue
                                                                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                                  'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                                  'vbackjump-indexes 'vsolution-for-backjump))
                                                                                      (list 'when 'failed-countvalue2
                                                                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                                  'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                                  'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine pitch-engine1)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-voice))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-2nd-voice))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 pitch-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine rhythm-engine2)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-voice))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-2nd-voice))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine pitch-engine2)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-voice))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-2nd-voice))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 pitch-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump)))))
                                      ;backjump routine above
                                                              '(return nil)))
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))))


;;;;;;;
(defun combine-two-voices-notecount-at-one-timepoint (a b)
  "This is to combine simultaneous notecounts for two voices (that both might include gracenotes). 
Gracenotes are notecounts in a list (last notecount is the main note)."
  (declare (type t a b))
  (cond ((and (nil-or-numberp a) (nil-or-numberp b))
         (list (list a b)))
        ((and (listp a) (nil-or-numberp b))
         (loop for x in a
               collect (list x b)))
        ((and (nil-or-numberp a) (listp b))
         (loop for y in b
               collect (list a y)))
        ((and (listp a) (listp b))
         (append
          (loop for x in (butlast a)
                collect (cons x (last b)))
          (loop for y in b
                collect (append (last a) (list y)))))))
         


(defun nil-or-numberp (a)
  (declare (type t a))
  (if (or (not a) (numberp a)) t nil))

(defun combine-two-voices-notecounts-include-gracenotes (notecounts-1st-voice notecounts-2nd-voice)
  (declare (type list notecounts-1st-voice notecounts-2nd-voice))
  (apply 'append
         (loop for n1 in notecounts-1st-voice
               for n2 in notecounts-2nd-voice
               collect (combine-two-voices-notecount-at-one-timepoint n1 n2))))

;This function is replaced (see 5g)
(defun rule-4-engines-pitch-and-pitch-include-gracenotes (simple-rule rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let* (list (list 'pitch-count-1st-voice (list 'get-total-pitchcount pitch-engine1 'vlinear-solution))
                            (list 'note-count-1st-voice (list 'get-total-notecount rhythm-engine1 'vlinear-solution))
                            (list 'end-time-1st-voice (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine1 'vlinear-solution '(min pitch-count-1st-voice note-count-1st-voice)))

                            (list 'pitch-count-2nd-voice (list 'get-total-pitchcount pitch-engine2 'vlinear-solution))
                            (list 'note-count-2nd-voice (list 'get-total-notecount rhythm-engine2 'vlinear-solution))
                            (list 'end-time-2nd-voice (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine2 'vlinear-solution '(min pitch-count-2nd-voice note-count-2nd-voice))))
                '(declare (type fixnum pitch-count-1st-voice note-count-1st-voice pitch-count-2nd-voice note-count-2nd-voice))
                '(declare (type t end-time-1st-voice end-time-2nd-voice))
                
                (list 'if '(and end-time-1st-voice end-time-2nd-voice) ;if not all engines exist, don't check the rule


                      (list 'let (list (list 'timepoints-1st-voice (list 'remove-rests-from-list (list 'butlast (list 'aref 'vlinear-solution rhythm-engine1 1))))
                                       (list 'timepoints-2nd-voice (list 'remove-rests-from-list (list 'butlast (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                       (list 'endtime-common-onsets (list 'min
                                                                          'end-time-1st-voice
                                                                          'end-time-2nd-voice))
                                       (list 'start-time-this-variable (list 'cond (list (list '= 'engine rhythm-engine1)
                                                                                         (list 'get-current-index-starttime rhythm-engine1 'vindex 'vsolution))
                                                                             (list (list '= 'engine rhythm-engine2)
                                                                                   (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                                                             (list (list '= 'engine pitch-engine1)
                                                                                   (list 'get-timepoint-at-notecount rhythm-engine1 'vlinear-solution 
                                                                                         (list 'get-current-index-first-pitchcount pitch-engine1 'vindex 'vsolution)))
                                                                             (list 't
                                                                                   (list 'get-timepoint-at-notecount rhythm-engine2 'vlinear-solution 
                                                                                         (list 'get-current-index-first-pitchcount pitch-engine2 'vindex 'vsolution))))))
                            '(declare (type list timepoints-1st-voice timepoints-2nd-voice))
                            '(declare (type number endtime-common-onsets))
                            '(declare (type t start-time-this-variable)) ;might be nil

                            (list 'if 'start-time-this-variable ;if there is no start time there is not need to check the rule
                                  (list 'let* (list '(all-timepoints (remove-duplicates (sort (append timepoints-1st-voice timepoints-2nd-voice) '<)))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))
                                                    
                                                    (list 'notecounts-1st-voice (list 'get-notecount-at-timepoints-include-gracenotes rhythm-engine1 'vlinear-solution 'filtered-timepoints))
                                                    (list 'notecounts-2nd-voice (list 'get-notecount-at-timepoints-include-gracenotes rhythm-engine2 'vlinear-solution 'filtered-timepoints))
                                                    '(notecounts-1st-and-2nd-voice (combine-two-voices-notecounts-include-gracenotes notecounts-1st-voice notecounts-2nd-voice))

                                                    ;;;;;;;here is not done
                                                    (list 'all-pitch-pairs (list 'loop 'for 'notecount-voice1-and-2 'in 'notecounts-1st-and-2nd-voice
                                                                                 'collect (list 'list (list 'if '(first notecount-voice1-and-2) 
                                                                                                            (list 'get-pitch-at-pitchcount pitch-engine1 'vlinear-solution '(first notecount-voice1-and-2)) 'nil)
                                                                                                (list 'if '(second notecount-voice1-and-2) 
                                                                                                      (list 'get-pitch-at-pitchcount pitch-engine2 'vlinear-solution '(second notecount-voice1-and-2)) 'nil)))))
                                        '(declare (type list all-timepoints notecounts-1st-voice notecounts-2nd-voice notecounts-1st-and-2nd-voice all-pitch-pairs filtered-timepoints))
                                        '(declare (type number start-time-include-earlier-variables))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-pairs)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-pairs))) 
                                                        t
                                                        (list 'progn 
                                      ;backjump routine here
                                                              (list 'cond (list (list '= 'engine rhythm-engine1)
                                                                                (list 'let (list (list 'failed-countvalue1 (list 'first (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))  ;maybe (+ n (1- no-of-args))
                                                                                                 (list 'failed-countvalue2 (list 'second (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))) ;maybe (+ n (1- no-of-args))
                                                                          
                                                                                      '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                      (list 'when 'failed-countvalue1 
                                                                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                                  'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                                  'vbackjump-indexes 'vsolution-for-backjump))
                                                                                      (list 'when 'failed-countvalue2 
                                                                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                                  'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                                  'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine pitch-engine1)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'first (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'second (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2)) 
                                                                                (list 'when 'failed-countvalue1
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 'failed-countvalue1 pitch-engine1 
                                                                                            rhythm-engine1 pitch-engine1 'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine rhythm-engine2)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'first (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'second (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine pitch-engine2)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'first (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'second (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 pitch-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump)))))
                                      ;backjump routine above
                                                              '(return nil)))
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))))


(defun rule-four-engines (rule engine1 engine2 engine3 engine4)
"This is for rhythm, pitch and meter in the same voice"
  (let ((compiled-rule (compile nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine1 engine2 engine3 engine4)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    ;The backtrack route might not be ideal if more than 1 argument in rule
    (setf (aref vrule 2) (list (list engine2 engine3 engine4 engine1)(list engine3 engine4 engine1 engine2)(list engine4 engine1 engine2 engine3)(list engine1 engine2 engine3 engine4))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))

(defun rule-four-engines-pitch-pitch (rule rhythmengine1 pitchengine1 rhythmengine2 pitchengine2)
  "This is for rhythm, pitch and meter in the same voice"
  (let ((compiled-rule (compile nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list  rhythmengine1 pitchengine1 rhythmengine2 pitchengine2)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    ;The backtrack route might not be ideal if more than 1 argument in rule
    (setf (aref vrule 2) (list (list pitchengine1 pitchengine2 rhythmengine2 rhythmengine1)(list pitchengine2 rhythmengine2 rhythmengine1 pitchengine1)
                               (list pitchengine2 pitchengine1 rhythmengine1 rhythmengine2)(list pitchengine1 rhythmengine1 rhythmengine2 pitchengine2))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;FIVE ENGINES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;

(defun shift-start-before-timepoint-in-list (start-point list offset)
  "The objective is to move offset-steps before the start point in the list. 
Starttime does not have to exist in the list. If the offset is larger is to before the start point, the start point will be given.
If gracenotes are included, they will be considered before start-point (i.e. this is probably a not desured side effect for rhythm,
but it workd for metric structures such as beats or metric grid) "
  (declare (type number start-point))
  (declare (type list list))
  (declare (type fixnum offset))
  (let ((new-position (- (position start-point list  :test #'(lambda (a b) (>= a (abs b))) :from-end t) offset)))
    (declare (type fixnum new-position))
    (if (minusp new-position)
        (abs (first list))
     (abs (nth new-position list)))))

;;; 
;This function is replaced (see 5g)
(defun old-rule-5-engines-pitch-and-pitch-on-beat (simple-rule rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2)
  "Formats a rule for simultaneous pitches on 1st beat in measures. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let* (list '(metric-engine (1- (array-dimension vindex 0)))
                            (list 'pitch-count-1st-voice (list 'get-total-pitchcount pitch-engine1 'vlinear-solution))
                            (list 'note-count-1st-voice (list 'get-total-notecount rhythm-engine1 'vlinear-solution))
                            (list 'end-time-1st-voice (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine1 'vlinear-solution '(min pitch-count-1st-voice note-count-1st-voice)))

                            (list 'pitch-count-2nd-voice (list 'get-total-pitchcount pitch-engine2 'vlinear-solution))
                            (list 'note-count-2nd-voice (list 'get-total-notecount rhythm-engine2 'vlinear-solution))
                            (list 'end-time-2nd-voice (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine2 'vlinear-solution '(min pitch-count-2nd-voice note-count-2nd-voice)))
                            
                            '(end-time-metric-engine (get-current-index-endtime metric-engine vindex vsolution))
                            )
                '(declare (type fixnum pitch-count-1st-voice note-count-1st-voice pitch-count-2nd-voice note-count-2nd-voice metric-engine))
                '(declare (type t end-time-1st-voice end-time-2nd-voice end-time-metric-engine))

                (list 'if '(and end-time-1st-voice end-time-2nd-voice (> end-time-metric-engine 1)) ;if not all engines exist, don't check the rule
                      (list 'let (list ;(list 'timepoints-1st-voice (list 'remove-rests-from-list (list 'butlast (list 'aref 'vlinear-solution rhythm-engine1 1))))
                                       ;(list 'timepoints-2nd-voice (list 'remove-rests-from-list (list 'butlast (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                  (list 'endtime-common-onsets (list 'min
                                                                     'end-time-1st-voice
                                                                     'end-time-2nd-voice))
                                  (list 'start-time-this-variable (list 'cond (list (list '= 'engine rhythm-engine1)
                                                                                    (list 'get-current-index-starttime rhythm-engine1 'vindex 'vsolution))
                                                                        (list (list '= 'engine rhythm-engine2)
                                                                              (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                                                        (list (list '= 'engine pitch-engine1)
                                                                              (list 'get-timepoint-at-notecount rhythm-engine1 'vlinear-solution 
                                                                                    (list 'get-current-index-first-pitchcount pitch-engine1 'vindex 'vsolution)))
                                                                        (list (list '= 'engine pitch-engine2)
                                                                              (list 'get-timepoint-at-notecount rhythm-engine2 'vlinear-solution 
                                                                                    (list 'get-current-index-first-pitchcount pitch-engine2 'vindex 'vsolution)))
                                                                        (list 't ;metric engine
                                                                              (list 'get-current-index-starttime 'metric-engine 'vindex 'vsolution)))))
                            ;'(declare (type list timepoints-1st-voice timepoints-2nd-voice))
                            '(declare (type number endtime-common-onsets))
                            '(declare (type t start-time-this-variable))

                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list '(all-timepoints (get-all-beats metric-engine vlinear-solution))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-before-timepoint-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets 
                                                                                                               all-timepoints)))
                                                    (list 'notecounts-1st-voice (list 'get-notecount-at-timepoints rhythm-engine1 'vlinear-solution 'filtered-timepoints))
                                                    (list 'notecounts-2nd-voice (list 'get-notecount-at-timepoints rhythm-engine2 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitch-pairs (list 'loop 'for 'notecount-voice1 'in 'notecounts-1st-voice
                                                                                 'for 'notecount-voice2 'in 'notecounts-2nd-voice
                                                                                 'collect (list 'list (list 'if 'notecount-voice1 
                                                                                                            (list 'get-pitch-at-pitchcount pitch-engine1 'vlinear-solution 'notecount-voice1) 'nil)
                                                                                                (list 'if 'notecount-voice2 
                                                                                                      (list 'get-pitch-at-pitchcount pitch-engine2 'vlinear-solution 'notecount-voice2) 'nil)))))
                                        '(declare (type list all-timepoints filtered-timepoints notecounts-1st-voice notecounts-2nd-voice all-pitch-pairs))
                                        '(declare (type number start-time-include-earlier-variables))

                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-pairs)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-pairs))) 
                                                        t
                                                        (list 'progn 
                                      ;backjump routine here
                                                              (list 'cond (list (list '= 'engine rhythm-engine1)
                                                                                (list 'let (list (list 'failed-countvalue1 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-voice))  ;maybe (+ n (1- no-of-args))
                                                                                                 (list 'failed-countvalue2 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-2nd-voice))) ;maybe (+ n (1- no-of-args))
                                                                                      '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                      (list 'when 'failed-countvalue1 ;if there is a rest, there is no countvalue
                                                                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                                  'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                                  'vbackjump-indexes 'vsolution-for-backjump))
                                                                                      (list 'when 'failed-countvalue2 
                                                                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                                  'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                                  'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine pitch-engine1)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-voice))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-2nd-voice))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1 ;if there is a rest, there is no countvalue
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 pitch-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine rhythm-engine2)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-voice))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-2nd-voice))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1 ;if there is a rest, there is no countvalue
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine pitch-engine2)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-voice))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-2nd-voice))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1 ;if there is a rest, there is no countvalue
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 pitch-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine 'metric-engine)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-voice))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-2nd-voice))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1 ;if there is a rest, there is no countvalue
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 pitch-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    )
                                      ;backjump routine above
                                                              '(return nil)))
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))))



;This function is replaced (see 5g)
(defun rule-5-engines-pitch-and-pitch-include-gracenotes-on-beat (simple-rule rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let* (list '(metric-engine (1- (array-dimension vindex 0)))
                            (list 'pitch-count-1st-voice (list 'get-total-pitchcount pitch-engine1 'vlinear-solution))
                            (list 'note-count-1st-voice (list 'get-total-notecount rhythm-engine1 'vlinear-solution))
                            (list 'end-time-1st-voice (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine1 'vlinear-solution '(min pitch-count-1st-voice note-count-1st-voice)))

                            (list 'pitch-count-2nd-voice (list 'get-total-pitchcount pitch-engine2 'vlinear-solution))
                            (list 'note-count-2nd-voice (list 'get-total-notecount rhythm-engine2 'vlinear-solution))
                            (list 'end-time-2nd-voice (list 'get-offset-timepoint-at-notecount-include-final-rest rhythm-engine2 'vlinear-solution '(min pitch-count-2nd-voice note-count-2nd-voice)))

                            '(end-time-metric-engine (get-current-index-endtime metric-engine vindex vsolution)))
                '(declare (type fixnum pitch-count-1st-voice note-count-1st-voice pitch-count-2nd-voice note-count-2nd-voice metric-engine))
                '(declare (type t end-time-1st-voice end-time-2nd-voice end-time-metric-engine))
                
                (list 'if '(and end-time-1st-voice end-time-2nd-voice (> end-time-metric-engine 1)) ;if not all engines exist, don't check the rule


                      (list 'let (list ;(list 'timepoints-1st-voice (list 'remove-rests-from-list (list 'butlast (list 'aref 'vlinear-solution rhythm-engine1 1))))
                                       ;(list 'timepoints-2nd-voice (list 'remove-rests-from-list (list 'butlast (list 'aref 'vlinear-solution rhythm-engine2 1))))
                                  (list 'endtime-common-onsets (list 'min
                                                                     'end-time-1st-voice
                                                                     'end-time-2nd-voice))
                                  (list 'start-time-this-variable (list 'cond (list (list '= 'engine rhythm-engine1)
                                                                                    (list 'get-current-index-starttime rhythm-engine1 'vindex 'vsolution))
                                                                        (list (list '= 'engine rhythm-engine2)
                                                                              (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                                                        (list (list '= 'engine pitch-engine1)
                                                                              (list 'get-timepoint-at-notecount rhythm-engine1 'vlinear-solution 
                                                                                    (list 'get-current-index-first-pitchcount pitch-engine1 'vindex 'vsolution)))
                                                                        (list (list '= 'engine pitch-engine2)
                                                                              (list 'get-timepoint-at-notecount rhythm-engine2 'vlinear-solution 
                                                                                    (list 'get-current-index-first-pitchcount pitch-engine2 'vindex 'vsolution)))
                                                                        (list 't ;metric engine
                                                                              (list 'get-current-index-starttime 'metric-engine 'vindex 'vsolution))
                                                                        )))
                            ;'(declare (type list timepoints-1st-voice timepoints-2nd-voice))
                            '(declare (type number endtime-common-onsets))
                            '(declare (type t start-time-this-variable)) ;might be nil

                            (list 'if 'start-time-this-variable ;if there is no start time there is not need to check the rule
                                  (list 'let* (list '(all-timepoints (get-all-beats metric-engine vlinear-solution))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-before-timepoint-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))
                                                    
                                                    (list 'notecounts-1st-voice (list 'get-notecount-at-timepoints-include-gracenotes rhythm-engine1 'vlinear-solution 'filtered-timepoints))
                                                    (list 'notecounts-2nd-voice (list 'get-notecount-at-timepoints-include-gracenotes rhythm-engine2 'vlinear-solution 'filtered-timepoints))
                                                    '(notecounts-1st-and-2nd-voice (combine-two-voices-notecounts-include-gracenotes notecounts-1st-voice notecounts-2nd-voice))




                                                    ;;;;;;;here is not done
                                                    (list 'all-pitch-pairs (list 'loop 'for 'notecount-voice1-and-2 'in 'notecounts-1st-and-2nd-voice
                                                                                 'collect (list 'list (list 'if '(first notecount-voice1-and-2) 
                                                                                                            (list 'get-pitch-at-pitchcount pitch-engine1 'vlinear-solution '(first notecount-voice1-and-2)) 'nil)
                                                                                                (list 'if '(second notecount-voice1-and-2) 
                                                                                                      (list 'get-pitch-at-pitchcount pitch-engine2 'vlinear-solution '(second notecount-voice1-and-2)) 'nil)))))
                                        '(declare (type list all-timepoints notecounts-1st-voice notecounts-2nd-voice notecounts-1st-and-2nd-voice all-pitch-pairs filtered-timepoints))
                                        '(declare (type number start-time-include-earlier-variables))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-pairs)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-pairs))) 
                                                        t
                                                        (list 'progn 
                                      ;backjump routine here
                                                              (list 'cond (list (list '= 'engine rhythm-engine1)
                                                                                (list 'let (list (list 'failed-countvalue1 (list 'first (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))  ;maybe (+ n (1- no-of-args))
                                                                                                 (list 'failed-countvalue2 (list 'second (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))) ;maybe (+ n (1- no-of-args))
                                                                          
                                                                                      '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                      (list 'when 'failed-countvalue1
                                                                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                                  'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                                  'vbackjump-indexes 'vsolution-for-backjump))
                                                                                      (list 'when 'failed-countvalue2 
                                                                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                                  'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                                  'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine pitch-engine1)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'first (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'second (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2)) 
                                                                                (list 'when 'failed-countvalue1
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 'failed-countvalue1 pitch-engine1   
                                                                                            rhythm-engine1 pitch-engine1 'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine rhythm-engine2)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'first (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'second (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 rhythm-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine pitch-engine2)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'first (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'second (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 pitch-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))))
                                                                    (list (list '= 'engine 'metric-engine)
                                                                          (list 'let (list (list 'failed-countvalue1 (list 'first (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))  ;maybe (+ n (1- no-of-args))
                                                                                           (list 'failed-countvalue2 (list 'second (list 'nth (list '+ 'n (1- no-of-args)) 'notecounts-1st-and-2nd-voice)))) ;maybe (+ n (1- no-of-args))
                                                                                '(declare (type t failed-countvalue1 failed-countvalue2))
                                                                                (list 'when 'failed-countvalue1
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue1 rhythm-engine1 rhythm-engine1 pitch-engine1 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump))
                                                                                (list 'when 'failed-countvalue2 
                                                                                      (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                                            'failed-countvalue2 pitch-engine2 rhythm-engine2 pitch-engine2 
                                                                                            'vbackjump-indexes 'vsolution-for-backjump)))))
                                      ;backjump routine above
                                                              '(return nil)))
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))))



(defun rule-five-engines-pitch-pitch (rule rhythmengine1 pitchengine1 rhythmengine2 pitchengine2 metric-engine)
  "This is for rhythm, pitch and meter in the same voice"
  (let ((compiled-rule (compile nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list  rhythmengine1 pitchengine1 rhythmengine2 pitchengine2 metric-engine)) ;check this rule in these engines
    (setf (aref vrule 1) compiled-rule)
    ;The backtrack route might not be ideal if more than 1 argument in rule
    (setf (aref vrule 2) (list (list pitchengine1 pitchengine2 rhythmengine2 rhythmengine1 metric-engine)(list pitchengine2 rhythmengine2 rhythmengine1 pitchengine1 metric-engine)
                               (list pitchengine2 pitchengine1 rhythmengine1 rhythmengine2 metric-engine)(list pitchengine1 rhythmengine1 rhythmengine2 pitchengine2 metric-engine)
                               (list pitchengine1 pitchengine2 rhythmengine1 rhythmengine2 metric-engine))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))


