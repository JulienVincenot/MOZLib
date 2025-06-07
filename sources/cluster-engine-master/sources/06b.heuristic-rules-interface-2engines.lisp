(in-package cluster-engine)

;heuristic rules and heuristic switch rules are basically the same. Only the loop where the rule is checked differs:
;heuristic switch rules uses an "if" to determine if the weight should be applied or not.
;regular heuristic rules outputs the value of the rules.


(defun heuristic-switch-rule-2-engines-pitches-on-rhythm (simple-rule rhythm-engine pitch-engine weight)
  "Formats a heuristic switch rule for rhythm-pitch pairs. The rule (a logic statement) should be compiled before used.
Gracenotes are included, but rests are excluded."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let* (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate))
                            (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                            (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                            (list 'total-notecount-current-engine (list 'if '(evenp engine) 'total-notecount 'total-pitchcount)))
                '(declare (type fixnum length-this-variable total-pitchcount total-notecount total-notecount-current-engine))       

                (list 'if (list 'and (list '>= 'total-pitchcount no-of-args)
                                (list '>= 'total-notecount no-of-args))
                      (list 'average (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-notecount-current-engine 'notes-this-variable) (1- no-of-args)) 0) 
;min to avoid negative indexes at startpoints when rules have more than 1 argumnet
                                           'to (list '- (list '1- (list 'min 'total-pitchcount 'total-notecount)) (1- no-of-args))
                                           'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 1 'to no-of-args ;1 since notecount (below) starts from 1
                                                                          'collect (list 'list (list 'get-duration-at-notecount rhythm-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                                         (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution (list '+ 'notecount 'n)))))
                                                          weight
                                                          0)))
                      0)))))



(defun heuristic-rule-2-engines-pitches-on-rhythm (simple-rule rhythm-engine pitch-engine)
  "Formats a heuristic rule for rhythm-pitch pairs. The rule (a function that outputs a weight) should be compiled before used.
Gracenotes are included, but rests are excluded."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let* (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate))
                            (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                            (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                            (list 'total-notecount-current-engine (list 'if '(evenp engine) 'total-notecount 'total-pitchcount)))
                '(declare (type fixnum length-this-variable total-pitchcount total-notecount total-notecount-current-engine))       

                (list 'if (list 'and (list '>= 'total-pitchcount no-of-args)
                                (list '>= 'total-notecount no-of-args))
                      (list 'average (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-notecount-current-engine 'notes-this-variable) (1- no-of-args)) 0) 
;min to avoid negative indexes at startpoints when rules have more than 1 argumnet
                                           'to (list '- (list '1- (list 'min 'total-pitchcount 'total-notecount)) (1- no-of-args))
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                          (list 'loop 'for 'n 'from 1 'to no-of-args ;1 since notecount (below) starts from 1
                                                                'collect (list 'list (list 'get-duration-at-notecount rhythm-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                               (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution (list '+ 'notecount 'n)))))
                                           ))
                      0)))))




(defun heuristic-index-switch-rule-2-engines-pitches-on-rhythm-nth-note (simple-rule rhythm-engine pitch-engine nths weight)
  "Formats a heuristic switch index rule for rhythm-pitch pairs. Index (nth) refers to the position of the notes excluding rests (counting from 0).
The rule (a logic statement) should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-pitch rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let (list '(total-note-count 0) '(total-pitch-count 0))
                '(declare (type fixnum total-note-count total-pitch-count))

                (list 'if (list '= 'engine pitch-engine) ;this is necessary since it is a heuristic rule
                      (list 'progn (list 'setf 'total-pitch-count (list 'get-current-index-nth-total-notecount pitch-engine 'vindex 'vsolution 'nth-candidate))
                            (list 'setf 'total-note-count (list 'get-current-index-total-notecount rhythm-engine 'vindex 'vsolution)))
                      (list 'progn (list 'setf 'total-pitch-count (list 'get-current-index-total-notecount pitch-engine 'vindex 'vsolution))
                            (list 'setf 'total-note-count (list 'get-current-index-nth-total-notecount rhythm-engine 'vindex 'vsolution 'nth-candidate))))

          (list 'block 'this-rule
                (list 'when (list 'or (list '> last-nth (list '1- 'total-pitch-count)) 
                                  (list '> last-nth (list '1- 'total-note-count)))
                      '(return-from this-rule 0)) ;values for all indexes must exist before rule is checked

                (list 'if (list 'progn 'engine ;this is just to take away error message for unused variables
                                (list 'apply (compile-if-not-compiled nil simple-rule)
                                      (list 'loop 'for 'nth 'in (list 'quote nths)
                                            'collect (list 'list 
                                                           (list 'get-duration-at-notecount rhythm-engine 'vlinear-solution (list '1+ 'nth))
                                                           (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution (list '1+ 'nth))))))
                      weight
                      0)
                                )))))


