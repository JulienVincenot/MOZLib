 (in-package cluster-engine)

(defun p-test-if-all-elements-are-true (list)
  "Predicate to test if all elements in a list are true. The purpose is to find a nil."
  (declare (type list list))
  (loop for element in list
        do (when (not element) (return nil))
        finally (return t)))

;below functions expect index to be in the range 0 to max index (not -1)
(defun get-last-cell-at-current-index (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (caar (aref (aref vsolution engine) (aref vindex engine))))

(defun get-last-cell-at-current-index-nth (engine vindex vsolution nth)
  "This is the version for heuristic rules. Nth is the candidate in the candidate list in the variable."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (car (nth nth (aref (aref vsolution engine) (aref vindex engine)))))

(defun count-notes-last-cell-at-current-index (engine vindex vsolution)
  "Counts notes in the last cell, excluding rests. Gracenotes will be included. 
It will also count pitches correctly."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (evenp engine)
      (count-if-not 'minusp (caar (aref (aref vsolution engine) (aref vindex engine))))
    (length (caar (aref (aref vsolution engine) (aref vindex engine))))))

;This doesn't work if a note is a chord (i.e. a list)
;(defun count-notes-last-cell-at-current-index-nth (engine vindex vsolution nth)
;  "Counts notes in the last cell, excluding rests. Gracenotes will be included. 
;It will also count pitches correctly.
;This is used for heuristic rules, where nth is the candidate in the candidate-list."
;  (declare (type array vsolution vindex))
;  (declare (type fixnum engine))
;  (count-if-not 'minusp (car (nth nth (aref (aref vsolution engine) (aref vindex engine))))))

;corrected version
(defun count-notes-last-cell-at-current-index-nth (engine vindex vsolution nth)
  "Counts notes in the last cell, excluding rests. Gracenotes will be included. 
It will also count pitches correctly.
This is used for heuristic rules, where nth is the candidate in the candidate-list."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
    (if (evenp engine)
        (count-if-not 'minusp (car (nth nth (aref (aref vsolution engine) (aref vindex engine)))))
      (length (car (nth nth (aref (aref vsolution engine) (aref vindex engine)))))))


(defun count-notes-exclude-gracenotes-last-cell-at-current-index (engine vindex vsolution)
  "Counts notes in the last cell, excluding gracenotes and rests. 
It will also count pitches correctly."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (count-if 'plusp (caar (aref (aref vsolution engine) (aref vindex engine)))))

(defun count-events-last-cell-at-current-index (engine vindex vsolution)
  "Counts notes and rests in the last cell. Gracenotes will be included. 
It will also count pitches correctly (probably faster than count-notes-last-cell-at-current-index)."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (length (caar (aref (aref vsolution engine) (aref vindex engine)))))

;the following 3 functions are necessary for the heuristic rules
(defun get-all-candidates-at-current-index (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (aref (aref vsolution engine) (aref vindex engine)))

(defun get-nr-of-candidates-at-current-index (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (length (aref (aref vsolution engine) (aref vindex engine))))

(defun get-nth-cell-at-current-index (engine vindex vsolution nth)
  "Returns the candidate at the nth position in the list of remaining candidates."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine nth))
  (car (nth nth (aref (aref vsolution engine) (aref vindex engine)))))

(defun get-cell-at-index (engine index vsolution)
  (declare (type array vsolution))
  (declare (type fixnum engine index))
  (caar (aref (aref vsolution engine) index)))

(defun get-cell-at-index-for-heuristic (engine index vindex vsolution nth)
  "This version of get-cell-at-index checks if the index is the current index, and if so
it will pass the nth candidate (not the first). "
  (declare (type array vsolution))
  (declare (type fixnum engine index))
  (if (= index (aref vindex engine))
      (car (nth nth (aref (aref vsolution engine) index)))
    (caar (aref (aref vsolution engine) index))))

;;;functions for rhythm engine

(defun get-rhythm-motifs-from-index-to-current-index (engine vindex vsolution start-index)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine start-index))
  (loop for index from start-index to (aref vindex engine)
        collect (caar (aref (aref vsolution engine) index))))


(defun get-rhythm-motifs-from-index-to-current-index-nth (engine vindex vsolution start-index nth)
  "Get rhythm motifs from start-index to current index. THE LAST MOTIF SHOULD BE AT THE NTH POSITION.
This is used for heuristic rules, where the last index is the current candidate-list."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine start-index nth))
  (loop for index from start-index to (aref vindex engine)
        collect (if (= index (aref vindex engine))
                    (car (nth nth (aref (aref vsolution engine) index)))
                  (caar (aref (aref vsolution engine) index)))))


(defun get-rhythm-motifs-onsets-from-index-to-current-index (engine vindex vsolution start-index)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine start-index))
  (loop for index from start-index to (aref vindex engine)
        collect (if (>= index 0)
                    (cadar (aref (aref vsolution engine) index))
                  nil)))


(defun get-rhythm-motifs-onsets-from-index-to-current-index-nth (engine vindex vsolution start-index nth)
  "Heuristic version"
  (declare (type array vsolution vindex))
  (declare (type fixnum engine start-index))
  (loop for index from start-index to (aref vindex engine)
        collect (if (>= index 0)
                    (cadr (nth nth (aref (aref vsolution engine) index)))
                  nil)))


(defun get-rhythm-motif-at-current-index (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (caar (aref (aref vsolution engine) (aref vindex engine))))
;get-rhythm-motif-at-current-index is identical to get-last-cell-at-current-index

(defun get-rhythm-motif-onsets-at-current-index (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (>= (aref vindex engine) 0)
      (cadar (aref (aref vsolution engine) (aref vindex engine)))
    nil))

(defun get-rhythm-motif-onsets-at-current-index-nth (engine vindex vsolution nth)
  "Heuristic rule version"
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (>= (aref vindex engine) 0)
      (cadr (nth nth (aref (aref vsolution engine) (aref vindex engine))))
    nil))

;----
(defun get-cell-at-timepoint (timebased-engine vsolution vlinear-solution timepoint)
  (declare (type fixnum timebased-engine))
  (declare (type number timepoint))
  (declare (type array vsolution vlinear-solution))
  (the list
       (get-cell-at-index timebased-engine
                          (the fixnum (get-index-at-timepoint timebased-engine vsolution vlinear-solution timepoint))
                          vsolution)))


(defun get-cells-at-timepoints (timebased-engine vsolution vlinear-solution timepoints)
  (declare (type fixnum timebased-engine))
  (declare (type list timepoints))
  (declare (type array vsolution vlinear-solution))
  (the list
       (mapcar #'(lambda (timepoint) (get-cell-at-timepoint timebased-engine vsolution vlinear-solution timepoint)) timepoints)))

;----

(defun get-cell-at-timepoint-for-heuristic (timebased-engine vsolution vlinear-solution vindex timepoint nth)
  "This should work also if index is not the current index."
  (declare (type fixnum timebased-engine nth))
  (declare (type number timepoint))
  (declare (type array vindex vsolution vlinear-solution))
  (the list
       (get-cell-at-index-for-heuristic timebased-engine
                                        (the fixnum (get-index-at-timepoint-nth timebased-engine vsolution vlinear-solution vindex timepoint nth))
                                        vindex
                                        vsolution
                                        nth)))


(defun get-cells-at-timepoints-for-heuristic (timebased-engine vsolution vlinear-solution vindex timepoints nth)
  (declare (type fixnum timebased-engine))
  (declare (type list timepoints))
  (declare (type array vsolution vlinear-solution))
  (the list
       (mapcar #'(lambda (timepoint) (get-cell-at-timepoint-for-heuristic timebased-engine vsolution vlinear-solution vindex timepoint nth)) timepoints)))

;---

(defun get-current-index-starttime (engine vindex vsolution)
  "If the engine has no assigned events, the start time will be 1 (i.e. the minimum time).
Engine has to be a rhythm engine."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (>= (aref vindex engine) 0)
      (abs (the number (caadar (aref (aref vsolution engine) (aref vindex engine)))))
    1))

(defun get-current-index-starttime-nth (engine vindex vsolution nth)
  "If the engine has no assigned events, the start time will be 1 (i.e. the minimum time).
Engine has to be a rhythm engine.

Version for heuristic rules."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine nth))
  (if (>= (aref vindex engine) 0)
      (abs (the number (caadr (nth nth (aref (aref vsolution engine) (aref vindex engine))))))
    1))

(defun get-current-index-endtime (engine vindex vsolution)
  "If the engine has no assigned events, the end time will be 1 (i.e. the minimum time).
Engine has to be a rhythm engine."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (>= (aref vindex engine) 0)
      (car (last (the list (cadar (aref (aref vsolution engine) (aref vindex engine))))))
    1))

(defun get-current-index-endtime-nth (engine vindex vsolution nth)
  "If the engine has no assigned events, the end time will be 1 (i.e. the minimum time).
Engine has to be a rhythm engine.

This version is for heuristic rules."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine nth))
  (if (>= (aref vindex engine) 0)
      (car (last (cadr (nth nth (aref (aref vsolution engine) (aref vindex engine))))))
    1))

(defun get-previous-index-endtime (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (car (last (cadar (aref (aref vsolution engine) (1- (aref vindex engine)))))))


(defun get-all-indexes-starttime (engine vindex vsolution)
  "If the engine has no assigned events, the start time will be 1 (i.e. the minimum time).
Engine has to be a rhythm engine."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (>= (the fixnum (aref vindex engine)) 0)
      (loop for index from 0 to (the fixnum (aref vindex engine))
            collect (the number (abs (the number (caadar (aref (aref vsolution engine) index))))))
    '(1))) ; if nothing in layer, first start time is still known


;new july 2012
(defun get-index-starttime (engine index vindex vsolution)
  "If the engine has no assigned events, the start time will be 1 (i.e. the minimum time).
Engine has to be a rhythm engine."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine index))
  (if (>= (the fixnum (aref vindex engine)) 0)
      (the number (abs (the number (caadar (aref (aref vsolution engine) index)))))
    1))


(defun get-current-index-total-notecount (engine vindex vsolution)
  "This should also work for heuristic rules - index will not change for different candidates."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (when (minusp (aref vindex engine)) (return-from get-current-index-total-notecount 0))
  (car (last (caddar (aref (aref vsolution engine) (aref vindex engine))))))

(defun get-current-index-nth-total-notecount (engine vindex vsolution nth)
  "For heuristic rules: get total note count for the nth candidate at the current index."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (car (last (caddr (nth nth (aref (aref vsolution engine) (aref vindex engine)))))))

(defun get-previous-index-total-notecount (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (car (last (caddar (aref (aref vsolution engine) (1- (aref vindex engine)))))))

;;;functions for pitch engine

(defun get-pitch-motif-at-current-index (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (caar (aref (aref vsolution engine) (aref vindex engine))))
;get-pitch-motif-at-current-index is identical to get-rhythm-motif-at-curent-index - it gives MIDI note numbers (not m intervals)

(defun get-last-pitch-at-previous-index (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (car (last (caar (aref (aref vsolution engine) (1- (aref vindex engine)))))))

(defun get-pitch-motif-at-index (engine index vsolution)
  (declare (type array vsolution))
  (declare (type fixnum engine index))
  (caar (aref (aref vsolution engine) index)))

(defun get-m-motif (engine vindex vsolution)
  "At current index."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (cdadar (aref (aref vsolution engine) (aref vindex engine))))

(defun get-nth-m-motif (engine vindex vsolution nth)
  "At current index."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (cdadr (nth nth (aref (aref vsolution engine) (aref vindex engine)))))

(defun m-motif? (engine vindex vsolution)
  "At current index."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (equal (caadar (aref (aref vsolution engine) (aref vindex engine))) 'm))

(defun nth-m-motif? (engine vindex vsolution nth)
  "At current index."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (equal (caadr (nth nth (aref (aref vsolution engine) (aref vindex engine)))) 'm))

;pitchcount is the same as note count (the difference in name is only for clarity).
(defun get-current-index-total-pitchcount (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (when (minusp (aref vindex engine)) (return-from get-current-index-total-pitchcount 0))
  (car (last (caddar (aref (aref vsolution engine) (aref vindex engine))))))

(defun get-current-index-first-pitchcount (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (car (caddar (aref (aref vsolution engine) (aref vindex engine)))))

(defun get-current-index-first-pitchcount-nth (engine vindex vsolution nth)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (car (caddr (nth nth (aref (aref vsolution engine) (aref vindex engine))))))

(defun get-previous-index-total-pitchcount (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (car (last (caddar (aref (aref vsolution engine) (1- (aref vindex engine)))))))

(defun get-pitchcount-at-index (engine index vsolution)
  "Gives all pitchcount values at the given index"
  (declare (type array vsolution))
  (declare (type fixnum engine index))
  (caddar (aref (aref vsolution engine) index)))

;;added july 2013
(defun get-pitchcount-from-index-to-current-index (engine vindex vsolution start-index)
  "Gives all pitchcount values at the given indexes."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine start-index))
  (loop for index from start-index to (aref vindex engine)
        collect (caddar (aref (aref vsolution engine) index))))

;;added july 2013
(defun get-pitchcount-from-index-to-current-index-nth (engine vindex vsolution start-index nth)
  "Gives all pitchcount values at the given indexes. THE LAST MOTIF SHOULD BE AT THE NTH POSITION.
This is used for heuristic rules, where the last index is the current candidate-list."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine start-index nth))
  (loop for index from start-index to (aref vindex engine)
        collect (if (= index (aref vindex engine))
                    (caddr (nth nth (aref (aref vsolution engine) index)))
                  (caddar (aref (aref vsolution engine) index)))))

;get-pitch-at-pitchcount redefined below
;(defun get-pitch-at-pitchcount (engine vindex vsolution pitchcount)
;  (declare (type array vsolution vindex))
;  (declare (type fixnum engine pitchcount))
;  (loop for index from 0 to (aref vindex engine)
;        while (<= (car (get-pitchcount-at-index engine index vsolution)) pitchcount)
;        finally (return 
;                 (let ((position-in-cell (position pitchcount (get-pitchcount-at-index engine (1- index) vsolution))))
;                   (declare (type t position-in-cell))
;                   (if position-in-cell
;                       (nth position-in-cell (get-pitch-motif-at-index engine (1- index) vsolution))
;                     nil)))))

;;;functions for metric engine

(defun get-timesig-at-current-index (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (caar (aref (aref vsolution engine) (aref vindex engine))))

(defun get-timesig-at-index (metric-engine index vsolution)
  (declare (type array vsolution))
  (declare (type fixnum index))
  (caar (aref (aref vsolution metric-engine) index)))

(defun get-timesigns-from-index-to-current-index (metric-engine vindex vsolution start-index)
  (declare (type array vsolution vindex))
  (declare (type fixnum start-index))
  (loop for index from start-index to (aref vindex metric-engine)
        collect (caar (aref (aref vsolution metric-engine) index))))

(defun get-timesigns-from-index-to-current-index-nth (metric-engine vindex vsolution start-index nth)
  "Get time sign from start-index to current index. THE LAST MOTIF SHOULD BE AT THE NTH POSITION.
This is used for heuristic rules, where the last index is the current candidate-list."
  (declare (type array vsolution vindex))
  (declare (type fixnum metric-engine start-index nth))
  (loop for index from start-index to (aref vindex metric-engine)
        collect (if (= index (aref vindex metric-engine))
                    (car (nth nth (aref (aref vsolution metric-engine) index)))
                  (caar (aref (aref vsolution metric-engine) index)))))


(defun get-meter-beatstructure-at-current-index (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (>= (aref vindex engine) 0)
      (cadar (aref (aref vsolution engine) (aref vindex engine)))
    nil))

(defun get-meter-beatstructure-at-current-index-nth (engine vindex vsolution nth)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (>= (aref vindex engine) 0)
      (cadr (nth nth (aref (aref vsolution engine) (aref vindex engine))))
    nil))

(defun get-meter-onsetgrid-at-current-index (engine vindex vsolution)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (>= (aref vindex engine) 0)
      (caddar (aref (aref vsolution engine) (aref vindex engine)))
    nil))

;added july 2013
(defun list-indexnumbers-from-index-to-current-index (engine vindex start-index)
  "Gives all pitchcount values at the given index"
  (declare (type array vindex))
  (declare (type fixnum engine start-index))
  (loop for index from start-index to (aref vindex engine)
        collect index))

(defun get-index-at-timepoint (timebased-engine vsolution vlinear-solution timepoint)
  "Returns the index where the timepoint exist (not as endpoint). This function works both for 
rhythm engines as well as the metric engine."
  (declare (type fixnum timebased-engine))
  (declare (type number timepoint))
  (declare (type array vsolution vlinear-solution))
  (let ((endtime-engine (car (last (aref vlinear-solution timebased-engine 1)))))
    (declare (type number endtime-engine))
    (when (>= timepoint endtime-engine) (return-from get-index-at-timepoint nil))
    (loop for index from 0
          do (when (> (the number (car (last (cadar (aref (aref vsolution timebased-engine) index))))) ;(cadr (nth
                       timepoint)
               (return-from get-index-at-timepoint (the fixnum index)))
          finally (return-from get-index-at-timepoint nil))))


(defun get-index-at-timepoint-nth (timebased-engine vsolution vlinear-solution vindex timepoint nth)
  "This version for heuristic rules! 
Returns the index where the timepoint exist (not as endpoint). This function works both for 
rhythm engines as well as the metric engine."
  (declare (type fixnum timebased-engine nth))
  (declare (type number timepoint))
  (declare (type array vsolution vlinear-solution vindex))
  (let ((endtime-engine (car (last (aref vlinear-solution timebased-engine 1))))
        (current-index (aref vindex timebased-engine)))
    (declare (type number endtime-engine))
    (declare (type fixnum current-index))
    (when (>= timepoint endtime-engine) (return-from get-index-at-timepoint-nth nil))
    (loop for index from 0
          do (let ((this-index-endpoint (if (= index current-index)
                                            (the number (car (last (cadr (nth nth (aref (aref vsolution timebased-engine) index))))))
                                          (the number (car (last (cadar (aref (aref vsolution timebased-engine) index))))))))
               (declare (type number this-index-endpoint))
               (when (> this-index-endpoint timepoint)
                 (return-from get-index-at-timepoint-nth (the fixnum index))))
          finally (return-from get-index-at-timepoint-nth nil))))


(defun get-time-signature-at-timepoint (metric-engine vsolution vlinear-solution timepoint)
  (declare (type fixnum metric-engine))
  (declare (type number timepoint))
  (declare (type array vsolution vlinear-solution))
  (let ((index (get-index-at-timepoint metric-engine vsolution vlinear-solution timepoint)))
    (when (not index) (return-from get-time-signature-at-timepoint nil)) ; timepoint is after the endpoint of the sequence
    (the list (nth index (aref vlinear-solution metric-engine 0))))
  )

(defun get-time-signature-at-timepoints (metric-engine vsolution vlinear-solution timepoints)
  (declare (type fixnum metric-engine))
  (declare (type list timepoints))
  (declare (type array vsolution vlinear-solution))
  (mapcar #'(lambda (timepoint) (declare (type number timepoint)) (get-time-signature-at-timepoint metric-engine vsolution vlinear-solution timepoint)) timepoints))


(defun get-time-signature-at-timepoint-nth (metric-engine vsolution vlinear-solution vindex timepoint nth)
  "This version for heuristic rules!"
  (declare (type fixnum metric-engine nth))
  (declare (type number timepoint))
  (declare (type array vsolution vlinear-solution vindex))
  (let ((index (get-index-at-timepoint-nth metric-engine vsolution vlinear-solution vindex timepoint nth)))
    (when (not index) (return-from get-time-signature-at-timepoint-nth nil)) ; timepoint is after the endpoint of the sequence
    (the list (nth index (aref vlinear-solution metric-engine 0))))
  )

(defun get-time-signature-at-timepoints-nth (metric-engine vsolution vlinear-solution vindex timepoints nth)
  "This version for heuristic rules!"
  (declare (type fixnum metric-engine nth))
  (declare (type list timepoints))
  (declare (type array vsolution vlinear-solution vindex))
  (mapcar #'(lambda (timepoint) (declare (type number timepoint)) (get-time-signature-at-timepoint-nth metric-engine vsolution vlinear-solution vindex timepoint nth)) timepoints))

;get-current-index-endtime and get-previous-index-endtime works also for the metric layer

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun get-nr-for-engine-with-highest-index (vindex default-engine-order)
  "Returns the number for the engine with the highest index. The indexes are compared starting from
the last engine in default-engine-order."
  (declare (type array vindex))
  (declare (type list default-engine-order))
  (let ((max-index (apply 'max (loop for n in default-engine-order collect (aref vindex n)))))
    (declare (type fixnum max-index)) ; engine
    (loop for engine in (reverse default-engine-order)
          while (/= (aref vindex engine) max-index)
          finally (return engine))))


;;general help functions

(defun dx-to-x (start list)
  (declare (type number start))
  (declare (type list list))
  (let ((n start))
    (cons start 
    (loop for x in list
          collect (setf n (+ n x))))))

(defun dx-to-x-cdr (start list)
  "The same as dx-to-x but without the first value"
  (declare (type number start))
  (declare (type list list))
  (let ((n start))
    (loop for x in list
          collect (setf n (+ n x)))))


(defun dx-to-x-cdr-with-sublists (start list)
  "The same as dx-to-x-cdr but can also handle chords as part of interval profiles. 
The first value in a chord will be considered the link to previous and following profile "
  (declare (type number start))
  (declare (type list list))
  (let ((n start))
    (loop for x in list          
          collect (setf n (resolve-profile n x)))))

(defun resolve-profile (start evt)
  "This is for dx-to-x-cdr-with-sublists."
  (when (listp start) (setf start (car start)))
  (if (listp evt)
      (loop for x in evt
            collect (setf start (+ start x)))
    (+ start evt)))

;;;;


(defun dx-to-x-with-rests (start list)
  "This function accepts rests as durations. A rest will be given a negative onset."
  (declare (type number start))
  (declare (type list list))
  (let ((n start)
        (signs (analyze-sign list)))
    (declare (type list signs))
    (declare (type number n))
    (cons (* start (car signs))
          (loop for x in list
                for sign in (append (cdr signs) '(1))
                collect (setf n (* (+ (abs n) (abs x)) sign))))))


(defun analyze-sign (list)
  "Return 1 for positive (or 0) values, -1 for negative values."
  (declare (type list list))
  (loop for n in list
        collect (if (minusp n) -1 1)))


(defun count-notes-not-rests (offset rhythmmotif)
  "Count positive (or 0) values. Negative values do not increase the count."
  (declare (type fixnum offset))
  (declare (type list rhythmmotif))
  (let ((n offset))
    (declare (type fixnum n))
    (loop for dur in rhythmmotif
          collect (if (minusp dur) n (setf n (1+ n))))))

(defun count-pitches-and-chords (offset pitch-chordmotif)
  (declare (type fixnum offset))
  (declare (type list pitch-chordmotif))
  (let ((n offset))
    (declare (type fixnum n))
    (loop for evt in pitch-chordmotif
          for m from (1+ n) 
          collect m)))


(defun shift-list (offset list)
  "Adds an offset to all values in a list"
  (declare (type number offset))
  (declare (type list list))
  (loop for value in list
        collect (+ offset value)))

(defun shift-list-accept-rests (offset list)
  "Adds an offset to all values in a list. Negative numbers (rests) will be treated as positive, but keep their sign."
  (declare (type number offset))
  (declare (type list list))
  (loop for value in list
        collect (if (minusp value) 
                    (- value offset)
                  (+ offset value))))


(defun remove-rests-from-list (list) ;bugg????
  (declare (type list list))
  (remove-if 'zerop list))

(defun remove-rests-from-list2 (list)
  (declare (type list list))
  (remove-if 'minusp list))


(defun convert-rests-to-notes-in-list (list)
  (declare (type list list))
  (mapcar 'abs list))


(defun truncate-list-at-endpoint (endpoint list)
  "endpoint is included in the fitered list"
  (declare (type list list))
  (declare (type number endpoint))
  (reverse (member endpoint (reverse list) :test #'(lambda (a b) (>= a b)))))


(defun truncate-list-just-before-endpoint (endpoint list)
  "endpoint is not included in the filtered list."
  (declare (type list list))
  (declare (type number endpoint))
  (reverse (member endpoint (reverse list) :test #'(lambda (a b) (> a b)))))


(defun remove-list-before-startpoint (startpoint list)
  (declare (type list list))
  ;; (declare (type number endpoint))
  (member startpoint list  :test #'(lambda (a b) (<= a b))))


(defun group-list-at-negative-numbers (list)
  (declare (type list list))
  (remove nil
          (loop until (not list) 
                collect (loop until (or (not list) (if (minusp (car list)) (pop list) nil))
                              collect (pop list))
                )))

(defun group-list-at-negative-numbers1 (list)
  "The first element in the sublist indicates the negative numbers. This is designed for rhythm-rhythm with the list-all-break-at-rest-v1 settings."
  (declare (type list list))
  (remove nil
          (loop until (not list) 
                collect (loop until (or (not list) (if (minusp (first (car list))) (pop list) nil))
                              collect (pop list))
                )))

(defun group-list-at-negative-numbers3 (list)
  "The third element in the sublist indicates the negative numbers. This is designed for rhythm-rhythm with the list-all-break-at-rest-v2 settings."
  (declare (type list list))
  (remove nil
          (loop until (not list) 
                collect (loop until (or (not list) (if (minusp (third (car list))) (pop list) nil))
                              collect (pop list))
                )))


(defun group-list-at-negative-numbers13 (list)
  "The first and third element in the sublist indicates the negative numbers (one or both will be accepted). This is designed for rhythm-rhythm with the list-all-break-at-rest-v1-v2 settings."
  (declare (type list list))
  (remove nil
          (loop until (not list) 
                collect (loop until (or (not list) (if (or (minusp (first (car list))) (minusp (third (car list)))) (pop list) nil))
                              collect (pop list))
                )))

;;;;;;;;tools using vlinear-solution

(defun get-total-pitchcount (engine vlinear-solution)
  "This only works for pitch engines."
  (declare (type array vlinear-solution))
  (declare (type fixnum engine))
  (length (aref vlinear-solution engine 0)))
  

(defun get-pitch-at-pitchcount (engine vlinear-solution pitchcount)
  "This is MUCH faster than get-pitches-between-pitchcounts (sine there is no loop)."
  (declare (type array vlinear-solution))
  (declare (type fixnum engine pitchcount))
    (nth (1- pitchcount) (aref vlinear-solution engine 0)))


(defun get-pitches-between-pitchcounts (engine vlinear-solution pitchcount1 pitchcount2)
  (declare (type array vlinear-solution))
  (declare (type fixnum engine pitchcount1 pitchcount2))
    (loop for n from pitchcount1 to pitchcount2
          collect (nth (1- n) (aref vlinear-solution engine 0))))


(defun get-total-no-of-dur (engine vlinear-solution)
  "This includes rests as well"
  (declare (type array vlinear-solution))
  (declare (type fixnum engine))
  (length (aref vlinear-solution engine 0)))


;(defun get-total-pitchcount (engine vlinear-solution)
;  "This might be slightly faster than get-current-index-total-pitchcount"
;  (declare (type array vlinear-solution))
;  (declare (type fixnum engine))
;  (if (aref vlinear-solution engine 2)
;      (car (last (aref vlinear-solution engine 2)))
;    0))


(defun get-total-notecount (engine vlinear-solution)
  "This might be slightly faster than get-current-index-total-notecount."
  (declare (type array vlinear-solution))
  (declare (type fixnum engine))
  (if (aref vlinear-solution engine 2)
      (car (last (aref vlinear-solution engine 2)))
    0))


(defun get-duration-at-notecount (engine vlinear-solution notecount)
  "This is MUCH faster than get-pitches-between-pitchcounts (sine there is no loop)."
  (declare (type array vlinear-solution))
  (declare (type fixnum engine notecount))
  (nth 
   (position notecount (aref vlinear-solution engine 2))
   (aref vlinear-solution engine 0)))


(defun get-durations-at-notecounts (list-voicenrs notecounts-all-voice vlinear-solution)
  "This function looks up the correcponding durations at notecounts in one or several voices."
  (declare (type list list-voicenrs notecounts-all-voice)) ;; notecounts
  (declare (type array vlinear-solution))
  ;; (declare (type fixnum voicenr notecount))
    (loop for voicenr in list-voicenrs
          for notecounts in notecounts-all-voice
        collect (loop for notecount in notecounts
                      collect (if notecount (get-duration-at-notecount (* 2 voicenr) vlinear-solution notecount) nil))))


(defun get-durations-from-timepoint (engine vlinear-solution timepoint)
  "timepoint HAS TO exist in the list"
  (declare (type fixnum engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))
  (let ((position-in-list (the fixnum (position timepoint (aref vlinear-solution engine 1) :test #'(lambda (a b) (declare (type number a b)) (= a (abs b)))))))
    (declare (type fixnum position-in-list))
    (the list (nthcdr position-in-list (aref vlinear-solution engine 0)))
    ))


(defun get-position-for-duration-at-notecount (engine vlinear-solution notecount)
  "Returns the position for the duration (including rests) at the notecount.
If notecount = 0, return -1. If notecount does not exist, nil is returned."
  (declare (type array vlinear-solution))
  (declare (type fixnum engine notecount))

  (when (zerop notecount) (return-from get-position-for-duration-at-notecount -1))
  (position notecount (aref vlinear-solution engine 2)))

(defun get-position-for-duration-at-notecount-incl-following-rests (engine vlinear-solution notecount)
  "Returns the position for the last rest following the duration at the notecount.
If notecount = 0, return -1 unless it begins with rest(s). If notecount does not exist, nil is returned.

Replaces function get-position-for-duration-at-notecount+following-rests"
  (declare (type array vlinear-solution))
  (declare (type fixnum engine notecount))

  (when (and (zerop notecount) (/= 0 (first (aref vlinear-solution engine 2)))) 
    (return-from get-position-for-duration-at-notecount-incl-following-rests -1))
  (position notecount (aref vlinear-solution engine 2) :from-end t))




(defun get-position-for-duration-at-notecount-minus-preceeding-rests (engine vlinear-solution notecount)
  "Returns the position for the first rest preceeding a note at the notecount (i.e. the position for a duration
and if there are rest immediately preceeding the duration, the position for the first of them).
Notecount HAS to exist."
  (declare (type array vlinear-solution))
  (declare (type fixnum engine notecount))

(let ((position-for-duration-at-notecount (get-position-for-duration-at-notecount engine vlinear-solution notecount))
      count)
  (declare (type fixnum position-for-duration-at-notecount)) ;; count ;; fixnum can not have init val NIL

  (when (< position-for-duration-at-notecount 1)
      (return-from get-position-for-duration-at-notecount-minus-preceeding-rests position-for-duration-at-notecount))

    (loop for n from position-for-duration-at-notecount downto 1
       do (progn (setf count n)
		 (when (not (minusp (nth (1- n) (aref vlinear-solution engine 0))))
		   (return count)))
       finally (return (1- count)))))



(defun get-notecount-at-timepoint (engine vlinear-solution timepoint)
  "If timepoint is a rest, return nil. If timepoint is beyond solution, return nil.
Gracenotes will not be found, only notes with durations."
  (declare (type fixnum engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))
  (let ((endtime-engine (car (last (aref vlinear-solution engine 1)))))
    (declare (type number endtime-engine))
    (when (>= timepoint endtime-engine) (return-from get-notecount-at-timepoint nil))

    (let* ((position-in-list (position timepoint (aref vlinear-solution engine 1) :test #'(lambda (a b) (>= a (abs b))) :from-end t))
           (duration-at-timepoint (nth position-in-list (aref vlinear-solution engine 0))))
      (declare (type fixnum position-in-list))
      (declare (type number duration-at-timepoint))
      (when (minusp duration-at-timepoint) (return-from get-notecount-at-timepoint nil))
      (nth position-in-list (aref vlinear-solution engine 2)))))


;This is a special version of the above function (used in pitch canon with time offset). Probably this can be ereased now.
;(defun get-notecount-at-timepoint-also-for-rest (engine vlinear-solution timepoint)
;  "If timepoint is a rest, return the notecount for the previous note. If timepoint is beyond solution, return nil.
;Gracenotes will not be found, only notes with durations."
;  (declare (type fixnum engine))
;  (declare (type number timepoint))
;  (declare (type array vlinear-solution))
;  (let ((endtime-engine (car (last (aref vlinear-solution engine 1)))))
;    (declare (type number endtime-engine))
;    (when (>= timepoint endtime-engine) (return-from get-notecount-at-timepoint-also-for-rest nil))
;
;    (let* ((position-in-list (position timepoint (aref vlinear-solution engine 1) :test #'(lambda (a b) (>= a (abs b))) :from-end t))
;           (duration-at-timepoint (nth position-in-list (aref vlinear-solution engine 0))))
;      (declare (type fixnum position-in-list))
;      (declare (type number duration-at-timepoint))
;      (when (minusp duration-at-timepoint) (return-from get-notecount-at-timepoint-also-for-rest (1+ (nth position-in-list (aref vlinear-solution engine 2)))))
;      (nth position-in-list (aref vlinear-solution engine 2)))))


;This is a special version of the above function (used in pitch canon with time offset). It does not work yet...
(defun get-notecount-at-timepoint-find-first-gracenotes-also-for-rest (engine vlinear-solution timepoint)
  "If timepoint is a rest, return the preceeding note count. If timepoint is beyond solution, return nil.
At beats where there are grace notes, the note count for the first grace note will be returned."
  (declare (type fixnum engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))
  (let ((endtime-engine (car (last (aref vlinear-solution engine 1)))))
    (declare (type number endtime-engine))
    (when (>= timepoint endtime-engine) (return-from get-notecount-at-timepoint-find-first-gracenotes-also-for-rest nil))

    (let ((position-in-list (position-include-gracenotes timepoint (aref vlinear-solution engine 1))))
      (declare (type t position-in-list)) ;number or list

      (when (listp position-in-list)
        (return-from get-notecount-at-timepoint-find-first-gracenotes-also-for-rest
          (nth (car position-in-list) (aref vlinear-solution engine 2))))
                         
      (let ((duration-at-timepoint (nth position-in-list (aref vlinear-solution engine 0))))
        (declare (type number duration-at-timepoint))
        (if (minusp duration-at-timepoint) (return-from get-notecount-at-timepoint-find-first-gracenotes-also-for-rest (1+ (nth position-in-list (aref vlinear-solution engine 2))))
          (return-from get-notecount-at-timepoint-find-first-gracenotes-also-for-rest (nth position-in-list (aref vlinear-solution engine 2))))))))



(defun get-notecount-at-timepoints (engine vlinear-solution timepoints-list)
  (declare (type fixnum engine))
  (declare (type list timepoints-list))
  (declare (type array vlinear-solution))
  (loop for timepoint in timepoints-list
        collect (get-notecount-at-timepoint engine vlinear-solution timepoint)))

(defun get-timepoint-at-notecount (engine vlinear-solution notecount)
  "If timepoint is a rest, return nil. If timepoint is beyond solution, return nil.
Gracenotes will not be found, only notes with durations."
  (declare (type fixnum engine notecount))
  (declare (type array vlinear-solution))

  (let ((position-in-list (position notecount (aref vlinear-solution engine 2))))
    (declare (type t position-in-list))
    (if position-in-list
        (nth position-in-list (aref vlinear-solution engine 1))
      nil)))


(defun get-timepoints-at-notecounts (list-voicenrs notecounts-all-voice vlinear-solution)
  "This function looks up the correcponding timepoints at notecounts in one or several voices."
  (declare (type list list-voicenrs notecounts-all-voice)) ;; notecounts
  (declare (type array vlinear-solution))
  ;; (declare (type fixnum voicenr notecount))
    (loop for voicenr in list-voicenrs
          for notecounts in notecounts-all-voice
        collect (loop for notecount in notecounts
                      collect (if notecount (get-timepoint-at-notecount (* 2 voicenr) vlinear-solution notecount) nil))))


(defun get-timepoints-at-notecounts-one-voice (voicenr notecounts vlinear-solution)
  "This function looks up the correcponding timepoints at notecounts in one or several voices."
  (declare (type list notecounts))
  ;; (declare (type list list-voicenrs notecounts-all-voice notecounts))
  (declare (type array vlinear-solution))
  (declare (type fixnum voicenr))
  (loop for notecount in notecounts ; type-of fixnum
     collect (if notecount (get-timepoint-at-notecount (* 2 voicenr) vlinear-solution notecount) nil)))


(defun get-offset-timepoint-at-notecount-include-final-rest (engine vlinear-solution notecount)
  "If timepoint is a rest, return nil. If timepoint is beyond solution, return nil.
Gracenotes will not be found, only notes with durations.
If there is a rest after the note at notecount, it will be included."
  (declare (type fixnum engine notecount))
  (declare (type array vlinear-solution))

  (let ((position-in-list (position notecount (aref vlinear-solution engine 2) :from-end t)))
    (declare (type t position-in-list))
    (if position-in-list
        (abs (nth (1+ position-in-list) (aref vlinear-solution engine 1)))
      nil)))


(defun position-include-gracenotes (timepoint list)
  (let ((position-main-note (position timepoint list :test #'(lambda (a b) (>= a (abs b))) :from-end t))
        (position-first-evt-timepoint (position timepoint list))) ;detect position from gracenote
    (declare (type fixnum position-main-note))
    (declare (type t position-first-evt-timepoint)) ;might be nil
    (if (and position-first-evt-timepoint (/= position-first-evt-timepoint position-main-note))
        (loop for n from position-first-evt-timepoint to position-main-note
              collect n)
      position-main-note)))

(defun get-notecount-at-timepoint-include-gracenotes (engine vlinear-solution timepoint)
  "If timepoint is a rest, return nil. If timepoint is beyond solution, return nil.
Gracenotes will be returned in sublists ending at the main beat."
  (declare (type fixnum engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))
  (let ((endtime-engine (car (last (aref vlinear-solution engine 1)))))
    (declare (type number endtime-engine))
    (when (>= timepoint endtime-engine) (return-from get-notecount-at-timepoint-include-gracenotes nil))

    (let ((position-in-list (position-include-gracenotes timepoint (aref vlinear-solution engine 1))))
      (declare (type t position-in-list)) ;number or list

      (if (listp position-in-list)
          (let ((duration-at-timepoint (nth (car (last position-in-list)) (aref vlinear-solution engine 0))))
            (declare (type number duration-at-timepoint))
            (if (minusp duration-at-timepoint)  
                (return-from get-notecount-at-timepoint-include-gracenotes 
                  (append
                   (loop for position in position-in-list
                         collect (nth position (aref vlinear-solution engine 2)))
                   '(nil)))
              (return-from get-notecount-at-timepoint-include-gracenotes 
                (loop for position in position-in-list
                      collect (nth position (aref vlinear-solution engine 2))))))
                         
        (let ((duration-at-timepoint (nth position-in-list (aref vlinear-solution engine 0))))
          (declare (type number duration-at-timepoint))
          (if (minusp duration-at-timepoint) (return-from get-notecount-at-timepoint-include-gracenotes nil)
            (return-from get-notecount-at-timepoint-include-gracenotes (nth position-in-list (aref vlinear-solution engine 2)))))))))
           
;New on the train from Paris 2012
(defun get-notecount-at-timepoint-include-gracenotes-mark-rest (engine vlinear-solution timepoint)
  "This function will mark a rest as '((nil)). This will make it different from not-assigned notes.
In thsi way not assigned notes may be removed (as they are nil), but rests kept.

If timepoint is a rest, return nil. If timepoint is beyond solution, return nil.
Gracenotes will be returned in sublists ending at the main beat."
  (declare (type fixnum engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))
  (let ((endtime-engine (car (last (aref vlinear-solution engine 1)))))
    (declare (type number endtime-engine))
    (when (>= timepoint endtime-engine) (return-from get-notecount-at-timepoint-include-gracenotes-mark-rest nil))

    (let ((position-in-list (position-include-gracenotes timepoint (aref vlinear-solution engine 1))))
      (declare (type t position-in-list)) ;number or list

      (if (listp position-in-list)
          (let ((duration-at-timepoint (nth (car (last position-in-list)) (aref vlinear-solution engine 0))))

            (declare (type number duration-at-timepoint))
            (if (minusp duration-at-timepoint)  
                (return-from get-notecount-at-timepoint-include-gracenotes-mark-rest 

                  (append
                   (loop for position in (cdr position-in-list)   ;CHANGED THIS TO CDR
                         collect (nth position (aref vlinear-solution engine 2)))
                   '((nil))))
              (return-from get-notecount-at-timepoint-include-gracenotes-mark-rest 
                (loop for position in position-in-list
                      collect (nth position (aref vlinear-solution engine 2))))))
                         
        (let ((duration-at-timepoint (nth position-in-list (aref vlinear-solution engine 0))))
          (declare (type number duration-at-timepoint))
          (if (minusp duration-at-timepoint) (return-from get-notecount-at-timepoint-include-gracenotes-mark-rest '(nil))
            (return-from get-notecount-at-timepoint-include-gracenotes-mark-rest (nth position-in-list (aref vlinear-solution engine 2)))))))))




(defun get-durations-between-onset-offset-include-gracenotes (engine vlinear-solution timepoint duration)
  "Returns a list of all durations that exist within a duration (given as an onset and a duration). Preceeding gracenotes are included."
  (declare (type fixnum engine))
  (declare (type number timepoint duration))
  (declare (type array vlinear-solution))
  (let ((endtime-engine (car (last (aref vlinear-solution engine 1)))))
    (declare (type number endtime-engine))
    (when (>= timepoint endtime-engine) (return-from get-durations-between-onset-offset-include-gracenotes nil)) ;this might be an unnecessary check
;(print (list engine vlinear-solution timepoint duration) *cluster-engine-log-output*)
;changed '>= to #'(lambda (a b) (>= a (abs b)))
    (let ((start-position-include-gracenote (position (find timepoint (aref vlinear-solution engine 1) :test #'(lambda (a b) (>= a (abs b))) :from-end t) (aref vlinear-solution engine 1)))
          (end-position (position (+ timepoint (abs duration)) (butlast (aref vlinear-solution engine 1)) :test #'(lambda (a b) (> a (abs b))) :from-end t)))
      (declare (type fixnum start-position-include-gracenote end-position))
;(print (list start-position-include-gracenote end-position) *cluster-engine-log-output*)
      (loop for n from start-position-include-gracenote to end-position
            collect (nth n (aref vlinear-solution engine 0))))))



(defun get-offset-between-timepoint-and-preceeding-onset (engine vlinear-solution timepoint)
  (declare (type fixnum engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))
   (let ((start-position-include-gracenote (position (find timepoint (aref vlinear-solution engine 1) :test #'(lambda (a b) (>= a (abs b))) :from-end t) (aref vlinear-solution engine 1))))
     (declare (type fixnum start-position-include-gracenote))
     (- (abs (nth start-position-include-gracenote (aref vlinear-solution engine 1))) timepoint)))



(defun get-notecount-at-timepoints-include-gracenotes (engine vlinear-solution timepoints)
  (declare (type fixnum engine))
  (declare (type list timepoints))
  (declare (type array vlinear-solution))
  (loop for timepoint in timepoints
        collect (get-notecount-at-timepoint-include-gracenotes engine vlinear-solution timepoint)))


(defun get-notecount-at-timepoints-include-gracenotes-mark-rests (engine vlinear-solution timepoints)
"This function will mark a rest as '((nil)). This will make it different from not-assigned notes,
and rests can be kept while not assigned notes can be reomved (not in this function)."
  (declare (type fixnum engine))
  (declare (type list timepoints))
  (declare (type array vlinear-solution))
  (loop for timepoint in timepoints
        collect (get-notecount-at-timepoint-include-gracenotes-mark-rest engine vlinear-solution timepoint)))


(defun get-notecount-at-nth-duration (engine vlinear-solution nth)
  "returns the notecount at a position (including rests and gracenotes) in the rhythm sequence"
  (declare (type fixnum engine nth))
  (declare (type array vlinear-solution))
  (nth nth (aref vlinear-solution engine 2)))


(defun get-pitch-for-duration-position (rhythm-engine pitch-engine vlinear-solution position)
  "Returns the pitch that matches a duration in the duration sequence. You specify the position (including rests) in the duration sequence.
If there is no pitch at pitchcount, or if there is no duration at the position: nil will be returned."
  (declare (type fixnum rhythm-engine pitch-engine position))
  (declare (type array vlinear-solution))

  (let ((notecount (get-notecount-at-nth-duration rhythm-engine vlinear-solution position)))
    (declare (type t notecount))

    (when (not notecount) (return-from get-pitch-for-duration-position nil))
      (get-pitch-at-pitchcount pitch-engine vlinear-solution notecount)))


(defun get-all-beats (metric-engine vlinear-solution)
  (mapcar 'abs (aref vlinear-solution metric-engine 1)))

(defun get-1st-down-beats (metric-engine vlinear-solution)
  (remove-if 'minusp (aref vlinear-solution metric-engine 1)))


;;;;;;;;;;;;;;;;; USED FOR RHYTHM IN MORE THAN ONE ENGINE (2011)

(defun remove-rests-and-gracenotes-from-timepointlist (timepoints)
  (declare (type list timepoints))
  (remove-if 'minusp (remove-duplicates timepoints :test #'(lambda (a b) (= (abs a) b))))) 

(defun remove-gracenotes-from-timepointlist (timepoints)
  (declare (type list timepoints))
  (remove-duplicates timepoints :test #'(lambda (a b) (= (abs a) b))))

(defun remove-rests-from-timepointlist (timepoints)
  (declare (type list timepoints))
  (remove-if 'minusp timepoints))

(defun remove-rests-and-gracenotes-from-durationlist (durations)
  ;; (declare (type list timepoints))
  (the list (remove-if-not 'plusp durations)))

(defun remove-gracenotes-from-durationlist (durations)
  (declare (type list durations))
  (the list (remove-if 'zerop durations)))

(defun remove-rests-from-durationlist (durations)
  (declare (type list durations))
  (the list (remove-if 'minusp durations)))

(defun remove-rests-and-gracenotes-and-return-notecountlist (vlinear-solution rhythm-engine)
  (declare (type array vlinear-solution))
  (declare (type fixnum rhythm-engine))
  (remove nil
          (the list (mapcar #'(lambda (dur count) (if (not (plusp dur)) nil count))
                            (the list (aref vlinear-solution rhythm-engine 0))
                            (the list (aref vlinear-solution rhythm-engine 2))))))

#|
(defun remove-rests-and-return-notecountlist (vlinear-solution rhythm-engine)
  (declare (type array vlinear-solution))
  (declare (type fixnum rhythm-engine))
  (remove nil
          (the list (mapcar #'(lambda (dur count) (if (minusp dur) nil count))
                            (the list (aref vlinear-solution rhythm-engine 0))
                            (the list (aref vlinear-solution rhythm-engine 2))))))
|#

(defun remove-rests-and-return-notecountlist (vlinear-solution rhythm-engine)
  (declare (type array vlinear-solution))
  (declare (type fixnum rhythm-engine))
  (remove nil
          (the list (mapcar #'(lambda (dur count) (if (minusp dur) nil count))
                            (the list (aref vlinear-solution rhythm-engine 0))
                            (the list (aref vlinear-solution rhythm-engine 2))))))



;not for gracenotes or rests
(defun find-position-or-preceding-position (timepoint list-of-timepoints)
  "timepoint cannot be smaller than the first number in the list-of-timepoints"
  (declare (type number timepoint))
  (declare (type list list-of-timepoints))
  (position timepoint list-of-timepoints :from-end t :test '>=))

;not for gracenotes or rests
(defun find-position-or-next-position (timepoint list-of-timepoints)
  "timepoint cannot be smaller than the first number in the list-of-timepoints"
  (declare (type number timepoint))
  (declare (type list list-of-timepoints))
  (position timepoint list-of-timepoints :test '<=))

;gracenotes and rests OK
(defun position-at-or-before-value (value list)
  "This function works for gracenotes and rests. It will check if identical values exist in the 
list and always pick the first of them (i.e. include gracenotes if they exist).

If value does not exist in list, it will use the preceding value. List has to be sorted.
If value is smaller than startpoint, return position 0.
NOTE: Value should always be a positive value."
  (declare (type number value))
  (declare (type list list))
  (let ((value-in-list (find value list :test #'(lambda (a b) (>= a (abs b))) :from-end t)))
    (declare (type t value-in-list))
    (if value-in-list
        (the fixnum (position value-in-list list :test #'(lambda (a b) (= (abs a) (abs b)))))
      0)))



;gracenotes and rests OK
(defun position-before-value (value list)
  "This function works for gracenotes and rests. It will check if identical values exist in the 
list and always pick the last of them (i.e. include gracenotes if they exist).

Value will never be included in the list. List has to be sorted.
If value is bigger than endpoint, return nil.
NOTE: Value should always be a positive value."
  (declare (type number value))
  (declare (type list list))
  (let ((value-in-list (find value list :test #'(lambda (a b) (> a (abs b))) :from-end t)))
    (declare (type t value-in-list))
    (if value-in-list
        (the fixnum (position value-in-list list :test #'(lambda (a b) (= (abs a) (abs b))) :from-end t))
      nil)))


(defun cdr-from-nsteps-before-value (value list nsteps)
  "value HAS to exist in list."
  (declare (type number value))
  (declare (type list list))
  (declare (type fixnum nsteps))
  (the list (nthcdr (max (the fixnum (- (position value list) nsteps)) 0) list)))


(defun cdr-from-nsteps-before-value2 (value list nsteps)
  "If value does not exist in list, use the following value. List has to be sorted.
If value is higher than endpoint, return nil."
  (declare (type number value))
  (declare (type list list))
  (declare (type fixnum nsteps))
  (let ((position (position value list :test '<=)))
    (declare (type t position))
    (if position
        (the list (nthcdr (max (the fixnum (- position nsteps)) 0) list))
      nil)))


(defun cdr-from-nsteps-before-value2-also-rests (value list nsteps)
  "If value does not exist in list, use the following value. List has to be sorted.
Rests are possible in both the list and as a value.
If value is higher than endpoint, return nil.
Rests will remain negative in the output."
  (declare (type number value))
  (declare (type list list))
  (declare (type fixnum nsteps))
  (let ((position (position-if #'(lambda (n) (<= (abs value) (abs (the number n)))) list)))
    (declare (type t position))
    (if position
        (the list (nthcdr (max (the fixnum (- position nsteps)) 0) list))
      nil)))


(defun cdr-from-nsteps-before-value3 (value list nsteps)
  "If value does not exist in list, use the preceding value. List has to be sorted.
If value is smaller than startpoint, return the whole list."
  (declare (type number value))
  (declare (type list list))
  (declare (type fixnum nsteps))
  (let ((position (position value list :test '>= :from-end t)))
    (declare (type t position))
    (if position
        (the list (nthcdr (max (the fixnum (- position nsteps)) 0) list))
      list)))


(defun cdr-from-nsteps-before-value3-with-rests (value list nsteps)
  "If value does not exist in list, use the preceding value. List has to be sorted.
If value is smaller than startpoint, return the whole list."
  (declare (type number value))
  (declare (type list list))
  (declare (type fixnum nsteps))
  (let ((position (position value list :test #'(lambda (a b) (declare (type number a b)) (>= a (abs b))) :from-end t)))
    (declare (type t position))
    (if position
        (the list (nthcdr (max (the fixnum (- position nsteps)) 0) list))
      list)))


;;;;

(defun get-timepoint-at-start-last-rhythmcell-minus-nsteps (rhythm-engine vindex vsolution vlinear-solution nsteps)
  ""
  (let* ((length-last-cell (length (the list (get-last-cell-at-current-index rhythm-engine vindex vsolution))))
        (tot-nr-of-dur-and-rests (the fixnum (get-total-no-of-dur rhythm-engine vlinear-solution)))
        (pointer (max (the fixnum (- tot-nr-of-dur-and-rests length-last-cell nsteps)) 0)))
    (declare (type fixnum rhythm-engine nsteps length-last-cell tot-nr-of-dur-and-rests pointer))
    (declare (type array vindex vsolution))
    
    (the number (nth pointer (aref vlinear-solution rhythm-engine 1)))
  ))


;Removed butlast from this function
(defun get-timepoints-from-start-last-rhythmcell-minus-nsteps (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules.  Timepoints for rests will be returned as positive values."
  (let* ((length-last-cell (length (the list (get-last-cell-at-current-index rhythm-engine vindex vsolution))))
         (tot-nr-of-dur-and-rests (the fixnum (get-total-no-of-dur rhythm-engine vlinear-solution)))
         (pointer (max (the fixnum (- tot-nr-of-dur-and-rests length-last-cell nsteps)) 0)))
    (declare (type fixnum rhythm-engine nsteps length-last-cell tot-nr-of-dur-and-rests pointer))
    (declare (type array vindex vsolution))
    
    (the list (mapcar 'abs (nthcdr pointer (aref vlinear-solution rhythm-engine 1))))
    ))


(defun get-timepoints-from-start-last-rhythmcell-minus-nsteps-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth)
  "For heuristic rules. Timepoints for rests will be returned as positive values."
  (let* ((length-last-cell (length (the list (get-last-cell-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (tot-nr-of-dur-and-rests (the fixnum (get-total-no-of-dur rhythm-engine vlinear-solution)))
         (pointer (max (the fixnum (- tot-nr-of-dur-and-rests length-last-cell nsteps)) 0)))
    (declare (type fixnum rhythm-engine nsteps length-last-cell tot-nr-of-dur-and-rests pointer))
    (declare (type array vindex vsolution))
    
    (the list (mapcar 'abs (nthcdr pointer (aref vlinear-solution rhythm-engine 1))))
    ))

;;;meter
(defun get-timepoints-from-start-last-metric-cell-minus-nsteps (metric-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules.  Timepoints for rests will be returned as positive values."
  (let* ((length-last-cell (length (the list (get-meter-beatstructure-at-current-index metric-engine vindex vsolution))))
         (tot-nr-of-beats (the fixnum (length (the list (aref vlinear-solution metric-engine 1)))))
         (pointer (max (the fixnum (- tot-nr-of-beats length-last-cell nsteps)) 0)))
    (declare (type fixnum metric-engine nsteps length-last-cell tot-nr-of-beats pointer))
    (declare (type array vindex vsolution))
    
    (the list (mapcar 'abs (nthcdr pointer (aref vlinear-solution metric-engine 1))))
    ))


(defun get-timepoints-from-start-last-metric-cell-minus-nsteps-nth (metric-engine vindex vsolution vlinear-solution nsteps nth)
  "Not for heuristic rules.  Timepoints for rests will be returned as positive values."
  (let* ((length-last-cell (length (the list (get-meter-beatstructure-at-current-index-nth metric-engine vindex vsolution nth))))
         (tot-nr-of-beats (the fixnum (length (the list (aref vlinear-solution metric-engine 1)))))
         (pointer (max (the fixnum (- tot-nr-of-beats length-last-cell nsteps)) 0)))
    (declare (type fixnum metric-engine nsteps length-last-cell tot-nr-of-beats pointer))
    (declare (type array vindex vsolution))
    
    (the list (mapcar 'abs (nthcdr pointer (aref vlinear-solution metric-engine 1))))
    ))



(defun get-events-from-start-last-rhythmcell-minus-nsteps (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules."
  (let* ((length-last-cell (length (the list (get-last-cell-at-current-index rhythm-engine vindex vsolution))))
         (tot-nr-of-dur-and-rests (the fixnum (get-total-no-of-dur rhythm-engine vlinear-solution)))
         (pointer (max (the fixnum (- tot-nr-of-dur-and-rests length-last-cell nsteps)) 0)))
    (declare (type fixnum rhythm-engine nsteps length-last-cell tot-nr-of-dur-and-rests pointer))
    (declare (type array vindex vsolution))
    
    (the list (nthcdr pointer (aref vlinear-solution rhythm-engine 0)))
    ))



(defun get-events-from-start-last-rhythmcell-minus-nsteps-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth) ;OK
  "For heuristic rules."
  (let* ((length-last-cell (length (the list (get-last-cell-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (tot-nr-of-dur-and-rests (the fixnum (get-total-no-of-dur rhythm-engine vlinear-solution)))
         (pointer (max (the fixnum (- tot-nr-of-dur-and-rests length-last-cell nsteps)) 0)))
    (declare (type fixnum rhythm-engine nsteps length-last-cell tot-nr-of-dur-and-rests pointer nth))
    (declare (type array vindex vsolution))
    
    (the list (nthcdr pointer (aref vlinear-solution rhythm-engine 0)))
    ))



(defun get-notecounts-from-start-last-rhythmcell-minus-nsteps (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules."
  (let* ((length-last-cell (length (the list (get-last-cell-at-current-index rhythm-engine vindex vsolution))))
         (tot-nr-of-dur-and-rests (the fixnum (get-total-no-of-dur rhythm-engine vlinear-solution)))
         (pointer (max (the fixnum (- tot-nr-of-dur-and-rests length-last-cell nsteps)) 0)))
    (declare (type fixnum rhythm-engine nsteps length-last-cell tot-nr-of-dur-and-rests pointer))
    (declare (type array vindex vsolution))
    
    (the list (nthcdr pointer (aref vlinear-solution rhythm-engine 2)))
    ))


(defun get-notecounts-from-start-last-rhythmcell-minus-nsteps-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth)
  "For heuristic rules."
  (let* ((length-last-cell (length (the list (get-last-cell-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (tot-nr-of-dur-and-rests (the fixnum (get-total-no-of-dur rhythm-engine vlinear-solution)))
         (pointer (max (the fixnum (- tot-nr-of-dur-and-rests length-last-cell nsteps)) 0)))
    (declare (type fixnum rhythm-engine nsteps length-last-cell tot-nr-of-dur-and-rests pointer nth))
    (declare (type array vindex vsolution))
    
    (the list (nthcdr pointer (aref vlinear-solution rhythm-engine 2)))
    ))
;;;

(defun get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules. Timepoints for rests will be returned as positive values."
  (let* ((all-onsets-no-gracenote (remove-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-gracenote (remove-gracenotes-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index rhythm-engine vindex vsolution))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-gracenote))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-gracenote onsets-last-cell-no-gracenote))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (mapcar 'abs (the list (cdr-from-nsteps-before-value first-onset-maybe-endpoint all-onsets-no-gracenote nsteps))))))


(defun get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth)
  "For heuristic rules. Timepoints for rests will be returned as positive values."
  (let* ((all-onsets-no-gracenote (remove-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-gracenote (remove-gracenotes-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-gracenote))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-gracenote onsets-last-cell-no-gracenote))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (mapcar 'abs (the list (cdr-from-nsteps-before-value first-onset-maybe-endpoint all-onsets-no-gracenote nsteps))))))



(defun get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules."
  (let* ((all-onsets-no-gracenote (remove-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-gracenote (remove-gracenotes-from-timepointlist
                                         (the list (get-rhythm-motif-onsets-at-current-index rhythm-engine vindex vsolution))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-gracenote))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-gracenote onsets-last-cell-no-gracenote))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (nthcdr (max (the fixnum (- (position first-onset-maybe-endpoint all-onsets-no-gracenote) nsteps)) 0) 
                      (the list (remove-gracenotes-from-durationlist (the list (aref vlinear-solution rhythm-engine 0))))))))


(defun get-events-from-start-last-rhythmcell-minus-nsteps-ignor-gracenotes-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth) ;OK
  "For heuristic rules. Timepoints for rests will be returned as positive values."
  (let* ((all-onsets-no-gracenote (remove-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-gracenote (remove-gracenotes-from-timepointlist
                                         (the list (get-rhythm-motif-onsets-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-gracenote))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-gracenote onsets-last-cell-no-gracenote))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps nth))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (nthcdr (max (the fixnum (- (position first-onset-maybe-endpoint all-onsets-no-gracenote) nsteps)) 0) 
                      (the list (remove-gracenotes-from-durationlist (the list (aref vlinear-solution rhythm-engine 0))))))))



(defun get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules."
  (let* ((all-onsets-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index rhythm-engine vindex vsolution))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-gracenote-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-gracenote-no-rest onsets-last-cell-no-gracenote-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (cdr-from-nsteps-before-value first-onset-maybe-endpoint all-onsets-no-gracenote-no-rest nsteps))))


(defun get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth)
  "For heuristic rules."
  (let* ((all-onsets-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-gracenote-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-gracenote-no-rest onsets-last-cell-no-gracenote-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps nth))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (cdr-from-nsteps-before-value first-onset-maybe-endpoint all-onsets-no-gracenote-no-rest nsteps))))


(defun get-events-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules."
  (let* ((all-onsets-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index rhythm-engine vindex vsolution))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-gracenote-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-gracenote-no-rest onsets-last-cell-no-gracenote-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (nthcdr (max (the fixnum (- (position first-onset-maybe-endpoint all-onsets-no-gracenote-no-rest) nsteps)) 0) 
                      (remove-rests-and-gracenotes-from-durationlist (the list (aref vlinear-solution rhythm-engine 0)))))
    ))

(defun get-events-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth) ;OK
  "For heuristic rules."
  (let* ((all-onsets-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-gracenote-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-gracenote-no-rest onsets-last-cell-no-gracenote-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps nth))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (nthcdr (max (the fixnum (- (position first-onset-maybe-endpoint all-onsets-no-gracenote-no-rest) nsteps)) 0) 
                      (remove-rests-and-gracenotes-from-durationlist (the list (aref vlinear-solution rhythm-engine 0)))))
    ))

(defun get-notecounts-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules."
  (let* ((all-onsets-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index rhythm-engine vindex vsolution))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-gracenote-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-gracenote-no-rest onsets-last-cell-no-gracenote-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (nthcdr (max (the fixnum (- (position first-onset-maybe-endpoint all-onsets-no-gracenote-no-rest) nsteps)) 0) 
                      (the list (remove-rests-and-gracenotes-and-return-notecountlist vlinear-solution rhythm-engine))))
    ))


(defun get-notecounts-from-start-last-rhythmcell-minus-nsteps-ignor-rests-and-gracenotes-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth)
  "Not for heuristic rules."
  (let* ((all-onsets-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-gracenote-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-gracenote-no-rest onsets-last-cell-no-gracenote-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps nth))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (nthcdr (max (the fixnum (- (position first-onset-maybe-endpoint all-onsets-no-gracenote-no-rest) nsteps)) 0) 
                      (the list (remove-rests-and-gracenotes-and-return-notecountlist vlinear-solution rhythm-engine))))
    ))


(defun get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules.
Grace notes are kept. A gracenote before a rest is kept, but the rest removed."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-rest (remove-rests-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index rhythm-engine vindex vsolution))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-rest onsets-last-cell-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (cdr-from-nsteps-before-value first-onset-maybe-endpoint all-onsets-no-rest nsteps))))


(defun get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth)
  "Not for heuristic rules.
Grace notes are kept. A gracenote before a rest is kept, but the rest removed."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-rest (remove-rests-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-rest onsets-last-cell-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (cdr-from-nsteps-before-value first-onset-maybe-endpoint all-onsets-no-rest nsteps))))


(defun get-events-from-start-last-rhythmcell-minus-nsteps-ignor-rests (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules.
Grace notes are kept. A gracenote before a rest is kept, but the rest removed."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-rest (remove-rests-from-timepointlist
                                    (the list (get-rhythm-motif-onsets-at-current-index rhythm-engine vindex vsolution))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-rest onsets-last-cell-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))


    (the list (nthcdr (max (the fixnum (- (position first-onset-maybe-endpoint all-onsets-no-rest) nsteps)) 0) 
                      (the list (remove-rests-from-durationlist (the list (aref vlinear-solution rhythm-engine 0))))))

    ))



(defun get-events-from-start-last-rhythmcell-minus-nsteps-ignor-rests-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth) ;OK
  "For heuristic rules.
Grace notes are kept. A gracenote before a rest is kept, but the rest removed."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-rest (remove-rests-from-timepointlist
                                    (the list (get-rhythm-motif-onsets-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-rest onsets-last-cell-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps nth))
    (declare (type array vindex vsolution vlinear-solution))


    (the list (nthcdr (max (the fixnum (- (position first-onset-maybe-endpoint all-onsets-no-rest) nsteps)) 0) 
                      (the list (remove-rests-from-durationlist (the list (aref vlinear-solution rhythm-engine 0))))))

    ))


(defun get-notecounts-from-start-last-rhythmcell-minus-nsteps-ignor-rests (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules.
Grace notes are kept. A gracenote before a rest is kept, but the rest removed."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-rest (remove-rests-from-timepointlist
                                    (the list (get-rhythm-motif-onsets-at-current-index rhythm-engine vindex vsolution))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-rest onsets-last-cell-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (nthcdr (max (the fixnum (- (position first-onset-maybe-endpoint all-onsets-no-rest) nsteps)) 0) 
                      (the list (remove-rests-and-return-notecountlist vlinear-solution rhythm-engine))))

    ))


(defun get-notecounts-from-start-last-rhythmcell-minus-nsteps-ignor-rests-nth (rhythm-engine vindex vsolution vlinear-solution nsteps nth)
  "For heuristic rules.
Grace notes are kept. A gracenote before a rest is kept, but the rest removed."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-rest (remove-rests-from-timepointlist
                                    (the list (get-rhythm-motif-onsets-at-current-index-nth rhythm-engine vindex vsolution nth))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-rest onsets-last-cell-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps nth))
    (declare (type array vindex vsolution vlinear-solution))

    (the list (nthcdr (max (the fixnum (- (position first-onset-maybe-endpoint all-onsets-no-rest) nsteps)) 0) 
                      (the list (remove-rests-and-return-notecountlist vlinear-solution rhythm-engine))))

    ))


(defun get-timepoints-from-start-last-rhythmcell-minus-nsteps-ignor-rests-simplify-gracenotes (rhythm-engine vindex vsolution vlinear-solution nsteps)
  "Not for heuristic rules.
Grace notes are kept, but only the timeposition of a whole group (repeated onsets are still removed).
A gracenote before a rest is kept, but the rest removed."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))
         (onsets-last-cell-no-rest (remove-rests-from-timepointlist
                                                 (the list (get-rhythm-motif-onsets-at-current-index rhythm-engine vindex vsolution))))
         (first-onset-maybe-endpoint (car onsets-last-cell-no-rest))) ; if the cell only contains gracenotes and rests, the endpoint will remain

    (declare (type list all-onsets-no-rest onsets-last-cell-no-rest))
    (declare (type number first-onset-maybe-endpoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vsolution vlinear-solution))
    
    (the list (cdr-from-nsteps-before-value first-onset-maybe-endpoint (remove-duplicates all-onsets-no-rest) nsteps))))

;;;;here




(defun get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules."
  (let* ((all-onsets-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))) 
    (declare (type list all-onsets-no-gracenote-no-rest))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution)) ; vsolution

    (the list (cdr-from-nsteps-before-value2 timepoint all-onsets-no-gracenote-no-rest nsteps))
    ))


(defun get-events-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules."
  (let* ((all-onsets-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))) 
    (declare (type list all-onsets-no-gracenote-no-rest))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution)) ; vsolution

    (let ((position (position timepoint all-onsets-no-gracenote-no-rest :test '<=)))
      (declare (type t position))
      (if position
          (the list (nthcdr (max (the fixnum (- position nsteps)) 0) 
                            (remove-rests-and-gracenotes-from-durationlist (the list (aref vlinear-solution rhythm-engine 0)))))
        nil))
    ))


(defun get-notecounts-from-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules."
  (let* ((all-onsets-no-rest (remove-rests-and-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))) 
    (declare (type list all-onsets-no-rest))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution)) ; vsolution

    (let ((position (position timepoint all-onsets-no-rest :test '<=)))
      (declare (type t position))
      (if position
          (the list (nthcdr (max (the fixnum (- position nsteps)) 0) 
                            (the list (remove-rests-and-gracenotes-and-return-notecountlist vlinear-solution rhythm-engine))))
        nil))
    ))

(defun get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))) 
    (declare (type list all-onsets-no-rest))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution)) ; vsolution

    (the list (cdr-from-nsteps-before-value2 timepoint all-onsets-no-rest nsteps)) 
    ))



(defun get-events-from-any-timepoint-minus-nsteps-ignor-rests (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))) 
    (declare (type list all-onsets-no-rest))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution)) ; vsolution

    (let ((position (position timepoint all-onsets-no-rest :test '<=)))
      (declare (type t position))
      (if position
          (the list (nthcdr (max (the fixnum (- position nsteps)) 0) 
                            (remove-rests-from-durationlist (the list (aref vlinear-solution rhythm-engine 0)))))
        nil))
    ))


(defun get-notecounts-from-any-timepoint-minus-nsteps-ignor-rests (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))) 
    (declare (type list all-onsets-no-rest))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution)) ; vsolution

    (let ((position (position timepoint all-onsets-no-rest :test '<=)))
      (declare (type t position))
      (if position
          (the list (nthcdr (max (the fixnum (- position nsteps)) 0) 
                            (the list (remove-rests-and-return-notecountlist vlinear-solution rhythm-engine))))
        nil))
    ))

(defun get-timepoints-from-any-timepoint-minus-nsteps-ignor-rests-simplify-gracenotes (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules.
This rule only shows one onset for a group of grace notes."
  (let* ((all-onsets-no-rest (remove-rests-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))) 
    (declare (type list all-onsets-no-rest))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution)) ; vsolution

    (the list (cdr-from-nsteps-before-value2 timepoint (remove-duplicates all-onsets-no-rest) nsteps)) ;remove duplicates since only one gracenote is necessary to show
    ))

(defun get-timepoints-from-any-timepoint-minus-nsteps (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules. Rests will be coverted to positive values."
  (let* ((all-onsets (the list (aref vlinear-solution rhythm-engine 1))))
    (declare (type list all-onsets))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution)) ; vsolution

    (mapcar 'abs
           (the list (cdr-from-nsteps-before-value2-also-rests timepoint all-onsets nsteps))) 
    ))


(defun get-events-from-any-timepoint-minus-nsteps (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Returns a list of durations, rests and gracenotes.
If timepoint does not exist in the onset-list, use the following onset.
If timepoint is higher than endpoint, return nil.
Also for heuristic rules.
"
  (let* ((all-onsets (the list (aref vlinear-solution rhythm-engine 1)))
         (all-events (the list (aref vlinear-solution rhythm-engine 0))))
    (declare (type list all-onsets all-events))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution))

    (let ((position (position-if #'(lambda (n) (<= (abs timepoint) (abs (the number n)))) all-onsets)))
    (declare (type t position))
    (if position
        (the list (nthcdr (max (the fixnum (- position nsteps)) 0) all-events))
      nil)) 
    ))


(defun get-notecounts-from-any-timepoint-minus-nsteps (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Returns a list of durations, rests and gracenotes.
If timepoint does not exist in the onset-list, use the following onset.
If timepoint is higher than endpoint, return nil.
Also for heuristic rules.
"
  (let* ((all-onsets (the list (aref vlinear-solution rhythm-engine 1)))
         (all-notecounts (the list (aref vlinear-solution rhythm-engine 2))))
    (declare (type list all-onsets)) ; all-events
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution))

    (let ((position (position-if #'(lambda (n) (<= (abs timepoint) (abs (the number n)))) all-onsets)))
    (declare (type t position))
    (if position
        (the list (nthcdr (max (the fixnum (- position nsteps)) 0) all-notecounts))
      nil)) 
    ))


(defun get-timepoints-from-any-timepoint-minus-nsteps-ignor-gracenotes (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules. Rests will be coverted to positive values."
  (let* ((all-onsets-no-gracenotes (remove-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1)))))
    (declare (type list all-onsets-no-gracenotes))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution)) ; vsolution

    (mapcar 'abs
           (the list (cdr-from-nsteps-before-value2-also-rests timepoint all-onsets-no-gracenotes nsteps)))
    ))

;;
(defun get-events-from-any-timepoint-minus-nsteps-ignor-gracenotes (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules."
  (let* ((all-onsets-no-gracenotes (remove-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1)))))
    (declare (type list all-onsets-no-gracenotes))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution)) ; vsolution

    (let ((position (position-if #'(lambda (n) (<= (abs timepoint) (abs (the number n)))) all-onsets-no-gracenotes)))
      (declare (type t position))
      (if position
          (the list (nthcdr (max (the fixnum (- position nsteps)) 0) 
                            (the list (remove-gracenotes-from-durationlist (the list (aref vlinear-solution rhythm-engine 0))))))
        nil))
    ))


(defun get-timepoints-from-before-any-timepoint-minus-nsteps-ignor-gracenotes (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Also for heuristic rules.
Returns the list from the timepoint, or (if timepoint does not exist) the step before the timepoint."
  (let* ((all-onsets-no-gracenote (remove-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1)))))
    ;; (declare (type list all-onsets-no-gracenote-no-rest))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution))

    (the list (mapcar 'abs (the list (cdr-from-nsteps-before-value3-with-rests timepoint all-onsets-no-gracenote nsteps))))
    ))

(defun get-timepoints-from-before-any-timepoint-minus-nsteps-ignor-rests-and-gracenotes (rhythm-engine vindex vlinear-solution timepoint nsteps)
  "Not for heuristic rules.
Returns the list from the timepoint, or (if timepoint does not exist) the step before the timepoint."
  (let* ((all-onsets-no-gracenote-no-rest (remove-rests-and-gracenotes-from-timepointlist (the list (aref vlinear-solution rhythm-engine 1))))) 
    (declare (type list all-onsets-no-gracenote-no-rest))
    (declare (type number timepoint))
    (declare (type fixnum rhythm-engine nsteps))
    (declare (type array vindex vlinear-solution))

    (the list (cdr-from-nsteps-before-value3 timepoint all-onsets-no-gracenote-no-rest nsteps))
    ))


(defun get-durations-between-start-and-endpoint-include-rests-and-gracenotes (rhythm-engine vindex vlinear-solution startpoint endpoint)
  "Also for heuristic rules.
Returns the list from the timepoint, or (if timepoint does not exist) the step before the timepoint."
  (let ((all-onsets (the list (aref vlinear-solution rhythm-engine 1)))
        (all-durations (the list (aref vlinear-solution rhythm-engine 0))))
    (declare (type list all-onsets all-durations))
    (declare (type number startpoint endpoint))
    (declare (type fixnum rhythm-engine))
    (declare (type array vindex vlinear-solution))

    (loop for n from (the fixnum (position-at-or-before-value startpoint all-onsets))
          to (the fixnum (position-before-value endpoint all-onsets))
          collect (the number (nth n all-durations)))))


(defun find-timepoint-or-preceding-timepoint-convert-rests (timepoint list-of-timepoints)
  "timepoint cannot be smaller than the first number in the list-of-timepoints.
Rests are converted to positive timepoints."
  (declare (type number timepoint))
  (declare (type list list-of-timepoints))
  (let ((timepoint (find timepoint list-of-timepoints :from-end t :test #'(lambda (point test) (>= point (abs test))))))
    (declare (type t timepoint))
    (if timepoint (abs timepoint)
      nil)))


(defun find-timepoint-or-following-timepoint-convert-rests (timepoint list-of-timepoints)
  "Timepoint cannot be larger than the last number in the list-of-timepoints.
Rests are converted to positive timepoints."
  (declare (type number timepoint))
  (declare (type list list-of-timepoints))
  (let ((timepoint (find timepoint list-of-timepoints :test #'(lambda (point test) (<= point (abs test))))))
    (declare (type t timepoint))
    (if timepoint (abs timepoint)
      nil)))


(defun find-all-timepoints-convert-rests (timepoints-to-find timepoints-to-search)
  "This function finds the same or the preceeding timepoint.
<timepoints-to-find> should all be positive values.
<timepoints-to-search> can be negative (i.e. rests).
The function outputs a list of positive timepoints (i.e. rests are converted to positiove values)."
  (declare (type list timepoints-to-find timepoints-to-search))
  (mapcar #'(lambda (timepoint) (find-timepoint-or-preceding-timepoint-convert-rests timepoint timepoints-to-search)) timepoints-to-find))


(defun find-all-timepoints2-convert-rests (timepoints-to-find timepoints-to-search)
  "This function finds the same or the following timepoint.
<timepoints-to-find> should all be positive values.
<timepoints-to-search> can be negative (i.e. rests).
The function outputs a list of positive timepoints (i.e. rests are converted to positiove values)."
  (declare (type list timepoints-to-find timepoints-to-search))
  (mapcar #'(lambda (timepoint) (find-timepoint-or-following-timepoint-convert-rests timepoint timepoints-to-search)) timepoints-to-find))


(defun filter-timepoints-keep-upto-endtime (timepoints endpoint)
  "Return all times until endpoint. Endtime is incuded in the output.
The list does not need to be sorted. Does not work with rests."
  (declare (type list timepoints))
  (declare (type number endpoint))
  (the list (remove-if #'(lambda (timepoint) (> timepoint endpoint)) timepoints)))


(defun filter-durations-keep-upto-endtime (durations timepoints endpoint)
  "Return all events until endpoint. Endtime is incuded in the output.
The list does not need to be sorted. Does not work with negative timepoints."
  (declare (type list timepoints durations))
  (declare (type number endpoint))
  (the list (remove nil (the list (mapcar #'(lambda (timepoint duration) (if (> timepoint endpoint) nil duration)) timepoints durations)))))


(defun filter-timepoints-keep-before-endtime (timepoints endpoint)
  "Return all times until endpoint. Endtime is NOT incuded in the output.
The list does not need to be sorted. Does not work with rests."
  (declare (type list timepoints))
  (declare (type number endpoint))
  (the list (remove-if #'(lambda (timepoint) (>= timepoint endpoint)) timepoints)))

(defun filter-durations-keep-before-endtime (durations timepoints endpoint)
  "Return all events until endpoint. Endtime is NOT incuded in the output.
The list does not need to be sorted. Does not work with negative timepoints."
  (declare (type list timepoints durations))
  (declare (type number endpoint))
  (the list (remove nil (the list (mapcar #'(lambda (timepoint duration) (if (>= timepoint endpoint) nil duration)) timepoints durations)))))


(defun get-duration-at-timepoint (engine vlinear-solution timepoint)
  "Values can be negative (rests): only the absolute value is considered. 
Timepoint has to exist in list."
  (declare (type fixnum engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))

  (let ((position-in-list (position timepoint (aref vlinear-solution engine 1) :test #'(lambda (a b) (declare (type number a b)) (= (abs a) (abs b))))))
    (declare (type fixnum position-in-list))
    (the number (nth position-in-list (aref vlinear-solution engine 0)))
    ))


(defun get-duration-existing-at-timepoint (engine vlinear-solution timepoint)
  "Values can be negative (rests): only the absolute value is considered. 
Timepoint does NOT has to exist as an exact onset: if time point is not found, the lower number will be returned (i.e. the duration will ring at the timepoint).
If timepoint is after the end of the durations (i.e. last timepoint), nil will be returned."
  (declare (type fixnum engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))

  (let ((position-in-list (position timepoint (aref vlinear-solution engine 1) :test #'(lambda (a b) (declare (type number a b)) (>= (abs a) (abs b))) :from-end t)))
    (declare (type fixnum position-in-list))
    (when (= position-in-list (1- (length (aref vlinear-solution engine 1)))) (return-from get-duration-existing-at-timepoint nil))
    (the number (nth position-in-list (aref vlinear-solution engine 0)))
    ))


(defun get-starttime-for-duration-existing-at-timepoint (engine vlinear-solution timepoint)
  "Values can be negative (rests): only the absolute value is considered. 
Timepoint does NOT has to exist as an exact onset: if time point is not found, the lower number will be returned (i.e. the onset for the duration will ring at the timepoint)..
If timepoint is after the end of the durations (i.e. last timepoint), nil will be returned."
  (declare (type fixnum engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))

  (let ((position-in-list (position timepoint (aref vlinear-solution engine 1) :test #'(lambda (a b) (declare (type number a b)) (>= (abs a) (abs b))) :from-end t)))
    (declare (type fixnum position-in-list))
    (when (= position-in-list (1- (length (aref vlinear-solution engine 1)))) (return-from get-starttime-for-duration-existing-at-timepoint nil))
    (the number (abs (nth position-in-list (aref vlinear-solution engine 1))))
    ))


(defun get-durations-at-timepoints (engine vlinear-solution timepoints)
  (declare (type fixnum engine))
  (declare (type list timepoints))
  (declare (type array vlinear-solution))

  (mapcar #'(lambda (timepoint) (the number (get-duration-at-timepoint engine vlinear-solution timepoint))) timepoints))


(defun get-duration-at-timepoint-skip-gracenote (engine vlinear-solution timepoint)
  "Values can be negative (rests): only the absolute value is considered. 
Timepoint has to exist in list. Grace notes are skipped - insetad the following duration will be given."
  (declare (type fixnum engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))

  (let ((position-in-list (position timepoint (aref vlinear-solution engine 1) :test #'(lambda (a b) (declare (type number a b)) (= (abs a) (abs b))) :from-end t)))
    (declare (type fixnum position-in-list))
    (the number (nth position-in-list (aref vlinear-solution engine 0)))
    ))


(defun get-durations-at-timepoints-skip-gracenotes (engine vlinear-solution timepoints)
  (declare (type fixnum engine))
  (declare (type list timepoints))
  (declare (type array vlinear-solution))

  (mapcar #'(lambda (timepoint) (the number (get-duration-at-timepoint-skip-gracenote engine vlinear-solution timepoint))) timepoints))


;;These are used for rules with 3 engines - find timepoints for durations

(defun get-notecount-at-timepoint-skip-gracenote (rhythm-engine vlinear-solution timepoint)
  "Timepoint can be negative (rests): only the absolute value is considered. 
If the note is a rest, nil will be returned.
Timepoint has to exist in the rhythm-engine. Grace notes are skipped - insetad the following notecount will be given."
  (declare (type fixnum rhythm-engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))

  (let ((position-in-list (position timepoint (aref vlinear-solution rhythm-engine 1) :test #'(lambda (a b) (declare (type number a b)) (= (abs a) (abs b))) :from-end t)))
    (declare (type fixnum position-in-list))
    (if (minusp (nth position-in-list (aref vlinear-solution rhythm-engine 0)))
        nil
    (the fixnum (nth position-in-list (aref vlinear-solution rhythm-engine 2))))))


(defun get-notecounts-at-timepoints-skip-gracenotes (rhythm-engine vlinear-solution timepoints)
  "Timepoints can be negative (rests): only the absolute value is considered. 
Timepoints have to exist in the rhythm-engine. Grace notes are skipped - insetad the following notecount will be given."
  (declare (type fixnum rhythm-engine))
  (declare (type list timepoints))
  (declare (type array vlinear-solution))

  (the list (mapcar #'(lambda (timepoint) (get-notecount-at-timepoint-skip-gracenote rhythm-engine vlinear-solution timepoint)) timepoints)) ;removed typedeclaraion fixnum Feb 2021
  )


(defun get-notecount-at-timepoint-also-for-rest-skip-gracenote (rhythm-engine vlinear-solution timepoint)
  "Timepoint can be negative (rests): only the absolute value is considered. 
If the note is a rest, the notecount for the previous duration will be returned. 
Timepoint has to exist in the rhythm-engine. Grace notes are skipped - insetad the following notecount will be given.
This function is used in routines for backjumping."
  (declare (type fixnum rhythm-engine))
  (declare (type number timepoint))
  (declare (type array vlinear-solution))

  (let ((position-in-list (position timepoint (aref vlinear-solution rhythm-engine 1) :test #'(lambda (a b) (declare (type number a b)) (= (abs a) (abs b))) :from-end t)))
    (declare (type fixnum position-in-list))
    (nth position-in-list (aref vlinear-solution rhythm-engine 2)))) ;the fixnum removed to avoid error in special case (that will be ignored) - Aug 2015


(defun get-pitches-at-timepoints-skip-gracenotes (rhythm-engine pitch-engine vlinear-solution timepoints last-pitchcount)
  "If a pitch is not assigned, and the duration is not a rest, the list will be truncated at this point."
  (declare (type fixnum rhythm-engine pitch-engine))
  (declare (type list timepoints))
  (declare (type array vlinear-solution))


  (let ((notecounts (get-notecounts-at-timepoints-skip-gracenotes rhythm-engine vlinear-solution timepoints)))
    (declare (type list notecounts))

    (loop for notecount in notecounts
          while (or (not notecount) (<= notecount last-pitchcount)) ;nil = rest
          collect (if notecount
                       (get-pitch-at-pitchcount pitch-engine vlinear-solution notecount) ;removed type declaration number Feb 2021

                    nil)))) ;this indicates rest





(defun get-pitches-at-notecounts (pitch-engine vlinear-solution notecounts last-pitchcount)
  "If a pitch is not assigned, and the duration is not a rest, the list will be truncated at this point."
  (declare (type fixnum pitch-engine))
  (declare (type list notecounts))
  (declare (type array vlinear-solution))

  (loop for notecount in notecounts
        while (or (not notecount) (<= notecount last-pitchcount)) ;nil = rest
        collect (if notecount
                    (get-pitch-at-pitchcount pitch-engine vlinear-solution notecount)
                  nil)))



(defun put-nil-for-rests-in-notecountlist (notecounts events)
  "This function will replace any notecount number at every rest by nil.
This will correct the notecount list to mark where the rests are."
  (loop for notecount in notecounts
        for event in events
        collect (if (not (minusp event))
                   notecount
                 nil)))

(defun first-n (list n)
  "Returns the first elemenst of the list ending at (but including) the n nth element, i.e. n will also represent the number of elements in teh output list."
  (declare (type list list))
  (declare (fixnum n))
  (if (>= n (length list)) list
    (reverse (nthcdr (- (length list) n) (reverse list)))))


(defun matrix-trans (matrix)
  "The cluster engine version of the mat-trans function"
  (declare (type list matrix)) ;; row
  (loop for n from 0 to (1- (length (first matrix)))
        collect (loop for row in matrix
                      collect (nth n row))))



(defun distances-to-point (point list)
  "This function calculates the distance netween a point and a list of other points. If an element in the list is nil, nil will be returned."
  (declare (type list list))
  (declare (type number point))
  (let ((x (first list)))
    (loop for x in list
          collect (if x (- x point) nil)
          )))
