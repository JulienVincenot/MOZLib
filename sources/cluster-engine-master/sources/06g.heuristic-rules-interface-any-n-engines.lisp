;;;;;;;;;;;;;;;;;;;;;FLEXIBLE NUMBER OF ENGINES;;;;;;;;;;;;;;;;;;;;;;;;
;
;       This file contains the functions where the number of engines/voices may vary. 
;       
;
;       June 2012

(in-package cluster-engine)

(defun heuristic-rule-n-engines (rule list-with-engine-nrs)
  "Wraps a rule in a small array together with information regarding what engine it is valid for, and its backtracking route."
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(2))))
    (setf (aref vrule 0) list-with-engine-nrs) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
     ;no backtrack route in heuristic rules
    (make-heuristic-rule-instance vrule)))



(defun heuristic-rule-n-engines-all-elements (simple-rule list-with-engine-nrs)
  "Formats a heuristic switch rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/=  no-of-args (length list-with-engine-nrs)) (error "The number of arguments in the R-list-all-evtents (heuristic) does not correspond to the number of inputs to the logic statement."))

    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-rule
                'vsolution 'vindex 'engine 'nth-candidate
                (append (list 'funcall (compile-if-not-compiled nil simple-rule))
                                  (loop for engine in list-with-engine-nrs
                                        collect (list 'aref 'vlinear-solution engine 0)))
                      ))))


(defun heuristic-switch-rule-n-engines-all-elements (simple-rule list-with-engine-nrs weight)
  "Formats a heuristic switch rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/=  no-of-args (length list-with-engine-nrs)) (error "The number of arguments in the R-list-all-evtents (heuristic) does not correspond to the number of inputs to the logic statement."))

    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-rule
                'vsolution 'vindex 'engine 'nth-candidate
                (list 'if (append (list 'funcall (compile-if-not-compiled nil simple-rule))
                                  (loop for engine in list-with-engine-nrs
                                        collect (list 'aref 'vlinear-solution engine 0)))
                      weight
                      0)
                      ))))


(defun heuristic-rule-all-pitches-in-n-voices (simple-rule list-with-voice-numbers)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (mapcar #'(lambda (voice) (+ 1 (* voice 2))) list-with-voice-numbers)))
    (heuristic-rule-n-engines (heuristic-rule-n-engines-all-elements simple-rule list-with-engine-nrs)
                   list-with-engine-nrs)))



(defun heuristic-switch-rule-all-pitches-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (mapcar #'(lambda (voice) (+ 1 (* voice 2))) list-with-voice-numbers)))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-all-elements simple-rule list-with-engine-nrs weight)
                   list-with-engine-nrs)))


(defun heuristic-rule-all-durations-in-n-voices (simple-rule list-with-voice-numbers)
  "It rule prefers backtracking in the SAME engine in the list."
  (let ((list-with-engine-nrs (mapcar #'(lambda (voice) (* voice 2)) list-with-voice-numbers)))
    (heuristic-rule-n-engines (heuristic-rule-n-engines-all-elements simple-rule list-with-engine-nrs)
                   list-with-engine-nrs)))

(defun heuristic-switch-rule-all-durations-in-n-voices (simple-rule list-with-voice-numbers weight)
  "It rule prefers backtracking in the SAME engine in the list."
  (let ((list-with-engine-nrs (mapcar #'(lambda (voice) (* voice 2)) list-with-voice-numbers)))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-all-elements simple-rule list-with-engine-nrs weight)
                   list-with-engine-nrs)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;              PITCH-PITCH HEURISTIC RULES ANY NUMBER OF VOICES



(defun get-start-time-this-variable-nth (engine vindex vsolution vlinear-solution nth)
  "Version for heuristic rules.
Get the start time for the event at the current index. If it is a pitch event, get the time for the corresponding duration.
If duration is not assigned, nil will be returned. Also works for he metric engine."
  (declare (type array vindex vsolution vlinear-solution))
  (declare (type fixnum engine))
  (if (evenp engine) 
      ;rhythmengine or metric engine
      (get-current-index-starttime-nth engine vindex vsolution nth)
    ;pitchengine
    (get-timepoint-at-notecount (- engine 1) vlinear-solution 
          (get-current-index-first-pitchcount-nth engine vindex vsolution nth))))


(defun heuristic-switch-rule-n-engines-pitch-and-pitch (simple-rule list-voicenrs weight)
  "Formats a heuristic switch rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;(here it could check that starttime is not outside the range of the other voice) old comment
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote list-voicenrs) 'vlinear-solution))


                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices)) ; pitches
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                                            weight
                                                                            0)

                                                             ))
                                        )
                                  0))
                      0)))))


;;;