(defun heuristic-index-rule-2-engines-pitches-on-rhythm-nth-note (simple-rule rhythm-engine pitch-engine nths)
  "Formats a heuristic index rule for rhythm-pitch pairs. Index (nth) refers to the position of the notes excluding rests (counting from 0).
The rule (a function that outputs a weight) should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-pitch rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let (list '(total-note-count 0) '(total-pitch-count 0))
                '(declare (type fixnum total-note-count total-pitch-count))

                (list 'if (list '= 'engine pitch-engine) ;this is necessary since it is a heuristic rule
                      (list 'progn (list 'setf 'total-pitch-count (list 'get-current-index-nth-total-notecount pitch-engine 'vindex 'vsolution 'nth-candidate))
                            (list 'setf 'total-note-count (list 'get-current-index-total-notecount rhythm-engine 'vindex 'vsolution)))
                      (list 'progn (list 'setf 'total-pitch-count (list 'get-current-index-total-notecount pitch-engine 'vindex 'vsolution))
                            (list 'setf 'total-note-count (list 'get-current-index-nth-total-notecount rhythm-engine 'vindex 'vsolution 'nth-candidate))))

          (list 'block 'this-rule
                (list 'when (list 'or (list '> last-nth (list '1- 'total-note-count)) 
                                  (list '> last-nth (list '1- 'total-pitch-count)))
                      '(return-from this-rule 0)) ;values for all indexes must exist before rule is checked

                (list 'progn 'engine ;this is just to take away error message for unused variables
                                (list 'apply (compile-if-not-compiled nil simple-rule)
                                      (list 'loop 'for 'nth 'in (list 'quote nths)
                                            'collect (list 'list (list 'get-duration-at-notecount rhythm-engine 'vlinear-solution (list '1+ 'nth))
                                                           (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution (list '1+ 'nth))))))
                                )))))



(defun heuristic-switch-rule-2-engines-pitches-on-rhythm-include-rests (simple-rule rhythm-engine pitch-engine weight)
  "Formats a heuristic switch rule for rhythm-pitch pairs. The rule (a logic statement) should be compiled before used.
Gracenotes and rests are included."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'block 'this-rule
                (list 'cond (list (list '= 'engine rhythm-engine)

                                  (list 'let* (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate)))
                                                    (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                                                    (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                                                    (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                                    '(last-note-pitch-and-duration (min total-notecount total-pitchcount)))
                                        '(declare (type fixnum length-this-variable total-no-of-dur total-notecount total-pitchcount))
                                        ;probably it is not necessary to check if there are pitches, since the loop will stop if there are not any pitches
                                        (list 'average (list 'loop 'for 'nth-duration 'from (list 'max (list '- 'total-no-of-dur 'length-this-variable (1- no-of-args)) 0)
                                                             'to (list '- (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'last-note-pitch-and-duration) (1- no-of-args))  ;CHANGED HERE
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'let (list (list 'this-duration (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                           '(declare (type number this-duration))
                                                                                                           (list 'if '(minusp this-duration)
                                                                                                                 (list 'list 'this-duration nil)
                                                                                                                 (list 'list 'this-duration
                                                                                                                       (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                             (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 2))))))))

                                                                            weight
                                                                            0)
                                                             ))))

                      (list (list '= 'engine pitch-engine)

                            (list 'let* (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth pitch-engine 'vindex 'vsolution 'nth-candidate)))
                                              (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                                              (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                              '(last-note-pitch-and-duration (min total-notecount total-pitchcount))
                                              (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0))))
                                  '(declare (type fixnum length-this-variable total-notecount total-pitchcount last-note-pitch-and-duration total-no-of-dur))



                                  (list 'when (list '< 'total-notecount '(- total-pitchcount (1- length-this-variable))) '(return-from this-rule 0))
                                  ;check if notecount exists in rhythm engine, i.e. if there is any thing to check.

                                  (list 'let (list (list 'start-nth-duration (list 'get-position-for-duration-at-notecount-minus-preceeding-rests rhythm-engine 'vlinear-solution 
                                                                                   '(- total-pitchcount (1- length-this-variable))))
                                                   (list 'end-nth-duration (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 
                                                                                 'last-note-pitch-and-duration)))  ;CHANGED HERE
                                        '(declare (type fixnum start-nth-duration end-nth-duration))




                                        (list 'average (list 'loop 'for 'nth-duration 'from (list 'max (list '- 'start-nth-duration (1- no-of-args)) 0)
                                                             'to (list '- 'end-nth-duration (1- no-of-args))
                                                             'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                      (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                            'collect (list 'let (list (list 'this-duration (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                           '(declare (type number this-duration))
                                                                                                           (list 'if '(minusp this-duration)
                                                                                                                 (list 'list 'this-duration nil)
                                                                                                                 (list 'list 'this-duration
                                                                                                                       (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                             (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 2))))))))
                                                                            weight
                                                                            0)
                                                             )))))
                      )))))


;average returns 0 if the list is empty
(defun heuristic-rule-2-engines-pitches-on-rhythm-include-rests (simple-rule rhythm-engine pitch-engine)
  "Formats a heuristic rule for rhythm-pitch pairs. The rule (a function that outputs a weight) should be compiled before used.
Gracenotes and rests are included."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'block 'this-rule
                (list 'cond (list (list '= 'engine rhythm-engine)

                                  (list 'let* (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate)))
                                                    (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                                                    (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                                                    (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                                    '(last-note-pitch-and-duration (min total-notecount total-pitchcount)))
                                        '(declare (type fixnum length-this-variable total-no-of-dur total-notecount total-pitchcount))
                                        ;probably it is not necessary to check if there are pitches, since the loop will stop if there are not any pitches
                                        (list 'average (list 'loop 'for 'nth-duration 'from (list 'max (list '- 'total-no-of-dur 'length-this-variable (1- no-of-args)) 0)
                                                             'to (list '- (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'last-note-pitch-and-duration) (1- no-of-args)) ;CHANGED HERE
                                                             'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                            (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                  'collect (list 'let (list (list 'this-duration (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                 '(declare (type number this-duration))
                                                                                                 (list 'if '(minusp this-duration)
                                                                                                       (list 'list 'this-duration nil)
                                                                                                       (list 'list 'this-duration
                                                                                                             (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                   (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 2))))))))


                                                             ))))

                      (list (list '= 'engine pitch-engine)

                            (list 'let* (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth pitch-engine 'vindex 'vsolution 'nth-candidate)))
                                              (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                                              (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                              '(last-note-pitch-and-duration (min total-notecount total-pitchcount))
                                              (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0))))
                                  '(declare (type fixnum length-this-variable total-notecount total-pitchcount last-note-pitch-and-duration total-no-of-dur))



                                  (list 'when (list '< 'total-notecount '(- total-pitchcount (1- length-this-variable))) '(return-from this-rule 0))
                                  ;check if notecount exists in rhythm engine, i.e. if there is any thing to check.

                                  (list 'let (list (list 'start-nth-duration (list 'get-position-for-duration-at-notecount-minus-preceeding-rests rhythm-engine 'vlinear-solution 
                                                                                   '(- total-pitchcount (1- length-this-variable))))
                                                   (list 'end-nth-duration (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 
                                                                                 'last-note-pitch-and-duration))) ;CHANGED HERE
                                        '(declare (type fixnum start-nth-duration end-nth-duration))




                                        (list 'average (list 'loop 'for 'nth-duration 'from (list 'max (list '- 'start-nth-duration (1- no-of-args)) 0)
                                                             'to (list '- 'end-nth-duration (1- no-of-args))
                                                             'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                            (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                  'collect (list 'let (list (list 'this-duration (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                 '(declare (type number this-duration))
                                                                                                 (list 'if '(minusp this-duration)
                                                                                                       (list 'list 'this-duration nil)
                                                                                                       (list 'list 'this-duration
                                                                                                             (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                   (list 'nth '(+ nth-duration n) (list 'aref 'vlinear-solution rhythm-engine 2))))))))

                                                             )))))
                      )))))




