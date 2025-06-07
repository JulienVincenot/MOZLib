;;;;;;;;;;;;;;;;;;;;;FLEXIBLE NUMBER OF ENGINES;;;;;;;;;;;;;;;;;;;;;;;;
;
;       This file contains the functions where the number of engines/voices may vary. 
;       
;
;       June 2012

(in-package cluster-engine)

;;;The below is to rotate a list of prefered backtrack engines to suit all possible routes.
(defun left-rotate (list)
  (declare (type list list))
  (append (cdr list) (list (car list))))


(defun left-rotate-and-collect (list)  
  (let ((l list))
    (declare (type list list l))
    (loop for n from 1 to (length list)
          do (setf l (left-rotate l))
          collect l)))


(defun collect-and-left-rotate (list)  
  (let ((l list))
    (declare (type list list l))
    (loop for n from 1 to (length list)
          collect l
          do (setf l (left-rotate l)))))


(defun rule-n-engines1 (rule list-with-engine-nrs)
"This function is for any number of engines.
It prefers backtrack in the SAME engine.
The second preference is to backtrack the next engine.
Etc.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) list-with-engine-nrs) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)

    (setf (aref vrule 2) (collect-and-left-rotate list-with-engine-nrs)) ;backtrack routes if this rule fails
    (make-rule-instance vrule)))


(defun rule-n-engines2 (rule list-with-engine-nrs)
"This function is for any number of engines.
It prefers backtrack in the NEXT engine in the list.
The second preference is to backtrack the engine following the next.
Etc.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) list-with-engine-nrs) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)

    (setf (aref vrule 2) (left-rotate-and-collect list-with-engine-nrs)) ;backtrack routes if this rule fails
    (make-rule-instance vrule)))


;;;The below functions are for harmonic rules. The idea is to sort either pitch engines (i.e. odd) or rhythm engines (i.e. even) first in teh list of prefered engines to backtrack.
(defun sort-odd-first (list)
  "This is to put pitch engines before rhythm engines. No other order is affected.
This sort is NOT destructive."
  (declare (type list list))
  (remove nil
          (append (mapcar #'(lambda (a) (if (oddp a) a nil)) list)
                  (mapcar #'(lambda (a) (if (evenp a) a nil)) list))))


(defun sort-even-first (list)
  "This is to put rhythm engines before pitch engines. No other order is affected.
This sort is NOT destructive."
  (declare (type list list))
  (remove nil
          (append (mapcar #'(lambda (a) (if (evenp a) a nil)) list)
                  (mapcar #'(lambda (a) (if (oddp a) a nil)) list))))

;;;;;;;;;;;;;;;;;;;;;;;;;
(defun left-rotate-sort-odd-and-collect (list)
  "Left rotate = prefer NEXT engine
Sort odd = prefer pitch engines"  
  (let ((l list))
    (declare (type list list l))
    (loop for n from 1 to (length list)
          do (setf l (left-rotate l))
          collect (sort-odd-first l))))

(defun left-rotate-sort-even-and-collect (list)
  "Left rotate = prefer NEXT engine
Sort even = prefer rhythm engines"  
  (let ((l list))
    (declare (type list list l))
    (loop for n from 1 to (length list)
          do (setf l (left-rotate l))
          collect (sort-even-first l))))

(defun collect-sort-odd-and-left-rotate (list)
  "Collect = prefer this voice
Sort odd = prefer pitch engines"  
  (let ((l list))
    (declare (type list list l))
    (loop for n from 1 to (length list)
          collect (sort-odd-first l)
          do (setf l (left-rotate l)))))

(defun collect-sort-even-and-left-rotate (list)
  "Collect = prefer this voice 
Sort odd = prefer rhythm engines
(exception: pitch engine will prefer rhythm engine in next voice)
"  
  (let ((l list))
    (declare (type list list l))
    (loop for n from 1 to (length list)
          collect (sort-even-first l)
          do (setf l (left-rotate l)))))
;;;;;;;;;;;;;;;;;;;;;;;;;

(defun left-rotate-sort-odd-and-collect-add-metric (list metric-engine)
  "Left rotate = prefer NEXT engine
Sort odd = prefer pitch engines
Add metric = add metric engine as the lowest priority,
and also create a sublist for the metric engine."  
  (let ((l list))
    (declare (type list list l))
    (loop for n from 1 to (1+ (length list)) ;the 1+ will give an extra loop for the metric engine
          do (setf l (left-rotate l))
          collect (append (sort-odd-first l) (list metric-engine)))))

(defun left-rotate-sort-even-and-collect-add-metric (list metric-engine)
  "Left rotate = prefer NEXT engine
Sort even = prefer rhythm engines
Add metric = add metric engine as the lowest priority,
and also create a sublist for the metric engine."  
  (let ((l list))
    (declare (type list list l))
    (loop for n from 1 to (1+ (length list)) ;the 1+ will give an extra loop for the metric engine
          do (setf l (left-rotate l))
          collect (append (sort-even-first l) (list metric-engine)))))

(defun collect-sort-odd-and-left-rotate-add-meter (list metric-engine)
  "Collect = prefer this voice
Sort odd = prefer pitch engines
Add metric = add metric engine as the lowest priority,
and also create a sublist for the metric engine." 
  (let ((l list))
    (declare (type list list l))
    (loop for n from 1 to (1+ (length list)) ;the 1+ will give an extra loop for the metric engine
          collect (append (sort-odd-first l) (list metric-engine))
          do (setf l (left-rotate l)))))

(defun collect-sort-even-and-left-rotate-add-meter (list metric-engine)
  "Collect = prefer this voice 
Sort odd = prefer rhythm engines
(exception: pitch engine will prefer rhythm engine in next voice)
Add metric = add metric engine as the lowest priority,
and also create a sublist for the metric engine.
"  
  (let ((l list))
    (declare (type list list l))
    (loop for n from 1 to (1+ (length list)) ;the 1+ will give an extra loop for the metric engine
          collect (append (sort-even-first l) (list metric-engine))
          do (setf l (left-rotate l)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Format a rule for pitch-pitch  with different backtrack preferences

(defun rule-n-engines3 (rule list-with-engine-nrs)
"This function is for any number of engines.
It prefers backtrack in the NEXT pitch engine in the list.
After all pitch engines, it prefers to backtrack the next rhythm engine.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) list-with-engine-nrs) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)

    (setf (aref vrule 2) (left-rotate-sort-odd-and-collect list-with-engine-nrs)) ;backtrack routes if this rule fails
    (make-rule-instance vrule)))


(defun rule-n-engines4 (rule list-with-engine-nrs)
"This function is for any number of engines.
It prefers backtrack in the NEXT rhythm engine in the list.
After all rhythm engines, it prefers to backtrack the next pitch engine.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) list-with-engine-nrs) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)

    (setf (aref vrule 2) (left-rotate-sort-even-and-collect list-with-engine-nrs)) ;backtrack routes if this rule fails
    (make-rule-instance vrule)))


(defun rule-n-engines5 (rule list-with-engine-nrs)
"This function is for any number of engines.
It prefers to backtrack the current engine if it is a pitch engine.
Then it prefers all other pitch engines (starting with the next in the list).
After all pitch engines, it prefers to backtrack the next rhythm engine.
If the current engine is a rhythm engine, it prefers the corresponding pitch engine.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) list-with-engine-nrs) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)

    (setf (aref vrule 2) (collect-sort-odd-and-left-rotate list-with-engine-nrs)) ;backtrack routes if this rule fails
    (make-rule-instance vrule)))


(defun rule-n-engines6 (rule list-with-engine-nrs)
"This function is for any number of engines.
It prefers to backtrack the current engine if it is a rhythm engine.
Then it prefers all other rhythm engines (starting with the next in the list).
After all rhythm engines, it prefers to backtrack the next pitch engine in the list.
If the current engine is a pitch engine, it prefers the next rhythm engine. (This is 
just simpler to code than to prefer the same rhythm engine. If you are picky, you might 
want to change this.)
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) list-with-engine-nrs) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)

    (setf (aref vrule 2) (left-rotate-sort-even-and-collect list-with-engine-nrs)) ;backtrack routes if this rule fails
    (make-rule-instance vrule)))

