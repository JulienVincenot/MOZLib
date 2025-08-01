(in-package patch-work)

(defstruct patch-work::pitch
  letter        ;; symbol: A–G
  accidental    ;; integer: -2 = double flat, 0 = natural, +1 = sharp, etc.
  octave        ;; integer: 4 = C4
  midicents)    ;; integer: optional, cached midicent value (e.g. C4 = 4800)


(defparameter *letter-to-degree*
  '((C . 0) (D . 2) (E . 4) (F . 5) (G . 7) (A . 9) (B . 11)))

(defparameter *semitone-per-octave* 12)
(defparameter *cent-per-semitone* 100)

; (defun pitch->midicents (p)
;   (let* ((degree (cdr (assoc (pitch-letter p) *letter-to-degree*)))
;          (acc (pitch-accidental p))
;          (oct (pitch-octave p)))
;     (+ (* (+ (* oct 12) (+ degree acc)) 100))))

; (defun pitch->midicents (p)
;   (let* ((degree (cdr (assoc (pitch-letter p) *letter-to-degree*)))
;          (acc (pitch-accidental p))
;          (oct (pitch-octave p)))
;     (+ (* (+ (* oct 12) degree acc) 100))))


(defun pitch->midicents (p)
  (let ((pitch (ensure-pitch p)))
    (or (pitch-midicents pitch)
        (let* ((degree (cdr (assoc (pitch-letter pitch) *letter-to-degree*)))
               (acc (pitch-accidental pitch))
               (oct (pitch-octave pitch)))
          (+ (* (+ (* oct 12) degree acc) 100))))))



(defun midicents->pitch (mc)
  (let* ((note (floor (/ mc 100)))
         (cent (mod mc 100))
         (octave (floor note 12))
         (semitone (mod note 12))
         (letter+acc (find-letter-and-accidental semitone)))
    (make-pitch :letter (car letter+acc)
                :accidental (cdr letter+acc)
                :octave octave
                :midicents mc)))



(defun find-letter-and-accidental (semitone)
  ;; Sharp-based spelling
  (let ((table '((0 . (C . 0)) (1 . (C . 1)) (2 . (D . 0)) (3 . (D . 1))
                 (4 . (E . 0)) (5 . (F . 0)) (6 . (F . 1)) (7 . (G . 0))
                 (8 . (G . 1)) (9 . (A . 0)) (10 . (A . 1)) (11 . (B . 0)))))
    (cdr (assoc semitone table))))


; (defun pitch->string (p)
;   (format nil "~a~a~a"
;           (pitch-letter p)
;           (case (pitch-accidental p)
;             (-2 "bb") (-1 "b") (0 "") (1 "#") (2 "##"))
;           (pitch-octave p)))

(defun pitch->string (p)
  (let ((pitch (ensure-pitch p)))
    (format nil "~a~a~a"
            (pitch-letter pitch)
            (case (pitch-accidental pitch)
              (-2 "bb") (-1 "b") (0 "") (1 "#") (2 "##"))
            (pitch-octave pitch))))

(defun string-prefix-p (prefix string)
  (let ((plen (length prefix)))
    (and (<= plen (length string))
         (string= prefix (subseq string 0 plen)))))

; (defun parse-pitch (s)
;   (let ((len (length s)))
;     (let* ((letter (intern (string-upcase (subseq s 0 1))))
;            (rest (subseq s 1))
;            (acc 0)
;            (octave 0))
;       (cond
;         ((string-prefix-p "bb" rest) (setf acc -2 rest (subseq rest 2)))
;         ((string-prefix-p "b" rest) (setf acc -1 rest (subseq rest 1)))
;         ((string-prefix-p "##" rest) (setf acc 2 rest (subseq rest 2)))
;         ((string-prefix-p "#" rest) (setf acc 1 rest (subseq rest 1))))
;       (setf octave (parse-integer rest))
;       (make-pitch :letter letter :accidental acc :octave octave))))