(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets (simple-rule list-voicenrs weight)
  "Formats a heuristic switch rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used.
The rule is checked at the onsets of the first voice in the list."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;(here it could check that starttime is not outside the range of the other voice) old comment
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote (list (first list-voicenrs))) 'vlinear-solution)) ;THIS IS THE ONLY DIFFERENCE FROM heuristic-switch-rule-n-engines-pitch-and-pitch
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices)) ; pitches
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                                            weight
                                                                            0)

                                                             ))
                                        )
                                  0))
                      0)))))

;;;;;;;

(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints (simple-rule timepoints list-voicenrs weight)
  "Formats a heuristic switch rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;(here it could check that starttime is not outside the range of the other voice) old comment
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'mapcar ''1+ (list 'quote timepoints)))

                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices)) ; pitches
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                                            weight
                                                                            0)

                                                             ))
                                        )
                                  0))
                      0)))))

;;;;;;;

(defun heuristic-switch-rule-n-engines-pitch-and-pitch-on-beat (simple-rule list-voicenrs fn-beat weight)
  "Beside the engines associated with the voices in the voice list, this rule will also access the metric engine.
fn-beat is either 'get-all-beats or 'get-1st-down-beats"
  (let ((no-of-args (length (function-lambda-list simple-rule))))  

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let (list '(metric-engine (1- (array-dimension vindex 0)))
                           (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type fixnum metric-engine))
                '(declare (type t endtime-common-onsets))

                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule. 1st downbeat can always be checked even if meter is missing.
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule?? Is this necessary - it should always be a start time
                                  (list 'let* (list (list 'all-timepoints (list fn-beat 'metric-engine 'vlinear-solution))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-before-timepoint-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets 
                                                                                                               all-timepoints)))
                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices)) ; pitches
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))

                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                                            weight
                                                                            0)
                                                             ))
                                        )
                                  0))
                      0)))))




(defun heuristic-switch-rule-pitch-and-pitch-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch simple-rule list-with-voice-numbers weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-with-durations-and-offset-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-with-durations-and-offset simple-rule list-with-voice-numbers weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-with-durations-offset-and-timepoint-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-with-durations-offset-and-timepoint simple-rule list-with-voice-numbers weight)
                   list-with-engine-nrs)))


(defun heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets simple-rule list-with-voice-numbers weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-with-durations-and-offset-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-with-durations-and-offset simple-rule list-with-voice-numbers weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-with-durations-offset-and-timepoint-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-with-durations-offset-and-timepoint simple-rule list-with-voice-numbers weight)
                   list-with-engine-nrs)))


(defun heuristic-switch-rule-pitch-and-pitch-at-timepoints-in-n-voices (simple-rule timepoints list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints simple-rule timepoints list-with-voice-numbers weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-at-timepoints-with-durations-and-offset-in-n-voices (simple-rule timepoints list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints-with-durations-and-offset simple-rule timepoints list-with-voice-numbers weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-at-timepoints-with-durations-offset-and-timepoint-in-n-voices (simple-rule timepoints list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints-with-durations-offset-and-timepoint simple-rule timepoints list-with-voice-numbers weight)
                   list-with-engine-nrs)))

(defun heuristic-switch-rule-pitch-and-pitch-on-beat-in-n-voices (simple-rule list-with-voice-numbers fn-beat weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (append (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers)) '(-1))))  ;-1 is the flag for the metric engine
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-on-beat simple-rule list-with-voice-numbers fn-beat weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-on-beat-with-durations-and-offset-in-n-voices (simple-rule list-with-voice-numbers fn-beat weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (append (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers)) '(-1))))  ;-1 is the flag for the metric engine
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-on-beat-with-durations-and-offset simple-rule list-with-voice-numbers fn-beat weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-on-beat-with-durations-offset-and-timepoint-in-n-voices (simple-rule list-with-voice-numbers fn-beat weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (append (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers)) '(-1))))  ;-1 is the flag for the metric engine
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-on-beat-with-durations-offset-and-timepoint simple-rule list-with-voice-numbers fn-beat weight)
                   list-with-engine-nrs)))

;;;;PITCH PITCH WITH GRACE NOTES

(defun heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes (simple-rule list-voicenrs weight)
  "Formats a heuristic switch rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote list-voicenrs) 'vlinear-solution))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed. This should work also for heuristic rules.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))
                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints list-notecounts-all-voice groups-of-simultaneous-notecounts-all-voices all-pitch-slices))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                                            weight
                                                                            0)

                                                             )))
                                  0))
                      0)))
    ))