;;;;;;;;;;;;;;;;;;below includes the metric engine

(defun rule-n-engines-with-meter3 (rule list-with-pitch-rhythm-engine-nrs metric-engine)
"This function is for any number of engines.
It prefers backtrack in the NEXT pitch engine in the list.
After all pitch engines, it prefers to backtrack the next rhythm engine.
Metric engine has lowest priority.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (append list-with-pitch-rhythm-engine-nrs (list metric-engine))) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    (setf (aref vrule 2) (left-rotate-sort-odd-and-collect-add-metric list-with-pitch-rhythm-engine-nrs metric-engine)) ;backtrack routes if this rule fails - metric engine attached to each sublist
    (make-rule-instance vrule)))


(defun rule-n-engines-with-meter4 (rule list-with-pitch-rhythm-engine-nrs metric-engine)
"This function is for any number of engines.
It prefers backtrack in the NEXT rhythm engine in the list.
After all rhythm engines, it prefers to backtrack the next pitch engine.
Metric engine has lowest priority.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (append list-with-pitch-rhythm-engine-nrs (list metric-engine))) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    (setf (aref vrule 2) (left-rotate-sort-even-and-collect-add-metric list-with-pitch-rhythm-engine-nrs metric-engine)) ;backtrack routes if this rule fails - metric engine attached to each sublist
    (make-rule-instance vrule)))

(defun rule-n-engines-with-meter5 (rule list-with-pitch-rhythm-engine-nrs metric-engine)
"This function is for any number of engines.
It prefers to backtrack the current engine if it is a pitch engine.
Then it prefers all other pitch engines (starting with the next in the list).
After all pitch engines, it prefers to backtrack the next rhythm engine.
If the current engine is a rhythm engine, it prefers the corresponding pitch engine.
Metric engine has lowest priority.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (append list-with-pitch-rhythm-engine-nrs (list metric-engine))) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    (setf (aref vrule 2) (collect-sort-odd-and-left-rotate-add-meter list-with-pitch-rhythm-engine-nrs metric-engine)) ;backtrack routes if this rule fails - metric engine attached to each sublist
    (make-rule-instance vrule)))

(defun rule-n-engines-with-meter6 (rule list-with-pitch-rhythm-engine-nrs metric-engine)
"This function is for any number of engines.
It prefers to backtrack the current engine if it is a rhythm engine.
Then it prefers all other rhythm engines (starting with the next in the list).
After all rhythm engines, it prefers to backtrack the next pitch engine in the list.
If the current engine is a pitch engine, it prefers the next rhythm engine. (This is 
just simpler to code than to prefer the same rhythm engine. If you are picky, you might 
want to change this.)
Metric engine has lowest priority.
"
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (append list-with-pitch-rhythm-engine-nrs (list metric-engine))) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    (setf (aref vrule 2) (collect-sort-even-and-left-rotate-add-meter list-with-pitch-rhythm-engine-nrs metric-engine)) ;backtrack routes if this rule fails - metric engine attached to each sublist
    (make-rule-instance vrule)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun rule-n-engines-all-elements (simple-rule list-with-engine-nrs)
  "Formats a rule to access all events in any number of engines. The rule should have one input per engine."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    (when (/=  no-of-args (length list-with-engine-nrs)) (error "The number of arguments in the R-list-all-events does not correspond to the number of inputs to the logic statement."))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
          (append (list 'funcall (compile-if-not-compiled nil simple-rule))
                  (loop for engine in list-with-engine-nrs
                        collect (list 'aref 'vlinear-solution engine 0))))))



