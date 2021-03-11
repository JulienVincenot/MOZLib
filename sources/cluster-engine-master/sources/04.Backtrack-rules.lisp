(in-package cluster-engine)

;backtrack-rule1 is only for initial tests
;(defun backtrack-rule0 (vindex default-engine-order)
;       (get-nr-for-engine-with-highest-index vindex default-engine-order))

;(time (loop for n from 0 to 1000 do (remove-if #'(lambda (a) (member a '(1 2 3 4))) '(0 1 2 3 4 5 6 7 8 9))))
;(time (loop for n from 0 to 1000 do (let ((list '(0 1 2 3 4 5 6 7 8 9))) (loop for a in '(1 2 3 4) do (remove a list)) list)))

(defun backtrack-rule1 (vindex vbacktrack-engine nr-of-engines default-engine-order vnumber-of-candidates)
  "This rule uses the backtrack route from the rules to determine which engine to backtrack."
  (declare (type array vindex vbacktrack-engine vnumber-of-candidates))
  (declare (type fixnum nr-of-engines))
  (declare (type list default-engine-order))
  (let ((prefered-backtrack-engines (backtrackroute-from-failed-rules1 vbacktrack-engine nr-of-engines)))
    (declare (type list prefered-backtrack-engines))
    (loop for engine in (append prefered-backtrack-engines default-engine-order)
          while (< (aref vindex engine) 0)
          finally (return engine))))


;the below rule is not very elegant coded-------------
(defun backtrack-rule2 (vindex vbacktrack-engine nr-of-engines default-engine-order vnumber-of-candidates)
  "This rule uses the backtrack route from the rules to determine which engine to backtrack.
The engine with the highest index will be backtracked. "
  (declare (type array vindex vbacktrack-engine vnumber-of-candidates))
  (declare (type fixnum nr-of-engines))
  (declare (type list default-engine-order))
  (let* ((prefered-backtrack-engines (backtrackroute-from-failed-rules1 vbacktrack-engine nr-of-engines))
         (length-prefered-engines (loop for engine in prefered-backtrack-engines
                                        collect (aref vindex engine)))
         )
    (declare (type list prefered-backtrack-engines length-prefered-engines))
    ;; (declare (type fixnum highest-index))

;(print (list 'lengths length-prefered-engines) *cluster-engine-log-output*)
;(print (list 'engines prefered-backtrack-engines) *cluster-engine-log-output*)
    (if prefered-backtrack-engines
        (nth
         (position (apply 'max length-prefered-engines) length-prefered-engines)
         prefered-backtrack-engines)
      (loop for engine in default-engine-order
          while (< (aref vindex engine) 0) ;change to <= ???
          finally (return engine)))
    ))



(defun backtrack-rule3 (vindex vbacktrack-engine nr-of-engines default-engine-order vnumber-of-candidates)
  "This rule uses the backtack route from the rules to determine which engine to backtrack."
  (declare (type array vindex vbacktrack-engine vnumber-of-candidates))
  (declare (type fixnum nr-of-engines))
  (declare (type list default-engine-order))
  (let ((prefered-backtrack-engines (backtrackroute-from-failed-rules2 vbacktrack-engine vnumber-of-candidates nr-of-engines)))
    (declare (type list prefered-backtrack-engines))
    (loop for engine in (append prefered-backtrack-engines default-engine-order)
          while (< (aref vindex engine) 0)
          finally (return engine))))



(defun backtrackroute-from-failed-rules1 (vbacktrack-engine nr-of-engines)
  "This functions analyzes the vbacktrack-engine array, and checks which backtrack route is proposed most times.
All 1st preferencse are analyzed and sorted first, then all 2nd preferences, then all lower order preferences 
(as one final group). If the current engine exist in a preference level, it is always put as the most prefered 
backtrack route. 

The output is a list with the engine numbers in the order of which they are prefered as backtrack options."

  (declare (type array vbacktrack-engine))
  (declare (type fixnum nr-of-engines))
  (let* ((1st-priority-engine (remove nil (mapcar 'first (aref vbacktrack-engine 0))))
         (2nd-priority-engine (remove nil (mapcar 'second (aref vbacktrack-engine 0))))
         (low-priority-engine (apply 'append (remove nil (mapcar 'cddr (aref vbacktrack-engine 0)))))
         (all-engines (loop for n from 0 to (1- nr-of-engines) collect n))
         (1st-priority-count-engine  (loop for engine from 0 to (1- nr-of-engines)
                                           collect (count engine 1st-priority-engine)))
         1st-priority-engine-order 
         2nd-priority-engine-order
         low-priority-engine-order)
    (declare (type list 1st-priority-engine 2nd-priority-engine low-priority-engine all-engines 1st-priority-count-engine 
                   1st-priority-engine-order 2nd-priority-engine-order low-priority-engine-order))

    (setf 1st-priority-engine-order (sort (mapcar 'list 1st-priority-count-engine all-engines) '> :key 'first))
    (setf 1st-priority-engine-order (mapcar 'second (remove 0 1st-priority-engine-order :test #'(lambda (a b) (= a (car b))))))

    (when 2nd-priority-engine
      (let* ((2nd-priority-count-engine (loop for engine from 0 to (1- nr-of-engines)
                                              collect (count engine 2nd-priority-engine))))
        (declare (type list 2nd-priority-count-engine))
        (setf 2nd-priority-engine-order (sort (mapcar 'list 2nd-priority-count-engine all-engines) '> :key 'first))
        (setf 2nd-priority-engine-order (mapcar 'second (remove 0 2nd-priority-engine-order :test #'(lambda (a b) (= a (car b))))))
        ))
   
    (when low-priority-engine
      (let* ((low-priority-count-engine (loop for engine from 0 to (1- nr-of-engines)
                                              collect (count engine low-priority-engine))))
        (declare (type list low-priority-count-engine))
        (setf low-priority-engine-order (sort (mapcar 'list low-priority-count-engine all-engines) '> :key 'first))
        (setf low-priority-engine-order (mapcar 'second (remove 0 low-priority-engine-order :test #'(lambda (a b) (= a (car b))))))
        ))
    
    (remove-duplicates (append 1st-priority-engine-order 2nd-priority-engine-order low-priority-engine-order) :from-end t)))
    
;;;;;;;;;;;




(defun backtrackroute-from-failed-rules2 (vbacktrack-engine vnumber-of-candidates nr-of-engines)
  "This function is similar to backtrackroute-from-failed-rules1, but it balances the engines according to 
number of candidates in their domain: If there are many candidates, the test-rule gave it a higher weigth
since it was tested more times. This function divides its weight by the number of candidates to compensate.

The function analyzes the vbacktrack-engine array, and checks which backtrack route is proposed most times.
All 1st preferencse are analyzed and sorted first, then all 2nd preferences, then all lower order preferences 
(as one final group). If the current engine exist in a preference level, it is always put as the most prefered 
backtrack route. 

The output is a list with the engine numbers in the order of which they are prefered as backtrack options."

  (declare (type array vbacktrack-engine vnumber-of-candidates))
  (declare (type fixnum nr-of-engines))
  (let* ((1st-priority-engine (remove nil (mapcar 'first (aref vbacktrack-engine 0))))
         (2nd-priority-engine (remove nil (mapcar 'second (aref vbacktrack-engine 0))))
         (low-priority-engine (apply 'append (remove nil (mapcar 'cddr (aref vbacktrack-engine 0)))))
         (all-engines (loop for n from 0 to (1- nr-of-engines) collect n))
         (1st-priority-count-engine  (loop for engine from 0 to (1- nr-of-engines)
                                           collect (/ (count engine 1st-priority-engine) (aref vnumber-of-candidates engine))))
         1st-priority-engine-order 
         2nd-priority-engine-order
         low-priority-engine-order)
    (declare (type list 1st-priority-engine 2nd-priority-engine low-priority-engine all-engines 1st-priority-count-engine 
                   1st-priority-engine-order 2nd-priority-engine-order low-priority-engine-order))

    (setf 1st-priority-engine-order (sort (mapcar 'list 1st-priority-count-engine all-engines) '> :key 'first))
    (setf 1st-priority-engine-order (mapcar 'second (remove 0 1st-priority-engine-order :test #'(lambda (a b) (= a (car b))))))

    (when 2nd-priority-engine
      (let* ((2nd-priority-count-engine (loop for engine from 0 to (1- nr-of-engines)
                                              collect (/ (count engine 2nd-priority-engine) (aref vnumber-of-candidates engine)))))
        (declare (type list 2nd-priority-count-engine))
        (setf 2nd-priority-engine-order (sort (mapcar 'list 2nd-priority-count-engine all-engines) '> :key 'first))
        (setf 2nd-priority-engine-order (mapcar 'second (remove 0 2nd-priority-engine-order :test #'(lambda (a b) (= a (car b))))))
        ))
   
    (when low-priority-engine
      (let* ((low-priority-count-engine (loop for engine from 0 to (1- nr-of-engines)
                                              collect (/ (count engine low-priority-engine) (aref vnumber-of-candidates engine)))))
        (declare (type list low-priority-count-engine))
        (setf low-priority-engine-order (sort (mapcar 'list low-priority-count-engine all-engines) '> :key 'first))
        (setf low-priority-engine-order (mapcar 'second (remove 0 low-priority-engine-order :test #'(lambda (a b) (= a (car b))))))
        ))
    
    (remove-duplicates (append 1st-priority-engine-order 2nd-priority-engine-order low-priority-engine-order) :from-end t)))