(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes (simple-rule list-voicenrs weight)
  "Formats a heuristic switch rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote (list (first list-voicenrs))) 'vlinear-solution)) ;THIS IS THE ONLY DIFFERENCE FROM heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenote
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed. This should work also for heuristic rules.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))
                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints list-notecounts-all-voice groups-of-simultaneous-notecounts-all-voices all-pitch-slices))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                                            weight
                                                                            0)

                                                             )))
                                  0))
                      0)))
    ))

;;;;;;

(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes (simple-rule timepoints list-voicenrs weight)
  "Formats a heuristic switch rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'mapcar ''1+ (list 'quote timepoints)))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed. This should work also for heuristic rules.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))
                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints list-notecounts-all-voice groups-of-simultaneous-notecounts-all-voices all-pitch-slices))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                                            weight
                                                                            0)

                                                             )))
                                  0))
                      0)))
    ))

;;;;;;

(defun heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat (simple-rule list-voicenrs fn-beat weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list '(metric-engine (1- (array-dimension vindex 0)))
                                                    (list 'all-timepoints (list fn-beat 'metric-engine 'vlinear-solution))

                                                    ;starttime for metric engine
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))

                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
 
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))

                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints list-notecounts-all-voice groups-of-simultaneous-notecounts-all-voices all-pitch-slices))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                                            weight
                                                                            0)
                                                             )))
                                  0))
                      0)))
    ))





(defun heuristic-switch-rule-pitch-and-pitch-include-gracenotes-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes simple-rule list-with-voice-numbers weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-include-gracenotes-with-durations-and-offset-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes-with-durations-and-offset simple-rule list-with-voice-numbers weight)
                              list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-include-gracenotes-with-durations-offset-and-timepoint-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes-with-durations-offset-and-timepoint simple-rule list-with-voice-numbers weight)
                              list-with-engine-nrs)))

(defun heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes simple-rule list-with-voice-numbers weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-and-offset-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-and-offset simple-rule list-with-voice-numbers weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-offset-and-timepoint-in-n-voices (simple-rule list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-offset-and-timepoint simple-rule list-with-voice-numbers weight)
                   list-with-engine-nrs)))

(defun heuristic-switch-rule-pitch-and-pitch-at-timepoints-include-gracenotes-in-n-voices (simple-rule timepoints list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes simple-rule timepoints list-with-voice-numbers weight)
                   list-with-engine-nrs)))
;2013
(defun heuristic-switch-rule-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-and-offset-in-n-voices (simple-rule timepoints list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-and-offset simple-rule timepoints list-with-voice-numbers weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-offset-and-timepoint-in-n-voices (simple-rule timepoints list-with-voice-numbers weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-offset-and-timepoint simple-rule timepoints list-with-voice-numbers weight)
                   list-with-engine-nrs)))

(defun heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-in-n-voices (simple-rule list-with-voice-numbers fn-beat weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (append (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers)) '(-1))))  ;-1 is the flag for the metric engine
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat simple-rule list-with-voice-numbers fn-beat weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-with-durations-and-offset-in-n-voices (simple-rule list-with-voice-numbers fn-beat weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (append (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers)) '(-1))))  ;-1 is the flag for the metric engine
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat-with-durations-and-offset simple-rule list-with-voice-numbers fn-beat weight)
                   list-with-engine-nrs)))

;2013
(defun heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-with-durations-offset-and-timepoint-in-n-voices (simple-rule list-with-voice-numbers fn-beat weight)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (append (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers)) '(-1))))  ;-1 is the flag for the metric engine
    (heuristic-rule-n-engines (heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat-with-durations-offset-and-timepoint simple-rule list-with-voice-numbers fn-beat weight)
                   list-with-engine-nrs)))

;;; regular heuristic rules pitch-pitch



(defun heuristic-rule-n-engines-pitch-and-pitch (simple-rule list-voicenrs)
  "Formats a heuristic rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;(here it could check that starttime is not outside the range of the other voice) old comment
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote list-voicenrs) 'vlinear-solution))


                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices)) ; pitches
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                            (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                  'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                                            
                                                             )))
                                  0))
                      0)))))




(defun heuristic-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets (simple-rule list-voicenrs)
  "Formats a heuristic rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used.
The rule is checked at the onsets of the first voice in the list."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;(here it could check that starttime is not outside the range of the other voice) old comment
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote (list (first list-voicenrs))) 'vlinear-solution)) ;THIS IS THE ONLY DIFFERENCE FROM heuristic-switch-rule-n-engines-pitch-and-pitch
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices)) ; pitches
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                            (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                  'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 

                                                             )))
                                  0))
                      0)))))



(defun heuristic-rule-n-engines-pitch-and-pitch-at-timepoints (simple-rule timepoints list-voicenrs)
  "Formats a heuristic rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;(here it could check that starttime is not outside the range of the other voice) old comment
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'mapcar ''1+ (list 'quote timepoints)))


                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices)) ; pitches
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                            (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                  'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                                            
                                                             )))
                                  0))
                      0)))))