;;;Here are the access fucntions for R-list-all-events
(defun rule-all-pitches-in-n-voices1 (simple-rule list-with-voice-numbers)
  "It rule prefers backtracking in the SAME engine in the list."
  (let ((list-with-engine-nrs (mapcar #'(lambda (voice) (+ 1 (* voice 2))) list-with-voice-numbers)))
    (rule-n-engines1 (rule-n-engines-all-elements simple-rule list-with-engine-nrs)
                   list-with-engine-nrs)))

(defun rule-all-pitches-in-n-voices2 (simple-rule list-with-voice-numbers)
  "It rule prefers backtracking in the NEXT engine in the list."
  (let ((list-with-engine-nrs (mapcar #'(lambda (voice) (+ 1 (* voice 2))) list-with-voice-numbers)))
    (rule-n-engines2 (rule-n-engines-all-elements simple-rule list-with-engine-nrs)
                   list-with-engine-nrs)))

(defun rule-all-durations-in-n-voices1 (simple-rule list-with-voice-numbers)
  "It rule prefers backtracking in the SAME engine in the list."
  (let ((list-with-engine-nrs (mapcar #'(lambda (voice) (* voice 2)) list-with-voice-numbers)))
    (rule-n-engines1 (rule-n-engines-all-elements simple-rule list-with-engine-nrs)
                   list-with-engine-nrs)))

(defun rule-all-durations-in-n-voices2 (simple-rule list-with-voice-numbers)
  "It rule prefers backtracking in the NEXT engine in the list."
  (let ((list-with-engine-nrs (mapcar #'(lambda (voice) (* voice 2)) list-with-voice-numbers)))
    (rule-n-engines2 (rule-n-engines-all-elements simple-rule list-with-engine-nrs)
                   list-with-engine-nrs)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;              PITCH-PITCH RULES ANY NUMBER OF VOICES


(defun collect-common-endtime-each-voice (list-voicenrs vlinear-solution)
  "Returns a list with the timepoints for the last event in each voice that has both pitch and rhythm value. Both rhythm and pitch engine for the voice must exist."
  (declare (type list list-voicenrs))
  (declare (type array vlinear-solution))
  ;; #-CCL (declare (type fixnum voicenrs)) 
  (loop for voicenrs fixnum in list-voicenrs
        collect (get-offset-timepoint-at-notecount-include-final-rest (* 2 voicenrs) vlinear-solution 
                                                                      (min 
                                                                       (get-total-pitchcount (+ 1 (* 2 voicenrs)) vlinear-solution) 
                                                                       (get-total-notecount (* 2 voicenrs) vlinear-solution)))))


(defun earliest-endtime-all-voices (list-voicenrs vlinear-solution)
  "Returns the earliest timepoint in all voices (an endpoint needs to have both rhythm and pitch defined). 
Returns nil if one voice doesn't have events with dur/pitch yet."
  (declare (type list list-voicenrs))
  (declare (type array vlinear-solution))
  (let ((list-voices-endtimepoints (collect-common-endtime-each-voice list-voicenrs vlinear-solution)))
    (declare (type list list-voices-endtimepoints))
    (when (not (p-test-if-all-elements-are-true list-voices-endtimepoints)) (return-from earliest-endtime-all-voices nil))
    (apply 'min list-voices-endtimepoints)
    ))


(defun get-all-timepoints-for-rhythm (list-voicenrs vlinear-solution)
  "Collects all timepoints from the voices, sorts them and removes duplicates."
  (declare (type list list-voicenrs))
  (declare (type array vlinear-solution))
  ;; #-CCL (declare (type fixnum voicenr)) 
  (remove-duplicates
   (sort 
    (apply 'append
           (loop for voicenr in list-voicenrs
                 collect (remove-rests-from-list2 (butlast (aref vlinear-solution (* 2 voicenr) 1)))))
    '<)))


(defun get-start-time-this-variable (engine vindex vsolution vlinear-solution)
  "Get the start time for the event at the current index. If it is a pitch event, get the time for the corresponding duration.
If duration is not assigned, nil will be returned. Also works for he metric engine."
  (declare (type array vindex vsolution vlinear-solution))
  (declare (type fixnum engine))
  (if (evenp engine) 
      ;rhythmengine or metric engine
      (get-current-index-starttime engine vindex vsolution)
    ;pitchengine
    (get-timepoint-at-notecount (- engine 1) vlinear-solution 
          (get-current-index-first-pitchcount engine vindex vsolution))))
      
  
(defun get-notecount-at-timepoints-all-rhythmengines (list-voicenrs vlinear-solution timepoints)
  "Get lists with the notecounts at the timepoints in all rhythm engines that correspond to the voices in list-voicenrs."
  (declare (type list list-voicenrs timepoints))
  (declare (type array vlinear-solution))
  (loop for voicenr in list-voicenrs
        collect (get-notecount-at-timepoints (* 2 voicenr) vlinear-solution timepoints)))


(defun get-pitches-to-notecounts (list-voicenrs notecounts-all-voice vlinear-solution)
  "This function looks up teh correcponding pitches at notecounts in one or several voices."
  #-CCL (declare (type list list-voicenrs notecounts-all-voice)) ; notecounts
  (declare (type array vlinear-solution))
  ;; #-CCL (declare (type fixnum voicenr notecount))
  (loop for voicenr in list-voicenrs
    for notecounts in notecounts-all-voice
    collect (loop for notecount in notecounts
              collect (if notecount (get-pitch-at-pitchcount (+ 1 (* 2 voicenr)) vlinear-solution notecount) nil))))



;general function all type of engines - to use this function, the engines for both picth and duration must exist in each voice. No metric engine.
(defun set-vbackjump-indexes-from-failed-timepoint-duration-pitch-in-voices (failed-timepoint list-voicenrs vbackjump-indexes vsolution-for-backjump vlinear-solution)
  "This is a general function all type of engines - to use this function, the engines for both picth and duration must exist in each voice.
No metric engine."
  (declare (type number failed-timepoint))
  (declare (type list list-voicenrs))
  (declare (type array vbackjump-indexes vsolution-for-backjump vlinear-solution))

    ;If the metric engine fails, the note that is linked to the position will be determed. The timepoint will be for the note that exist at the timepoint.

  (loop for voicenr in list-voicenrs
        do (let* ((timepoint-for-failed-note (find-timepoint-or-preceding-timepoint-convert-rests failed-timepoint (the list (aref vlinear-solution (* 2 voicenr) 1))))
                  (failed-notecount (get-notecount-at-timepoint-also-for-rest-skip-gracenote (* 2 voicenr) vlinear-solution timepoint-for-failed-note)))
             (declare (type fixnum voicenr))
             (declare (type t failed-notecount timepoint-for-failed-note))
             (setf (aref vbackjump-indexes (* 2 voicenr))      ;rhythm engine
                   (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump (* 2 voicenr)) (aref vbackjump-indexes (* 2 voicenr))))
             (when failed-notecount
               (setf (aref vbackjump-indexes (1+ (* 2 voicenr))) ;pitch engine 
                     (cons (find-index-for-countvalue failed-notecount vsolution-for-backjump (1+ (* 2 voicenr))) (aref vbackjump-indexes (1+ (* 2 voicenr)))))))))




(defun rule-n-engines-pitch-and-pitch (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
      ;;Orjan replace vector with array July 2018
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches))
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint))  
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-duration-pitch-in-voices 
                                                                    'failed-timepoint (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)))
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))



(defun rule-n-engines-pitch-and-pitch-at-1st-voice-onsets (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used.
The rule is checked at the onsets of the first voice in the list."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches))
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint))
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-duration-pitch-in-voices 
                                                                    'failed-timepoint (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)))
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))



;rule-n-engines-pitch-and-pitch-at-timepoints has the sideeffect that the last timepoint will be rechecked util the end of the search. It is harmless, and consumes slighty more CPU time. Probably not measurable.
(defun rule-n-engines-pitch-and-pitch-at-timepoints (simple-rule timepoints list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                                                                                 collect (nth i pitches)))))

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches))
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint)) 
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-duration-pitch-in-voices 
                                                                    'failed-timepoint (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)))
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))



;general function all type of engines - to use this function, the engines for both picth and duration must exist in each voice
(defun set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch-in-voices (failed-timepoint metric-engine list-voicenrs vbackjump-indexes vsolution-for-backjump vlinear-solution)
  "This is a general function all type of engines - to use this function, the engines for both picth and duration must exist in each voice, as well as the metric engine."
  (declare (type number failed-timepoint))
  (declare (type list list-voicenrs))
  (declare (type fixnum metric-engine))
  (declare (type array vbackjump-indexes vsolution-for-backjump vlinear-solution))

    ;If the metric engine fails, the note that is linked to the position will be determed. The timepoint will be for the note that exist at the timepoint.

  (setf (aref vbackjump-indexes metric-engine) 
        (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump metric-engine) (aref vbackjump-indexes metric-engine)))

  (loop for voicenr in list-voicenrs
        do (let* ((timepoint-for-failed-note (find-timepoint-or-preceding-timepoint-convert-rests failed-timepoint (the list (aref vlinear-solution (* 2 voicenr) 1))))
                  (failed-notecount (get-notecount-at-timepoint-also-for-rest-skip-gracenote (* 2 voicenr) vlinear-solution timepoint-for-failed-note)))
             (declare (type fixnum voicenr))
             (declare (type t failed-notecount timepoint-for-failed-note))
             (setf (aref vbackjump-indexes (* 2 voicenr))      ;rhythm engine
                   (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump (* 2 voicenr)) (aref vbackjump-indexes (* 2 voicenr))))
             (setf (aref vbackjump-indexes (1+ (* 2 voicenr))) ;pitch engine 
                   (cons (find-index-for-countvalue failed-notecount vsolution-for-backjump (1+ (* 2 voicenr))) (aref vbackjump-indexes (1+ (* 2 voicenr))))))))



(defun rule-n-engines-pitch-and-pitch-on-beat (simple-rule list-voicenrs fn-beat)
  "Beside the engines associated with the voices in teh voice list, this rule will also access the metric engine.
fn-beat is either 'get-all-beats or 'get-1st-down-beats"
  (let ((no-of-args (length (function-lambda-list simple-rule))))  

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'let (list '(metric-engine (1- (array-dimension vindex 0)))
                           (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type fixnum metric-engine))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule. 1st downbeat can always be checked even if meter is missing.
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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

                                        '(declare (type list all-timepoints filtered-timepoints all-pitches-for-notecounts notecounts-all-voice all-pitch-slices pitches))
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))

                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint)) 
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch-in-voices 
                                                                    'failed-timepoint 'metric-engine (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)) )
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))

