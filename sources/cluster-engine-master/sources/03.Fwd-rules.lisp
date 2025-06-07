(in-package cluster-engine)

;;;;;;;;;;;;;;;;;
;Fwd-rule1 is just to always get a solution. It does NOT balance engines.
(defun fwd-rule1 (vsolution vindex vbacktrack-history vdefault-engine-order number-of-engines)
  "Very simple: shortest index next, in order of default order"
  (declare (type array vsolution vindex vbacktrack-history vdefault-engine-order))
  (declare (type fixnum number-of-engines))
  vsolution ;this is just here to avoid error message when compiled
  (if (aref vbacktrack-history 0)
      (progn (pop (aref vbacktrack-history 3))
        (pop (aref vbacktrack-history 2))
        (pop (aref vbacktrack-history 1))
        (pop (aref vbacktrack-history 0))) ;forward to last backtracked engine
    (let ((min-index (apply 'min (loop for n in (aref vdefault-engine-order 0) collect (aref vindex n)))))
      (declare (type fixnum min-index))
      (loop for engine in (aref vdefault-engine-order 0)
            while (/= (aref vindex engine) min-index)
            finally (return engine)))))


;;;;;;;;;;;;;;;;;
;Fwd-rule-indep does not take backtrack history into consideration.
(defun fwd-rule-indep (vsolution vindex vbacktrack-history vdefault-engine-order number-of-engines)
  "Backtrack route is poped just to keep the list short. This could be removed.

1. Metric structure has to be longest.
2. Fill out pitches (for durations without pitches) in all voices - start with the voice with highest priority.
3. Search for rhythm in the voice that is most behind. If two or more are equal, the default search order determines 
which voice to search next."
  (declare (type array vsolution vindex vbacktrack-history vdefault-engine-order))
  (declare (type fixnum number-of-engines))

  (when (aref vbacktrack-history 0)
    (progn (pop (aref vbacktrack-history 3))
      (pop (aref vbacktrack-history 2))
      (pop (aref vbacktrack-history 1))
      (pop (aref vbacktrack-history 0)))) ;pop backtracked engine just to make the list shorter..

  (let* ((length-metric-engine (if (/= (aref vindex (car (aref vdefault-engine-order 3))) -1) 
                                   (get-current-index-endtime (car (aref vdefault-engine-order 3)) vindex vsolution) 0))
         (all-voices-total-length (get-total-duration-all-rhythm-engines vsolution vindex vdefault-engine-order))
         (max-voice-length (apply 'max all-voices-total-length))
         (min-voice-length (apply 'min all-voices-total-length))
         pitch-engine-with-missing-pitches)
    (declare (type number max-voice-length min-voice-length)) ;  length-metric-engin
    (declare (type list all-voices-total-length))
    (declare (type t pitch-engine-with-missing-pitches))

    (cond ((<= length-metric-engine max-voice-length)
           (car (aref vdefault-engine-order 3)))
          ((setf pitch-engine-with-missing-pitches (find-pitch-engine-with-missing-pitches vsolution vindex vdefault-engine-order))
           pitch-engine-with-missing-pitches)
          (t (find-shortest-rhythm-engine min-voice-length all-voices-total-length vdefault-engine-order)))

    ))


;;;;;;;;;;;;;;;;;
;Fwd-rule2 expects a matching rhythm engine for every pitch engine (a pitch engine without rhythm will be skipped). 
;It also expects a metric engine (it will crash without one).

(defun fwd-rule2 (vsolution vindex vbacktrack-history vdefault-engine-order number-of-engines)
 "If there is a backtrack routed, forward that engine (and pop the list). 

1. Metric structure has to be longest.
2. Fill out pitches (for durations without pitches) in all voices - start with the voice with highest priority.
3. Search for rhythm in the voice that is most behind. If two or more are equal, the default search order determines 
which voice to search next."
  (declare (type array vsolution vindex vbacktrack-history vdefault-engine-order))
  (declare (type fixnum number-of-engines))

  (if (aref vbacktrack-history 0)
      (progn (pop (aref vbacktrack-history 3))
        (pop (aref vbacktrack-history 2))
        (pop (aref vbacktrack-history 1))
        (pop (aref vbacktrack-history 0))) ;forward to last backtracked engine
    (let* ((length-metric-engine (if (/= (aref vindex (car (aref vdefault-engine-order 3))) -1) 
                                     (get-current-index-endtime (car (aref vdefault-engine-order 3)) vindex vsolution) 0))
           (all-voices-total-length (get-total-duration-all-rhythm-engines vsolution vindex vdefault-engine-order))
           (max-voice-length (apply 'max all-voices-total-length))
           (min-voice-length (apply 'min all-voices-total-length))
           pitch-engine-with-missing-pitches)
      (declare (type number max-voice-length min-voice-length)) ;  length-metric-engin 
      (declare (type list all-voices-total-length))
      (declare (type t pitch-engine-with-missing-pitches))

      (cond ((<= length-metric-engine max-voice-length)
             (car (aref vdefault-engine-order 3)))
            ((setf pitch-engine-with-missing-pitches (find-pitch-engine-with-missing-pitches vsolution vindex vdefault-engine-order))
             pitch-engine-with-missing-pitches)
            (t (find-shortest-rhythm-engine min-voice-length all-voices-total-length vdefault-engine-order)))

      )))

;;;---



(defun fwd-rule3 (vsolution vindex vbacktrack-history vdefault-engine-order number-of-engines)
  "This forward rule takes the index of the backtracked index into consideration.
If backtrack route is not at index, make a free choice.

1. Metric structure has to be longest.
2. Fill out pitches (for durations without pitches) in all voices - start with the voice with highest priority.
3. Search for rhythm in the voice that is most behind. If two or more are equal, the default search order determines 
which voice to search next."
  (declare (type array vsolution vindex vbacktrack-history vdefault-engine-order))
  (declare (type fixnum number-of-engines))

  (loop
   while (aref vbacktrack-history 0)
   do
   (cond ((= (1+ (aref vindex (car (aref vbacktrack-history 0)))) (car (aref vbacktrack-history 1)))
             ;if proposed backtrack engine is at the same index as at the point of backtracking: forward to this engine
          (pop (aref vbacktrack-history 3))
          (pop (aref vbacktrack-history 2))
          (pop (aref vbacktrack-history 1))
          (return-from fwd-rule3 (pop (aref vbacktrack-history 0))))
         ((> (1+ (aref vindex (car (aref vbacktrack-history 0)))) (car (aref vbacktrack-history 1)))
             ;if proposed backtrack engine is at a higher index than at the point of backtracking: loop backtrack-info until
             ;an index within the range is found.
          (pop (aref vbacktrack-history 3))
          (pop (aref vbacktrack-history 2))
          (pop (aref vbacktrack-history 1))
          (pop (aref vbacktrack-history 0)))
         (t
             ;if proposed backtrack engine is at a lower index than at the point of backtracking: return from loop and let other
             ;forward rules determine (until index will catch up).
          (return nil))))

  (let* ((length-metric-engine (if (/= (aref vindex (car (aref vdefault-engine-order 3))) -1) 
                                   (get-current-index-endtime (car (aref vdefault-engine-order 3)) vindex vsolution) 0))
         (all-voices-total-length (get-total-duration-all-rhythm-engines vsolution vindex vdefault-engine-order))
         (max-voice-length (apply 'max all-voices-total-length))
         (min-voice-length (apply 'min all-voices-total-length))
         pitch-engine-with-missing-pitches)
    (declare (type number max-voice-length min-voice-length)) ; length-metric-engin
    (declare (type list all-voices-total-length))
    (declare (type t pitch-engine-with-missing-pitches))

    (cond ((<= length-metric-engine max-voice-length)
           (car (aref vdefault-engine-order 3)))
          ((setf pitch-engine-with-missing-pitches (find-pitch-engine-with-missing-pitches vsolution vindex vdefault-engine-order))
           pitch-engine-with-missing-pitches)
          (t (find-shortest-rhythm-engine min-voice-length all-voices-total-length vdefault-engine-order)))

    ))


;;;---

(defun fwd-rule4 (vsolution vindex vbacktrack-history vdefault-engine-order number-of-engines)
  "This forward rule takes the index of the backtracked index into consideration.
If backtrack engine is not at index, backtrack engine without poping it (i.e. step forward this
engine and assign variables until index has caught up).

1. Metric structure has to be longest.
2. Fill out pitches (for durations without pitches) in all voices - start with the voice with highest priority.
3. Search for rhythm in the voice that is most behind. If two or more are equal, the default search order determines 
which voice to search next."
  (declare (type array vsolution vindex vbacktrack-history vdefault-engine-order))
  (declare (type fixnum number-of-engines))

  (loop
   while (aref vbacktrack-history 0)
   do
   (cond ((= (1+ (aref vindex (car (aref vbacktrack-history 0)))) (car (aref vbacktrack-history 1)))
             ;if proposed backtrack engine is at the same index as at the point of backtracking: forward to this engine
          (pop (aref vbacktrack-history 3))
          (pop (aref vbacktrack-history 2))
          (pop (aref vbacktrack-history 1))
          (return-from fwd-rule4 (pop (aref vbacktrack-history 0))))
         ((> (1+ (aref vindex (car (aref vbacktrack-history 0)))) (car (aref vbacktrack-history 1)))
             ;if proposed backtrack engine is at a higher index than at the point of backtracking: loop backtrack-info until
             ;an index within the range is found.
          (pop (aref vbacktrack-history 3))
          (pop (aref vbacktrack-history 2))
          (pop (aref vbacktrack-history 1))
          (pop (aref vbacktrack-history 0)))
         (t
             ;if proposed backtrack engine is at a lower index than at the point of backtracking: forward this engine 
             ;without poping it (until index will catch up).   
          (return-from fwd-rule4 (car (aref vbacktrack-history 0))))))

  (let* ((length-metric-engine (if (/= (aref vindex (car (aref vdefault-engine-order 3))) -1) 
                                   (get-current-index-endtime (car (aref vdefault-engine-order 3)) vindex vsolution) 0))
         (all-voices-total-length (get-total-duration-all-rhythm-engines vsolution vindex vdefault-engine-order))
         (max-voice-length (apply 'max all-voices-total-length))
         (min-voice-length (apply 'min all-voices-total-length))
         pitch-engine-with-missing-pitches)
    (declare (type number max-voice-length min-voice-length)) ; length-metric-engin
    (declare (type list all-voices-total-length))
    (declare (type t pitch-engine-with-missing-pitches))

    (cond ((<= length-metric-engine max-voice-length)
           (car (aref vdefault-engine-order 3)))
          ((setf pitch-engine-with-missing-pitches (find-pitch-engine-with-missing-pitches vsolution vindex vdefault-engine-order))
           pitch-engine-with-missing-pitches)
          (t (find-shortest-rhythm-engine min-voice-length all-voices-total-length vdefault-engine-order)))

    ))

;;;---


(defun fwd-rule5 (vsolution vindex vbacktrack-history vdefault-engine-order number-of-engines)
  "This forward rule takes the COUNT VALUE of the backtracked index into consideration.
If the backtracked engine is not at the count value, backtrack that engine without poping it (to catch up).
The metric layer considers index instead of count value.

Count value has the problem that rests are not counted in rhythm engines. Rests could slip trhough the system
and cause the engine to only generate rests for a backtracked engine.

1. Metric structure has to be longest.
2. Fill out pitches (for durations without pitches) in all voices - start with the voice with highest priority.
3. Search for rhythm in the voice that is most behind. If two or more are equal, the default search order determines 
which voice to search next."
  (declare (type array vsolution vindex vbacktrack-history vdefault-engine-order))
  (declare (type fixnum number-of-engines))

  (loop
   while (aref vbacktrack-history 0)
   do
   (progn (when (= (car (aref vbacktrack-history 0)) (1- number-of-engines))
          ;if the proposed backtrack engine is the metric engine, just bactrack it.
          ;This can definitely be more elegant done (i.e. more efficient)
            (pop (aref vbacktrack-history 3))
            (pop (aref vbacktrack-history 2))
            (pop (aref vbacktrack-history 1))
            (return-from fwd-rule5 (pop (aref vbacktrack-history 0))))
     (let ((current-index-total-notecount (if (>= (aref vindex (car (aref vbacktrack-history 0))) 0)
                                              (get-current-index-total-notecount (car (aref vbacktrack-history 0)) vindex vsolution)
                                            0)))
       (declare (type fixnum current-index-total-notecount))
       (cond
        ((= current-index-total-notecount (car (aref vbacktrack-history 2)))
          ;if the proposed backtrack engine has the same number of notes (or pitches) than at the moment of backtracking: forward to this engine
          ;and pop it
         (pop (aref vbacktrack-history 3))
         (pop (aref vbacktrack-history 2))
         (pop (aref vbacktrack-history 1))

         (return-from fwd-rule5 (pop (aref vbacktrack-history 0))))
        ((< current-index-total-notecount (car (aref vbacktrack-history 2)))
          ;if the proposed backtrack engine has a lower number of notes (or pitches) than at the moment of backtracking: forward according to  
          ;general rules (until the number of notes will catch up).  
          ;The reason for this is that rests in rhythm engines arenot counted and can make the system only pick rests (since count value 
          ;will not change). Change this in rule6 when time pont is considered....

         (return nil))
        ((> current-index-total-notecount (car (aref vbacktrack-history 2)))
          ;if the proposed backtrack engine has a higher number of notes (or pitches) than at the moment of backtracking: loop backtrack-info until
          ;an index within the range is found.
         (pop (aref vbacktrack-history 3))
         (pop (aref vbacktrack-history 2))
         (pop (aref vbacktrack-history 1))
         (pop (aref vbacktrack-history 0))
         )))))

  (let* ((length-metric-engine (if (/= (aref vindex (car (aref vdefault-engine-order 3))) -1) 
                                   (get-current-index-endtime (car (aref vdefault-engine-order 3)) vindex vsolution) 0))
         (all-voices-total-length (get-total-duration-all-rhythm-engines vsolution vindex vdefault-engine-order))
         (max-voice-length (apply 'max all-voices-total-length))
         (min-voice-length (apply 'min all-voices-total-length))
         pitch-engine-with-missing-pitches)
    (declare (type number max-voice-length min-voice-length)) ; length-metric-engin
    (declare (type list all-voices-total-length))
    (declare (type t pitch-engine-with-missing-pitches))

    (cond ((<= length-metric-engine max-voice-length)
           (car (aref vdefault-engine-order 3)))
          ((setf pitch-engine-with-missing-pitches (find-pitch-engine-with-missing-pitches vsolution vindex vdefault-engine-order))
           pitch-engine-with-missing-pitches)
          (t (find-shortest-rhythm-engine min-voice-length all-voices-total-length vdefault-engine-order)))

    ))

;;;---


(defun fwd-rule6 (vsolution vindex vbacktrack-history vdefault-engine-order number-of-engines)
  "This forward rule takes the COUNT VALUE AND TIME POINT  of the backtracked index into consideration.
If the backtracked engine is not at the count value (pitch engine) or time point (rhythm engine/metric engine), 
backtrack that engine without poping it (to catch up).

1. Metric structure has to be longest.
2. Fill out pitches (for durations without pitches) in all voices - start with the voice with highest priority.
3. Search for rhythm in the voice that is most behind. If two or more are equal, the default search order determines 
which voice to search next."
  (declare (type array vsolution vindex vbacktrack-history vdefault-engine-order))
  (declare (type fixnum number-of-engines))

  (loop
   while (aref vbacktrack-history 0)
   do
   (if (evenp (car (aref vbacktrack-history 0)))
       ;if the proposed backtrack engine has a time line, i.e. it is a metric or rhythm engine:
       ;Compare cureent end time with start time at the previous moment of backtracking
       (let ((current-index-end-time (get-current-index-endtime (car (aref vbacktrack-history 0)) vindex vsolution)))
         (cond ((= current-index-end-time (car (aref vbacktrack-history 3)))
                ;if the proposed backtrack engine has the same end time as at the moment of backtracking: forward to this engine
                ;and pop it
                (pop (aref vbacktrack-history 3))
                (pop (aref vbacktrack-history 2))
                (pop (aref vbacktrack-history 1))
                (return-from fwd-rule6 (pop (aref vbacktrack-history 0))))
               ((< current-index-end-time (car (aref vbacktrack-history 3)))
                ;if the proposed backtrack engine has an earlier end time than at the moment of backtracking: forward this engine  
                ;without poping it (until the number of notes will catch up).  
                (return-from fwd-rule6 (car (aref vbacktrack-history 0))))
               ((> current-index-end-time (car (aref vbacktrack-history 3)))
                ;if the proposed backtrack engine has a later end time than at the moment of backtracking: loop backtrack-info until
                ;a time point within the range is found.
                (pop (aref vbacktrack-history 3))
                (pop (aref vbacktrack-history 2))
                (pop (aref vbacktrack-history 1))
                (pop (aref vbacktrack-history 0)))))

     ;else (if it is a pitch engine)
     (let ((current-index-total-notecount (if (>= (aref vindex (car (aref vbacktrack-history 0))) 0)
                                              (get-current-index-total-notecount (car (aref vbacktrack-history 0)) vindex vsolution)
                                            0)))
       (declare (type fixnum current-index-total-notecount))
       (cond
        ((= current-index-total-notecount (car (aref vbacktrack-history 2)))
          ;if the proposed backtrack engine has the same number of notes (or pitches) than at the moment of backtracking: forward to this engine
          ;and pop it
         (pop (aref vbacktrack-history 3))
         (pop (aref vbacktrack-history 2))
         (pop (aref vbacktrack-history 1))
         (return-from fwd-rule6 (pop (aref vbacktrack-history 0))))
        ((< current-index-total-notecount (car (aref vbacktrack-history 2)))
          ;if the proposed backtrack engine has a lower number of notes (or pitches) than at the moment of backtracking: forward this engine  
          ;without poping it (until the number of notes will catch up).  
         (return-from fwd-rule6 (car (aref vbacktrack-history 0))))
        ((> current-index-total-notecount (car (aref vbacktrack-history 2)))
          ;if the proposed backtrack engine has a higher number of notes (or pitches) than at the moment of backtracking: loop backtrack-info until
          ;an index within the range is found.
         (pop (aref vbacktrack-history 3))
         (pop (aref vbacktrack-history 2))
         (pop (aref vbacktrack-history 1))
         (pop (aref vbacktrack-history 0))
         )))))

  (let* ((length-metric-engine (if (/= (aref vindex (car (aref vdefault-engine-order 3))) -1) 
                                   (get-current-index-endtime (car (aref vdefault-engine-order 3)) vindex vsolution) 0))
         (all-voices-total-length (get-total-duration-all-rhythm-engines vsolution vindex vdefault-engine-order))
         (max-voice-length (apply 'max all-voices-total-length))
         (min-voice-length (apply 'min all-voices-total-length))
         pitch-engine-with-missing-pitches)
    (declare (type number max-voice-length min-voice-length)) ; length-metric-engin
    (declare (type list all-voices-total-length))
    (declare (type t pitch-engine-with-missing-pitches))

    (cond ((<= length-metric-engine max-voice-length)
           (car (aref vdefault-engine-order 3)))
          ((setf pitch-engine-with-missing-pitches (find-pitch-engine-with-missing-pitches vsolution vindex vdefault-engine-order))
           pitch-engine-with-missing-pitches)
          (t (find-shortest-rhythm-engine min-voice-length all-voices-total-length vdefault-engine-order)))

    ))

;;;---


(defun fwd-rule6B (vsolution vindex vbacktrack-history vdefault-engine-order number-of-engines)
  "Identical to fwd-rule6 but:
If the backtracked engine is not at the count value (pitch engine) or time point (rhythm engine/metric engine), 
backtrack according to general rules.

1. Metric structure has to be longest.
2. Fill out pitches (for durations without pitches) in all voices - start with the voice with highest priority.
3. Search for rhythm in the voice that is most behind. If two or more are equal, the default search order determines 
which voice to search next."
  (declare (type array vsolution vindex vbacktrack-history vdefault-engine-order))
  (declare (type fixnum number-of-engines))

  (loop
   while (aref vbacktrack-history 0)
   do
   (if (evenp (car (aref vbacktrack-history 0)))
       ;if the proposed backtrack engine has a time line, i.e. it is a metric or rhythm engine:
       ;Compare cureent end time with start time at the previous moment of backtracking
       (let ((current-index-end-time (get-current-index-endtime (car (aref vbacktrack-history 0)) vindex vsolution)))
         (cond ((= current-index-end-time (car (aref vbacktrack-history 3)))
                ;if the proposed backtrack engine has the same end time as at the moment of backtracking: forward to this engine
                ;and pop it
                (pop (aref vbacktrack-history 3))
                (pop (aref vbacktrack-history 2))
                (pop (aref vbacktrack-history 1))
                (return-from fwd-rule6B (pop (aref vbacktrack-history 0))))
               ((< current-index-end-time (car (aref vbacktrack-history 3)))
                ;if the proposed backtrack engine has an earlier end time than at the moment of backtracking: forward this engine  
                ;without poping it (until the number of notes will catch up).  
                (return nil))
               ((> current-index-end-time (car (aref vbacktrack-history 3)))
                ;if the proposed backtrack engine has a later end time than at the moment of backtracking: loop backtrack-info until
                ;a time point within the range is found.
                (pop (aref vbacktrack-history 3))
                (pop (aref vbacktrack-history 2))
                (pop (aref vbacktrack-history 1))
                (pop (aref vbacktrack-history 0)))))

     ;else (if it is a pitch engine)
     (let ((current-index-total-notecount (if (>= (aref vindex (car (aref vbacktrack-history 0))) 0)
                                              (get-current-index-total-notecount (car (aref vbacktrack-history 0)) vindex vsolution)
                                            0)))
       (declare (type fixnum current-index-total-notecount))
       (cond
        ((= current-index-total-notecount (car (aref vbacktrack-history 2)))
          ;if the proposed backtrack engine has the same number of notes (or pitches) than at the moment of backtracking: forward to this engine
          ;and pop it
         (pop (aref vbacktrack-history 3))
         (pop (aref vbacktrack-history 2))
         (pop (aref vbacktrack-history 1))
         (return-from fwd-rule6B (pop (aref vbacktrack-history 0))))
        ((< current-index-total-notecount (car (aref vbacktrack-history 2)))
          ;if the proposed backtrack engine has a lower number of notes (or pitches) than at the moment of backtracking: forward this engine  
          ;without poping it (until the number of notes will catch up).  
         (return nil))
        ((> current-index-total-notecount (car (aref vbacktrack-history 2)))
          ;if the proposed backtrack engine has a higher number of notes (or pitches) than at the moment of backtracking: loop backtrack-info until
          ;an index within the range is found.
         (pop (aref vbacktrack-history 3))
         (pop (aref vbacktrack-history 2))
         (pop (aref vbacktrack-history 1))
         (pop (aref vbacktrack-history 0))
         )))))

  (let* ((length-metric-engine (if (/= (aref vindex (car (aref vdefault-engine-order 3))) -1) 
                                   (get-current-index-endtime (car (aref vdefault-engine-order 3)) vindex vsolution) 0))
         (all-voices-total-length (get-total-duration-all-rhythm-engines vsolution vindex vdefault-engine-order))
         (max-voice-length (apply 'max all-voices-total-length))
         (min-voice-length (apply 'min all-voices-total-length))
         pitch-engine-with-missing-pitches)
    (declare (type number max-voice-length min-voice-length)) ; length-metric-engin
    (declare (type list all-voices-total-length))
    (declare (type t pitch-engine-with-missing-pitches))

    (cond ((<= length-metric-engine max-voice-length)
           (car (aref vdefault-engine-order 3)))
          ((setf pitch-engine-with-missing-pitches (find-pitch-engine-with-missing-pitches vsolution vindex vdefault-engine-order))
           pitch-engine-with-missing-pitches)
          (t (find-shortest-rhythm-engine min-voice-length all-voices-total-length vdefault-engine-order)))

    ))


;;;---


(defun find-pitch-engine-with-missing-pitches (vsolution vindex vdefault-engine-order)
  (declare (type array vsolution vindex vdefault-engine-order))
;(print vsolution *cluster-engine-log-output*)
  (loop for rhythm-engine in (aref vdefault-engine-order 1)
        do (let ((pitch-engine (1+ rhythm-engine)))
             (when (member pitch-engine (aref vdefault-engine-order 2))
               (let ((nr-of-pitches (if (/= (aref vindex pitch-engine) -1) (get-current-index-total-pitchcount pitch-engine vindex vsolution) 0))
                     (nr-of-notes (if (/= (aref vindex rhythm-engine) -1) (get-current-index-total-notecount rhythm-engine vindex vsolution) 0)))
                 (when (> nr-of-notes nr-of-pitches) (return pitch-engine)))))
        finally (return nil))) ;this means that all pitch engines are OK


(defun find-shortest-rhythm-engine (min-voice-length all-voices-total-length vdefault-engine-order)
  (declare (type number min-voice-length))

  (declare (type list all-voices-total-length))
  (declare (type array vdefault-engine-order))
  (loop for engine in (aref vdefault-engine-order 1)
        for total-length in all-voices-total-length
        do (when (= total-length min-voice-length) (return engine))))


(defun get-total-duration-all-rhythm-engines (vsolution vindex vdefault-engine-order)
  (declare (type array vsolution vindex vdefault-engine-order))
  (loop for engine in (aref vdefault-engine-order 1)
        collect (if (/= (aref vindex engine) -1) (get-current-index-endtime engine vindex vsolution) 0)))



;;;;;;;;;;;;;;;;; below are not used


(defun get-total-notecount-all-rhythm-engines (vsolution vindex vdefault-engine-order)
  (declare (type array vsolution vindex vdefault-engine-order))
  (loop for engine in (aref vdefault-engine-order 1)
        collect (if (/= (aref vindex engine) -1) (get-current-index-total-notecount engine vindex vsolution) 0)))

(defun get-total-pitchcount-all-pitch-engines (vsolution vindex vdefault-engine-order)
  (declare (type array vsolution vindex vdefault-engine-order))
  (loop for engine in (aref vdefault-engine-order 2)
        collect (if (/= (aref vindex engine) -1) (get-current-index-total-pitchcount engine vindex vsolution) 0)))



;;;below functions are not tested yet

(defun get-longest-timebased-engine (vsolution vindex vdefault-engine-order)
  (declare (type array vsolution vindex vdefault-engine-order))
  (let ((max-total-duration (apply 'max
                                   (loop for engine in (aref vdefault-engine-order 4)
                                         collect (get-current-index-endtime engine vindex vsolution)))))
    (declare (type number max-total-duration))
    (loop for engine in (aref vdefault-engine-order 4)
          while (/= (get-current-index-endtime engine vindex vsolution) max-total-duration)
          finally (return engine))))


(defun get-shortest-timebased-engine (vsolution vindex vdefault-engine-order)
  (declare (type array vsolution vindex vdefault-engine-order))
  (let ((min-total-duration (apply 'min
                                   (loop for engine in (aref vdefault-engine-order 4)
                                         collect (get-current-index-endtime engine vindex vsolution)))))
    (declare (type number min-total-duration))
    (loop for engine in (aref vdefault-engine-order 4)
          while (/= (get-current-index-endtime engine vindex vsolution) min-total-duration)
          finally (return engine))))