(defun heuristic-rule-n-engines-pitch-and-pitch-on-beat (simple-rule list-voicenrs fn-beat)
  "Beside the engines associated with the voices in the voice list, this rule will also access the metric engine.
fn-beat is either 'get-all-beats or 'get-1st-down-beats"
  (let ((no-of-args (length (function-lambda-list simple-rule))))  

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let (list '(metric-engine (1- (array-dimension vindex 0)))
                           (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type fixnum metric-engine))
                '(declare (type t endtime-common-onsets))

                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule. 1st downbeat can always be checked even if meter is missing.
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule?? Is this necessary - it should always be a start time
                                  (list 'let* (list (list 'all-timepoints (list fn-beat 'metric-engine 'vlinear-solution))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-before-timepoint-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets 
                                                                                                               all-timepoints)))
                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices)) ; pitches
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))

                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                             )))
                                  0))
                      0)))))


(defun heuristic-rule-n-engines-pitch-and-pitch-include-gracenotes (simple-rule list-voicenrs)
  "Formats a heuristic rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote list-voicenrs) 'vlinear-solution))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed. This should work also for heuristic rules.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest 
                                                                                            (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))
                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints list-notecounts-all-voice groups-of-simultaneous-notecounts-all-voices all-pitch-slices))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                             )))
                                  0))
                      0)))
    ))



(defun heuristic-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes (simple-rule list-voicenrs)
  "Formats a heuristic rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote (list (first list-voicenrs))) 'vlinear-solution)) ;THIS IS THE ONLY DIFFERENCE FROM heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenote
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed. This should work also for heuristic rules.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest 
                                                                                            (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))
                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints list-notecounts-all-voice groups-of-simultaneous-notecounts-all-voices all-pitch-slices))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                             )))
                                  0))
                      0)))
    ))


(defun heuristic-rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes (simple-rule timepoints list-voicenrs)
  "Formats a heuristic rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'mapcar ''1+ (list 'quote timepoints)))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed. This should work also for heuristic rules.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest 
                                                                                            (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))
                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints list-notecounts-all-voice groups-of-simultaneous-notecounts-all-voices all-pitch-slices))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                             )))
                                  0))
                      0)))
    ))




(defun heuristic-rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat (simple-rule list-voicenrs fn-beat)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list '(metric-engine (1- (array-dimension vindex 0)))
                                                    (list 'all-timepoints (list fn-beat 'metric-engine 'vlinear-solution))

                                                    ;starttime for metric engine
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))

                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
 
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest 
                                                                                            (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))

                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints list-notecounts-all-voice groups-of-simultaneous-notecounts-all-voices all-pitch-slices))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                             )))
                                  0))
                      0)))
    ))








;;;;;;;;;; 2013 heuristic rules that access pitches WITH duration and offset

(defun heuristic-switch-rule-n-engines-pitch-and-pitch-with-durations-and-offset (simple-rule list-voicenrs weight)
  "Formats a heuristic switch rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)
The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;here it could check that starttime is not outside the range of the other voice
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote list-voicenrs) 'vlinear-solution))


                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches))))
                                                    (list 'all-durations-for-notecounts (list 'get-durations-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-duration-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                      collect (loop for durations in all-durations-for-notecounts
                                                                                                    collect (nth i durations))))
                                                    (list 'all-timepoints-for-notecounts (list 'get-timepoints-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-timepoint-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                       collect (loop for timepoints in all-timepoints-for-notecounts
                                                                                                     collect (nth i timepoints))))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches all-durations-for-notecounts 
                                                        all-duration-slices durations all-timepoints-for-notecounts all-timepoint-slices timepoints offsets))
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))




(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-with-durations-and-offset (simple-rule list-voicenrs weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...) 
The rule is checked at the onsets of the first voice in the list.

The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;here it could check that starttime is not outside the range of the other voice
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote (list (first list-voicenrs))) 'vlinear-solution)) ;THIS IS THE ONLY DIFFERENCE FROM rule-4-engines-pitch-and-pitch
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches))))
                                                    (list 'all-durations-for-notecounts (list 'get-durations-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-duration-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                      collect (loop for durations in all-durations-for-notecounts
                                                                                                    collect (nth i durations))))
                                                    (list 'all-timepoints-for-notecounts (list 'get-timepoints-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-timepoint-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                       collect (loop for timepoints in all-timepoints-for-notecounts
                                                                                                     collect (nth i timepoints))))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches all-durations-for-notecounts 
                                                        all-duration-slices durations all-timepoints-for-notecounts all-timepoint-slices timepoints offsets))
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))