;;;;;GRACE NOTES PITCH PITCH

;;find all combination of pitches with grace notes

;new in Paris July 2012
(defun combine-n-voices-notecount-with-gracenotes-at-one-timepoint-keep-rests (all-voices-notecount)
  "This version is able to keep nils that represent rests. Rests are input as '(nil) and output as listed nil.
This is necessary to avoid confusion with not assigned pitches (that will be nil and then removed).


This is to combine simultaneous notecounts at one timepoint for n voices (some or all might include gracenotes). 
Gracenotes are given as a list of notecounts (last notecount is the main note). The function groups individual slices
for each gracenote (they are grouped with the main notes in the other voices)."
  (declare (type list all-voices-notecount))
  (let ((basenotes-this-timepoint (loop for one-voice-notecount in all-voices-notecount
                                        collect (if (listp one-voice-notecount) 
                                                    (if (equal one-voice-notecount '(nil)) '(nil) (car (last one-voice-notecount))) ;this is changed
                                                  one-voice-notecount))))

    (declare (type list basenotes-this-timepoint))
    (append (apply 'append (loop for one-voice-notecount in all-voices-notecount
                                 for n from 0
                                 collect (when (listp one-voice-notecount) 
                                         (progn
                                             ;; #-CCL (declare (type t one-voice-notecount)) ;; type t declaration redundant anyway
                                             (loop for gracenote in (butlast one-voice-notecount)
                                                   collect (let ((this-slice (copy-list basenotes-this-timepoint)))
                                                             (declare (type list this-slice))
                                                             ;(declare (type fixnum gracenote)) ;;;;BUG FIX March 12 2023
                                                             (setf (nth n this-slice) gracenote)
                                                             this-slice))))))
            (list basenotes-this-timepoint))))