; (defun parse-pitch (s)
;   (let ((negate nil))
;     (when (char= (char s 0) #\-)
;       (setf negate t
;             s (subseq s 1)))
;     (let* ((letter (intern (string-upcase (subseq s 0 1))))
;            (rest (subseq s 1))
;            (acc 0)
;            (octave 0))
;       (cond
;         ((string-prefix-p "bb" rest) (setf acc -2 rest (subseq rest 2)))
;         ((string-prefix-p "b" rest) (setf acc -1 rest (subseq rest 1)))
;         ((string-prefix-p "##" rest) (setf acc 2 rest (subseq rest 2)))
;         ((string-prefix-p "#" rest) (setf acc 1 rest (subseq rest 1))))
;       (setf octave (parse-integer rest))
;       (let ((pitch (make-pitch :letter letter :accidental acc :octave octave)))
;         (if negate
;             ;; Negate by flipping midicents later
;             (let* ((mc (- (pitch->midicents pitch))))
;               ;; flip sign, and rebuild pitch with opposite midicents
;               (midicents->pitch mc))
;             pitch)))))

(defun parse-pitch (s)
  (let ((negate nil))
    (when (char= (char s 0) #\-)
      (setf negate t
            s (subseq s 1)))
    (let* ((letter (intern (string-upcase (subseq s 0 1)) :patch-work))
           (rest (subseq s 1))
           (acc 0)
           (octave 0))
      (cond
        ((string-prefix-p "bb" rest) (setf acc -2 rest (subseq rest 2)))
        ((string-prefix-p "b" rest) (setf acc -1 rest (subseq rest 1)))
        ((string-prefix-p "##" rest) (setf acc 2 rest (subseq rest 2)))
        ((string-prefix-p "#" rest) (setf acc 1 rest (subseq rest 1))))
      (setf octave (parse-integer rest))
      (let ((pitch (make-pitch :letter letter :accidental acc :octave octave)))
        (if negate
            (let* ((mc (- (pitch->midicents pitch))))
              (midicents->pitch mc))
            pitch)))))


(defun ensure-pitch (x)
  (cond
    ((pitch-p x) x)
    ((stringp x) (parse-pitch x))
    ((symbolp x) (ensure-pitch (symbol-name x)))  ; Handle unquoted symbols
    ((integerp x) (midicents->pitch x))
    (t (error "Cannot convert ~a to pitch (type: ~a)" x (type-of x)))))


(defun diatonic-distance (from to)
  "Calculate signed diatonic distance (steps in letter scale) from FROM to TO.
Letters are from #(C D E F G A B). Returns an integer from -6 to 6."
  (let* ((letters #(C D E F G A B))
         (len (length letters))
         (idx-from (position from letters))
         (idx-to (position to letters))
         (dist1 (mod (- idx-to idx-from) len))
         (dist2 (- dist1 len)))
    (if (<= (abs dist1) (abs dist2)) dist1 dist2)))




; (defun transpose-pitch (base interval)
;   "Transpose BASE pitch by INTERVAL pitch (can be negative), preserving spelling and enharmonic logic."
;   (let* ((mc1 (pitch->midicents base))
;          (mc2 (pitch->midicents interval))
;          (total-mc (+ mc1 mc2))

;          (letters #(C D E F G A B))
;          (letter1 (pitch-letter base))
;          (letter2 (pitch-letter interval))

;          ;; Signed diatonic step distance
;          (diatonic-shift (diatonic-distance letter1 letter2))

;          (result-letter (aref letters (mod (+ (position letter1 letters) diatonic-shift) 7)))

;          ;; Octave estimate based on total midicents
;          (octave (floor total-mc 1200))

;          ;; Semitone base estimate
;          (letter-to-degree '((C . 0) (D . 2) (E . 4) (F . 5)
;                              (G . 7) (A . 9) (B . 11)))
;          (base-degree (cdr (assoc result-letter letter-to-degree)))
;          (approx-semitones (+ (* octave 12) base-degree))
;          (approx-mc (* approx-semitones 100))

;          ;; Calculate accidental from difference between total midicents and approx
;          (accidental (round (/ (- total-mc approx-mc) 100))))
;     (make-pitch :letter result-letter
;                 :accidental accidental
;                 :octave octave
;                 :midicents total-mc)))

; (defun transpose-pitch (base interval)
;   "Transpose BASE pitch by INTERVAL pitch (can be negative), preserving spelling and enharmonic logic."
;   (let* ((mc1 (pitch->midicents base))
;          (mc2 (pitch->midicents interval))
;          (total-mc (+ mc1 mc2))
;          (letters #(C D E F G A B))
;          (letter1 (pitch-letter base))
;          (letter2 (pitch-letter interval))
;          ;; Signed diatonic step distance (from letter1 to letter2)
;          (diatonic-shift (diatonic-distance letter1 letter2))

;          (base-idx (position letter1 letters))
;          (len (length letters))
;          ;; Tentative result letter index
;          (result-idx (mod (+ base-idx diatonic-shift) len))
;          (result-letter (aref letters result-idx))
;          ;; Letter to semitone degree map
;          (letter-to-degree '((C . 0) (D . 2) (E . 4) (F . 5)
;                              (G . 7) (A . 9) (B . 11)))
;          ;; Calculate approximate semitones of base + diatonic-shift letter
;          (octave-base (pitch-octave base))
;          (approx-semitones-base (+ (* octave-base 12) (cdr (assoc letter1 letter-to-degree))))
;          (approx-semitones-result (+ (* octave-base 12) (cdr (assoc result-letter letter-to-degree))))

;          ;; Calculate interval semitones (rounded from midicents)
;          (interval-semitones (round (/ mc2 100)))
;          ;; Calculate semitone difference between tentative letter and base letter (mod 12)
;          (semitone-diff (mod (- approx-semitones-result approx-semitones-base) 12))
;          ;; Calculate the difference between actual interval and semitone diff
;          (semitone-delta (- (mod interval-semitones 12) semitone-diff))

;          ;; Adjust diatonic shift by ±7 (one octave) to get closer spelling
;          (adjusted-shift (cond
;                            ((and (> (abs semitone-delta) 6) (> diatonic-shift 0))
;                             (- diatonic-shift 7))
;                            ((and (> (abs semitone-delta) 6) (< diatonic-shift 0))
;                             (+ diatonic-shift 7))
;                            (t diatonic-shift)))
;          ;; Final result letter index and letter
;          (final-idx (mod (+ base-idx adjusted-shift) len))
;          (final-letter (aref letters final-idx))
;          ;; Calculate octave from total midicents
;          (octave (floor total-mc 1200))
;          ;; Calculate base degree of final letter
;          (base-degree (cdr (assoc final-letter letter-to-degree)))
;          (approx-semitones (+ (* octave 12) base-degree))
;          (approx-mc (* approx-semitones 100))
;          ;; Calculate accidental
;          (accidental (round (/ (- total-mc approx-mc) 100))))

;     (format t "Base: ~a, Interval: ~a~%" (pitch->string base) (pitch->string interval))
;     (format t "Base MC: ~a, Interval MC: ~a, Total MC: ~a~%" mc1 mc2 total-mc)
;     (format t "Diatonic Shift: ~a, Adjusted Shift: ~a~%" diatonic-shift adjusted-shift)
;     (format t "Result Letter: ~a, Final Letter: ~a~%" result-letter final-letter)
;     (format t "Octave: ~a, Accidental: ~a~%" octave accidental)

;     (make-pitch :letter final-letter
;                 :accidental accidental
;                 :octave octave
;                 :midicents total-mc)))


(defun transpose-pitch (base interval)
  "Transpose BASE pitch by INTERVAL pitch (can be negative), preserving spelling and enharmonic logic."
  (let* ((mc1 (pitch->midicents base))
         (mc2 (pitch->midicents interval))
         (total-mc (+ mc1 mc2))
         (letters #(C D E F G A B))
         (letter1 (pitch-letter base))
         (letter2 (pitch-letter interval))
         ;; Signed diatonic step distance (from letter1 to letter2)
         (diatonic-shift (diatonic-distance letter1 letter2))

         (base-idx (position letter1 letters))
         (len (length letters))
         ;; Tentative result letter index
         (result-idx (mod (+ base-idx diatonic-shift) len))
         (result-letter (aref letters result-idx))
         ;; Letter to semitone degree map
         (letter-to-degree '((C . 0) (D . 2) (E . 4) (F . 5)
                             (G . 7) (A . 9) (B . 11)))
         ;; Calculate approximate semitones of base + diatonic-shift letter
         (octave-base (pitch-octave base))
         (approx-semitones-base (+ (* octave-base 12) (cdr (assoc letter1 letter-to-degree))))
         (approx-semitones-result (+ (* octave-base 12) (cdr (assoc result-letter letter-to-degree))))

         ;; Calculate interval semitones (rounded from midicents)
         (interval-semitones (round (/ mc2 100)))
         ;; Calculate semitone difference between tentative letter and base letter (mod 12)
         (semitone-diff (mod (- approx-semitones-result approx-semitones-base) 12))
         ;; Calculate the difference between actual interval and semitone diff
         (semitone-delta (- (mod interval-semitones 12) semitone-diff))

         ;; Adjust diatonic shift by ±7 (one octave) to get closer spelling
         (adjusted-shift (cond
                          ((and (> (abs semitone-delta) 6) (> diatonic-shift 0))
                           (- diatonic-shift 7))
                          ((and (> (abs semitone-delta) 6) (< diatonic-shift 0))
                           (+ diatonic-shift 7))
                          (t diatonic-shift)))
         ;; Final result letter index and letter
         (final-idx (mod (+ base-idx adjusted-shift) len))
         (final-letter (aref letters final-idx))
         ;; Calculate octave from total midicents
         (octave (floor total-mc 1200))
         ;; Calculate base degree of final letter
         (base-degree (cdr (assoc final-letter letter-to-degree)))
         (approx-semitones (+ (* octave 12) base-degree))
         (approx-mc (* approx-semitones 100))
         ;; Calculate accidental
         (accidental (round (/ (- total-mc approx-mc) 100))))

    ; (format t "Base: ~a, Interval: ~a~%" (pitch->string base) (pitch->string interval))
    ; (format t "Base MC: ~a, Interval MC: ~a, Total MC: ~a~%" mc1 mc2 total-mc)
    ; (format t "Diatonic Shift: ~a, Adjusted Shift: ~a~%" diatonic-shift adjusted-shift)
    ; (format t "Result Letter: ~a, Final Letter: ~a~%" result-letter final-letter)
    ; (format t "Octave: ~a, Accidental: ~a~%" octave accidental)

    (make-pitch :letter final-letter
                :accidental accidental
                :octave octave
                :midicents total-mc)))






; (defun pitch+ (a b)
;   (let ((pitch-a (ensure-pitch a))
;           (pitch-b (ensure-pitch b)))

;     (cond
;       ((and (pitch-p a) (pitch-p b))
;        (transpose-pitch a b))
;       ((and (pitch-p a) (numberp b))
;        (midicents->pitch (+ (pitch->midicents a) b)))
;       ((and (numberp a) (pitch-p b))
;        (midicents->pitch (+ a (pitch->midicents b))))
;       ((and (numberp a) (numberp b))
;        (+ a b))
;       (t (error "Unsupported types for pitch+: ~a and ~a" a b)))))

(defun pitch+ (a b &rest more)
  (let ((result
         (cond
           ((and (or (pitch-p a) (stringp a) (integerp a))
                 (or (pitch-p b) (stringp b) (integerp b)))
            (let ((pa (ensure-pitch a))
                  (pb (ensure-pitch b)))
              (transpose-pitch pa pb)))
           ((and (pitch-p a) (numberp b))
            (midicents->pitch (+ (pitch->midicents a) b)))
           ((and (numberp a) (pitch-p b))
            (midicents->pitch (+ a (pitch->midicents b))))
           ((and (numberp a) (numberp b))
            (+ a b))
           (t (error "Unsupported types for pitch+: ~a (~a) and ~a (~a)"
                     a (type-of a) b (type-of b))))))
    (if more
        (apply #'pitch+ result (first more) (rest more))
        result)))



(defun pitch- (a b)
  (pitch+ a (if (pitch-p b)
                (midicents->pitch (- (pitch->midicents b)))
                (- b))))