(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints-with-durations-and-offset (simple-rule timepoints list-voicenrs weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)

The rule is only checked at the specified timepoints.
The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;here it could check that starttime is not outside the range of the other voice
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'mapcar ''1+ (list 'quote timepoints)))


                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches))))
                                                    (list 'all-durations-for-notecounts (list 'get-durations-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-duration-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                      collect (loop for durations in all-durations-for-notecounts
                                                                                                    collect (nth i durations))))
                                                    (list 'all-timepoints-for-notecounts (list 'get-timepoints-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-timepoint-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                       collect (loop for timepoints in all-timepoints-for-notecounts
                                                                                                     collect (nth i timepoints))))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches
                                                        all-durations-for-notecounts all-duration-slices durations all-timepoints-for-notecounts all-timepoint-slices timepoints offsets))
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))



(defun heuristic-switch-rule-n-engines-pitch-and-pitch-on-beat-with-durations-and-offset (simple-rule list-voicenrs fn-beat weight)
  "Beside the engines associated with the voices in teh voice list, this rule will also access the metric engine.

Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)

fn-beat is either 'get-all-beats or 'get-1st-down-beats

"
  (let ((no-of-args (length (function-lambda-list simple-rule))))  

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let (list '(metric-engine (1- (array-dimension vindex 0)))
                           (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type fixnum metric-engine))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule. 1st downbeat can always be checked even if meter is missing.
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule?? Is this necessary - it should always be a start time
                                  (list 'let* (list (list 'all-timepoints (list fn-beat 'metric-engine 'vlinear-solution))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-before-timepoint-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets 
                                                                                                               all-timepoints)))
                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches))))
                                                    (list 'all-durations-for-notecounts (list 'get-durations-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-duration-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                      collect (loop for durations in all-durations-for-notecounts
                                                                                                    collect (nth i durations))))
                                                    (list 'all-timepoints-for-notecounts (list 'get-timepoints-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-timepoint-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                       collect (loop for timepoints in all-timepoints-for-notecounts
                                                                                                     collect (nth i timepoints))))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches 
                                                        all-durations-for-notecounts all-duration-slices durations all-timepoints-for-notecounts all-timepoint-slices timepoints offsets))
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))

                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))

;;;2013 heuristic rules that access pitches WITH duration and offset AND absolute timepoint


(defun heuristic-switch-rule-n-engines-pitch-and-pitch-with-durations-offset-and-timepoint (simple-rule list-voicenrs weight)
  "Formats a heuristic switch rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)
The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;here it could check that starttime is not outside the range of the other voice
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote list-voicenrs) 'vlinear-solution))


                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches))))
                                                    (list 'all-durations-for-notecounts (list 'get-durations-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-duration-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                      collect (loop for durations in all-durations-for-notecounts
                                                                                                    collect (nth i durations))))
                                                    (list 'all-timepoints-for-notecounts (list 'get-timepoints-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-timepoint-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                       collect (loop for timepoints in all-timepoints-for-notecounts
                                                                                                     collect (nth i timepoints))))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches all-durations-for-notecounts 
                                                        all-duration-slices durations all-timepoints-for-notecounts all-timepoint-slices timepoints offsets))
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                         ))
                                                                                                           '(list (1- (nth (+ n m) filtered-timepoints)))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))




(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-with-durations-offset-and-timepoint (simple-rule list-voicenrs weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...) 
The rule is checked at the onsets of the first voice in the list.

The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;here it could check that starttime is not outside the range of the other voice
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote (list (first list-voicenrs))) 'vlinear-solution)) ;THIS IS THE ONLY DIFFERENCE FROM rule-4-engines-pitch-and-pitch
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches))))
                                                    (list 'all-durations-for-notecounts (list 'get-durations-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-duration-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                      collect (loop for durations in all-durations-for-notecounts
                                                                                                    collect (nth i durations))))
                                                    (list 'all-timepoints-for-notecounts (list 'get-timepoints-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-timepoint-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                       collect (loop for timepoints in all-timepoints-for-notecounts
                                                                                                     collect (nth i timepoints))))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches all-durations-for-notecounts 
                                                        all-duration-slices durations all-timepoints-for-notecounts all-timepoint-slices timepoints offsets))
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                                             ))
                                                                                                           '(list (1- (nth (+ n m) filtered-timepoints)))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))



