(in-package cluster-engine)

;July 2012
;Rules for how to stop a search before it reaches maximum index
;July 2013 - developed and fixed a bug

;(defvar *stop?* nil) ; this is defined in 02.engine.lisp

;;;;stop at time (2012/13)
(defun stoprule-n-rhythmengine-all-at-timepoint-OR (engines stoptime flag-for-metric-engine)
  "Formats a rule for stoptime in n engines. The engines have to be a rhythm engines. The rule checks if the START TIME of the variables have reached the stoptime.
The search stops when the strattime for variables in all specified engines include or have passed the given timepoint. The rule should be compiled before used."

  (setf stoptime (1+ stoptime))
    
  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))
        (list 'progn 'vlinear-solution 'vsolution-for-backjump 'vbackjump-indexes ;this is just to take away error message for unused variables
              (list 'let (list (list 'engines (list 'if flag-for-metric-engine (list 'append (list 'quote engines) '(list (1- (the fixnum (array-dimension vindex 0)))))
                                                    (list 'quote engines))))
                    (list 'if flag-for-metric-engine (list 'setf 'engines (list 'append (list 'quote engines) '(list (1- (the fixnum (array-dimension vindex 0))))))
                          (list 'setf 'engines (list 'quote engines)))

                    (list 'loop 'for 'test-engine 'in 'engines
                          'do (list 'when (list '>= (list 'get-current-index-starttime 'test-engine 'vindex 'vsolution) stoptime) 
                                    '(setf *stop?* t))   ;;;;; pwgl-print removed
                          )
                

                    t
                    ))))



(defun stoprule-time-OR (engines stoptime flag-for-metric-engine)
  (declare (type list engines))
  (declare (type number stoptime))
  (when (numberp engines) (setf engines (list engines)))
  (rule-n-engines3 (stoprule-n-rhythmengine-all-at-timepoint-OR engines stoptime flag-for-metric-engine) engines))



(defun stoprule-n-rhythmengine-all-at-timepoint-AND (engines stoptime flag-for-metric-engine)
  "Formats a rule for stoptime in n engines. The engines have to be a rhythm engines. The rule checks if the START TIME of the variables have reached the stoptime.
The search stops when the strattime for variables in all specified engines include or have passed the given timepoint. The rule should be compiled before used."

  (setf stoptime (1+ stoptime))
    
  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))
        (list 'progn 'vlinear-solution 'vsolution-for-backjump 'vbackjump-indexes 'engine;this is just to take away error message for unused variables
              (list 'let (list (list 'engines (list 'if flag-for-metric-engine (list 'append (list 'quote engines) '(list (1- (the fixnum (array-dimension vindex 0)))))
                                                    (list 'quote engines))))
;                    (list 'if flag-for-metric-engine (list 'setf 'engines (list 'append (list 'quote engines) '(list (1- (the fixnum (array-dimension vindex 0))))))
;                          (list 'setf 'engines (list 'quote engines)))
                    (list 'when (list 'apply-and (list 'loop 'for 'test-engine 'in 'engines
                                                       'collect (list '>= (list 'get-current-index-starttime 'test-engine 'vindex 'vsolution) stoptime))) 
                          '(setf *stop?* t))
                    t ;always true
                    ))))


(defun stoprule-time-AND (engines stoptime flag-for-metric-engine)
  (declare (type list engines))
  (declare (type number stoptime))
  (when (numberp engines) (setf engines (list engines)))
  (rule-n-engines3 (stoprule-n-rhythmengine-all-at-timepoint-AND engines stoptime flag-for-metric-engine) engines))


;;;stop at index (2013)
(defun set-stopflag-at-index (index engine) 
  (declare (type fixnum index engine))
  (progn (when (>= (aref cluster-engine::*vindex* engine) index) (setf cluster-engine::*stop?* t))
                                              t))

(defun stoprule-index-OR (engines stopindex)
  (declare (type list engines))
  (declare (type fixnum stopindex))
  (when (numberp engines) (setf engines (list engines)))
  (rule-n-engines3 (stoprule-n-engines-at-index-OR stopindex) engines))


(defun stoprule-n-engines-at-index-OR (stopindex)
  "Formats a rule for stopindex in the engine the rule is checked. The rule checks if the index of the variables have reached the stopindex.
The search stops when the index include or have passed the given stopindex. The rule should be compiled before used."

  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))
        (list 'progn 'vlinear-solution 'vsolution-for-backjump 'vbackjump-indexes 'vsolution 'vindex 'engine;this is just to take away error message for unused variables
              (list 'set-stopflag-at-index stopindex 'engine))
              t ;always true
              ))
;;;

;rule-n-engines3 (rule list-with-engine-nrs)
(defun stoprule (engines stoptime)
(when (numberp engines) (setf engines (list engines)))
  (rule-n-engines3 (stoprule-n-rhythmengine-all-at-timepoint engines stoptime) engines))