(defun heuristic-index-switch-rule-2-engines-pitches-on-rhythm-nth-duration-incl-rests (simple-rule rhythm-engine pitch-engine nths weigth)
  "Formats an heuristic switch index rule for rhythm-pitch pairs Index (nth) refers to the position of the duration including rests (counting from 0).
The rule (a logic statement) should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-pitch rule."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                           (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution)))
                '(declare (type fixnum total-no-of-dur total-pitchcount))

                (list 'block 'this-rule 'nth-candidate 'vsolution 'vindex
                      (list 'when (list 'not (list 'and (list '<= last-nth (list '1- 'total-no-of-dur)) 
                                                   (list '>= 'total-pitchcount (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution last-nth))))
                            '(return-from this-rule 0)) ;values for all indexes must exist before rule is checked



                      (list 'progn 'engine ;this is just to take away error message for unused variables
                            (list 'if (list 'apply (compile-if-not-compiled nil simple-rule)
                                            (list 'loop 'for 'nth 'in (list 'quote nths)
                                                  'collect (list 'let (list (list 'duration (list 'nth 'nth (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                 (list 'if '(minusp duration)
                                                                       '(list duration nil)
                                                                       (list 'list 'duration
                                                                             (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                   (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'nth)))))))
                                  weigth
                                  0)
                            ))))
    ))


(defun heuristic-index-rule-2-engines-pitches-on-rhythm-nth-duration-incl-rests (simple-rule rhythm-engine pitch-engine nths)
  "Formats an heuristic index rule for rhythm-pitch pairs. Index (nth) refers to the position of the duration including rests (counting from 0).
The rule (a function that outputs a weight) should be compiled before used."
  (let* ((no-of-args (length (function-lambda-list simple-rule)))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-pitch rule."))

    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                           (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution)))
                '(declare (type fixnum total-no-of-dur total-pitchcount))

                (list 'block 'this-rule 'nth-candidate 'vsolution 'vindex
                      (list 'when (list 'not (list 'and (list '<= last-nth (list '1- 'total-no-of-dur)) 
                                                   (list '>= 'total-pitchcount (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution last-nth))))
                            '(return-from this-rule 0)) ;values for all indexes must exist before rule is checked



                      (list 'progn 'engine ;this is just to take away error message for unused variables
                            (list 'apply (compile-if-not-compiled nil simple-rule)
                                            (list 'loop 'for 'nth 'in (list 'quote nths)
                                                  'collect (list 'let (list (list 'duration (list 'nth 'nth (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                 (list 'if '(minusp duration)
                                                                       '(list duration nil)
                                                                       (list 'list 'duration
                                                                             (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                   (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'nth)))))))

                            ))))
    ))


(defun heuristic-switch-rule-2-engines-pitches-on-rhythm-exclude-gracenotes (simple-rule rhythm-engine pitch-engine weight)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded.

This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

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
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule 0)) ;break rule if there is not a complete pair to check

                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule


                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution 'total-pitchcount))
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))
                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))
                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;special case - first note is a grace note
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule 0))

                      (list 'average (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                                           'to 'end-nth-pointer-for-rulecheck
                                           'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                          'collect (list 'let (list (list 'duration-position '(nth (+ n nth-pointer) positions-for-durations-no-gracenotes)))
                                                                                         '(declare (type fixnum duration-position))
                                                                                         (list 'list '(nth duration-position rhythmseq)
                                                                                               (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position)
                                                                                               ))))

                                                          weight
                                                          0)))
                      )))))



(defun heuristic-rule-2-engines-pitches-on-rhythm-exclude-gracenotes (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded.

This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

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
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule 0)) ;break rule if there is not a complete pair to check

                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule


                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution 'total-pitchcount))
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))
                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))
                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;special case - first note is a grace note
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule 0))

                      (list 'average (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                                           'to 'end-nth-pointer-for-rulecheck
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                          (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                'collect (list 'let (list (list 'duration-position '(nth (+ n nth-pointer) positions-for-durations-no-gracenotes)))
                                                                               '(declare (type fixnum duration-position))
                                                                               (list 'list '(nth duration-position rhythmseq)
                                                                                     (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position)
                                                                                     ))))
                                           ))
                      )))))