(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints-with-durations-offset-and-timepoint (simple-rule timepoints list-voicenrs weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)

The rule is only checked at the specified timepoints.
The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            ;;here it could check that starttime is not outside the range of the other voice
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'mapcar ''1+ (list 'quote timepoints)))


                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets all-timepoints)))

                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches))))
                                                    (list 'all-durations-for-notecounts (list 'get-durations-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-duration-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                      collect (loop for durations in all-durations-for-notecounts
                                                                                                    collect (nth i durations))))
                                                    (list 'all-timepoints-for-notecounts (list 'get-timepoints-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-timepoint-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                       collect (loop for timepoints in all-timepoints-for-notecounts
                                                                                                     collect (nth i timepoints))))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches
                                                        all-durations-for-notecounts all-duration-slices durations all-timepoints-for-notecounts all-timepoint-slices timepoints offsets))
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                                             ))
                                                                                                           '(list (1- (nth (+ n m) filtered-timepoints)))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))



(defun heuristic-switch-rule-n-engines-pitch-and-pitch-on-beat-with-durations-offset-and-timepoint (simple-rule list-voicenrs fn-beat weight)
  "Beside the engines associated with the voices in teh voice list, this rule will also access the metric engine.

Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)

fn-beat is either 'get-all-beats or 'get-1st-down-beats

"
  (let ((no-of-args (length (function-lambda-list simple-rule))))  

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let (list '(metric-engine (1- (array-dimension vindex 0)))
                           (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type fixnum metric-engine))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule. 1st downbeat can always be checked even if meter is missing.
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))
                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable ;if there is no window to check there is not need to check the rule?? Is this necessary - it should always be a start time
                                  (list 'let* (list (list 'all-timepoints (list fn-beat 'metric-engine 'vlinear-solution))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-before-timepoint-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    '(filtered-timepoints (remove-list-before-startpoint 
                                                                           start-time-include-earlier-variables 
                                                                           (truncate-list-just-before-endpoint endtime-common-onsets 
                                                                                                               all-timepoints)))
                                                    (list 'notecounts-all-voice (list 'get-notecount-at-timepoints-all-rhythmengines (list 'quote list-voicenrs) 'vlinear-solution 'filtered-timepoints))
                                                    (list 'all-pitches-for-notecounts (list 'get-pitches-to-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-pitch-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                   collect (loop for pitches in all-pitches-for-notecounts
                                                                                                 collect (nth i pitches))))
                                                    (list 'all-durations-for-notecounts (list 'get-durations-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-duration-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                      collect (loop for durations in all-durations-for-notecounts
                                                                                                    collect (nth i durations))))
                                                    (list 'all-timepoints-for-notecounts (list 'get-timepoints-at-notecounts (list 'quote list-voicenrs) 'notecounts-all-voice 'vlinear-solution))
                                                    (list 'all-timepoint-slices '(loop for i from 0 to (1- (length filtered-timepoints))
                                                                                       collect (loop for timepoints in all-timepoints-for-notecounts
                                                                                                     collect (nth i timepoints))))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices  
                                                        all-durations-for-notecounts all-duration-slices durations all-timepoints-for-notecounts all-timepoint-slices timepoints offsets)) ; pitches
                                        '(declare (type number start-time-include-earlier-variables))
                                        ;; '(declare (type fixnum i))

                                        ;;;;;;;;;;;;test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                                             ))
                                                                                                           '(list (1- (nth (+ n m) filtered-timepoints)))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))


;gracenotes 2013

(defun heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes-with-durations-and-offset (simple-rule list-voicenrs weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used.
Note that grace notes will not be checked until they are tbound to a main note. This will affect the impact of a heuristic rule."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote list-voicenrs) 'vlinear-solution))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest 
                                                                                            (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2)) ;CHANGED - rests are now LISTED nils

                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2)) ;CHANGED - rests becomes (unlisted) nils.

                                                    ;next line is to understand the reference timepoints in relation to the notecounts. It is similar to how note counts are matched to grace notes above.
                                                    '(filtered-timepoints3 (mapcar 'first (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests (replace-notecount-by-timepoint list-notecounts-all-voice2 filtered-timepoints2))))

                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-duration-slices (list 'get-durations-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-timepoint-slices (list 'get-timepoints-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints3
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints2 filtered-timepoints3 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices 
                                                        all-duration-slices all-timepoint-slices offsets))
                                        '(declare (type number start-time-include-earlier-variables))



                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))



(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-and-offset (simple-rule list-voicenrs weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote (list (first list-voicenrs))) 'vlinear-solution)) ;THIS IS THE ONLY DIFFERENCE FROM rule-4-engines-pitch-and-pitch-include-gracenotes
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
 
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest 
                                                                                            (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))

                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))

                                                    ;reference timepoints in voice 1 (include grace notes)
                                                    (list 'filtered-timepoints3 (list 'get-timepoints-at-notecounts-one-voice (first list-voicenrs) '(mapcar 'first groups-of-simultaneous-notecounts-all-voices2) 'vlinear-solution))

                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-duration-slices (list 'get-durations-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-timepoint-slices (list 'get-timepoints-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))


                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints3
                                                                          collect (distances-to-point timepoint timepoint-slice))))




                                        '(declare (type list all-timepoints filtered-timepoints2 filtered-timepoints3 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices 
                                                        all-duration-slices all-timepoint-slices offsets))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))


