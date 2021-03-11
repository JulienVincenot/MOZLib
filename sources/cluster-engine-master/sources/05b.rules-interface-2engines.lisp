(in-package cluster-engine)

;;;;;;;;;;;;;;;;;;;;;TWO ENGINES;;;;;;;;;;;;;;;;;;;;;;;;
;
;       This file contains all the functions with 
;       rhythm/pitch rules in one voice.
;

(defun rule-2-engines-pitches-on-rhythm (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded.

This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let* (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index 'engine 'vindex 'vsolution))
                            (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                            (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                            (list 'total-notecount-current-engine (list 'if '(evenp engine) 'total-notecount 'total-pitchcount)))
                '(declare (type fixnum length-this-variable total-pitchcount total-notecount total-notecount-current-engine))       

                (list 'if (list 'and (list '>= 'total-pitchcount no-of-args)
                                (list '>= 'total-notecount no-of-args))
                      (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-notecount-current-engine 'notes-this-variable) (1- no-of-args)) 0) 
;min to avoid negative indexes at startpoints when rules have more than 1 argumnet
                            'to (list '- (list '1- (list 'min 'total-pitchcount 'total-notecount)) (1- no-of-args))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 1 'to no-of-args ;1 since notecount (below) starts from 1
                                                                   'collect (list 'list (list 'get-duration-at-notecount rhythm-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                                  (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution (list '+ 'notecount 'n))))))
                                      (list 'progn 
                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration (list '+ (list '1+ 'notecount) (1- no-of-args))
                                                                                                          ;this is to compensate for that the rule might have more than 1 input
                                                  'engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      't)))))


(defun index-rule-2-engines-pitches-on-rhythm-nth-note (simple-rule rhythm-engine pitch-engine nths)
  "Formats an index rule for rhythm-pitch pairs. Index (nth) refers to the position of the notes excluding rests (counting from 0).
The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-pitch rule."))
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'block 'this-rule
                (list 'when (list 'or (list '> last-nth (list '1- (list 'get-current-index-total-pitchcount pitch-engine 'vindex 'vsolution))) 
                                  (list '> last-nth (list '1- (list 'get-current-index-total-notecount rhythm-engine 'vindex 'vsolution))))
                      '(return-from this-rule t)) ;values for all indexes must exist before rule is checked

                (list 'progn 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                         (list 'apply (compile-if-not-compiled nil simple-rule)
                         (list 'loop 'for 'nth 'in (list 'quote nths)
                                  'collect (list 'list (list 'get-duration-at-notecount rhythm-engine 'vlinear-solution (list '1+ 'nth))
                                                 (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution (list '1+ 'nth)))))
                      )))))


(defun rule-2-engines-pitches-on-rhythm-include-rests (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes and rests are included."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'block 'this-rule

                (list 'cond (list (list '= 'engine rhythm-engine)

                                  (list 'let* (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index rhythm-engine 'vindex 'vsolution)))
                                                    (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                                                    (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                                                    (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                                    '(last-note-pitch-and-duration (min total-notecount total-pitchcount)))
                                        '(declare (type fixnum length-this-variable total-no-of-dur total-notecount total-pitchcount))
                                        ;probably it is not necessary to check if there are pitches, since the loop will stop if there are not any pitches
                                        (list 'loop 'for 'nth-duration 'from (list 'max (list '- 'total-no-of-dur 'length-this-variable (1- no-of-args)) 0)
                                              'to (list '- (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'last-note-pitch-and-duration) (1- no-of-args))
                                              'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                               (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                     'collect (list 'let (list (list 'this-duration (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                    '(declare (type number this-duration))
                                                                                                    (list 'if '(minusp this-duration)
                                                                                                          (list 'list 'this-duration nil)
                                                                                                          (list 'list 'this-duration
                                                                                                                (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                      (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 2)))))))))

                                                        (list 'progn 
                                                              (list 'set-vbackjump-indexes-from-failed-count-pitch-duration (list 'nth (list '+ 'nth-duration (1- no-of-args))
                                                                                                                                       ;this is to compensate for that the rule might have more than 1 input
                                                                                                                                  (list 'aref 'vlinear-solution rhythm-engine 2)) 
                                                                    rhythm-engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)
                                                              '(return nil)))
                                              'finally '(return t))))

                      (list (list '= 'engine pitch-engine)

                            (list 'let* (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index pitch-engine 'vindex 'vsolution)))
                                              (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                                              (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                              '(last-note-pitch-and-duration (min total-notecount total-pitchcount))
                                              (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0))))
                                  '(declare (type fixnum length-this-variable total-notecount total-pitchcount last-note-pitch-and-duration total-no-of-dur))



                                  (list 'when (list '< 'total-notecount '(- total-pitchcount (1- length-this-variable))) '(return-from this-rule t))
                                  ;check if notecount exists in rhythm engine, i.e. if there is any thing to check.

                                  (list 'let (list (list 'start-nth-duration (list 'get-position-for-duration-at-notecount-minus-preceeding-rests rhythm-engine 'vlinear-solution 
                                                                                   '(- total-pitchcount (1- length-this-variable))))
                                                   (list 'end-nth-duration (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 
                                                                                 'last-note-pitch-and-duration)))
                                        '(declare (type fixnum start-nth-duration end-nth-duration))




                                        (list 'loop 'for 'nth-duration 'from (list 'max (list '- 'start-nth-duration (1- no-of-args)) 0)
                                              'to (list '- 'end-nth-duration (1- no-of-args))
                                              'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                               (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                     'collect (list 'let (list (list 'this-duration (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                    '(declare (type number this-duration))
                                                                                                    (list 'if '(minusp this-duration)
                                                                                                          (list 'list 'this-duration nil)
                                                                                                          (list 'list 'this-duration
                                                                                                                (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                      (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 2)))))))))


                                                        (list 'progn 

                                                              (list 'set-vbackjump-indexes-from-failed-nth-duration (list '+ 'nth-duration (1- no-of-args))
                                                                     rhythm-engine 'vlinear-solution 'vbackjump-indexes 'vsolution-for-backjump)

                                                              '(return nil)))
                                               'finally '(return t))))))))
    ))