(defun heuristic-switch-rule-2-engines-pitches-on-rhythm-incl-rests-exclude-gracenotes (simple-rule rhythm-engine pitch-engine weight)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded.

This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'block 'this-rule

                (list 'let* (list 'start-nth-this-variable
                                  'end-nth-rhythm-pitch-pairs
                                  'start-nth-pointer-for-rulecheck
                                  'end-nth-pointer-for-rulecheck
                                  (list 'rhythmseq (list 'aref 'vlinear-solution rhythm-engine 0))
                                  (list 'positions-for-durations-and-rests-no-gracenotes '(get-nth-for-dur-filter-gracenotes rhythmseq))
                                  (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                  (list 'total-no-of-dur (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution)))
                      '(declare (type t start-nth-this-variable end-nth-rhythm-pitch-pairs start-nth-pointer-for-rulecheck end-nth-pointer-for-rulecheck)) ;start-nth-this-variable and end-nth-rhythm-pitch-pairs can be nil
                      '(declare (type fixnum total-pitchcount total-no-of-dur))
                      '(declare (type list positions-for-durations-and-rests-no-gracenotes))

                      (list 'if (list '= 'engine rhythm-engine)
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule 0)) ;break rule if there is not a complete pair to check
                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule

                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'total-pitchcount)) ;CHANGED HERE
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))

                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))

                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;special case: grace notes start sequence
         
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule 0))

                      (list 'average (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                                           'to 'end-nth-pointer-for-rulecheck
                                           'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                          'collect (list 'let* (list '(duration-position (nth (+ n nth-pointer) positions-for-durations-and-rests-no-gracenotes))
                                                                                                     '(duration (nth duration-position rhythmseq)))
                                                                                         '(declare (type fixnum duration-position))
                                                                                         '(declare (type number duration))
                                                                                         (list 'if '(plusp duration)
                                                                                               (list 'list 'duration
                                                                                                     (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position))
                                                                                               '(list duration nil))
                                                                                         )))
                                                          weight
                                                          0)))
                
                      )))))



(defun heuristic-rule-2-engines-pitches-on-rhythm-incl-rests-exclude-gracenotes (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded.

This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))


          (list 'block 'this-rule

                (list 'let* (list 'start-nth-this-variable
                                  'end-nth-rhythm-pitch-pairs
                                  'start-nth-pointer-for-rulecheck
                                  'end-nth-pointer-for-rulecheck
                                  (list 'rhythmseq (list 'aref 'vlinear-solution rhythm-engine 0))
                                  (list 'positions-for-durations-and-rests-no-gracenotes '(get-nth-for-dur-filter-gracenotes rhythmseq))
                                  (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                  (list 'total-no-of-dur (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution)))
                      '(declare (type t start-nth-this-variable end-nth-rhythm-pitch-pairs start-nth-pointer-for-rulecheck end-nth-pointer-for-rulecheck)) ;start-nth-this-variable and end-nth-rhythm-pitch-pairs can be nil
                      '(declare (type fixnum total-pitchcount total-no-of-dur))
                      '(declare (type list positions-for-durations-and-rests-no-gracenotes))

                      (list 'if (list '= 'engine rhythm-engine)
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule 0)) ;break rule if there is not a complete pair to check
                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule

                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'total-pitchcount))  ;CHANGED HERE
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))

                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))

                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;special case: grace notes start sequence
         
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule 0))

                      (list 'average (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                                           'to 'end-nth-pointer-for-rulecheck
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                          'collect (list 'let* (list '(duration-position (nth (+ n nth-pointer) positions-for-durations-and-rests-no-gracenotes))
                                                                                                     '(duration (nth duration-position rhythmseq)))
                                                                                         '(declare (type fixnum duration-position))
                                                                                         '(declare (type number duration))
                                                                                         (list 'if '(plusp duration)
                                                                                               (list 'list 'duration
                                                                                                     (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position))
                                                                                               '(list duration nil))
                                                                                         )))
                                                          ))
                
                      )))))