;new in Paris July 2012
(defun combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests (list-notecounts-all-voice)
  "This version is able to keep nils that represent rests (rests are listed nils). Not assigned pitches are removed.

Subsets with nil are removed. This is to make gracenotes behave correctly (in combination with get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches).

This function takes a list with sublists - each sublist representing one voice. Gracenotes are 
grouped into sublists in teh sublists. The position for the notecounts in the voice lists
should be synchronized so that notecounts at the same position are simultaneous. The function
outputs notecounts for chord slices. Grace notes are included and distributed one in each slice."

  (declare (type list list-notecounts-all-voice))

(mapcar #'(lambda (timepointlist) (substitute nil '(nil) timepointlist :test 'equal))
  (remove-if #'(lambda (list) (member nil list)) 

             (apply 'append 
                    (loop for i from 0 to (1- (length (car list-notecounts-all-voice))) 
                          collect (combine-n-voices-notecount-with-gracenotes-at-one-timepoint-keep-rests   ;combine-n-voices-notecount-at-one-timepoint
                                   (loop for voice from 0 to (1- (length list-notecounts-all-voice))
                                         collect (nth i (nth voice list-notecounts-all-voice)))))))))


;new on the train from Paris July 2012
(defun get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest (list-voicenrs vindex vsolution vlinear-solution timepoints)
  "This is to make gracenotes work correctly. Not assigned pitches will be marked with nil - not assigned gracenots will be removed.

This function should also work for heuristic rules. Only index is checked via vsolution - it should be the same for all candidates."
  (declare (type list list-voicenrs timepoints))
  (declare (type array vlinear-solution))

  (loop for voicenr in list-voicenrs
        collect (let ((max-notecount-pitchengine (get-current-index-total-notecount (1+ (* 2 voicenr)) vindex vsolution))
                      (notecount-at-timepoints-include-gracenotes (get-notecount-at-timepoints-include-gracenotes-mark-rests (* 2 voicenr) vlinear-solution timepoints)))

                  (mapcar #'(lambda (notecount) (if (numberp notecount) 
                                                    (if (> notecount max-notecount-pitchengine) nil notecount)
                                                  (remove-if #'(lambda (x) (and x (not (equal '(nil) x)) (> x max-notecount-pitchengine))) notecount))) ;;;HERE IT IS DIFFERENT!!!
                          notecount-at-timepoints-include-gracenotes))))

;;;;

;;this is not used (I think)
(defun get-notecount-at-timepoints-include-gracenotes-all-rhythmengines (list-voicenrs vlinear-solution timepoints)
  "Get lists with the notecounts at the timepoints in all rhythm engines that correspond to the voices in list-voicenrs.
This function also includs the notecounts for grace notes."
  (declare (type list list-voicenrs timepoints))
  (declare (type array vlinear-solution))
  (loop for voicenr in list-voicenrs
        collect (get-notecount-at-timepoints-include-gracenotes (* 2 voicenr) vlinear-solution timepoints)))


(defun get-pitches-for-slices-of-notecounts (list-voicenrs groups-of-simultaneous-notecounts-all-voices vlinear-solution)
  "This function looks up teh correcponding pitches at notecounts in harmonic slices."
  (declare (type list list-voicenrs groups-of-simultaneous-notecounts-all-voices)) ; notecount-slice
  (declare (type array vlinear-solution))
  ;; (declare (type fixnum voicenr notecount))
    (loop for notecount-slice in groups-of-simultaneous-notecounts-all-voices
        collect (loop for voicenr in list-voicenrs
                      for notecount in notecount-slice
                      collect (if notecount (get-pitch-at-pitchcount (+ 1 (* 2 voicenr)) vlinear-solution notecount) nil))))

;;;;



(defun rule-n-engines-pitch-and-pitch-include-gracenotes (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))

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
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2)) ;CHANGED - rests becomes (unlistd) nils.
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints2 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices))
                                        '(declare (type t start-time-include-earlier-variables))
                                              ;Test rule

                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2))) ;REMOVE NIL
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                        '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))

;;;;

(defun rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'get-all-timepoints-for-rhythm (list 'quote (list (first list-voicenrs))) 'vlinear-solution)) ;THIS IS THE ONLY DIFFERENCE FROM rule-4-engines-pitch-and-pitch-include-gracenotes
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
 
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))

                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints2 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices))
                                        '(declare (type t start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2)))
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                              '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))

;;;;;


(defun rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes (simple-rule timepoints list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))

                            '(declare (type t start-time-this-variable))
                            (list 'if 'start-time-this-variable  ;if there is no window to check there is not need to check the rule
                                  (list 'let* (list (list 'all-timepoints (list 'mapcar ''1+ (list 'quote timepoints)))
                                                    (list 'start-time-include-earlier-variables (list 'shift-start-point-in-list 'start-time-this-variable 'all-timepoints (1- no-of-args)))
                                                    
                                                    ;don't filter endpoint. It will be checked in the next steps.
                                                    '(filtered-timepoints2 (remove-list-before-startpoint 
                                                                            start-time-include-earlier-variables all-timepoints))
                                                    
                                                    ;If a pitch is not assigned, the notecount will be marked as nil. If it is a grace note, it will be removed.
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))
                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints2 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices))
                                        '(declare (type t start-time-include-earlier-variables))
                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2)))
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                        '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))


;;;;