(defun index-rule-2-engines-pitches-on-rhythm-nth-duration-incl-rests (simple-rule rhythm-engine pitch-engine nths)
  "Formats an index rule for rhythm-pitch pairs. Index (nth) refers to the position of the duration including rests (counting from 0).
The rule should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-pitch rule."))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                           (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution)))
                '(declare (type fixnum total-no-of-dur total-pitchcount))

                (list 'block 'this-rule 'vsolution 'vindex
                      (list 'when (list 'not (list 'and (list '<= last-nth (list '1- 'total-no-of-dur)) 
                                                   (list '>= 'total-pitchcount (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution last-nth))))
                            '(return-from this-rule t)) ;values for all indexes must exist before rule is checked



                      (list 'progn 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                            (list 'apply (compile-if-not-compiled nil simple-rule)
                                  (list 'loop 'for 'nth 'in (list 'quote nths)
                                        'collect (list 'let (list (list 'duration (list 'nth 'nth (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                       (list 'if '(minusp duration)
                                                             '(list duration nil)
                                                             (list 'list 'duration
                                                                   (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'nth))))))
                                  )))))
    ))


;;;;;GRACE NOTES specific rules

(defun get-nth-for-dur-filter-gracenotes (rhythmseq)
  "This function returns the positions for all events BUT grace notes in rythmseq.
This is used to filter out grace notes."
  (declare (type list rhythmseq))
  (remove nil
          (loop for nth from 0 to (1- (length rhythmseq))
                collect (if (zerop (nth nth rhythmseq)) nil nth))))



(defun get-nth-for-dur-filter-rests-and-gracenotes (rhythmseq)
  "This function returns the positions for all events BUT grace notes and rests in rythmseq.
This is used to filter out grace notes and rests."
  ;; (declare (type list rhythmseq))
  (remove nil
          (loop for nth from 0 to (1- (length rhythmseq))
                collect (if (plusp (nth nth rhythmseq)) nth nil))))


(defun get-start-nth-pointer-durations (rhythmseq-nths first-nth no-args-in-rule)
  "Returns a pointer to rhythmseq-nths (not to vlinear-solution)!

rhythmseq-nths is a list with allowed positions in the rhythm sequence (typically after gracenotes have been filtered out).
first-nth is the first nth in the current variable (nth counted from the beginning of the sequence)
args-in-rule is the number of arguments the rule that will be checked has."
  ;; (declare (type list rhythmseq))
  (declare (type fixnum first-nth no-args-in-rule))

  ;find the position for the value - if it does not exist, use the following value
  (let ((position (position first-nth rhythmseq-nths :test #'(lambda (a b) (<= a b))))) 
    (if position
        (max (- position (1- no-args-in-rule)) 0) ;negative positions are not allowed
      nil)))


(defun get-end-nth-pointer-durations (rhythmseq-nths last-nth no-args-in-rule)
  "Returns a pointer to rhythmseq-nths (not to vlinear-solution)!

rhythmseq-nths is a list with allowed positions in the rhythm sequence (typically after gracenotes have been filtered out).
last-nth is the last nth in the current variable (nth counted from the beginning of the sequence)
args-in-rule is the number of arguments the rule that will be checked has."
  ;; (declare (type list rhythmseq))
  (declare (type fixnum last-nth no-args-in-rule))

  ;find the position for the value - if it does not exist, use the preceeding value
  (let ((position (position last-nth  rhythmseq-nths :test #'(lambda (a b) (>= a b)) :from-end t))) ;this can be NIL
          (declare (type t position))
          (if position
              (- position (1- no-args-in-rule))
            nil)  ;negative positions will stop the loop in the rule
          ))


(defun rule-2-engines-pitches-on-rhythm-exclude-gracenotes (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded.

This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'block 'this-rule

                (list 'let* (list 'start-nth-this-variable
                                  'end-nth-rhythm-pitch-pairs
                                  'start-nth-pointer-for-rulecheck
                                  'end-nth-pointer-for-rulecheck
                                  (list 'rhythmseq (list 'aref 'vlinear-solution rhythm-engine 0))
                                  (list 'positions-for-durations-no-gracenotes '(get-nth-for-dur-filter-rests-and-gracenotes rhythmseq))
                                  (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                  (list 'total-no-of-dur (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution)))
                      '(declare (type t start-nth-this-variable end-nth-rhythm-pitch-pairs start-nth-pointer-for-rulecheck end-nth-pointer-for-rulecheck)) ;start-nth-this-variable and end-nth-rhythm-pitch-pairs can be nil
                      '(declare (type fixnum total-pitchcount total-no-of-dur))
                      '(declare (type list positions-for-durations-no-gracenotes))

                      (list 'if (list '= 'engine rhythm-engine)
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index rhythm-engine 'vindex 'vsolution))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index 'engine 'vindex 'vsolution)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule t)) ;break rule if there is not a complete pair to check

                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule t)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule


                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution 'total-pitchcount))
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))

                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))
                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule t)) ;special case - first note is a grace note
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule t))

                      (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                            'to 'end-nth-pointer-for-rulecheck
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'let (list (list 'duration-position '(nth (+ n nth-pointer) positions-for-durations-no-gracenotes)))
                                                                                  '(declare (type fixnum duration-position))
                                                                                  (list 'list '(nth duration-position rhythmseq)
                                                                                        (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position)
                                                                                        )))))

                                      (list 'let (list (list 'notecount (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 
                                                                              '(nth nth-pointer positions-for-durations-no-gracenotes))))
                                            '(declare (type fixnum notecount))
                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration (list '+ (list '1+ 'notecount) (1- no-of-args))
                                                                                                          ;this is to compensate for that the rule might have more than 1 input
                                                  'engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t))
                
                      )))))



