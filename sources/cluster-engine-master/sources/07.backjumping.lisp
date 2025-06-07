(in-package cluster-engine)
;backjump only in pitch-duration rule so far

(defun get-one-engine-index-first-counts (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (loop for index from 0 to (aref vindex engine)
        collect (car (caddar (aref (aref vsolution engine) index)))))


(defun get-one-engine-index-first-onsets (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (loop for index from 0 to (aref vindex engine)
        collect (abs (car (cadar (aref (aref vsolution engine) index))))))


(defun convert-vsolution->linear-and-backjump (vsolution vindex vlinear-solution vsolution-for-backjump vflag-changed-engine nr-of-engines)
  (declare (type array vsolution vindex vlinear-solution vsolution-for-backjump vflag-changed-engine))
  (declare (type fixnum nr-of-engines))
  (loop for engine in (remove-duplicates (aref vflag-changed-engine 0))
        do (progn 
             (if (= engine (1- nr-of-engines)) 
                   ;measure layer
                 (setf (aref vlinear-solution engine 0) (get-one-engine-col1bars vsolution vindex engine))
               (progn 
                   ;pitch and rhythm layer (also count values)
                 (setf (aref vlinear-solution engine 0) (get-one-engine-col1 vsolution vindex engine))
                 (setf (aref vsolution-for-backjump engine 0) (get-one-engine-index-first-counts vsolution vindex engine))
                 ))
             (setf (aref vlinear-solution engine 2) (get-one-engine-col3 vsolution vindex engine))
             (if (evenp engine) 
                 ;rhythm and measure layer (timepoints)
                 (progn
                   (setf (aref vlinear-solution engine 1) (get-one-engine-col2onset vsolution vindex engine))
                   (setf (aref vsolution-for-backjump engine 1) (get-one-engine-index-first-onsets vsolution vindex engine)))
               ;pitch motifs
              ; (setf (aref vlinear-solution engine 1) (get-one-engine-col2pitch vsolution vindex engine))
               ))))


(defun convert-ONE-vsolution->linear-and-backjump (vsolution vindex vlinear-solution vsolution-for-backjump engine nr-of-engines)
  "This only sets the vlinear-solutin and vsolution-for-backjump for ONE engine. It is intended for setting the information after the 
heuristic rules have been checked (the backjump info needs to be attached to the current engine since the heuristic loop don't use backjump
when checking the heuristic rules)."
  (declare (type array vsolution vindex vlinear-solution vsolution-for-backjump))
  (declare (type fixnum engine nr-of-engines))

  (if (= engine (1- nr-of-engines)) 
      ;measure layer
      (setf (aref vlinear-solution engine 0) (get-one-engine-col1bars vsolution vindex engine))
    (progn 
      ;pitch and rhythm layer (also count values)
      (setf (aref vlinear-solution engine 0) (get-one-engine-col1 vsolution vindex engine))
      (setf (aref vsolution-for-backjump engine 0) (get-one-engine-index-first-counts vsolution vindex engine))
      ))
  (setf (aref vlinear-solution engine 2) (get-one-engine-col3 vsolution vindex engine))
  (if (evenp engine) 
      ;rhythm and measure layer (timepoints)
      (progn
        (setf (aref vlinear-solution engine 1) (get-one-engine-col2onset vsolution vindex engine))
        (setf (aref vsolution-for-backjump engine 1) (get-one-engine-index-first-onsets vsolution vindex engine)))
        ;pitch motifs
        ; (setf (aref vlinear-solution engine 1) (get-one-engine-col2pitch vsolution vindex engine))
    ))


(defun find-index-for-countvalue (countvalue vsolution-for-backjump engine)
  "Returns the index (counted from 0) for the variable where the countvalue (counted from 1) exist.
Countvalue cannot be higher than the endpoint of the list."
  (declare (type array vsolution-for-backjump))
  (declare (type number countvalue)) ;changed to number from fixnum - Aug 2015
  (declare (type fixnum engine))
  (let ((position (position countvalue (aref vsolution-for-backjump engine 0) :test #'(lambda (a b) (< a b)))))
    (declare (type t position))
    (1- 
     (if position position (length (aref vsolution-for-backjump engine 0))))))



(defun find-index-for-position-in-durationseq (position vlinear-solution vsolution-for-backjump engine)
  "Returns the index (counted from 0) for the variable where the duration at the position exists.
A duration HAS to exist at the position."
  (declare (type array vsolution-for-backjump vlinear-solution))
  (declare (type fixnum position engine))
;first get timepoint
;then find index
  (let* ((timepoint (nth position  (aref vlinear-solution engine 1)))
         (position-in-backjumpvector (position timepoint (aref vsolution-for-backjump engine 1) :test #'(lambda (a b) (< a b)))))
    (declare (type number timepoint))
    (declare (type t position-in-backjumpvector))
    (1- 
     (if position-in-backjumpvector position-in-backjumpvector (max (length (aref vsolution-for-backjump engine 0)) 1)))))



(defun find-index-for-timepoint (timepoint vsolution-for-backjump engine)
  "Timepoint cannot be after endpoint of the list."
  (declare (type array vsolution-for-backjump))
  (declare (type number timepoint engine))
  (let ((position (position timepoint (aref vsolution-for-backjump engine 1) :test #'(lambda (a b) (< a b)))))
    (declare (type t position)) ;it is not a fixnum since it can be nil
    (1- 
     (if position position (length (aref vsolution-for-backjump engine 1))))))

(defun find-index-before-timepoint (timepoint vsolution-for-backjump engine)
  "Timepoint cannot be after endpoint of the list."
  (declare (type array vsolution-for-backjump))
  (declare (type number timepoint engine))
  (let ((position (position timepoint (the list (aref vsolution-for-backjump engine 1)) :test #'(lambda (a b) (<= a b)))))
    (declare (type t position)) ;it is not a fixnum since it can be nil
    (1- 
     (if position position (the fixnum (length (the list (aref vsolution-for-backjump engine 1))))))))


(defun reset-vbackjump-indexes (vbackjump-indexes nr-of-engines)
  (declare (type array vbackjump-indexes))
  (declare (type fixnum nr-of-engines))
  (loop for engine from 0 to (1- nr-of-engines)
        do (setf (aref vbackjump-indexes engine) nil)))

;;;Functions to determine what index an engine should backjump to.
;;;This is for rule-2-engines-pitches-on-rhythm
(defun set-vbackjump-indexes-from-failed-count-pitch-duration (failed-countvalue engine rhythm-engine pitch-engine vbackjump-indexes vsolution-for-backjump)
  "This is designed for the pitch-duration in one voice. Also used in pitch-pitch (4 engines).
Engine is the engine that failed."
  (declare (type fixnum failed-countvalue engine rhythm-engine pitch-engine))
  (declare (type array vbackjump-indexes vsolution-for-backjump))
  
  (if (= engine rhythm-engine) (setf (aref vbackjump-indexes pitch-engine) 
                                     (cons (find-index-for-countvalue failed-countvalue vsolution-for-backjump pitch-engine) (aref vbackjump-indexes pitch-engine)))
    (setf (aref vbackjump-indexes rhythm-engine) 
          (cons (find-index-for-countvalue failed-countvalue vsolution-for-backjump rhythm-engine) (aref vbackjump-indexes rhythm-engine)))))


;June 2012 - general backjump - sets all backjump arrays in the voices
(defun set-vbackjump-indexes-from-failed-notecount-duration-pitch-in-voices (failed-notecounts list-voicenrs vbackjump-indexes vsolution-for-backjump vlinear-solution)
  "This is a general function all type of engines - to use this function, the engines for both pitch and duration must exist in each voice.
No metric engine.

If iled-notecounts is nil (i.e. a rest), backjump will not be set. This is a simplified slution to these cases."
  
  (declare (type list list-voicenrs failed-notecounts))
  (declare (type array vbackjump-indexes vsolution-for-backjump vlinear-solution))

  (loop for voicenr in list-voicenrs
        for failed-notecount in failed-notecounts
        do (progn 
             ;; #-CCL (declare (type fixnum voicenr)) 
             ;; #-CCL (declare (type list failed-notecount))
             (when failed-notecount ;if there is no notecound (i.e. if it is a rest) don't set any backjump index. Not ethat it would be better to actually set it from timepoint in this case.
               (progn
                 (setf (aref vbackjump-indexes (1+ (* 2 voicenr))) ;pitch-engine
                       (cons (find-index-for-countvalue failed-notecount vsolution-for-backjump (1+ (* 2 voicenr))) (aref vbackjump-indexes (1+ (* 2 voicenr)))))
                 (setf (aref vbackjump-indexes (* 2 voicenr)) ;rhythm engine
                       (cons (find-index-for-countvalue failed-notecount vsolution-for-backjump (* 2 voicenr)) (aref vbackjump-indexes (* 2 voicenr))))))
)))

;;;for pitch canon june 2012
(defun set-vbackjump-indexes-from-failed-count-pitch (failed-countvalue pitch-engine vbackjump-indexes vsolution-for-backjump)
  "This is designed for only one pitch engine. Failed-countvalue is from the engine that failed. The pitch engine will be considered failed at the same countvalue."
  (declare (type fixnum failed-countvalue pitch-engine))
  (declare (type array vbackjump-indexes vsolution-for-backjump))
  
  (setf (aref vbackjump-indexes pitch-engine) 
        (cons (find-index-for-countvalue failed-countvalue vsolution-for-backjump pitch-engine) (aref vbackjump-indexes pitch-engine)))
  )


;;;for rhythm canon june 2012
(defun set-vbackjump-indexes-from-failed-timepoint-duration1 (failed-timepoint rhythm-engine vbackjump-indexes vsolution-for-backjump)
  "This is designed for only one rhythm engine. "
  (declare (type number failed-timepoint))
  (declare (type fixnum rhythm-engine))
  (declare (type array vbackjump-indexes vsolution-for-backjump))

  (setf (aref vbackjump-indexes rhythm-engine) 
        (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump rhythm-engine) (aref vbackjump-indexes rhythm-engine)))
  )



(defun set-vbackjump-indexes-from-failed-nth-duration (nth rhythm-engine vlinear-solution vbackjump-indexes vsolution-for-backjump)
  "This is designed for the pitch-duration-include-rest - special case for failed pitch."
  (declare (type fixnum rhythm-engine))
  (declare (type array vbackjump-indexes vsolution-for-backjump vlinear-solution))
  
    ;This assumes that the pitch engine failed.
    (setf (aref vbackjump-indexes rhythm-engine) 
          (cons (find-index-for-position-in-durationseq nth vlinear-solution vsolution-for-backjump rhythm-engine) (aref vbackjump-indexes rhythm-engine))))


;;;This is for rule-2-engines-rhythm-hierarchy
(defun set-vbackjump-indexes-from-failed-timepoint-duration (failed-timepoint engine rhythm-engine1 rhythm-engine2 vbackjump-indexes vsolution-for-backjump)
  "This is designed for durations in two voice. Engine is the engine that failed."
  (declare (type number failed-timepoint))
  (declare (type fixnum engine rhythm-engine1 rhythm-engine2))
  (declare (type array vbackjump-indexes vsolution-for-backjump))

  (if (= engine rhythm-engine1) (setf (aref vbackjump-indexes rhythm-engine2) 
                                      (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump rhythm-engine2) (aref vbackjump-indexes rhythm-engine2)))
    (setf (aref vbackjump-indexes rhythm-engine1) 
           (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump rhythm-engine1) (aref vbackjump-indexes rhythm-engine1)))))

;old version
(defun set-vbackjump-indexes-from-failed-timepoint-duration-duration (failed-timepoint engine rhythm-engine1 rhythm-engine2 vbackjump-indexes vsolution-for-backjump)
  "This is designed for durations in two voice. Engine is the engine where the backjump will be planned." ;Hm is that consequent? Compare to the above functions.
  (declare (type number failed-timepoint))
  (declare (type fixnum engine rhythm-engine1 rhythm-engine2))
  (declare (type array vbackjump-indexes vsolution-for-backjump))

  (if (= engine rhythm-engine1) (setf (aref vbackjump-indexes rhythm-engine1) 
                                      (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump rhythm-engine1) (aref vbackjump-indexes rhythm-engine1)))
    (setf (aref vbackjump-indexes rhythm-engine2) 
           (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump rhythm-engine2) (aref vbackjump-indexes rhythm-engine2)))))



;;;3 engines
(defun set-vbackjump-indexes-from-failed-timepoint-meter-duration-pitch (failed-timepoint engine metric-engine1 rhythm-engine2 pitch-engine3 vbackjump-indexes vsolution-for-backjump vlinear-solution)
  "This is designed for note and meter, i.e. 3 engines. Engine is the engine that failed."
  (declare (type number failed-timepoint))
  (declare (type fixnum engine metric-engine1 rhythm-engine2 pitch-engine3))
  (declare (type array vbackjump-indexes vsolution-for-backjump))
  (let* ((timepoint-for-failed-note (find-timepoint-or-preceding-timepoint-convert-rests failed-timepoint (the list (aref vlinear-solution rhythm-engine2 1))))
         (failed-notecount (get-notecount-at-timepoint-also-for-rest-skip-gracenote rhythm-engine2 vlinear-solution timepoint-for-failed-note)))
    (declare (type number timepoint-for-failed-note))
    (declare (type number failed-notecount)) ;changed from fixnum to include special case when result can be ratios - Aug 2015
    ;If the metric engine fails, the note that is linked to the position will be determed. The timepoint will be for the note that exist at the timepoint.

    (cond ((= engine metric-engine1) 
           (setf (aref vbackjump-indexes rhythm-engine2) 
                 (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump rhythm-engine2) (aref vbackjump-indexes rhythm-engine2)))
           (setf (aref vbackjump-indexes pitch-engine3) 
                 (cons (find-index-for-countvalue failed-notecount vsolution-for-backjump pitch-engine3) (aref vbackjump-indexes pitch-engine3))))
          ((= engine rhythm-engine2)
           (setf (aref vbackjump-indexes metric-engine1) 
                 (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump metric-engine1) (aref vbackjump-indexes metric-engine1)))
           (setf (aref vbackjump-indexes pitch-engine3) 
                 (cons (find-index-for-countvalue failed-notecount vsolution-for-backjump pitch-engine3) (aref vbackjump-indexes pitch-engine3))))
          ((= engine pitch-engine3)
           (setf (aref vbackjump-indexes rhythm-engine2) 
                 (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump rhythm-engine2) (aref vbackjump-indexes rhythm-engine2)))
           (setf (aref vbackjump-indexes metric-engine1) 
                 (cons (find-index-before-timepoint failed-timepoint vsolution-for-backjump metric-engine1) (aref vbackjump-indexes metric-engine1)))
           ))
    ))