(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-and-offset (simple-rule timepoints list-voicenrs weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'mapcar ''1+ (list 'quote timepoints)))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest (list 'quote list-voicenrs) 
                                                                                            'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))
                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))

                                                    ;next line is to understand the reference timepoints in relation to the notecounts. It is similar to how note counts are matched to grace notes above.
                                                    '(filtered-timepoints3 (mapcar 'first (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests (replace-notecount-by-timepoint list-notecounts-all-voice2 filtered-timepoints2))))


                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-duration-slices (list 'get-durations-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-timepoint-slices (list 'get-timepoints-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints3
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints2 filtered-timepoints3 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices
                                                        all-duration-slices all-timepoint-slices offsets))
                                        '(declare (type number start-time-include-earlier-variables))
                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))


(defun heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat-with-durations-and-offset (simple-rule list-voicenrs fn-beat weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list '(metric-engine (1- (array-dimension vindex 0)))
                                                    (list 'all-timepoints (list fn-beat 'metric-engine 'vlinear-solution))

                                                    ;starttime for metric engine
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))

                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
 
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest 
                                                                                            (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))

                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))

                                                    ;next line is to understand the reference timepoints in relation to the notecounts. It is similar to how note counts are matched to grace notes above.
                                                    '(filtered-timepoints3 (mapcar 'first (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests (replace-notecount-by-timepoint list-notecounts-all-voice2 filtered-timepoints2))))

                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-duration-slices (list 'get-durations-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-timepoint-slices (list 'get-timepoints-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints3
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints2 filtered-timepoints3 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices
                                                        all-duration-slices all-timepoint-slices offsets))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                               (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))

;;;cont. gracenotes (2013): heuristic rules that access pitches WITH duration and offset AND absolute timepoint

(defun heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes-with-durations-offset-and-timepoint (simple-rule list-voicenrs weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used.
Note that grace notes will not be checked until they are tbound to a main note. This will affect the impact of a heuristic rule."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote list-voicenrs) 'vlinear-solution))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest 
                                                                                            (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2)) ;CHANGED - rests are now LISTED nils

                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2)) ;CHANGED - rests becomes (unlisted) nils.

                                                    ;next line is to understand the reference timepoints in relation to the notecounts. It is similar to how note counts are matched to grace notes above.
                                                    '(filtered-timepoints3 (mapcar 'first (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests (replace-notecount-by-timepoint list-notecounts-all-voice2 filtered-timepoints2))))

                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-duration-slices (list 'get-durations-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-timepoint-slices (list 'get-timepoints-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints3
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints2 filtered-timepoints3 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices 
                                                        all-duration-slices all-timepoint-slices offsets))
                                        '(declare (type number start-time-include-earlier-variables))



                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                                             ))
                                                                                                           '(list (1- (nth (+ n m) filtered-timepoints3)))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))



(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-offset-and-timepoint (simple-rule list-voicenrs weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote (list (first list-voicenrs))) 'vlinear-solution)) ;THIS IS THE ONLY DIFFERENCE FROM rule-4-engines-pitch-and-pitch-include-gracenotes
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
 
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest 
                                                                                            (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))

                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))

                                                    ;reference timepoints in voice 1 (include grace notes)
                                                    (list 'filtered-timepoints3 (list 'get-timepoints-at-notecounts-one-voice (first list-voicenrs) '(mapcar 'first groups-of-simultaneous-notecounts-all-voices2) 'vlinear-solution))

                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-duration-slices (list 'get-durations-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-timepoint-slices (list 'get-timepoints-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))


                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints3
                                                                          collect (distances-to-point timepoint timepoint-slice))))




                                        '(declare (type list all-timepoints filtered-timepoints2 filtered-timepoints3 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices 
                                                        all-duration-slices all-timepoint-slices offsets))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                                             ))
                                                                                                           '(list (1- (nth (+ n m) filtered-timepoints3)))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))