(defun rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat (simple-rule list-voicenrs fn-beat)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


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
                                                    (list 'list-notecounts-all-voice2 (list 'get-notecount-at-timepoints-include-gracenotes-all-rhythmengines-mark-notassigned-pitches-mark-rest (list 'quote list-voicenrs) 'vindex 'vsolution 'vlinear-solution 'filtered-timepoints2))

                                                    ;remove any slice of simlutaneous notes that has a nil.
                                                    '(groups-of-simultaneous-notecounts-all-voices2 (combine-n-voices-notecounts-include-gracenotes-remove-nil-keep-rests list-notecounts-all-voice2))
                                                    (list 'all-pitch-slices (list 'get-pitches-for-slices-of-notecounts (list 'quote list-voicenrs) 'groups-of-simultaneous-notecounts-all-voices2 'vlinear-solution)))
                                        '(declare (type list all-timepoints filtered-timepoints2 list-notecounts-all-voice2 groups-of-simultaneous-notecounts-all-voices2 all-pitch-slices))
                                        '(declare (type t start-time-include-earlier-variables))
;'(system::pwgl-print (list 'list-notecounts-all-voice2 list-notecounts-all-voice2 'groups-of-simultaneous-notecounts-all-voices2 groups-of-simultaneous-notecounts-all-voices2))
                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'nth (list '+ 'n 'm) 'all-pitch-slices))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2)))
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                              '(return nil)
                                                            )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))


;;;;;;;;;;;;;;;;;;; RULES THAT ALSO INCLUDE DURATIONS - July 2013 ;;;;;;;;;;;;;;;
;; Note that rests will only be specified as nil (the duration and onset for a rest will be unknown)
;; The practical reason is that events are found by their notecount (rests are not notes).
;; For more detailed work on rests and rhythm, the rhythm-rhythm rules should be used (to be developed further).

(defun rule-n-engines-pitch-and-pitch-with-durations-and-offset (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)
The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'offsets)))))
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint))
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-duration-pitch-in-voices 
                                                                    'failed-timepoint (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)))
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))


(defun rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-with-durations-and-offset (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...) 
The rule is checked at the onsets of the first voice in the list.

The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint))
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-duration-pitch-in-voices 
                                                                    'failed-timepoint (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)))
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))


(defun rule-n-engines-pitch-and-pitch-at-timepoints-with-durations-and-offset (simple-rule timepoints list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)

The rule is only checked at the specified timepoints.
The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint))
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-duration-pitch-in-voices 
                                                                    'failed-timepoint (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)))
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))



(defun rule-n-engines-pitch-and-pitch-on-beat-with-durations-and-offset (simple-rule list-voicenrs fn-beat)
  "Beside the engines associated with the voices in teh voice list, this rule will also access the metric engine.

Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)

fn-beat is either 'get-all-beats or 'get-1st-down-beats

"
  (let ((no-of-args (length (function-lambda-list simple-rule))))  

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'let (list '(metric-engine (1- (array-dimension vindex 0)))
                           (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type fixnum metric-engine))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule. 1st downbeat can always be checked even if meter is missing.
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))

                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint))
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch-in-voices 
                                                                    'failed-timepoint 'metric-engine (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)) )
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))




(defun rule-n-engines-pitch-and-pitch-with-durations-offset-and-timepoint (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule is checked are indicated,
and also the absolute time for when the rule is checked.
Format '((pitch dur offest) (pitch dur offest) ... timepoint)
The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                         ))
                                                                                       '(list (1- (nth (+ n m) filtered-timepoints)))))
                                                                  )
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint))
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-duration-pitch-in-voices 
                                                                    'failed-timepoint (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)))
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))


;;;

(defun rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-with-durations-offset-and-timepoint (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...) 
The rule is checked at the onsets of the first voice in the list.

The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                         ))
                                                                                       '(list (1- (nth (+ n m) filtered-timepoints)))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint))
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-duration-pitch-in-voices 
                                                                    'failed-timepoint (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)))
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))


(defun rule-n-engines-pitch-and-pitch-at-timepoints-with-durations-offset-and-timepoint (simple-rule timepoints list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)

The rule is only checked at the specified timepoints.
The rule should be compiled before used."

  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))


                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                         ))
                                                                                       '(list (1- (nth (+ n m) filtered-timepoints)))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint))
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-duration-pitch-in-voices 
                                                                    'failed-timepoint (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)))
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))


(defun rule-n-engines-pitch-and-pitch-on-beat-with-durations-offset-and-timepoint (simple-rule list-voicenrs fn-beat)
  "Beside the engines associated with the voices in teh voice list, this rule will also access the metric engine.

Duration and offsets to the timepoint the rule sis checked are indicated.
Format '((pitch dur offest) (pitch dur offest) ...)

fn-beat is either 'get-all-beats or 'get-1st-down-beats

"
  (let ((no-of-args (length (function-lambda-list simple-rule))))  

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'let (list '(metric-engine (1- (array-dimension vindex 0)))
                           (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type fixnum metric-engine))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule. 1st downbeat can always be checked even if meter is missing.
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))
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
                                        '(declare (type t start-time-include-earlier-variables))
                                        '(declare (type fixnum i))

                                        ;;;;;;;;;;;;test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'filtered-timepoints)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                         ))
                                                                                       '(list (1- (nth (+ n m) filtered-timepoints)))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-timepoint (nth n filtered-timepoints)))
                                                              '(declare (type number failed-timepoint))
                                                              (list 'set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch-in-voices 
                                                                    'failed-timepoint 'metric-engine (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                          
                                                              '(return nil)) )
                                      ;backjump routine above
                                              'finally '(return t)
                                              )
                                        )
                                  t))
                      t)))))



;;;;; cont. with grace notes (2013)

(defun replace-notecount-by-timepoint (all-voices-notecountgroups timepoints)
  "This function is to understand the matching of timepoints to notecounts in the rule-n-engines-pitch-and-pitch-include-gracenotes-with-durations-and-offset function."

  (declare (type list all-voices-notecountgroups timepoints)) ; notecountgroups
  ;; (declare (type number timepoint))

  (loop for notecountgroups in all-voices-notecountgroups
        collect (loop for notecountgroup in notecountgroups
                      for timepoint in timepoints
                      collect (if notecountgroup
                                  (if (listp notecountgroup)
                                      (make-list (length notecountgroup) :initial-element timepoint)
                                    timepoint)
                                nil))))