(defun rule-2-engines-pitches-on-rhythm-incl-rests-exclude-gracenotes (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded.

This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'block 'this-rule

                (list 'let* (list 'start-nth-this-variable
                                  'end-nth-rhythm-pitch-pairs
                                  'start-nth-pointer-for-rulecheck
                                  'end-nth-pointer-for-rulecheck
                                  (list 'rhythmseq (list 'aref 'vlinear-solution rhythm-engine 0))
                                  (list 'positions-for-durations-and-rests-no-gracenotes '(get-nth-for-dur-filter-gracenotes rhythmseq))
                                  (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                  (list 'total-no-of-dur (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution)))
                      '(declare (type t start-nth-this-variable end-nth-rhythm-pitch-pairs start-nth-pointer-for-rulecheck end-nth-pointer-for-rulecheck)) 
                      ;start-nth-this-variable and end-nth-rhythm-pitch-pairs can be nil so the type needs to be t
                      '(declare (type fixnum total-pitchcount total-no-of-dur))
                      '(declare (type list positions-for-durations-and-rests-no-gracenotes))

                      (list 'if (list '= 'engine rhythm-engine)
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index rhythm-engine 'vindex 'vsolution))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index 'engine 'vindex 'vsolution)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule t)) ;break rule if there is not a complete pair to check
                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule t)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule

                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'total-pitchcount))
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))

                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))

                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule t)) ;special case: grace notes start sequence
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule t))

                      (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                            'to 'end-nth-pointer-for-rulecheck
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'let* (list '(duration-position (nth (+ n nth-pointer) positions-for-durations-and-rests-no-gracenotes))
                                                                                              '(duration (nth duration-position rhythmseq)))
                                                                                  '(declare (type fixnum duration-position))
                                                                                  '(declare (type number duration))
                                                                                  (list 'if '(plusp duration)
                                                                                        (list 'list 'duration
                                                                                              (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position))
                                                                                        '(list duration nil))
                                                                                  ))))

                                      (list 'let (list (list 'notecount (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 
                                                                              '(nth nth-pointer positions-for-durations-and-rests-no-gracenotes))))
                                            '(declare (type fixnum notecount))
                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration (list '+ (list '1+ 'notecount) (1- no-of-args))
                                                                                                          ;this is to compensate for that the rule might have more than 1 input
                                                  'engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t))
                
                      )))))


;;;;;;;;SEGMENTS
;
;The key to understand how segments are created is to see how the loop breaks to the beginning of the 
;block "section-between-rests" when a rest is found.
;