(defun heuristic-switch-rule-2-engines-pitches-on-rhythm-segment-at-rests (simple-rule rhythm-engine pitch-engine weight)
  "Formats a rule for rhythm motifs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'block 'this-rule

                (list 'let (list (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                 (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution)))

                      '(declare (type fixnum total-pitchcount total-notecount))
                      (list 'when (list 'or (list '< 'total-notecount no-of-args) (list '< 'total-pitchcount no-of-args))
                            '(return-from this-rule 0)) ;since rests are not included, notecount has to be at least equal to number of arguments in the rule.

                      (list 'cond (list (list '= 'engine rhythm-engine)
                                        (list 'let* (list (list 'no-of-notes-and-rests (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution))
                                                          (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate)))
                                                          (list 'start-nth-in-rhythm-engine (list 'max (list '- 'no-of-notes-and-rests 'length-this-variable (1- no-of-args)) 0))
                                                          (list 'end-nth-in-rhythm-engine (list '- (list 'if '(> total-notecount total-pitchcount) 
                                                                                                         (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'total-pitchcount)
                                                                                                         '(1- no-of-notes-and-rests))
                                                                                                (1- no-of-args))))
                                              '(declare (type fixnum no-of-notes-and-rests length-this-variable start-nth-in-rhythm-engine end-nth-in-rhythm-engine))
                                        ;the check on top should assure there are pitches and durations at this point
                                              (list 'average (list 'loop 'for 'nth-rhythm 'from 'start-nth-in-rhythm-engine
                                                                   'to 'end-nth-in-rhythm-engine
                                                                   'collect (list 'block 'section-between-rests
                                                                                  (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                                  (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                                        'collect (list 'let (list (list 'duration (list 'nth '(+ nth-rhythm n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                                       '(declare (type number duration))
                                                                                                                       (list 'when '(minusp duration) '(return-from section-between-rests 0))
                                                                                                                       (list 'list 'duration
                                                                                                                             (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                       ;below is notecount
                                                                                                                                   (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution '(+ nth-rhythm n)))))))
                                                                                        weight
                                                                                        0))
                                                                   ))))

                            (list (list '= 'engine pitch-engine)
                                  (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth pitch-engine 'vindex 'vsolution 'nth-candidate))))
                                        '(declare (type fixnum length-this-variable))

                                        (list 'when '(> (- total-pitchcount (1- length-this-variable)) total-notecount) '(return-from this-rule 0)) ; no matching duration = nothing to check

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

                                              (list 'average (list 'loop 'for 'nth-rhythm 'from 'start-nth-in-rhythm-engine
                                                                   'to 'end-nth-in-rhythm-engine
                                                                   'collect (list 'block 'section-between-rests
                                                                                  (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                                  (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                                        'collect (list 'let (list (list 'duration (list 'nth '(+ nth-rhythm n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                                       '(declare (type number duration))
                                                                                                                       (list 'when '(minusp duration) '(return-from section-between-rests 0))
                                                                                                                       (list 'list 'duration
                                                                                                                             (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                       ;below is notecount
                                                                                                                                   (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution '(+ nth-rhythm n)))))))
                                                                                        weight
                                                                                        0))
                                                                   ))))))
                      )))))




(defun heuristic-rule-2-engines-pitches-on-rhythm-segment-at-rests (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm motifs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'block 'this-rule

                (list 'let (list (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                                 (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution)))

                      '(declare (type fixnum total-pitchcount total-notecount))
                      (list 'when (list 'or (list '< 'total-notecount no-of-args) (list '< 'total-pitchcount no-of-args))
                            '(return-from this-rule 0)) ;since rests are not included, notecount has to be at least equal to number of arguments in the rule.

                      (list 'cond (list (list '= 'engine rhythm-engine)
                                        (list 'let* (list (list 'no-of-notes-and-rests (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution))
                                                          (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate)))
                                                          (list 'start-nth-in-rhythm-engine (list 'max (list '- 'no-of-notes-and-rests 'length-this-variable (1- no-of-args)) 0))
                                                          (list 'end-nth-in-rhythm-engine (list '- (list 'if '(> total-notecount total-pitchcount) 
                                                                                                         (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'total-pitchcount)
                                                                                                         '(1- no-of-notes-and-rests))
                                                                                                (1- no-of-args))))
                                              '(declare (type fixnum no-of-notes-and-rests length-this-variable start-nth-in-rhythm-engine end-nth-in-rhythm-engine))
                                        ;the check on top should assure there are pitches and durations at this point
                                              (list 'average (list 'loop 'for 'nth-rhythm 'from 'start-nth-in-rhythm-engine
                                                                   'to 'end-nth-in-rhythm-engine
                                                                   'collect (list 'block 'section-between-rests
                                                                                  (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                                  (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                                        'collect (list 'let (list (list 'duration (list 'nth '(+ nth-rhythm n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                                       '(declare (type number duration))
                                                                                                                       (list 'when '(minusp duration) '(return-from section-between-rests 0))
                                                                                                                       (list 'list 'duration
                                                                                                                             (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                       ;below is notecount
                                                                                                                                   (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution '(+ nth-rhythm n)))))))
                                                                                        )
                                                                   ))))

                            (list (list '= 'engine pitch-engine)
                                  (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth pitch-engine 'vindex 'vsolution 'nth-candidate))))
                                        '(declare (type fixnum length-this-variable))

                                        (list 'when '(> (- total-pitchcount (1- length-this-variable)) total-notecount) '(return-from this-rule 0)) ; no matching duration = nothing to check

                                        (list 'let (list (list 'no-of-notes-and-rests (list 'get-total-no-of-dur rhythm-engine 'vlinear-solution))
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

                                              (list 'average (list 'loop 'for 'nth-rhythm 'from 'start-nth-in-rhythm-engine
                                                                   'to 'end-nth-in-rhythm-engine
                                                                   'collect (list 'block 'section-between-rests
                                                                                  (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                                                  (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                                        'collect (list 'let (list (list 'duration (list 'nth '(+ nth-rhythm n) (list 'aref 'vlinear-solution rhythm-engine 0))))
                                                                                                                       '(declare (type number duration))
                                                                                                                       (list 'when '(minusp duration) '(return-from section-between-rests 0))
                                                                                                                       (list 'list 'duration
                                                                                                                             (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution 
                                                                                                                       ;below is notecount
                                                                                                                                   (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution '(+ nth-rhythm n)))))))
                                                                                        )
                                                                   ))))))
                      )))))




(defun heuristic-switch-rule-2-engines-pitches-on-rhythm-segments-at-rests-exclude-gracenotes (simple-rule rhythm-engine pitch-engine weight)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded.

This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

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
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule 0)) ;break rule if there is not a complete pair to check
                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule

                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'total-pitchcount))
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))

                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))

                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;special case: grace notes start sequence
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule 0))

                      (list 'average (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                                           'to 'end-nth-pointer-for-rulecheck
                                           'collect (list 'block 'section-between-rests 
                                                          (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                          (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                'collect (list 'let* (list '(duration-position (nth (+ n nth-pointer) positions-for-durations-and-rests-no-gracenotes))
                                                                                                           '(duration (nth duration-position rhythmseq)))
                                                                                               '(declare (type fixnum duration-position))
                                                                                               '(declare (type number duration))
                                                                                               (list 'when '(minusp duration) '(return-from section-between-rests 0))
                                                                                               (list 'if '(plusp duration)
                                                                                                     (list 'list 'duration
                                                                                                           (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position))
                                                                                                     '(list duration nil))
                                                                                               )))
                                                                weight
                                                                0))))             
                      )))))