(defun heuristic-switch-rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-offset-and-timepoint (simple-rule timepoints list-voicenrs weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'mapcar ''1+ (list 'quote timepoints)))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest (list 'quote list-voicenrs) 
                                                                                            'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))
                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))

                                                    ;next line is to understand the reference timepoints in relation to the notecounts. It is similar to how note counts are matched to grace notes above.
                                                    '(filtered-timepoints3 (mapcar 'first (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests (replace-notecount-by-timepoint list-notecounts-all-voice2 filtered-timepoints2))))


                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-duration-slices (list 'get-durations-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-timepoint-slices (list 'get-timepoints-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints3
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints2 filtered-timepoints3 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices
                                                        all-duration-slices all-timepoint-slices offsets))
                                        '(declare (type number start-time-include-earlier-variables))
                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                                             ))
                                                                                                           '(list (1- (nth (+ n m) filtered-timepoints3)))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))


(defun heuristic-switch-rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat-with-durations-offset-and-timepoint (simple-rule list-voicenrs fn-beat weight)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable-nth engine vindex vsolution vlinear-solution nth-candidate)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list '(metric-engine (1- (array-dimension vindex 0)))
                                                    (list 'all-timepoints (list fn-beat 'metric-engine 'vlinear-solution))

                                                    ;starttime for metric engine
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))

                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
 
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest 
                                                                                            (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))

                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))

                                                    ;next line is to understand the reference timepoints in relation to the notecounts. It is similar to how note counts are matched to grace notes above.
                                                    '(filtered-timepoints3 (mapcar 'first (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests (replace-notecount-by-timepoint list-notecounts-all-voice2 filtered-timepoints2))))

                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-duration-slices (list 'get-durations-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'all-timepoint-slices (list 'get-timepoints-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution))
                                                    (list 'offsets '(loop for timepoint-slice in all-timepoint-slices
                                                                          for timepoint in filtered-timepoints3
                                                                          collect (distances-to-point timepoint timepoint-slice))))

                                        '(declare (type list all-timepoints filtered-timepoints2 filtered-timepoints3 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices
                                                        all-duration-slices all-timepoint-slices offsets))
                                        '(declare (type number start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'average (list 'loop 'for 'n 'from 0
                                                             'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                                             (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                                             ))
                                                                                                           '(list (1- (nth (+ n m) filtered-timepoints3)))))) 
                                                                            weight
                                                                            0)

                                                             )


                                              ))
                                  0))
                      0)))))

;;;;;;;;;;; Heuristic rule, toplevel functions (non-switch rules)

(defun heuristic-rule-pitch-and-pitch-in-n-voices (simple-rule list-with-voice-numbers)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-rule-n-engines-pitch-and-pitch simple-rule list-with-voice-numbers)
                   list-with-engine-nrs)))


(defun heuristic-rule-pitch-and-pitch-at-1st-voice-onsets-in-n-voices (simple-rule list-with-voice-numbers)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets simple-rule list-with-voice-numbers)
                   list-with-engine-nrs)))


(defun heuristic-rule-pitch-and-pitch-at-timepoints-in-n-voices (simple-rule timepoints list-with-voice-numbers)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-rule-n-engines-pitch-and-pitch-at-timepoints simple-rule timepoints list-with-voice-numbers)
                   list-with-engine-nrs)))


(defun heuristic-rule-pitch-and-pitch-on-beat-in-n-voices (simple-rule list-with-voice-numbers fn-beat)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (append (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers)) '(-1))))  ;-1 is the flag for the metric engine
    (heuristic-rule-n-engines (heuristic-rule-n-engines-pitch-and-pitch-on-beat simple-rule list-with-voice-numbers fn-beat)
                   list-with-engine-nrs)))


(defun heuristic-rule-pitch-and-pitch-include-gracenotes-in-n-voices (simple-rule list-with-voice-numbers)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-rule-n-engines-pitch-and-pitch-include-gracenotes simple-rule list-with-voice-numbers)
                   list-with-engine-nrs)))


(defun heuristic-rule-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-in-n-voices (simple-rule list-with-voice-numbers)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes simple-rule list-with-voice-numbers)
                   list-with-engine-nrs)))


(defun heuristic-rule-pitch-and-pitch-at-timepoints-include-gracenotes-in-n-voices (simple-rule timepoints list-with-voice-numbers)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers))))
    (heuristic-rule-n-engines (heuristic-rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes simple-rule timepoints list-with-voice-numbers)
                   list-with-engine-nrs)))


(defun heuristic-rule-pitch-and-pitch-include-gracenotes-on-beat-in-n-voices (simple-rule list-with-voice-numbers fn-beat)
  "Heuristic rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((list-with-engine-nrs (append (apply 'append (mapcar #'(lambda (voice) (list (* voice 2) (+ 1 (* voice 2)))) list-with-voice-numbers)) '(-1))))  ;-1 is the flag for the metric engine
    (heuristic-rule-n-engines (heuristic-rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat simple-rule list-with-voice-numbers fn-beat)
                   list-with-engine-nrs)))