(defun rule-2-engines-pitches-on-rhythm-segment-at-rests (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm motifs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'block 'this-rule

                (list 'let (list (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                 (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution)))

                      '(declare (type fixnum total-pitchcount total-notecount))
                      (list 'when (list 'or (list '< 'total-notecount no-of-args) (list '< 'total-pitchcount no-of-args))
                            '(return-from this-rule t)) ;since rests are not included, notecount has to be at least equal to number of arguments in the rule.

                      (list 'cond (list (list '= 'engine rhythm-engine)
                                        (list 'let* (list (list 'no-of-notes-and-rests (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution))
                                                          (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index rhythm-engine 'vindex 'vsolution)))
                                                          (list 'start-nth-in-rhythm-engine (list 'max (list '- 'no-of-notes-and-rests 'length-this-variable (1- no-of-args)) 0))
                                                          (list 'end-nth-in-rhythm-engine (list '- (list 'if '(> total-notecount total-pitchcount) 
                                                                                                         (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'total-pitchcount)
                                                                                                         '(1- no-of-notes-and-rests))
                                                                                                (1- no-of-args))))
                                              '(declare (type fixnum no-of-notes-and-rests length-this-variable start-nth-in-rhythm-engine end-nth-in-rhythm-engine))
                                        ;the check on top should assure there are pitches and durations at this point
                                              (list 'loop 'for 'nth-rhythm 'from 'start-nth-in-rhythm-engine
                                                    'to 'end-nth-in-rhythm-engine
                                                    'do (list 'when (list 'not (list 'block 'section-between-rests
                                                                                     (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                                 'collect (list 'let (list (list 'duration (list 'nth '(+ nth-rhythm n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                                '(declare (type number duration))
                                                                                                                (list 'when '(minusp duration) '(return-from section-between-rests t))
                                                                                                                (list 'list 'duration
                                                                                                                      (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                       ;below is notecount
                                                                                                                            (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution '(+ nth-rhythm n)))))))))
                                                              (list 'progn 
                                                        ;set backjump here
                                                                    (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                          (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution (list '+ 'nth-rhythm (1- no-of-args)))
                                                                          rhythm-engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)
                                                                    '(return nil)))
                                                    'finally '(return t))
                                              ))

                            (list (list '= 'engine pitch-engine)
                                  (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index pitch-engine 'vindex 'vsolution))))
                                        '(declare (type fixnum length-this-variable))

                                        (list 'when '(> (- total-pitchcount (1- length-this-variable)) total-notecount) '(return-from this-rule t)) ; no matching duration = nothing to check

                                        (list 'let* (list (list 'no-of-notes-and-rests (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution))
                                                  ;the check above should assure there is at leaast one pitch and duration that match
                                                         (list 'start-nth-in-rhythm-engine (list 'max (list '- (list 'get-position-for-duration-at-notecount-minus-preceeding-rests 
                                                                                                                     rhythm-engine 'vlinear-solution '(- total-pitchcount (1- length-this-variable)))
                                                                                                            (1- no-of-args))
                                                                                                 0))
                                                         (list 'end-nth-in-rhythm-engine (list '-
                                                                                               (list 'if '(>= total-notecount total-pitchcount) (list 'get-position-for-duration-at-notecount-incl-following-rests 
                                                                                                                                                      rhythm-engine 'vlinear-solution 'total-pitchcount)
                                                                                                     '(1- no-of-notes-and-rests))
                                                                                               (1- no-of-args))))
                                              '(declare (type fixnum no-of-notes-and-rests start-nth-in-rhythm-engine end-nth-in-rhythm-engine))

                                              (list 'loop 'for 'nth-rhythm 'from 'start-nth-in-rhythm-engine
                                                    'to 'end-nth-in-rhythm-engine
                                                    'do (list 'when (list 'not (list 'block 'section-between-rests
                                                                                     (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                           (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                                 'collect (list 'let (list (list 'duration (list 'nth '(+ nth-rhythm n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                                '(declare (type number duration))
                                                                                                                (list 'when '(minusp duration) '(return-from section-between-rests t))
                                                                                                                (list 'list 'duration
                                                                                                                      (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                       ;below is notecount
                                                                                                                            (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution '(+ nth-rhythm n)))))))))
                                                              (list 'progn 
                                                       ;set backjump here
                                                                    (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                                          (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution (list '+ 'nth-rhythm (1- no-of-args)))
                                                                          pitch-engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)
                                                                    '(return nil)))
                                                    'finally '(return t))
                                              ))))
                      )))))


(defun rule-2-engines-pitches-on-rhythm-segments-at-rests-exclude-gracenotes (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded.

This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'block 'this-rule

                (list 'let* (list 'start-nth-this-variable
                                  'end-nth-rhythm-pitch-pairs
                                  'start-nth-pointer-for-rulecheck
                                  'end-nth-pointer-for-rulecheck
                                  (list 'rhythmseq (list 'aref 'vlinear-solution rhythm-engine 0))
                                  (list 'positions-for-durations-and-rests-no-gracenotes '(get-nth-for-dur-filter-gracenotes rhythmseq))
                                  (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                  (list 'total-no-of-dur (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution)))
                      '(declare (type t start-nth-this-variable end-nth-rhythm-pitch-pairs start-nth-pointer-for-rulecheck end-nth-pointer-for-rulecheck)) 
                      ;start-nth-this-variable and end-nth-rhythm-pitch-pairs can be nil so the type needs to be t
                      '(declare (type fixnum total-pitchcount total-no-of-dur))
                      '(declare (type list positions-for-durations-and-rests-no-gracenotes))

                      (list 'if (list '= 'engine rhythm-engine)
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index rhythm-engine 'vindex 'vsolution))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index 'engine 'vindex 'vsolution)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule t)) ;break rule if there is not a complete pair to check
                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule t)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule

                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'total-pitchcount))
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))

                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))
                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule t)) ;special case: grace notes start sequence
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule t))

                      (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                            'to 'end-nth-pointer-for-rulecheck
                            'do (list 'when (list 'not (list 'block 'section-between-rests 
                                                             (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                   (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                         'collect (list 'let* (list '(duration-position (nth (+ n nth-pointer) positions-for-durations-and-rests-no-gracenotes))
                                                                                                    '(duration (nth duration-position rhythmseq)))
                                                                                        '(declare (type fixnum duration-position))
                                                                                        '(declare (type number duration))
                                                                                        (list 'when '(minusp duration) '(return-from section-between-rests t))
                                                                                        (list 'if '(plusp duration)
                                                                                              (list 'list 'duration
                                                                                                    (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position))
                                                                                              '(list duration nil))
                                                                                        )))))

                                      (list 'let (list (list 'notecount (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 
                                                                              '(nth nth-pointer positions-for-durations-and-rests-no-gracenotes))))
                                            '(declare (type fixnum notecount))
                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration (list '+ (list '1+ 'notecount) (1- no-of-args))
                                                                                                          ;this is to compensate for that the rule might have more than 1 input
                                                  'engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t))
                      )))))


;;;;;;duration-pitch list ALL upto the point where the rule is checked (two versions below)

(defun rule-2-engines-pitches-on-rhythm-include-rests-list-all (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for a list of all existing rhythm-pitch pairs in a voice. The rule should be compiled before used.
Gracenotes and rests are included. Pitch for a rest will be indicated as nil."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (when (/= no-of-args 1) (error "The r-rhythm-pitch-one-voice rule with the [rhythm/pitch-list-ALL] setting should have exactly one argument."))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'block 'this-rule
                'vsolution 'vindex 'vsolution-for-backjump 'VBACKJUMP-INDEXES 'ENGINE
                (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                                 (list 'total-no-of-pitches (list 'get-total-pitchcount pitch-engine 'vlinear-solution)))
                      '(declare (type fixnum total-no-of-dur total-no-of-pitches))
                      '(when (or (= total-no-of-dur 0) (= total-no-of-pitches 0))
                         (return-from this-rule t))
                      (list 'let* (list (list 'pitches (list 'aref 'vlinear-solution pitch-engine 0))
                                        (list 'durations (list 'aref 'vlinear-solution rhythm-engine 0))
                                        (list 'all-dur-pitch-pairs
                                              '(loop for n from 0 to (1- total-no-of-dur)
                                                     when (or pitches (minusp (the number (nth n durations)))) ;break if there is no more pitch to match
                                                     collect (if (minusp (the number (nth n durations)))
                                                                 (list (the number (nth n durations)) nil) ;rest
                                                               (list (the number (nth n durations)) (pop pitches))))));;;FIXED BUG May 28, 2020
                            '(declare (type list pitches durations all-dur-pitch-pairs))
                      
                            (list 'if (list 'not (list 'funcall (compile-if-not-compiled nil simple-rule) 'all-dur-pitch-pairs)) ;duration
                                  (list 'progn 
                                        (list 'cond (list (list '= 'engine pitch-engine)
                                                          (list 'set-vbackjump-indexes-from-failed-nth-duration '(1- (length all-dur-pitch-pairs))
                                                                rhythm-engine 'vlinear-solution 'vbackjump-indexes 'vsolution-for-backjump))
                                              (list (list '= 'engine rhythm-engine)
                                                    (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                          (list 'nth '(1- (length all-dur-pitch-pairs)) (list 'aref 'vlinear-solution rhythm-engine 2)) ;pitchcount 
                                                          rhythm-engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)))
                                        '(return-from this-rule nil))
                                  '(return-from this-rule t))))))))




(defun rule-2-engines-pitches-on-rhythm-include-rests-exclude-gracenotes-list-all (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for a list of all existing rhythm-pitch pairs in a voice. The rule should be compiled before used.
Rests are included, but grace notes are excluded. Pitch for a rest will be indicated as nil."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (when (/= no-of-args 1) (error "The r-rhythm-pitch-one-voice rule with the [rhythm/pitch-list-ALL] setting should have exactly one argument."))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'block 'this-rule
                'vsolution 'vindex 'vsolution-for-backjump 'VBACKJUMP-INDEXES 'ENGINE
                (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                                 (list 'total-no-of-pitches (list 'get-total-pitchcount pitch-engine 'vlinear-solution)))
                      '(declare (type fixnum total-no-of-dur total-no-of-pitches))
                      '(when (or (= total-no-of-dur 0) (= total-no-of-pitches 0))
                         (return-from this-rule t))
                      (list 'let* (list (list 'pitches (list 'aref 'vlinear-solution pitch-engine 0))
                                        (list 'durations (list 'aref 'vlinear-solution rhythm-engine 0))
                                        (list 'all-dur-pitch-pairs
                                              '(loop for n from 0 to (1- total-no-of-dur)
                                                     when (or pitches (minusp (the number (nth n durations)))) ;break if there is no more pitch to match
                                                     collect (if (minusp (the number (nth n durations)))
                                                                 (list (the number (nth n durations)) nil) ;rest
                                                               (list (the number (nth n durations)) (pop pitches)))));;;FIXED BUG May 28, 2020
                                        (list 'all-dur-pitch-pairs-excl-gracenotes '(remove-if #'(lambda (dur-pitch) (zerop (first dur-pitch))) all-dur-pitch-pairs))
                                              )
                            '(declare (type list pitches durations all-dur-pitch-pairs all-dur-pitch-pairs-excl-gracenotes))
                      
                            (list 'if (list 'not (list 'funcall (compile-if-not-compiled nil simple-rule) 'all-dur-pitch-pairs-excl-gracenotes)) ;duration
                                  (list 'progn ;the backjump is approximate, since it backjumps to the last event including gracenotes 
                                        (list 'cond (list (list '= 'engine pitch-engine) 
                                                          (list 'set-vbackjump-indexes-from-failed-nth-duration '(1- (length all-dur-pitch-pairs))
                                                                rhythm-engine 'vlinear-solution 'vbackjump-indexes 'vsolution-for-backjump))
                                              (list (list '= 'engine rhythm-engine)
                                                    (list 'set-vbackjump-indexes-from-failed-count-pitch-duration 
                                                          (list 'nth '(1- (length all-dur-pitch-pairs)) (list 'aref 'vlinear-solution rhythm-engine 2)) ;pitchcount 
                                                          rhythm-engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)))
                                        '(return-from this-rule nil))
                                  '(return-from this-rule t))))))))


;;;; added rules that accesses time points 2013

(defun rule-2-engines-pitches-on-rhythm-with-time (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. Gracenotes are included, but rests are excluded.
Format: '(dur onset pitch)

The rule should be compiled before used.
This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step)."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let* (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index 'engine 'vindex 'vsolution))
                            (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                            (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                            (list 'total-notecount-current-engine (list 'if '(evenp engine) 'total-notecount 'total-pitchcount)))
                '(declare (type fixnum length-this-variable total-pitchcount total-notecount total-notecount-current-engine))       

                (list 'if (list 'and (list '>= 'total-pitchcount no-of-args)
                                (list '>= 'total-notecount no-of-args))
                      (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-notecount-current-engine 'notes-this-variable) (1- no-of-args)) 0) 
;min to avoid negative indexes at startpoints when rules have more than 1 argumnet
                            'to (list '- (list '1- (list 'min 'total-pitchcount 'total-notecount)) (1- no-of-args))
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 1 'to no-of-args ;1 since notecount (below) starts from 1
                                                                   'collect (list 'list (list 'get-duration-at-notecount rhythm-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                                  (list '1- (list 'get-timepoint-at-notecount rhythm-engine 'vlinear-solution (list '+ 'notecount 'n)))
                                                                                  (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution (list '+ 'notecount 'n))))))
                                      (list 'progn 
                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration (list '+ (list '1+ 'notecount) (1- no-of-args))
                                                                                                          ;this is to compensate for that the rule might have more than 1 input
                                                  'engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t)
                            )
                      't)))))


(defun rule-2-engines-pitches-on-rhythm-with-time-exclude-gracenotes (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. Gracenotes are included, but rests are excluded.
Format: '(dur onset pitch)

The rule should be compiled before used.
This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))

          (list 'block 'this-rule

                (list 'let* (list 'start-nth-this-variable
                                  'end-nth-rhythm-pitch-pairs
                                  'start-nth-pointer-for-rulecheck
                                  'end-nth-pointer-for-rulecheck
                                  (list 'rhythmseq (list 'aref 'vlinear-solution rhythm-engine 0))
                                  (list 'positions-for-durations-no-gracenotes '(get-nth-for-dur-filter-rests-and-gracenotes rhythmseq))
                                  (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                  (list 'total-no-of-dur (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution)))
                      '(declare (type t start-nth-this-variable end-nth-rhythm-pitch-pairs start-nth-pointer-for-rulecheck end-nth-pointer-for-rulecheck)) ;start-nth-this-variable and end-nth-rhythm-pitch-pairs can be nil
                      '(declare (type fixnum total-pitchcount total-no-of-dur))
                      '(declare (type list positions-for-durations-no-gracenotes))

                      (list 'if (list '= 'engine rhythm-engine)
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index rhythm-engine 'vindex 'vsolution))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index 'engine 'vindex 'vsolution)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule t)) ;break rule if there is not a complete pair to check

                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule t)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule


                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution 'total-pitchcount))
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))

                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))
                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule t)) ;special case - first note is a grace note
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule t))

                      (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                            'to 'end-nth-pointer-for-rulecheck
                            'do (list 'when (list 'not (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                             (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                   'collect (list 'let (list (list 'duration-position '(nth (+ n nth-pointer) positions-for-durations-no-gracenotes)))
                                                                                  '(declare (type fixnum duration-position))
                                                                                  (list 'list '(nth duration-position rhythmseq)
                                                                                        (list '1- (list 'nth 'duration-position (list 'aref 'vlinear-solution rhythm-engine 1))) ; onset for this duration
                                                                                        (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position)
                                                                                        )))))

                                      (list 'let (list (list 'notecount (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 
                                                                              '(nth nth-pointer positions-for-durations-no-gracenotes))))
                                            '(declare (type fixnum notecount))
                                            (list 'set-vbackjump-indexes-from-failed-count-pitch-duration (list '+ (list '1+ 'notecount) (1- no-of-args))
                                                                                                          ;this is to compensate for that the rule might have more than 1 input
                                                  'engine rhythm-engine pitch-engine 'vbackjump-indexes 'vsolution-for-backjump)
                                            '(return nil)))
                            'finally '(return t))
                
                      )))))


;;;;;;;;;;;below should be reworked.


;(set-vbackjump-indexes-from-failed-count-pitch-duration failed-countvalue engine rhythm-engine pitch-engine vbackjump-indexes vsolution-for-backjump)


;(LAMBDA (VSOLUTION VLINEAR-SOLUTION VINDEX ENGINE) 
;  (DECLARE (TYPE array VSOLUTION VLINEAR-SOLUTION VINDEX)) 
;  (DECLARE (TYPE FIXNUM ENGINE)) 
;  (LET ((LENGTH-THIS-VARIABLE (LENGTH (GET-LAST-CELL-AT-CURRENT-INDEX ENGINE VINDEX VSOLUTION))) 
;        (TOTAL-PITCHCOUNT (GET-TOTAL-PITCHCOUNT 1 VLINEAR-SOLUTION)) 
;        (TOTAL-NOTECOUNT (GET-TOTAL-NOTECOUNT 0 VLINEAR-SOLUTION)) 
;        (TOTAL-NOTECOUNT-CURRENT-ENGINE (GET-TOTAL-NOTECOUNT ENGINE VLINEAR-SOLUTION))) 
;    (DECLARE (TYPE FIXNUM LENGTH-THIS-VARIABLE TOTAL-PITCHCOUNT TOTAL-NOTECOUNT TOTAL-NOTECOUNT-CURRENT-ENGINE)) 
;    (IF (AND (>= TOTAL-PITCHCOUNT 1) (>= TOTAL-NOTECOUNT 1)) 
;        (LOOP FOR NOTECOUNT FROM (MAX (- (- TOTAL-NOTECOUNT-CURRENT-ENGINE LENGTH-THIS-VARIABLE) 0) 0) TO (- (1- (MIN TOTAL-PITCHCOUNT TOTAL-NOTECOUNT)) 0) 
;              DO (WHEN (NOT (APPLY #<Function 1592 200DAAEA> 
;                                          (LOOP FOR N FROM 1 TO 1 
;                                                COLLECT (LIST (GET-DURATION-AT-NOTECOUNT 0 VLINEAR-SOLUTION (+ NOTECOUNT N)) 
;                                                              (GET-PITCH-AT-PITCHCOUNT 1 VLINEAR-SOLUTION (+ NOTECOUNT N)))))) (RETURN NIL)) 
;              FINALLY (RETURN T)) 
;      T)))


;MAYBE ENDPOINTS SHOULD BE REMOVED SINCE THEY MIGHT BE RESTS???

(defun rule-2-engines-rhythm-hierarchy (rhythm-engine1 rhythm-engine2)
  "Formats a rule for rhythm motifs. The rule should be compiled before used."
  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))

        (list 'if (list '= 'engine rhythm-engine1)
              (list 'let* (list (list 'endtime-engine2 (list 'get-current-index-endtime rhythm-engine2 'vindex 'vsolution))
                                (list 'timepoints-engine1 (list 'truncate-list-just-before-endpoint 'endtime-engine2 
                                                                (list 'remove-rests-from-list2 (list 'butlast (list 'get-rhythm-motif-onsets-at-current-index 'engine 'vindex 'vsolution)))))
                                (list 'timepoints-engine2 (list 'butlast (list 'aref 'vlinear-solution rhythm-engine2 1))))
                    '(declare (type list timepoints-engine1 timepoints-engine2))
                    '(declare (type number endtime-engine2))
                    (list 'if 'timepoints-engine2
                          (list 'if (list 'not '(subsetp timepoints-engine1 timepoints-engine2))
                                (list 'let (list (list 'endtime-engine1 (list 'car (list 'last 'timepoints-engine1))));;;;this is the last change ... ???
                                      '(declare (type number 'endtime-engine1))
                                      (list 'set-vbackjump-indexes-from-failed-timepoint-duration-duration 
                                            'endtime-engine1 rhythm-engine2 rhythm-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                      'nil)
                                't)
                          't))
              (list 'let* (list (list 'endtime-engine2 (list 'get-current-index-endtime rhythm-engine2 'vindex 'vsolution))
                                (list 'starttime-engine2 (list 'get-current-index-starttime rhythm-engine2 'vindex 'vsolution))
                                (list 'timepoints-engine1 (list 'remove-list-before-startpoint 'starttime-engine2
                                                                (list 'truncate-list-just-before-endpoint 'endtime-engine2 
                                                                      (list 'remove-rests-from-list2 (list 'butlast (list 'aref 'vlinear-solution rhythm-engine1 1))))))
                                (list 'timepoints-engine2 (list 'butlast (list 'get-rhythm-motif-onsets-at-current-index 'engine 'vindex 'vsolution))))
                    '(declare (type list timepoints-engine1 timepoints-engine2))
                    '(declare (type number endtime-engine2 starttime-engine2))
                    (list 'if (list 'not '(subsetp timepoints-engine1 timepoints-engine2))
                          (list 'progn
                                (list 'set-vbackjump-indexes-from-failed-timepoint-duration-duration 
                                      'endtime-engine2 rhythm-engine1 rhythm-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                
                                'nil)
                          't)
                          ))))







;(LAMBDA (VSOLUTION VLINEAR-SOLUTION VINDEX ENGINE) 
;  (DECLARE (TYPE array VSOLUTION VLINEAR-SOLUTION VINDEX)) 
;  (DECLARE (TYPE FIXNUM ENGINE)) 
;  (IF (= ENGINE 0) 
;      (LET* ((ENDTIME-ENGINE2 (GET-CURRENT-INDEX-ENDTIME 2 VINDEX VSOLUTION)) 
;             (TIMEPOINTS-ENGINE1 (TRUNCATE-LIST-AT-ENDPOINT ENDTIME-ENGINE2 (REMOVE-RESTS-FROM-LIST (GET-RHYTHM-MOTIF-ONSETS-AT-CURRENT-INDEX ENGINE VINDEX VSOLUTION)))) 
;             (TIMEPOINTS-ENGINE2 (AREF VLINEAR-SOLUTION 2 1))) 
;        (DECLARE (TYPE LIST TIMEPOINTS-ENGINE1 TIMEPOINTS-ENGINE2)) 
;        (DECLARE (TYPE NUMBER ENDTIME-ENGINE2)) 
;        (IF TIMEPOINTS-ENGINE2 
;            (SUBSETP TIMEPOINTS-ENGINE1 TIMEPOINTS-ENGINE2) 
;          T)) 
;    (LET* ((ENDTIME-ENGINE2 (GET-CURRENT-INDEX-ENDTIME 2 VINDEX VSOLUTION)) 
;           (STARTTIME-ENGINE2 (GET-CURRENT-INDEX-STARTTIME 2 VINDEX VSOLUTION)) 
;           (TIMEPOINTS-ENGINE1 (REMOVE-LIST-BEFORE-STARTPOINT STARTTIME-ENGINE2 (TRUNCATE-LIST-AT-ENDPOINT ENDTIME-ENGINE2 (REMOVE-RESTS-FROM-LIST (AREF VLINEAR-SOLUTION 0 1))))) 
;           (TIMEPOINTS-ENGINE2 (GET-RHYTHM-MOTIF-ONSETS-AT-CURRENT-INDEX ENGINE VINDEX VSOLUTION))) 
;      (DECLARE (TYPE LIST TIMEPOINTS-ENGINE1 TIMEPOINTS-ENGINE2)) 
;      (DECLARE (TYPE NUMBER ENDTIME-ENGINE2 STARTTIME-ENGINE2)) 
;      (SUBSETP TIMEPOINTS-ENGINE1 TIMEPOINTS-ENGINE2))))





(defun rule-two-engines1 (rule engine1 engine2)
"This is for rhythm and pitch in the same voice.
It prefers backtrack in the same engine.
This seems more succesful."
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine1 engine2)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    ;The backtrack route might not be ideal if more than 1 argument in rule
    (setf (aref vrule 2) (list (list engine1 engine2)(list engine2 engine1))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))

(defun rule-two-engines2 (rule engine1 engine2)
"This is for rhythm and pitch in the same voice.
It prefers backtracking in the other engine."
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine1 engine2)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    ;The backtrack route might not be ideal if more than 1 argument in rule
    (setf (aref vrule 2) (list (list engine2 engine1)(list engine1 engine2))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))


(defun rule-two-engines3 (rule engine1 engine2)
"This is for rhythm and meter in one voice.
It prefers backtracking in engine 1."
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine1 engine2)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    ;The backtrack route might not be ideal if more than 1 argument in rule
    (setf (aref vrule 2) (list (list engine1 engine2)(list engine1 engine2))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))

(defun rule-two-engines4 (rule engine1 engine2)
"This is for rhythm and meter in one voice.
It prefers backtracking in engine 2."
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine1 engine2)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    ;The backtrack route might not be ideal if more than 1 argument in rule
    (setf (aref vrule 2) (list (list engine2 engine1)(list engine2 engine1))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))


(defun rule-two-engines-tuplets-in-meter (rule rhythm-engine)
"This is for tuplets in metric grid. Metric engine is flagged with -1 (replaced later to correct number).
It indicates that the rhythm engine always is prefered to be backtracked."
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list rhythm-engine -1)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    ;The backtrack route might not be ideal if more than 1 argument in rule
    (setf (aref vrule 2) (list (list rhythm-engine -1) (list rhythm-engine -1))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))





;;;;;;;;;;;;;;;;EXPERIMENT