(defun heuristic-rule-2-engines-pitches-on-rhythm-segments-at-rests-exclude-gracenotes (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. The rule should be compiled before used.
Gracenotes are included, but rests are excluded.

This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

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
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule 0)) ;break rule if there is not a complete pair to check
                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule

                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount-incl-following-rests rhythm-engine 'vlinear-solution 'total-pitchcount))
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))

                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-and-rests-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))

                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;special case: grace notes start sequence
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule 0))

                      (list 'average (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                                           'to 'end-nth-pointer-for-rulecheck
                                           'collect (list 'block 'section-between-rests 
                                                          (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                      'collect (list 'let* (list '(duration-position (nth (+ n nth-pointer) positions-for-durations-and-rests-no-gracenotes))
                                                                                                 '(duration (nth duration-position rhythmseq)))
                                                                                     '(declare (type fixnum duration-position))
                                                                                     '(declare (type number duration))
                                                                                     (list 'when '(minusp duration) '(return-from section-between-rests 0))
                                                                                     (list 'if '(plusp duration)
                                                                                           (list 'list 'duration
                                                                                                 (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position))
                                                                                           '(list duration nil))
                                                                                     )))
                                                          )))             
                      )))))

;;;;;;duration-pitch list ALL upto the point where the rule is checked (two versions below)

(defun heuristic-switch-rule-2-engines-pitches-on-rhythm-include-rests-list-all (simple-rule rhythm-engine pitch-engine weight)
  "Formats a heuristic switch for a list of all existing rhythm-pitch pairs in a voice. The rule should be compiled before used.
Gracenotes and rests are included. Pitch for a rest will be indicated as nil."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-rule
                'vsolution 'vindex 'engine
                (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                                 (list 'total-no-of-pitches (list 'get-total-pitchcount pitch-engine 'vlinear-solution)))
                      '(declare (type fixnum total-no-of-dur total-no-of-pitches))
                      '(when (or (= total-no-of-dur 0) (= total-no-of-pitches 0))
                         (return-from this-rule 0))
                      (list 'let* (list (list 'pitches (list 'aref 'vlinear-solution pitch-engine 0))
                                        (list 'durations (list 'aref 'vlinear-solution rhythm-engine 0))
                                        (list 'all-dur-pitch-pairs
                                              '(loop for n from 0 to (1- total-no-of-dur)
                                                     when (or pitches (minusp (the number (nth n durations)))) ;break if there is no more pitch to match
                                                     collect (if (minusp (the number (nth n durations)))
                                                                 (list (the number (nth n durations)) nil) ;rest
                                                               (list (the number (nth n durations))  (pop pitches)))))) ;FIXED BUG HERE OCTOBER 2022
                            '(declare (type list pitches durations all-dur-pitch-pairs))
                      
                            (list 'if (list 'funcall (compile-if-not-compiled nil simple-rule) 'all-dur-pitch-pairs) ;duration
                                  weight
                                  0)
                            ))))))


(defun heuristic-switch-rule-2-engines-pitches-on-rhythm-include-rests-exclude-gracenotes-list-all (simple-rule rhythm-engine pitch-engine weight)
  "Formats a heuristic switch rule for a list of all existing rhythm-pitch pairs in a voice. The rule should be compiled before used.
Rests are included, but grace notes are excluded.  Pitch for a rest will be indicated as nil."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-rule
                'vsolution 'vindex 'engine
                (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                                 (list 'total-no-of-pitches (list 'get-total-pitchcount pitch-engine 'vlinear-solution)))
                      '(declare (type fixnum total-no-of-dur total-no-of-pitches))
                      '(when (or (= total-no-of-dur 0) (= total-no-of-pitches 0))
                         (return-from this-rule 0))
                      (list 'let* (list (list 'pitches (list 'aref 'vlinear-solution pitch-engine 0))
                                        (list 'durations (list 'aref 'vlinear-solution rhythm-engine 0))
                                        (list 'all-dur-pitch-pairs
                                              '(loop for n from 0 to (1- total-no-of-dur)
                                                     when (or pitches (minusp (the number (nth n durations)))) ;break if there is no more pitch to match
                                                     collect (if (minusp (the number (nth n durations)))
                                                                 (list (the number (nth n durations)) nil) ;rest
                                                               (list (the number (nth n durations)) (pop pitches)))))  ;FIXED BUG HERE OCTOBER 2022
                                        (list 'all-dur-pitch-pairs-excl-gracenotes '(remove-if #'(lambda (dur-pitch) (zerop (first dur-pitch))) all-dur-pitch-pairs)))
                            '(declare (type list pitches durations all-dur-pitch-pairs all-dur-pitch-pairs-excl-gracenotes))
                      
                            (list 'if (list 'funcall (compile-if-not-compiled nil simple-rule) 'all-dur-pitch-pairs-excl-gracenotes) ;duration
                                  weight
                                  0)
                            ))))))


