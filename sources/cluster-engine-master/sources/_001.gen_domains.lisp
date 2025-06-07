(in-package :cluster-engine)

(defun mat-trans (lists)
  "Matrix transformation.
   (mat-trans '((a1 a2 a3) (b1 b2 b3) (c1 c2 c3) ...))
   => ((a1 b1 c1 ...) (a2 b2 c2 ...) (a3 b3 c3 ...))"
  (apply #'mapcar #'(lambda (&rest all) all) 
	 lists))

;;; TODO: make sure that args are the same
(defun arithmeric-series (factor offset length)
  (let (result)
    (reverse
     (dotimes (i length result)
       (push (+ (* i factor) offset)
             result)))))


; pitch values  (& chords ?)
; (arithm-ser + mapcar list)
; including controls with chord-editors (range / modes-gammes façon Jacopo)

(defmethod pitchdomain-range ((min integer) (step integer) (max integer))
  (mapcar #'list (pw::arithm-ser min step max)))

(defmethod pitchdomain-range ((min list) (step integer) (max list))
  (pw::mat-trans (loop for i in min
        for j in max
    collect (pw::arithm-ser i step j))))

(defmethod pitchdomain-range-chords ((min list) (step integer) (max list))
  (mapcar #'list (pw::mat-trans (loop for i in min
                                  for j in max
                                  collect (pw::arithm-ser i step j)))))

; pitches motives (& chords ?)
; concatenation de motifs écrits (bach roll/score)

; pitches interval motives + start(s)
; concatenation de motifs écrits + x->dx (bach roll/score)

; chord intervals (solo or motives)
; mon système pour mémoire de l'eau

; rtm values (arithm-ser rescaled/squared + mapcar list)
; with rest or not

; rtm motives
; concatenation de motifs écrits (bach roll/score)