;The following two functions are similar to get-pitches-for-slices-of-notecounts above.
(defun get-durations-for-slices-of-notecounts (list-voicenrs groups-of-simultaneous-notecounts-all-voices vlinear-solution)
  "This function looks up teh correcponding pitches at notecounts in harmonic slices."
  (declare (type list list-voicenrs groups-of-simultaneous-notecounts-all-voices)) ; notecount-slice
  (declare (type array vlinear-solution))
  ;; (declare (type fixnum voicenr notecount))
    (loop for notecount-slice in groups-of-simultaneous-notecounts-all-voices
        collect (loop for voicenr in list-voicenrs
                      for notecount in notecount-slice
                      collect (if notecount (get-duration-at-notecount (* 2 voicenr) vlinear-solution notecount) nil))))


(defun get-timepoints-for-slices-of-notecounts (list-voicenrs groups-of-simultaneous-notecounts-all-voices vlinear-solution)
  "This function looks up teh correcponding pitches at notecounts in harmonic slices."
  (declare (type list list-voicenrs groups-of-simultaneous-notecounts-all-voices)) ; notecount-slice
  (declare (type array vlinear-solution))
  ;; (declare (type fixnum voicenr notecount))
    (loop for notecount-slice in groups-of-simultaneous-notecounts-all-voices
        collect (loop for voicenr in list-voicenrs
                      for notecount in notecount-slice
                      collect (if notecount (get-timepoint-at-notecount (* 2 voicenr) vlinear-solution notecount) nil))))



(defun rule-n-engines-pitch-and-pitch-include-gracenotes-with-durations-and-offset (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))

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
                                        '(declare (type t start-time-include-earlier-variables))



                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2))) ;REMOVE NIL
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                              '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))



(defun rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-and-offset (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))

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
                                        '(declare (type t start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2)))
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                              '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))



(defun rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-and-offset (simple-rule timepoints list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))

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
                                        '(declare (type t start-time-include-earlier-variables))
                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2)))
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                              '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))



(defun rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat-with-durations-and-offset (simple-rule list-voicenrs fn-beat)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


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
                                        '(declare (type t start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                           (list 'nth (list '+ 'n 'm) 'offsets))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2)))
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                              '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))




(defun rule-n-engines-pitch-and-pitch-include-gracenotes-with-durations-offset-and-timepoint (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))

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
                                        '(declare (type t start-time-include-earlier-variables))



                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                         ))
                                                                                       '(list (1- (nth (+ n m) filtered-timepoints3)))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2))) ;REMOVE NIL
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                              '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))



(defun rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-offset-and-timepoint (simple-rule list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))

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
                                        '(declare (type t start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                         ))
                                                                                       '(list (1- (nth (+ n m) filtered-timepoints3)))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2)))
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                              '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))



(defun rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-offset-and-timepoint (simple-rule timepoints list-voicenrs)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


          (list 'let (list (list 'endtime-common-onsets (list 'earliest-endtime-all-voices (list 'quote list-voicenrs) 'vlinear-solution)))
                '(declare (type t endtime-common-onsets))
                (list 'if 'endtime-common-onsets ;if not all engines exist, don't check the rule
                      (list 'let '((start-time-this-variable (get-start-time-this-variable engine vindex vsolution vlinear-solution)))

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
                                        '(declare (type t start-time-include-earlier-variables))
                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                         ))
                                                                                       '(list (1- (nth (+ n m) filtered-timepoints3)))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2)))
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                              '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))



(defun rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat-with-durations-offset-and-timepoint (simple-rule list-voicenrs fn-beat)
  "Formats a rule for simultaneous pitches. Rests are kept as nil. The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))


    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))


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
                                        '(declare (type t start-time-include-earlier-variables))

                                              ;Test rule
                                        (list 'loop 'for 'n 'from 0
                                              'to (list '- (list '1- (list 'length 'all-pitch-slices)) (1- no-of-args))
                                              'do (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                  (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                                        'collect (list 'append (list 'matrix-trans (list 'list (list 'nth (list '+ 'n 'm) 'all-pitch-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'all-duration-slices)
                                                                                                                         (list 'nth (list '+ 'n 'm) 'offsets)
                                                                                                                         ))
                                                                                       '(list (1- (nth (+ n m) filtered-timepoints3)))))) 
                                                        t

                                      ;backjump routine here
                                                        (list 'let '((failed-notecounts (nth n groups-of-simultaneous-notecounts-all-voices2)))
                                                              '(declare (type list failed-notecounts))
                                                              (list 'set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices 
                                                                    'failed-notecounts (list 'quote list-voicenrs) 'vbackjump-indexes 'vsolution-for-backjump 'vlinear-solution)
                                                              '(return nil)
                                                              )
                                                        )
                                      ;backjump routine above
                                              'finally '(return t)
                                              ))
                                  t))
                      t)))
    ))


;;;;;;;;;;;;;;;;;;; RULES FOR CHORDS (2012) ;;;;;;;;;;;;;;;;;;;
; Analyze and test chords

