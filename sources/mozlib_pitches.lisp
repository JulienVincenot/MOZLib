;;; mozlib-pitches.lisp
;;;
;;; A Lisp implementation of Bach's pitch data structure and arithmetic
;;;
(in-package :patch-work)

(defstruct pw::pitch
  degree       ; 0..6 for C D E F G A B
  alter        ; semitone alteration (#=1, b=-1, etc.)
  octave)      ; number of octaves above C0

;; Diatonic-to-chromatic mappings
(defparameter *degree->semitones* #(0 2 4 5 7 9 11))

(defparameter *degree->name* #(#\C #\D #\E #\F #\G #\A #\B))

;; Map pitch-class (0-11 semitones) to nearest diatonic degree 0..6

(defparameter *pc->degree*
  (let ((arr (make-array 12 :initial-element 0)))
    (loop for deg from 0 to 6
          for pc across *degree->semitones*
          do (setf (aref arr pc) deg))
    arr))

;; --- Parsing helpers ---
(defun parse-note-shared (note)
  "Parse a letter+accidentals+octave string, return letter, acc, octave."
  (let* ((len (length note))
         (i 0)
         (letter (char-upcase (char note 0)))
         (acc 0))
    (unless (find letter *degree->name*)
      (error "Invalid pitch letter: ~C" letter))
    (incf i)
    (loop while (< i len)
          for ch = (char note i)
          do (cond
               ((char= ch #\#) (incf acc))
               ((char= ch #\b) (decf acc))
               (t (return)))
          do (incf i))
    (let ((oct (parse-integer (subseq note i) :junk-allowed t)))
      (unless oct (error "Invalid octave in note: ~S" note))
      (values letter acc oct))))

(defun parse-interval (str)
  "Parse a signed interval string (+/- followed by note form) into diatonic steps and semitones."
  (let* ((sign (if (char= (char str 0) #\-) -1 1))
         (body (subseq str 1)))
    (multiple-value-bind (letter acc octave)
        (parse-note-shared body)
      (let* ((deg (position letter *degree->name*))
             (steps  (* sign (+ deg (* octave 7))))
             (semitones (* sign (+ (aref *degree->semitones* deg) acc))))
        (values steps semitones)))))

(defun parse-pitch (str)
  "Convert a note or interval string into a pitch struct.
Strings starting with + or - are intervals from C0."
  (unless (stringp str)
    (error "Expected string for parse-pitch, got ~S" str))
  (let ((first (char str 0)))
    (if (or (char= first #\+) (char= first #\-))
        (multiple-value-bind (steps semis)
            (parse-interval str)
          (make-pitch-from-intervals steps semis))
        (multiple-value-bind (letter acc octave)
            (parse-note-shared str)
          (let ((deg (position letter *degree->name*)))
            (make-pitch :degree deg :alter acc :octave octave))))))

;; Coerce input to pitch
(defun ensure-pitch (p)
  (cond ((typep p 'pitch) p)
        ((stringp p) (parse-pitch p))
        (t (error "Cannot convert ~S to pitch" p))))

;; Convert pitch to intervals
(defun pitch->interval (p)
  "Return two values: diatonic steps, semitone count (absolute)."
  (let* ((p    (ensure-pitch p))
         (deg  (pitch-degree p))
         (oct  (pitch-octave p))
         (steps (+ deg (* oct 7)))
         (natural (aref *degree->semitones* deg))
         (alter (pitch-alter p))
         (semitones (+ natural alter (* oct 12))))
    (values steps semitones)))

;; Build pitch from intervals
(defun make-pitch-from-intervals (steps semis)
  "Construct a pitch from diatonic steps and semitones."
  (let* ((oct (floor steps 7))
         (deg (mod steps 7))
         (natural (aref *degree->semitones* deg))
         (alter (- semis (+ natural (* oct 12)))))
    (make-pitch :degree deg :alter alter :octave oct)))

(defun pitch< (&rest pitches)
  "Return T if pitches are strictly increasing in semitone count."
  (loop for (p1 p2) on pitches while p2
        always (< (nth-value 1 (pitch->interval p1))
                  (nth-value 1 (pitch->interval p2)))))

(defun pitch<= (&rest pitches)
  "Return T if pitches are non-decreasing in semitone count."
  (loop for (p1 p2) on pitches while p2
        always (<= (nth-value 1 (pitch->interval p1))
                   (nth-value 1 (pitch->interval p2)))))

(defun pitch> (&rest pitches)
  "Return T if pitches are strictly decreasing in semitone count."
  (loop for (p1 p2) on pitches while p2
        always (> (nth-value 1 (pitch->interval p1))
                  (nth-value 1 (pitch->interval p2)))))

(defun pitch>= (&rest pitches)
  "Return T if pitches are non-increasing in semitone count."
  (loop for (p1 p2) on pitches while p2
        always (>= (nth-value 1 (pitch->interval p1))
                   (nth-value 1 (pitch->interval p2)))))

(defun pitch-abs (p)
  "Convert a pitch (or list of pitches) representing a negative interval to its positive form."
  (pitch->string
    (cond
      ((listp p)
       (mapcar #'pitch-abs p))
      (t
       (multiple-value-bind (steps semis) (pitch->interval p)
         (make-pitch-from-intervals (abs steps) (abs semis)))))))

;; Arithmetic operations (support scalars and lists)
(defun pitch+ (p1 p2)
  "Add two pitches/intervals. Supports strings, pitch objects, or lists thereof."
  (pitch->string 
    (cond
      ((and (listp p1) (listp p2))
       (mapcar #'pitch+ p1 p2))
      ((listp p1)
       (mapcar (lambda (x) (pitch+ x p2)) p1))
      ((listp p2)
       (mapcar (lambda (y) (pitch+ p1 y)) p2))
      (t
       (multiple-value-bind (s1 sem1) (pitch->interval p1)
         (multiple-value-bind (s2 sem2) (pitch->interval p2)
           (make-pitch-from-intervals (+ s1 s2) (+ sem1 sem2))))))))

(defun pitch- (p1 p2)
  "Subtract p2 from p1. Supports strings, pitch objects, or lists thereof."
  (pitch->string 
    (cond
      ((and (listp p1) (listp p2))
       (mapcar #'pitch- p1 p2))
      ((listp p1)
       (mapcar (lambda (x) (pitch- x p2)) p1))
      ((listp p2)
       (mapcar (lambda (y) (pitch- p1 y)) p2))
      (t
       (multiple-value-bind (s1 sem1) (pitch->interval p1)
         (multiple-value-bind (s2 sem2) (pitch->interval p2)
           (make-pitch-from-intervals (- s1 s2) (- sem1 sem2))))))))



;; Packing and unpacking
(defun pitchpack (degrees alters octaves)
  "Construct a pitch or list of pitches from degrees, alterations, and octaves."
  (pitch->string 
    (cond
      ((and (listp degrees) (listp alters) (listp octaves))
       (mapcar* #'make-pitch degrees (pw::g* alters 2) octaves))
      ((listp degrees)
       (mapcar (lambda (d a o) (make-pitch :degree d :alter a :octave o))
               degrees (pw::g* alters 2) octaves))
      (t
       (make-pitch :degree degrees :alter (pw::g* alters 2) :octave octaves)))))

(defun pitchunpack (p)
  "Return three values: degrees, alterations, octaves. Works on pitch or list of pitches."
  (let ((plist (mapcar #'parse-pitch (if (listp p) p (list p))) ))
    (values
     (mapcar #'pitch-degree plist)
     (pw::g/ (mapcar #'pitch-alter plist) 2)
     (mapcar #'pitch-octave plist))) )



;; Rendering
(defun pitch->string (p &key (include-octave t))
  "Convert a pitch, string or list thereof to its canonical string form."
  (cond
    ((listp p)
     (mapcar (lambda (x) (pitch->string x :include-octave include-octave)) p))
    (t
     (let* ((p    (ensure-pitch p))
         (deg  (pitch-degree p))
         (name (aref *degree->name* deg))
         (alt  (pitch-alter p))
         (oct  (pitch-octave p))
         (acc  (cond ((> alt 0) (make-string alt :initial-element #\#))
                    ((< alt 0) (make-string (- alt) :initial-element #\b))
                    (t ""))))
    (concatenate 'string (string name) acc (if include-octave (princ-to-string oct) ""))))))


;; --- Midicents conversion ---
(defun pitch->midicents (p)
  "Convert a pitch (string or pitch) to midicents (integer, 1 cent units)."
  
  (cond
    ((listp p)
      (mapcar #'pitch->midicents p))
    (t (multiple-value-bind (steps semis) (pitch->interval p)
       (* semis 100)) 
      ))
  )

(defun pitch->midi (p)
  "Convert a pitch (string or pitch) to midi."
  (cond
    ((listp p)
      (mapcar #'pitch->midi p))
    (t (multiple-value-bind (steps semis) (pitch->interval p)
       semis) 
      ))
  )


(defun midicents->pitch (mc)
  "Convert midicents (integer) back into a pitch struct.
Chooses the diatonic degree whose natural pitch class matches mc mod 1200c.
C0 = 0 midicents."
  (let* ((semis (round mc 100))
         (oct (floor semis 12))
         (pc (mod semis 12))
         (deg (aref *pc->degree* pc))
         (natural (aref *degree->semitones* deg))
         (alter (- pc natural)))
    (make-pitch :degree deg :alter alter :octave oct)))



