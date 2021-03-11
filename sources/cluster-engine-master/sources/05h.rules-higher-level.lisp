(in-package cluster-engine)


;;;; FOR R-mel-interval-one-voice

#|
(defun melodic-statement-for-dur (fn-filterdur fn-filtermel)
  #'(lambda (evt1 evt2) 
      (let ((interval (- (second evt1) (second evt2)))
            (dur (first evt1)))
        (declare (type fixnum interval))
        (declare (type number dur))
        (declare (type list evt1 evt2))
        (if (funcall fn-filterdur dur)
            (funcall fn-filtermel interval)
          t))))
|#

;new Aug27 2012
;(defun melodic-statement-for-dur (fn-filterdur fn-filtermel)
;  #'(lambda (evt1 evt2) 
;      (let* ((pitch1 (if (listp (second evt1)) (first (second evt1)) (second evt1)))
;             (pitch2 (if (listp (second evt2)) (first (second evt2)) (second evt2)))
;             (interval (- pitch1 pitch2))
;             (dur (first evt1)))
;        (declare (type fixnum interval pitch1 pitch2))
;        (declare (type number dur))
;        (declare (type list evt1 evt2))
;        (if (funcall fn-filterdur dur)
;            (funcall fn-filtermel interval)
;          t))))

;bugfix for SBCL -  2015
(defun melodic-statement-for-dur (fn-filterdur fn-filtermel)
  (list 'lambda '(evt1 evt2) 
        (list 'let* '((pitch1 (if (listp (second evt1)) (first (second evt1)) (second evt1)))
                      (pitch2 (if (listp (second evt2)) (first (second evt2)) (second evt2)))
                      (interval (- pitch1 pitch2))
                      (dur (first evt1)))
        '(declare (type fixnum interval pitch1 pitch2))
        '(declare (type number dur))
        '(declare (type list evt1 evt2))
        (list 'if (list 'funcall (list 'coerce fn-filterdur ''function) 'dur)
            (list 'funcall (list 'coerce fn-filtermel ''function) 'interval)
          't))))


;;;;;FOR RHYTHM CANON

;this is not used
(defun rule-rhythm-canon (voice1 voice2 offset)
        (rule-n-engines2 (rule-rhythmcanon voice1 voice2 offset) (list (* 2 voice1) (* 2 voice2))))


(defun rule-rhythmcanon (voice1 voice2 offset)
  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))
        'vsolution 'vindex
        (list 'rhythm-canon-test voice1 voice2 offset 'engine 'vlinear-solution 'vbackjump-indexes 'vsolution-for-backjump)
        ))
      


(defun rhythm-canon-test (voice1 voice2 offset engine vlinear-solution vbackjump-indexes vsolution-for-backjump)
  (let* ((onsets-v1 (aref vlinear-solution (* 2 voice1) 1))
         (onsets-v2 (aref vlinear-solution (* 2 voice2) 1))
         (endtime-voice1 (car (last onsets-v1)))
         (endtime-voice2 (car (last onsets-v2)))
         canon-endtime)
    (declare (type fixnum voice1 voice2 engine))
    (declare (type list onsets-v1 onsets-v2))
    (declare (type t endtime-voice1 endtime-voice2 canon-endtime))
    (declare (type number offset)) ;moved canon-endtime from type number to t (can be nil) - 2015
    (declare (type array vlinear-solution vbackjump-indexes vsolution-for-backjump))


    (if (and endtime-voice1 endtime-voice2)
        (progn
          (setf canon-endtime (min endtime-voice1 endtime-voice2))
          (when (<= canon-endtime (1+ offset)) (return-from rhythm-canon-test t)) 
          
          ;filter events in voice1 before offset and after (or equal to) endtime voice2. Remove last endtime (confuses gracenotes).
          (setf onsets-v1 (remove-if #'(lambda (onset) (or (< (abs onset) (1+ offset))
                                                           (>= (abs onset) (+ endtime-voice2 offset)))) (butlast onsets-v1)))
          (setf onsets-v1 (mapcar #'(lambda (onset) (if (plusp onset) (- onset offset) (+ onset offset))) onsets-v1))
          ;filter events in voice2 after (or equal to) endtime voice1. Remove last endtime (confuses gracenotes).
          (setf onsets-v2 (remove-if #'(lambda (onset) (>= (abs onset) (- endtime-voice1 offset))) (butlast onsets-v2)))
          
          (if (equal onsets-v1 onsets-v2)
              t
            ;Backjump
            (let ((backjump-endpoint (if (= engine (* 2 voice1)) endtime-voice1 endtime-voice2)))
              (declare (type number backjump-endpoint))
              ;v1
              (set-vbackjump-indexes-from-failed-timepoint-duration1 backjump-endpoint (* 2 voice1) vbackjump-indexes vsolution-for-backjump)
              ;v2
              (set-vbackjump-indexes-from-failed-timepoint-duration1 backjump-endpoint (* 2 voice2) vbackjump-indexes vsolution-for-backjump)
              nil))
          ;;;;;;;;;
          )
      t)))


;;;;;FOR PITCH CANON

;this is not used
(defun rule-pitch-canon (voice1 voice2 interval)
        (rule-n-engines2 (rule-pitchcanon voice1 voice2 interval) (list (1+ (* 2 voice1)) (1+ (* 2 voice2)))))


(defun rule-pitchcanon (voice1 voice2 interval)
  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))
        
        (list 'pitchcanon-test voice1 voice2 interval 'vlinear-solution 'vindex 'vsolution 'vbackjump-indexes 'vsolution-for-backjump 'engine)
        ))
      


(defun pitchcanon-test (voice1 voice2 interval vlinear-solution vindex vsolution vbackjump-indexes vsolution-for-backjump engine)
  (let ((pitches-v1 (aref vlinear-solution (1+ (* 2 voice1)) 0))
        (pitches-v2 (aref vlinear-solution (1+ (* 2 voice2)) 0))
        (length-voice1 (get-current-index-total-notecount (1+ (* 2 voice1)) vindex vsolution))
        (length-voice2 (get-current-index-total-notecount (1+ (* 2 voice2)) vindex vsolution))
        (length-this-engine (get-current-index-total-notecount engine vindex vsolution))
        )
    (declare (type fixnum voice1 voice2 length-voice1 length-voice2 engine))
    (declare (type list pitches-v1 pitches-v2))
    (declare (type number interval))
    (declare (type array vlinear-solution vindex vsolution vbackjump-indexes vsolution-for-backjump))

    (if (and (< 0 length-voice1) (< 0 length-voice2))
        (progn
           
          ;make both voices the same length by truncating the longest
          (if (> length-voice1 length-voice2)
              (setf pitches-v1 (butlast pitches-v1 (- length-voice1 length-voice2)))
            (setf pitches-v2 (butlast pitches-v2 (- length-voice2 length-voice1))))
          (setf pitches-v1 (mapcar #'(lambda (pitch) (- pitch interval)) pitches-v1))
          ;rule test
          (if (equal pitches-v1 pitches-v2)
              t
            ;backjumping
            (progn 
              ;v1
              (set-vbackjump-indexes-from-failed-count-pitch length-this-engine (1+ (* 2 voice1)) vbackjump-indexes vsolution-for-backjump)
              ;v2
              (set-vbackjump-indexes-from-failed-count-pitch length-this-engine (1+ (* 2 voice2)) vbackjump-indexes vsolution-for-backjump)
              nil))
          )
      t)))


;;;;;FOR PITCH CANON WITH TIME OFFSET 

;this is not used
(defun rule-pitch-canon2 (voice1 voice2 interval offset)
        (rule-n-engines2 (rule-pitchcanon2 voice1 voice2 interval offset) (list (1+ (* 2 voice1)) (1+ (* 2 voice2)))))


(defun rule-pitchcanon2 (voice1 voice2 interval offset)
  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type array vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))
        
        (list 'pitchcanon-test2 voice1 voice2 interval offset 'vlinear-solution 'vindex 'vsolution 'vbackjump-indexes 'vsolution-for-backjump 'engine)
        ))


(defun pitchcanon-test2 (voice1 voice2 interval offset vlinear-solution vindex vsolution vbackjump-indexes vsolution-for-backjump engine)
  (let* ((pitches-v1 (aref vlinear-solution (1+ (* 2 voice1)) 0))
         (pitches-v2 (aref vlinear-solution (1+ (* 2 voice2)) 0))
         (length-voice1 (get-current-index-total-notecount (1+ (* 2 voice1)) vindex vsolution))
         (length-voice2 (get-current-index-total-notecount (1+ (* 2 voice2)) vindex vsolution))
         (length-this-engine (get-current-index-total-notecount engine vindex vsolution))
         (onsets-v1 (aref vlinear-solution (* 2 voice1) 1))
         (endtime-voice1 (car (last onsets-v1)))
         notecount-offset
         )
    (declare (type fixnum voice1 voice2 length-voice1 length-voice2 length-this-engine engine))
    (declare (type list pitches-v1 pitches-v2))
    (declare (type number interval))
    (declare (type array vlinear-solution vindex vsolution vbackjump-indexes vsolution-for-backjump))


    (when (or (not endtime-voice1) (< endtime-voice1 (1+ offset))) (return-from pitchcanon-test2 t))

    (setf notecount-offset (get-notecount-at-timepoint-find-first-gracenotes-also-for-rest (* 2 voice1) vlinear-solution (1+ offset)))

    (if (and notecount-offset (< 0 length-voice1) (< 0 length-voice2))
        (progn
          (setf pitches-v1 (nthcdr (1- notecount-offset) pitches-v1))

          (setf length-voice1 (length pitches-v1))
          ;make both voices the same length by truncating the longest
          (if (> length-voice1 length-voice2)
              (setf pitches-v1 (butlast pitches-v1 (- length-voice1 length-voice2)))
            (setf pitches-v2 (butlast pitches-v2 (- length-voice2 length-voice1))))

          (setf pitches-v1 (mapcar #'(lambda (pitch) (- pitch interval)) pitches-v1))

          (if (equal pitches-v1 pitches-v2)
              t
            ;backjumping
            (progn 
              ;v1
              (set-vbackjump-indexes-from-failed-count-pitch length-this-engine (1+ (* 2 voice1)) vbackjump-indexes vsolution-for-backjump)
              ;v2
              (set-vbackjump-indexes-from-failed-count-pitch length-this-engine (1+ (* 2 voice2)) vbackjump-indexes vsolution-for-backjump)
              nil))
          )
      t)))