(defun heuristic-rule-2-engines-pitches-on-rhythm-include-rests-list-all (simple-rule rhythm-engine pitch-engine)
  "Formats a heuristic switch for a list of all existing rhythm-pitch pairs in a voice. The rule should be compiled before used.
Gracenotes and rests are included. Pitch for a rest will be indicated as nil."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-rule
                'vsolution 'vindex 'engine 'nth-candidate
                (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                                 (list 'total-no-of-pitches (list 'get-total-pitchcount pitch-engine 'vlinear-solution)))
                      '(declare (type fixnum total-no-of-dur total-no-of-pitches))
                      '(when (or (= total-no-of-dur 0) (= total-no-of-pitches 0))
                         (return-from this-rule 0))
                      (list 'let* (list (list 'pitches (list 'aref 'vlinear-solution pitch-engine 0))
                                        (list 'durations (list 'aref 'vlinear-solution rhythm-engine 0))
                                        (list 'all-dur-pitch-pairs
                                              '(loop for n from 0 to (1- total-no-of-dur)
                                                     when (or pitches (minusp (the number (nth n durations)))) ;break if there is no more pitch to match
                                                     collect (if (minusp (the number (nth n durations)))
                                                                 (list (the number (nth n durations)) nil) ;rest
                                                               (list (the number (nth n durations)) (pop pitches)))))) ;FIXED BUG HERE OCTOBER 2022
                            '(declare (type list pitches durations all-dur-pitch-pairs))
                      
                            (list 'funcall (compile-if-not-compiled nil simple-rule) 'all-dur-pitch-pairs) ;duration
                            ))))))


(defun heuristic-rule-2-engines-pitches-on-rhythm-include-rests-exclude-gracenotes-list-all (simple-rule rhythm-engine pitch-engine)
  "Formats a heuristic switch rule for a list of all existing rhythm-pitch pairs in a voice. The rule should be compiled before used.
Rests are included, but grace notes are excluded.  Pitch for a rest will be indicated as nil."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'block 'this-rule
                'vsolution 'vindex 'engine 'nth-candidate
                (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution rhythm-engine 0)))
                                 (list 'total-no-of-pitches (list 'get-total-pitchcount pitch-engine 'vlinear-solution)))
                      '(declare (type fixnum total-no-of-dur total-no-of-pitches))
                      '(when (or (= total-no-of-dur 0) (= total-no-of-pitches 0))
                         (return-from this-rule 0))
                      (list 'let* (list (list 'pitches (list 'aref 'vlinear-solution pitch-engine 0))
                                        (list 'durations (list 'aref 'vlinear-solution rhythm-engine 0))
                                        (list 'all-dur-pitch-pairs
                                              '(loop for n from 0 to (1- total-no-of-dur)
                                                     when (or pitches (minusp (the number (nth n durations)))) ;break if there is no more pitch to match
                                                     collect (if (minusp (the number (nth n durations)))
                                                                 (list (the number (nth n durations)) nil) ;rest
                                                               (list (the number (nth n durations)) (pop pitches)))))  ;FIXED BUG HERE OCTOBER 2022
                                        (list 'all-dur-pitch-pairs-excl-gracenotes '(remove-if #'(lambda (dur-pitch) (zerop (first dur-pitch))) all-dur-pitch-pairs)))
                            '(declare (type list pitches durations all-dur-pitch-pairs all-dur-pitch-pairs-excl-gracenotes))
                      
                            (list 'funcall (compile-if-not-compiled nil simple-rule) 'all-dur-pitch-pairs-excl-gracenotes) ;duration
                            ))))))


;;;added rule that accesses time point (2013)

(defun heuristic-switch-rule-2-engines-pitches-on-rhythm-with-time (simple-rule rhythm-engine pitch-engine weight)
  "Formats a rule for rhythm-pitch pairs. Gracenotes are included, but rests are excluded.
Format: '(dur onset pitch)

The rule should be compiled before used.
This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step)."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let* (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate))
                            (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                            (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                            (list 'total-notecount-current-engine (list 'if '(evenp engine) 'total-notecount 'total-pitchcount)))
                '(declare (type fixnum length-this-variable total-pitchcount total-notecount total-notecount-current-engine))       

                (list 'if (list 'and (list '>= 'total-pitchcount no-of-args)
                                (list '>= 'total-notecount no-of-args))
                      (list 'average (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-notecount-current-engine 'notes-this-variable) (1- no-of-args)) 0) 
;min to avoid negative indexes at startpoints when rules have more than 1 argumnet
                                           'to (list '- (list '1- (list 'min 'total-pitchcount 'total-notecount)) (1- no-of-args))
                                           'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 1 'to no-of-args ;1 since notecount (below) starts from 1
                                                                          'collect (list 'list (list 'get-duration-at-notecount rhythm-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                                         (list '1- (list 'get-timepoint-at-notecount rhythm-engine 'vlinear-solution (list '+ 'notecount 'n)))
                                                                                         (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution (list '+ 'notecount 'n)))))
                                                          weight
                                                          0)))

                      0)))))




(defun heuristic-rule-2-engines-pitches-on-rhythm-with-time (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. Gracenotes are included, but rests are excluded.
Format: '(dur onset pitch)

The rule should be compiled before used.
This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step)."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

          (list 'let* (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate))
                            (list 'total-pitchcount (list 'get-total-pitchcount pitch-engine 'vlinear-solution))
                            (list 'total-notecount (list 'get-total-notecount rhythm-engine 'vlinear-solution))
                            (list 'total-notecount-current-engine (list 'if '(evenp engine) 'total-notecount 'total-pitchcount)))
                '(declare (type fixnum length-this-variable total-pitchcount total-notecount total-notecount-current-engine))       

                (list 'if (list 'and (list '>= 'total-pitchcount no-of-args)
                                (list '>= 'total-notecount no-of-args))
                      (list 'average (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-notecount-current-engine 'notes-this-variable) (1- no-of-args)) 0) 
;min to avoid negative indexes at startpoints when rules have more than 1 argumnet
                                           'to (list '- (list '1- (list 'min 'total-pitchcount 'total-notecount)) (1- no-of-args))
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                          (list 'loop 'for 'n 'from 1 'to no-of-args ;1 since notecount (below) starts from 1
                                                                'collect (list 'list (list 'get-duration-at-notecount rhythm-engine 'vlinear-solution (list '+ 'notecount 'n))
                                                                               (list '1- (list 'get-timepoint-at-notecount rhythm-engine 'vlinear-solution (list '+ 'notecount 'n)))
                                                                               (list 'get-pitch-at-pitchcount pitch-engine 'vlinear-solution (list '+ 'notecount 'n)))))))

                      0)))))