(defun next-chord-position (chord)
  (declare (type list chord))
  (mapcar #'(lambda (i) (- i (first chord))) (append (cdr chord) '(12))))

(defun all-chord-positions (chord)
  (declare (type list chord))

  (loop for n from 0 to (length chord)
        collect (setf chord (next-chord-position chord))))

(defun all-chords-positions (chords)
  "This differs from all-chord-positions in the way it can handle a list of allowed chords (i.e. more than one)."
  (declare (type list chords))

  (if (listp (car chords))
      (apply 'append
             (loop for chord in chords
                   collect (all-chord-positions chord)))
    (all-chord-positions chords)))

(defun analyze-chordposition (pitchlist)
  (declare (type list pitchlist))

  (let ((sorted-pitches (sort (remove nil pitchlist) '<)))
    (declare (type list sorted-pitches))
    (remove 0 (sort (mapcar #'(lambda (p) (rem (- p (first sorted-pitches)) 12)) (cdr sorted-pitches)) '<))
    ))


;changed subset to accept floatingpoint numbers (for microtonal rules) - Sept 2015. This function might not be used anymore.
(defun test-match-chord-any-position-p (model chord-to-test)
  (declare (type list model chord-to-test))

  (let ((allowed-chord-positions (all-chord-positions model))
        (test-chord (analyze-chordposition (remove nil chord-to-test))))
    (declare (type list allowed-chord-positions test-chord))
    (loop for one-allowed-position in allowed-chord-positions 
          do (when (subsetp test-chord one-allowed-position :test '=) (return t))
          finally (return nil))))


;changed subset to accept floatingpoint numbers (for microtonal rules) - Sept 2015
(defun test-match-chord-any-position2-p (allowed-chord-positions chord-to-test)
  "For efficiency reasons this functions does not include the all-chord-positions function in the test (this can be done once and then reused)"
  (declare (type list allowed-chord-positions chord-to-test))

  (let ((test-chord (analyze-chordposition (remove nil chord-to-test))))
    (declare (type list test-chord))
    (loop for one-allowed-position in allowed-chord-positions 
          do (when (subsetp test-chord one-allowed-position :test '=) (return t))
          finally (return nil))))

;Combine voices into sub-rules - find all combinations of voices


(defun combine-first-with-any (items)
  (declare (type list items))

  (loop for n from 1 to (1- (length items))
        collect (list (car items) (nth n items))))


(defun combine-any-with-any2 (items)
  "Two items"
  (declare (type list items))

  (let ((list items))
    (declare (type list list))
    (apply 'append
           (loop for n from 0 to (- (length items) 2)
                 collect (combine-first-with-any list)
                 do (setf list (cdr list))))))
                  

(defun combine-any-with-any-n (items nr-of-items)
  "Lists will have N items in the answer."
  (declare (type list items))
  (declare (type fixnum nr-of-items))

  (let ((list items))
    (declare (type list list))
    (if (= nr-of-items 2) (combine-any-with-any2 items)
      (apply 'append
             (loop for n from 0 to (- (length items) nr-of-items)
                   collect (mapcar #'(lambda (2items) (cons (car list) 2items)) (combine-any-with-any-n (cdr list) (1- nr-of-items)))
                   do (setf list (cdr list)))))))


(defun combine-all-any-list-length (items)
  "Returns all combinations of items, including of any length of the list (excluding single items).
This is used for chprd rules to determione what voices need to be restricted by rules for
efficient search."
  (declare (type list items))
  (apply 'append
         (loop for n from 2 to (length items)
               collect (combine-any-with-any-n items n))))



;;;;;;;;;THIS IS TEMPORARY - OLD STUFF - MAYBE BACKWARD COMPABILITY


#+PWGL
(progn
(system::PWGLDef R-pitch-pitch-all-new ((rule nil)
                                        (list-voices '(0 1)))
    "This rule always prefer to backtrack the rhythm engine."
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((list-with-engine-nrs (apply 'append (loop for voice in list-voices collect (list (* 2 voice) (1+ (* 2 voice)))))))

    ;;;Prefered backtrack routes.
    (let ((backtrack-route (cond ((= *bktr-ppNv-A* 1)
                                  'rule-n-engines3)    ;next pitch engine
                                 ((= *bktr-ppNv-A* 2)
                                  'rule-n-engines4)    ;next rhythm engine
                                 ((= *bktr-ppNv-A* 3)
                                  'rule-n-engines4)    ;this pitch engine
                                 ((= *bktr-ppNv-A* 4)
                                  'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
      (funcall backtrack-route (rule-4-engines-pitch-and-pitch rule list-voices) list-with-engine-nrs))))

 

(system::PWGLDef R-pitch-pitch-on-beats-new ((rule nil)
                                             (list-voices '(0 1)))
    "This rule always prefer to backtrack the rhythm engine."
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((list-with-engine-nrs (apply 'append (loop for voice in list-voices collect (list (* 2 voice) (1+ (* 2 voice)))))))

    ;;;Prefered backtrack routes.
    (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                  'rule-n-engines-with-meter3)    ;next pitch engine
                                 ((= *bktr-ppNv-B* 2)
                                  'rule-n-engines-with-meter4)    ;next rhythm engine
                                 ((= *bktr-ppNv-B* 3)
                                  'rule-n-engines-with-meter5)    ;this pitch engine
                                 ((= *bktr-ppNv-B* 4)
                                  'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

      ; -1 is the flag to be replaced with the number for the metric engine
      (funcall backtrack-route (rule-5-engines-pitch-and-pitch-on-beat rule list-voices 'get-all-beats) list-with-engine-nrs -1)
)))


(system::PWGLDef R-pitch-pitch-on-1st-beats-new ((rule nil)
                                             (list-voices '(0 1)))
    "This rule always prefer to backtrack the rhythm engine."
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((list-with-engine-nrs (apply 'append (loop for voice in list-voices collect (list (* 2 voice) (1+ (* 2 voice)))))))

    ;;;Prefered backtrack routes.
    (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                  'rule-n-engines-with-meter3)    ;next pitch engine
                                 ((= *bktr-ppNv-B* 2)
                                  'rule-n-engines-with-meter4)    ;next rhythm engine
                                 ((= *bktr-ppNv-B* 3)
                                  'rule-n-engines-with-meter5)    ;this pitch engine
                                 ((= *bktr-ppNv-B* 4)
                                  'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

      ; -1 is the flag to be replaced with the number for the metric engine
      (funcall backtrack-route (rule-5-engines-pitch-and-pitch-on-beat rule list-voices 'get-1st-down-beats) list-with-engine-nrs -1)
)))
)
