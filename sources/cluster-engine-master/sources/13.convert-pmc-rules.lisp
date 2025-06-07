(in-package cluster-engine)


(defun convert-pmc-rule-to-lambda (code)
;  (setf code (remove '* (car code)))

  (let ((rule (polyengine-ify-symbols (car code))))
    (if (equal (car rule) '*)
        (let ((arg-list (cdr (loop for element in rule
                              while (not (listp element))
                              collect element)))
              (rule-code (cadr (loop for element in rule
                              while (not (listp element))
                              finally (return element)))))
          (list 'lambda arg-list rule-code)))))


(defun convert-pmc-rule-to-lambda-include-l-and-index (code)
;  (setf code (remove '* (car code)))

  (let ((rule code))
    (cond ((equal (car rule) '*)
           (let ((arg-list (cdr (loop for element in rule
                                      while (not (listp element))
                                      collect element)))
                 (rule-code (cadr (loop for element in rule
                                        while (not (listp element))
                                        finally (return element)))))

             (setf rule-code (polyengine-ify-a-symbol rule-code 'l))
             (setf rule-code (substitute-in-tree 'all-pitches 'l rule-code)) ;must look into subtrees

             (setf rule-code (polyengine-ify-a-symbol rule-code 'rl))
             (setf rule-code (substitute-in-tree '(reverse all-pitches) 'rl rule-code)) ;must look into subtrees

             (setf rule-code (polyengine-ify-a-symbol rule-code 'cur-index))
             (setf rule-code (substitute-in-tree '(1+ current-index) '(cur-index) rule-code))

             (setf rule-code (polyengine-ify-a-symbol rule-code 'len))
             (setf rule-code (substitute-in-tree '(length all-pitches) 'len rule-code))

             (list 'lambda (append arg-list '(all-pitches current-index)) rule-code)))
          ((equal (aref (symbol-name (car rule)) 0)  #\I)
           (let ((arg-list (loop for element in rule
                                 while (not (listp element))
                                 collect element))
                 (rule-code (cadr (loop for element in rule
                                        while (not (listp element))
                                        finally (return element)))))



             (setf rule-code (polyengine-ify-a-symbol rule-code 'l))
             (setf rule-code (substitute-in-tree 'all-pitches 'l rule-code)) ;must look into subtrees

             (setf rule-code (polyengine-ify-a-symbol rule-code 'rl))
             (setf rule-code (substitute-in-tree '(reverse all-pitches) 'rl rule-code)) ;must look into subtrees

             (setf rule-code (polyengine-ify-a-symbol rule-code 'cur-index))
             (setf rule-code (substitute-in-tree '(1+ current-index) '(cur-index) rule-code))

             (setf rule-code (polyengine-ify-a-symbol rule-code 'len))
             (setf rule-code (substitute-in-tree '(length all-pitches) 'len rule-code))

             (list 'lambda (append arg-list '(all-pitches current-index)) rule-code))

           ))))



(defun convert-jbs-rule-to-lambda-include-l-and-index (rule)
  "This conversion works for both true/false and heuristic rules. '(cur-slen) is not supported."


  (setf rule (polyengine-ify-a-symbol rule 'cur-slen))
  (when (item-in-tree? 'cur-slen rule)
    (error "One of the rules from the JBS-constraints library uses the '(cur-slen) expression. This is not a supported concept. 
By using the set-end box it is possible to redefine the '(cur-slen) to a given end-point."))

  (coerce ;;coarce added for SBCL (2015)
   (cond ((jbs-index-rule? rule)
          (setf rule (remove ':TRUE/FALSE rule))
          (setf rule (remove ':HEURISTIC rule))
          (when (equal (car rule) '*) (setf rule (cdr rule)))
          (let ((arg-list (loop for element in rule
                                while (not (listp element))
                                collect element))
                (rule-code (cadr (loop for element in rule
                                       while (not (listp element))
                                       finally (return element)))))

            (setf rule-code (polyengine-ify-a-symbol rule-code 'l))
            (setf rule-code (substitute-in-tree 'all-variables 'l rule-code)) ;must look into subtrees

            (setf rule-code (polyengine-ify-a-symbol rule-code 'rl))
            (setf rule-code (substitute-in-tree '(reverse all-variables) 'rl rule-code)) ;must look into subtrees

            (setf rule-code (polyengine-ify-a-symbol rule-code 'cur-index))
            (setf rule-code (substitute-in-tree '(1+ current-index) '(cur-index) rule-code))

            (setf rule-code (polyengine-ify-a-symbol rule-code 'len))
            (setf rule-code (substitute-in-tree '(length all-variables) 'len rule-code))

            (list 'lambda (append arg-list '(all-variables current-index)) rule-code)))
         ((jbs-wildcard-rule? rule)
          (setf rule (remove ':TRUE/FALSE rule))
          (setf rule (remove ':HEURISTIC rule))
          (let ((arg-list (cdr (loop for element in rule
                                     while (not (listp element))
                                     collect element)))
                (rule-code (cadr (loop for element in rule
                                       while (not (listp element))
                                       finally (return element)))))



            (setf rule-code (polyengine-ify-a-symbol rule-code 'l))
            (setf rule-code (substitute-in-tree 'all-variables 'l rule-code)) ;must look into subtrees

            (setf rule-code (polyengine-ify-a-symbol rule-code 'rl))
            (setf rule-code (substitute-in-tree '(reverse all-variables) 'rl rule-code)) ;must look into subtrees

            (setf rule-code (polyengine-ify-a-symbol rule-code 'cur-index))
            (setf rule-code (substitute-in-tree '(1+ current-index) '(cur-index) rule-code))

            (setf rule-code (polyengine-ify-a-symbol rule-code 'len))
            (setf rule-code (substitute-in-tree '(length all-variables) 'len rule-code))

            (list 'lambda (append arg-list '(all-variables current-index)) rule-code))))
   'function)
  )
  


(defun substitute-in-tree (newitem olditem tree)
  (cond ((equal tree olditem) newitem)
        ((listp tree) (loop for subtree in tree collect (substitute-in-tree newitem olditem subtree)))
        ((equal tree olditem) newitem)
        (t tree)))

(defun item-in-tree? (item tree)
  "Returns T if item exist somewhere in tree (on any level)."
  (cond ((equal tree item) t)
        ((listp tree) (eval (cons 'or (loop for subtree in tree collect (item-in-tree? item subtree)))))
        ((equal tree item) t)
        (t nil)))

(defun polyengine-ify-a-symbol (tree symbol)
  "Puts symbols into the cluster-engine package. This solves package-problem with the m symbol"
  (cond
    ((null tree)
     nil)
    ((consp tree)
     
     (cons (polyengine-ify-a-symbol (car tree) symbol)
	   (polyengine-ify-a-symbol (cdr tree) symbol)))
    ;; convert symbols that are not keywords
    ((and (symbolp tree) (not (keywordp tree)))
     (if (equal (symbol-name tree) (symbol-name symbol))
         (intern (symbol-name tree) #.(find-package 'cluster-engine))
       tree))
    (t tree)))


(defun pmcrule-1-engine-pitches (simple-rule this-engine)
  "Formats a rule for pitches in one engine. The simple-rule is a special format where the two last arguments passes the temporary solution and current index."
  (let ((no-of-args (- (length (function-lambda-list simple-rule)) 2)))
  
    (cond ((= no-of-args 0)
           (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
                 '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
                 '(declare (type fixnum engine))

                 'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables

                 (list 'apply (compile nil simple-rule) 
                       (list 'append 
                             (list 'list (list 'the 'list (list 'aref 'vlinear-solution this-engine 0)))
                             (list 'list (list 'the 'fixnum (list 'aref 'vindex this-engine))))))
           )
          (t
           (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
                 '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
                 '(declare (type fixnum engine))

                 'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                 (list 'let (list (list 'length-this-variable (list 'length (list 'the 'list (list 'get-last-cell-at-current-index this-engine 'vindex 'vsolution))))
                                  (list 'total-pitchcount (list 'get-total-pitchcount this-engine 'vlinear-solution)))
                       '(declare (type fixnum length-this-variable total-pitchcount))

                       (list 'if (list '>= 'total-pitchcount no-of-args)
                             (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-pitchcount 'length-this-variable) (1- no-of-args)) 0)

                                   'to (list '- (list '1- 'total-pitchcount) (1- no-of-args))
                                   'do (list 'when (list 'not (list 'apply (compile nil simple-rule) 
                                                                    (list 'append (list 'loop 'for 'n 'from 1 'to no-of-args
                                                                                        'collect (list 'get-pitch-at-pitchcount this-engine 'vlinear-solution (list '+ 'notecount 'n))) ;BUG HERE FIXED OCTOBER 2022
                                                                          (list 'list (list 'butlast (list 'the 'list (list 'aref 'vlinear-solution this-engine 0)) (list '- 'total-pitchcount  (list '+ 'notecount no-of-args))));;changed here
                                                                     ;The butlast is to hide variables that occur after the one beeing checked. This solves errors when motofs are used
                                                                     ;since the pmc would not understand this concept
                                                                          (list 'list (list 'the 'fixnum (list 'aref 'vindex this-engine))))))
                                             '(return nil))
                                   'finally '(return t)
                                   )
                             't)))))))


(defun pmcrule-1-engine-durations (simple-rule this-engine)
  "Formats a rule for durations in one engine. It includes rests as negative durations."
  (let ((no-of-args (- (length (function-lambda-list simple-rule)) 2)))

    (cond ((= no-of-args 0)
           (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
                 '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
                 '(declare (type fixnum engine))

                 'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                 (list 'apply (compile nil simple-rule) 
                       (list 'append 
                             (list 'list  (list 'the 'list (list 'aref 'vlinear-solution this-engine 0)))
                             (list 'list (list 'the 'fixnum (list 'aref 'vindex this-engine)))))
                       
                 ))
          (t
    
           (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
                 '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
                 '(declare (type fixnum engine))
                 (list 'let (list (list 'length-this-variable (list 'length (list 'the 'list (list 'get-last-cell-at-current-index this-engine 'vindex 'vsolution))))
                                  (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution this-engine 0))))
                       '(declare (type fixnum length-this-variable total-no-of-dur))

                       'vsolution 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                       (list 'if (list '>= 'total-no-of-dur no-of-args)
                             (list 'loop 'for 'duration-count 'from (list 'max (list '- (list '- 'total-no-of-dur 'length-this-variable) (1- no-of-args)) 0)

                                   'to (list '- (list '1- 'total-no-of-dur) (1- no-of-args))
                                   'do (list 'when (list 'not (list 'apply (compile nil simple-rule) 
                                                                    (list 'append (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                        'collect (list 'the 'number (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 0))))
                                                                          (list 'list (list 'butlast (list 'the 'list (list 'aref 'vlinear-solution this-engine 0)) (list '- 'total-no-of-dur  (list '+ 'duration-count no-of-args))))
                                                                     ;The butlast is to hide variables that occur after the one beeing checked. This solves errors when motifs are used
                                                                     ;since the pmc would not understand this concept
                                                                          (list 'list (list 'the 'fixnum (list 'aref 'vindex this-engine))))))
                                             '(return nil))
                                   'finally '(return t)
                                   )
                             't)))))))



(defun index-pmcrule-1-pitchengine-nth (simple-rule engine nths)
  "Formats a rule for rhythm or pitch motifs. The simple-rule is a special format where the two last arguments passes the temporary solution and current index."
  (let* ((no-of-args (- (length (function-lambda-list simple-rule)) 2))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-pitch rule."))
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'total-pitchcount (list 'get-total-pitchcount engine 'vlinear-solution)))
                '(declare (type fixnum total-pitchcount))
                (list 'block 'this-rule
                      (list 'when (list '> last-nth (list '1- 'total-pitchcount)) 
                            '(return-from this-rule t)) ;values for all indexes must exist before rule is checked
                      (list 'progn 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                            (list 'apply (compile nil simple-rule)
                                  (list 'append (list 'loop 'for 'nth 'in (list 'quote nths)
                                                      'collect (list 'get-pitch-at-pitchcount engine 'vlinear-solution (list '1+ 'nth)))
                                        (list 'list (list 'butlast (list 'aref 'vlinear-solution engine 0) (list '- (list '1- 'total-pitchcount)  last-nth)))
                                        (list 'list (list 'aref 'vindex engine))))
                            ))))))


(defun index-pmcrule-1-rhythmengine-nth (simple-rule engine nths)
  "Formats a rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (- (length (function-lambda-list simple-rule)) 2))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in index-rhythm rule."))
    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution engine 0))))
                '(declare (type fixnum total-no-of-dur))
                (list 'block 'this-rule
                      (list 'when (list '> last-nth (list '1- 'total-no-of-dur))
                            '(return-from this-rule t)) ;values for all indexes must exist before rule is checked
                      (list 'progn 'engine 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
                            (list 'apply (compile nil simple-rule)
                                  (list 'append (list 'loop 'for 'nth 'in (list 'quote nths)
                                                      'collect (list 'nth 'nth (list 'aref 'vlinear-solution engine 0)))
                                        (list 'list (list 'butlast (list 'aref 'vlinear-solution engine 0) (list '- (list '1- 'total-no-of-dur)  last-nth)))
                                        (list 'list (list 'aref 'vindex engine))))
                            ))))))


(defun pmcheuristicrule-1-engine-pitches (simple-rule this-engine)
  "Formats a heuristic rule for pitches in one engine. The simple-rule is a special format where the two last arguments passes the temporary solution and current index to the rule."
  (let ((no-of-args (- (length (function-lambda-list simple-rule)) 2)))
    
    (cond ((= no-of-args 0)
           (list 'lambda '(vsolution vlinear-solution vindex engine nth)
                 '(declare (type array vsolution vlinear-solution vindex))
                 '(declare (type fixnum engine nth))

                 'vsolution 'engine 'nth  ;this is just to take away error message for unused variables

                 (list 'apply (compile nil simple-rule) 
                       (list 'append 
                             (list 'list (list 'aref 'vlinear-solution this-engine 0))
                             (list 'list (list 'aref 'vindex this-engine)))))
           )
          (t
           (list 'lambda '(vsolution vlinear-solution vindex engine nth)
                 '(declare (type array vsolution vlinear-solution vindex))
                 '(declare (type fixnum engine nth))

                 'engine  ;this is just to take away error message for unused variables
                 (list 'let (list (list 'length-this-variable (list 'length (list 'get-nth-cell-at-current-index this-engine 'vindex 'vsolution 'nth)))
                                  (list 'total-pitchcount (list 'get-total-pitchcount this-engine 'vlinear-solution)))
                       '(declare (type fixnum length-this-variable total-pitchcount))
                       (list 'if (list '>= 'total-pitchcount no-of-args)
                             (list 'average (list 'loop 'for 'notecount 'from (list 'max (list '- (list '- 'total-pitchcount 'length-this-variable) (1- no-of-args)) 0)
                                                  'to (list '- (list '1- 'total-pitchcount) (1- no-of-args))
                                                  'collect (list 'apply (compile nil simple-rule) 
                                                                 (list 'append (list 'loop 'for 'n 'from 1 'to no-of-args
                                                                                     'collect (list 'get-pitch-at-pitchcount this-engine 'vlinear-solution (list '+ 'notecount 'n)))
                                                                       (list 'list (list 'butlast (list 'aref 'vlinear-solution this-engine 0) (list '- 'total-pitchcount  (list '+ 'notecount no-of-args))))
                                                                       (list 'list (list 'aref 'vindex this-engine))))))
                             0)))
           ))))


(defun pmcheuristicrule-1-engine-durations (simple-rule this-engine)
  "Formats a heuristic rule for durations in one engine. It includes rests as negative durations."
  (let ((no-of-args (- (length (function-lambda-list simple-rule)) 2)))
    
    (cond ((= no-of-args 0)
           (list 'lambda '(vsolution vlinear-solution vindex engine nth)
                 '(declare (type array vsolution vlinear-solution vindex))
                 '(declare (type fixnum engine nth))

                 'vsolution 'engine 'nth ;this is just to take away error message for unused variables
                 (list 'apply (compile nil simple-rule) 
                       (list 'append 
                             (list 'list  (list 'aref 'vlinear-solution this-engine 0))
                             (list 'list (list 'aref 'vindex this-engine)))))
           )
          (t
           (list 'lambda '(vsolution vlinear-solution vindex engine nth)
                 '(declare (type array vsolution vlinear-solution vindex))
                 '(declare (type fixnum engine nth))

                 (list 'let (list (list 'length-this-variable (list 'length (list 'get-nth-cell-at-current-index this-engine 'vindex 'vsolution 'nth)))
                                  (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution this-engine 0))))
                       '(declare (type fixnum length-this-variable total-no-of-dur))

                       'engine  ;this is just to take away error message for unused variables
                       (list 'if (list '>= 'total-no-of-dur no-of-args)
                             (list 'average (list 'loop 'for 'duration-count 'from (list 'max (list '- (list '- 'total-no-of-dur 'length-this-variable) (1- no-of-args)) 0)
                                                  'to (list '- (list '1- 'total-no-of-dur) (1- no-of-args))
                                                  'collect (list 'apply (compile nil simple-rule) 
                                                                 (list 'append (list 'loop 'for 'n 'from 0 'to (1- no-of-args)
                                                                                     'collect (list 'nth (list '+ 'duration-count 'n) (list 'aref 'vlinear-solution this-engine 0)))
                                                                       (list 'list (list 'butlast (list 'aref 'vlinear-solution this-engine 0) (list '- 'total-no-of-dur  (list '+ 'duration-count no-of-args))))
                                                                       (list 'list (list 'aref 'vindex this-engine))))))
                             0)))))
    ))



(defun index-pmcheuristicrule-1-pitchengine-nth (simple-rule engine nths)
  "Formats a rule for rhythm or pitch motifs. The simple-rule is a special format where the two last arguments passes the temporary solution and current index."
  (let* ((no-of-args (- (length (function-lambda-list simple-rule)) 2))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in heuristic index-pitch rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'total-pitchcount (list 'get-current-index-nth-total-notecount engine 'vindex 'vsolution 'nth-candidate)))
                (list 'block 'this-heuristicrule
                      (list 'when (list '> last-nth (list '1- 'total-pitchcount)) 
                            '(return-from this-heuristicrule 0)) ;values for all indexes must exist before rule is checked
                      (list 'progn 'engine  ;this is just to take away error message for unused variables
                            (list 'apply (compile nil simple-rule)
                                  (list 'append (list 'loop 'for 'nth 'in (list 'quote nths)
                                                      'collect (list 'get-pitch-at-pitchcount engine 'vlinear-solution (list '1+ 'nth)))
                                        (list 'list (list 'butlast (list 'aref 'vlinear-solution engine 0) (list '- (list '1- 'total-pitchcount)  last-nth)))
                                        (list 'list (list 'aref 'vindex engine))))
                            ))))))


(defun index-pmcheuristicrule-1-rhythmengine-nth (simple-rule engine nths)
  "Formats a rule for rhythm or pitch motifs. The rule should be compiled before used."
  (let* ((no-of-args (- (length (function-lambda-list simple-rule)) 2))
         (last-nth (apply 'max nths)))
    
    (when (/= (length nths) no-of-args) (error "Number of nths does not correspond to number of arguments in heuristic index-rhythm rule."))
    (list 'lambda '(vsolution vlinear-solution vindex engine nth-candidate)
          '(declare (type array vsolution vlinear-solution vindex))
          '(declare (type fixnum engine nth-candidate))
          (list 'let (list (list 'total-no-of-dur (list 'length (list 'aref 'vlinear-solution engine 0))))
                (list 'block 'this-heuristicrule
                      (list 'when (list '> last-nth (list '1- 'total-no-of-dur))
                            '(return-from this-heuristicrule 0)) ;values for all indexes must exist before rule is checked
                      (list 'progn 'engine  ;this is just to take away error message for unused variables
                            (list 'apply (compile nil simple-rule)
                                  (list 'append (list 'loop 'for 'nth 'in (list 'quote nths)
                                                      'collect (list 'nth 'nth (list 'aref 'vlinear-solution engine 0)))
                                        (list 'list (list 'butlast (list 'aref 'vlinear-solution engine 0) (list '- (list '1- 'total-no-of-dur)  last-nth)))
                                        (list 'list (list 'aref 'vindex engine))))
                            ))))))



(defun pmc-pitch-rule (rule engine)
  (cond ((equal (car rule) '*)
         (rule-one-engine (pmcrule-1-engine-pitches (convert-pmc-rule-to-lambda-include-l-and-index rule) engine) engine))
        ((equal (aref (symbol-name (car rule)) 0)  #\I)
         (rule-one-engine (index-pmcrule-1-pitchengine-nth (convert-pmc-rule-to-lambda-include-l-and-index rule) 
                                                           engine
                                                           (pmc-get-indexrule-indexes rule)) engine)
         )))

(defun pmc-pitch-rules (rules engine)
  (loop for rule in rules
        collect (pmc-pitch-rule rule engine)))

(defun pmc-rhythm-rule (rule engine)
  (cond ((equal (car rule) '*)
         (rule-one-engine (pmcrule-1-engine-durations (convert-pmc-rule-to-lambda-include-l-and-index rule) engine) engine))
        ((equal (aref (symbol-name (car rule)) 0)  #\I)
         (rule-one-engine (index-pmcrule-1-rhythmengine-nth (convert-pmc-rule-to-lambda-include-l-and-index rule) 
                                                            engine
                                                            (pmc-get-indexrule-indexes rule)) engine)
         )))


(defun pmc-rhythm-rules (rules engine)
  (loop for rule in rules
        collect (pmc-rhythm-rule rule engine)))


(defun jbs-pitch-rule (rule engine)
  (cond ((equal (car rule) :TRUE/FALSE)
         (jbs-true-false-pitch-rule rule engine))
        ((equal (car rule) :HEURISTIC)
         (jbs-heuristic-pitch-rule rule engine))))

(defun jbs-true-false-pitch-rule (rule engine)
  (cond ((jbs-index-rule? rule)
         (rule-one-engine (index-pmcrule-1-pitchengine-nth (convert-jbs-rule-to-lambda-include-l-and-index rule) 
                                                           engine
                                                           (jbs-get-indexrule-indexes rule)) engine))
        ((jbs-wildcard-rule? rule)
         (rule-one-engine (pmcrule-1-engine-pitches (convert-jbs-rule-to-lambda-include-l-and-index rule) engine) engine))
        ))

(defun jbs-heuristic-pitch-rule (rule engine)
  (cond ((jbs-index-rule? rule)
         (heuristic-rule-one-engine (index-pmcheuristicrule-1-pitchengine-nth (convert-jbs-rule-to-lambda-include-l-and-index rule) 
                                                                              engine
                                                                              (jbs-get-indexrule-indexes rule)) engine))
        ((jbs-wildcard-rule? rule)
         (heuristic-rule-one-engine (pmcheuristicrule-1-engine-pitches (convert-jbs-rule-to-lambda-include-l-and-index rule) engine) engine))
        ))

(defun jbs-rhythm-rule (rule engine)
  (cond ((equal (car rule) :TRUE/FALSE)
         (jbs-true-false-rhythm-rule rule engine))
        ((equal (car rule) :HEURISTIC)
         (jbs-heuristicrhythm-rule rule engine))))


(defun jbs-true-false-rhythm-rule (rule engine)
  (cond ((jbs-index-rule? rule)
         (rule-one-engine (index-pmcrule-1-rhythmengine-nth (convert-jbs-rule-to-lambda-include-l-and-index rule) 
                                                            engine
                                                            (jbs-get-indexrule-indexes rule)) engine))
        ((jbs-wildcard-rule? rule)
         (rule-one-engine (pmcrule-1-engine-durations (convert-jbs-rule-to-lambda-include-l-and-index rule) engine) engine))
        ))
         

(defun jbs-heuristicrhythm-rule (rule engine)
  (cond ((jbs-index-rule? rule)
         (heuristic-rule-one-engine (index-pmcheuristicrule-1-rhythmengine-nth (convert-jbs-rule-to-lambda-include-l-and-index rule) 
                                                                               engine
                                                                               (jbs-get-indexrule-indexes rule)) engine))
        ((jbs-wildcard-rule? rule)
         (heuristic-rule-one-engine (pmcheuristicrule-1-engine-durations (convert-jbs-rule-to-lambda-include-l-and-index rule) engine) engine))
        ))
        


(defun jbs-index-rule? (jbsrule)
  "This seems pretty complex because the jbs-constraints library typically leaves the '* also for the index rules. It also has to check that the items are symbols not to potentially crach rthe program. "
  (or
   (if (symbolp (second jbsrule))
       (equal (aref (symbol-name (second jbsrule)) 0)  #\I)
     nil)
   (if (symbolp (third jbsrule))
       (equal (aref (symbol-name (third jbsrule)) 0)  #\I)
     nil)))

(defun jbs-wildcard-rule? (jbsrule)
  "Since the jbs-constraint library often saves the '* even in the index rules, this is not a sure test. Only test this AFTER the jbs-index-rule? failed."
  (equal (aref (symbol-name (second jbsrule)) 0)  #\*)
       )

(defun jbs-get-indexrule-indexes (jbsrule)
  "It also converts indexes to be counted from 0, not 1."
  (setf jbsrule (remove ':TRUE/FALSE jbsrule))
  (setf jbsrule (remove ':HEURISTIC jbsrule))
  (when (equal (car jbsrule) '*) (setf jbsrule (cdr jbsrule)))

  (let ((arg-list (loop for element in jbsrule
                             while (not (listp element))
                             collect element)))
    (loop for arg in arg-list
          collect (1- (parse-integer (string-trim "I" arg))))))


(defun pmc-get-indexrule-indexes (rule)
  (let ((arg-list (loop for element in rule
                             while (not (listp element))
                             collect element)))
    (loop for arg in arg-list
          collect (1- (parse-integer (string-trim "I" arg))))))


;;;;-----

(defun pmc-insert-stop-rule-at-length (rule max-length)
  "This function inserts a stop point in a pmc formated rule (or a jbs formated rule).
Max-length is the nth value (counting from 1 - as in PMC) where the rule is checked. After 
this point the rule is bypassed."
  (loop for item in rule
        collect (if (listp item)
                    (list '?if (append (list 'if (list '<= 'len max-length))
                                            (cdr item)
                                            '(t)))
                  item)))
                         
  
(defun pmc-insert-stop-heuristic-rule-at-length (rule max-length)
  "This function inserts a stop point in a pmc formated rule (or a jbs formated rule).
Max-length is the nth value (counting from 1 - as in PMC) where the rule is checked. After 
this point the rule is bypassed."
  (loop for item in rule
        collect (if (listp item)
                    (list '?if (append (list 'if (list '<= 'len max-length))
                                            (cdr item)
                                            '(0)))
                  item)))


(defun rewrite-rule-with-stop (rule stop-nth)
  "Rewrites a rule and relplaces '(cur-slen) with stop-nth. The rule
will not be checked after this point."
  (setf rule (polyengine-ify-a-symbol rule 'cur-slen))
  (setf rule (substitute-in-tree stop-nth '(cur-slen) rule))
  (pmc-insert-stop-rule-at-length rule stop-nth))

(defun rewrite-heuristic-rule-with-stop (rule stop-nth)
  "Rewrites a rule and relplaces '(cur-slen) with stop-nth. The rule
will not be checked after this point."
  (setf rule (polyengine-ify-a-symbol rule 'cur-slen))
  (setf rule (substitute-in-tree stop-nth '(cur-slen) rule))
  (pmc-insert-stop-heuristic-rule-at-length rule stop-nth))


(defun rewrite-any-rule-with-stop (rule stop-nth)
  (cond ((equal (car rule) :TRUE/FALSE)
         (rewrite-rule-with-stop rule stop-nth))
        ((equal (car rule) :HEURISTIC)
         (rewrite-heuristic-rule-with-stop rule stop-nth))
        (t (error "Don't understand jbs-rule"))))



;;;;ADDED May 20, 2020

(in-package cluster-engine)

(defun pmc-insert-index-range-for-rule (rule start-index end-index)
  "This function inserts a stop point in a pmc formated rule (or a jbs formated rule).
Max-length is the nth value (counting from 1 - as in PMC) where the rule is checked. After 
this point the rule is bypassed."
  (loop for item in rule
        collect (if (listp item)
                    (list '?if (append (list 'if (list 'and (list '<= 'len end-index) (list '>= 'len start-index)))
                                            (cdr item)
                                            '(t)))
                  item)))
                         
(defun pmc-insert-index-range-for-heuristic-rule (rule start-index end-index)
  "This function inserts a stop point in a pmc formated rule (or a jbs formated rule).
Max-length is the nth value (counting from 1 - as in PMC) where the rule is checked. After 
this point the rule is bypassed."
  (loop for item in rule
        collect (if (listp item)
                    (list '?if (append (list 'if (list 'and (list '<= 'len end-index) (list '>= 'len start-index)))
                                            (cdr item)
                                            '(0)))
                  item)))

(defun rewrite-rule-with-index-range (rule start-index end-index)
  "Rewrites a rule and relplaces '(cur-slen) with stop-nth. The rule
will not be checked after this point."
  (setf rule (polyengine-ify-a-symbol rule 'cur-slen))
  (setf rule (substitute-in-tree end-index '(cur-slen) rule))
  (pmc-insert-index-range-for-rule rule start-index end-index))

(defun rewrite-heuristic-rule-with-index-range (rule start-index end-index)
  "Rewrites a rule and relplaces '(cur-slen) with stop-nth. The rule
will not be checked after this point."
  (setf rule (polyengine-ify-a-symbol rule 'cur-slen))
  (setf rule (substitute-in-tree end-index '(cur-slen) rule))
  (pmc-insert-index-range-for-heuristic-rule rule start-index end-index))

(defun rewrite-any-rule-with-index-range (rule start-nth end-nth)
  (cond ((equal (car rule) :TRUE/FALSE)
         (rewrite-rule-with-index-range rule start-nth end-nth))
        ((equal (car rule) :HEURISTIC)
         (rewrite-heuristic-rule-with-index-range rule start-nth end-nth))
        ((equal (car rule) '*)   ;pmc rules are asssumed to be strict
         (rewrite-rule-with-index-range rule start-nth end-nth))
        (t (error "Don't understand jbs-rule"))))