(defun heuristic-switch-rule-2-engines-pitches-on-rhythm-with-time-exclude-gracenotes (simple-rule rhythm-engine pitch-engine weight)
  "Formats a rule for rhythm-pitch pairs. Gracenotes are included, but rests are excluded.
Format: '(dur onset pitch)

The rule should be compiled before used.
This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

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
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule 0)) ;break rule if there is not a complete pair to check

                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule


                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution 'total-pitchcount))
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))
                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))
                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;special case - first note is a grace note
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule 0))

                      (list 'average (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                                           'to 'end-nth-pointer-for-rulecheck
                                           'collect (list 'if (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                          'collect (list 'let (list (list 'duration-position '(nth (+ n nth-pointer) positions-for-durations-no-gracenotes)))
                                                                                         '(declare (type fixnum duration-position))
                                                                                         (list 'list '(nth duration-position rhythmseq)
                                                                                               (list '1- (list 'nth 'duration-position (list 'aref 'vlinear-solution rhythm-engine 1))) ; onset for this duration
                                                                                               (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position)
                                                                                               ))))

                                                          weight
                                                          0)))
                      )))))




(defun heuristic-rule-2-engines-pitches-on-rhythm-with-time-exclude-gracenotes (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for rhythm-pitch pairs. Gracenotes are included, but rests are excluded.
Format: '(dur onset pitch)

The rule should be compiled before used.
This rule seems more succesful if it backtracks the same engine (you need to take care of that in the next step."
  (let ((no-of-args (length (function-lambda-list simple-rule))))
    
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))

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
                            (list 'let (list (list 'length-this-variable (list 'length (list 'get-last-cell-at-current-index-nth rhythm-engine 'vindex 'vsolution 'nth-candidate))))
                                  '(declare (type fixnum length-this-variable))
                                  (list 'setf 'start-nth-this-variable '(- total-no-of-dur length-this-variable))
                                  (list 'when (list '> (list 'get-notecount-at-nth-duration rhythm-engine 'vlinear-solution 'start-nth-this-variable) 'total-pitchcount)
                                        '(setf start-nth-this-variable nil))) ;if there is no pitch at this point, set nil to interupt rule

                            (list 'let (list (list 'notes-this-variable (list 'count-notes-last-cell-at-current-index-nth 'engine 'vindex 'vsolution 'nth-candidate)))
                                  '(declare (type fixnum notes-this-variable))
                                  (list 'setf 'start-nth-this-variable (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution '(- total-pitchcount (1- notes-this-variable))))))
                
                      '(when (not start-nth-this-variable) (return-from this-rule 0)) ;break rule if there is not a complete pair to check

                      (list 'setf 'start-nth-pointer-for-rulecheck (list 'get-start-nth-pointer-durations 'positions-for-durations-no-gracenotes 'start-nth-this-variable no-of-args))
                      '(when (not start-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;break rule if there is, because of rests and gracenotes, is not enough pairs to check rule


                      (list 'setf 'end-nth-rhythm-pitch-pairs (list 'get-position-for-duration-at-notecount rhythm-engine 'vlinear-solution 'total-pitchcount))
                      '(when (not end-nth-rhythm-pitch-pairs) (setf end-nth-rhythm-pitch-pairs (1- total-no-of-dur)))
                      (list 'setf 'end-nth-pointer-for-rulecheck (list 'get-end-nth-pointer-durations 'positions-for-durations-no-gracenotes 'end-nth-rhythm-pitch-pairs no-of-args))
                      '(when (not end-nth-pointer-for-rulecheck) (return-from this-rule 0)) ;special case - first note is a grace note
                      '(when (< end-nth-pointer-for-rulecheck start-nth-pointer-for-rulecheck) (return-from this-rule 0))

                      (list 'average (list 'loop 'for 'nth-pointer 'from 'start-nth-pointer-for-rulecheck
                                           'to 'end-nth-pointer-for-rulecheck
                                           'collect (list 'apply (compile-if-not-compiled nil simple-rule) 
                                                                    (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                          'collect (list 'let (list (list 'duration-position '(nth (+ n nth-pointer) positions-for-durations-no-gracenotes)))
                                                                                         '(declare (type fixnum duration-position))
                                                                                         (list 'list '(nth duration-position rhythmseq)
                                                                                               (list '1- (list 'nth 'duration-position (list 'aref 'vlinear-solution rhythm-engine 1))) ; onset for this duration
                                                                                               (list 'get-pitch-for-duration-position rhythm-engine pitch-engine 'vlinear-solution 'duration-position)
                                                                                               ))))))
                      )))))



;;;


(defun heuristic-rule-two-engines (rule engine1 engine2)
  "Wraps a rule in a small array together with information regarding what engine it is valid for, and its backtracking route."
  (let ((compiled-rule (compile-if-not-compiled nil rule))
        (vrule (make-array '(2))))
    (setf (aref vrule 0) (list engine1 engine2)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
     ;no backtrack route in heuristic rules
    (make-heuristic-rule-instance vrule)))