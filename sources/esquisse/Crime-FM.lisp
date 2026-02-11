(in-package patch-work)

;;;;  PWGL revision -  February 07 -  Mikael Laurson

(defvar *maxorder* 25)

(defparameter *bessel*
      (make-array '(26 25)
                  :initial-contents
      '(
        ( 1000 765 223 -260 -397 -177 150 300 171 -90 -245 -171 47 206 171 -14 -174 -169 -13 
           146 167 36 -120 -162 -56)
        ( 0 440 576 339 -66 -327 -276 -4 234 245 43 -176 -223 -70 133 205 90 -97 -187 -105 66 
          171 117 -39 -154)
        ( 0 114 352 436 364 46 -242 -301 -112 144 254 139 -84 -217 -152 41 186 158 -7 -157 -160 
           -20 131 158 43)
        ( 0 19 128 309 430 364 114 -167 -291 -180 58 227 195 3 -176 -194 -43 134 186 72 -98 -174 
           -93 67 161)
        ( 0 2 33 132 281 391 357 157 -105 -265 -219 -15 182 219 76 -119 -202 -110 69 180  130 -29 
           -156 -141 -3)
        ( 0 0 7 43 132 261 362 347 185 -55 -234 -238 -73 131 220 130 -57 -187 -155 3 151 163 36 
           -116 -162)
        ( 0 0 1 11 49 131 245 339 337 204 -14 -201 -243 -118 81 206 166 0 -155 -178 -55 107 173 90 
           -64)
        (0 0 0 2 15 53 129 233 320 327 216 18 -170 -240 -150 34 182 187 51 -116 -184 -102 58 163 130)
        (0 0 0 0 4 18 56 127 223 305 317 224 45 -141 -231 -173 -7 153 195 92 -73 -175 -136 8 140)
        (0 0 0 0 0 5 21 58 126 214 291 308 230 66 -114 -220 -189 -42 122 194 125 -31 -157 -157 -36)
        (0 0 0 0 0 1 6 23 60 124 207 280 300 233 85 -90 -206 -199 -73 91 186 148 7 -132 -167)
        (0 0 0 0 0 0 2 8 25 62 123 201 270 292 235 99 -68 -191 -204 -98 61 173 164 42 -103)
        (0 0 0 0 0 0 0 2 9 27 63 121 195 261 285 236 112 -48 -176 -205 -118 32 156 173 72)
        (0 0 0 0 0 0 0 0 3 10 28 64 120 190 253 278 236 122 -30 -161 -204 -135 6 137 176)
        (0 0 0 0 0 0 0 0 1 3 11 30 65 118 185 246 272 236 131 -15 -146 -200 -148 -17 118)
        (0 0 0 0 0 0 0 0 0 1 4 13 31 65 117 181 239 266 235 138 0 -132 -195 -158 -38)
        (0 0 0 0 0 0 0 0 0 0 1 5 13 32 66 116 177 234 261 234 145 12 -118 -189 -166)
        (0 0 0 0 0 0 0 0 0 0 0 1 5 14 33 66 114 173 228 255 233 150 23 -105 -183)
        (0 0 0 0 0 0 0 0 0 0 0 0 2 6 15 34 66 113 170 223 251 231 154 34 -93)
        (0 0 0 0 0 0 0 0 0 0 0 0 0 2 6 16 35 67 112 167 218 246 229 158 43)
        (0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 7 17 36 67 111 164 214 242 228 161)
        (0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 7 18 36 67 110 162 210 238 226)
        (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 8 18 37 67 109 159 206 234)
        (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 8 19 38 67 108 157 203)
        (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 9 19 38 67 107 155)
        (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 4 9 20 39 67 106)
      )
      )
      )

(defun fix (x) (truncate x))
(defun ceil (x) (ceiling x))
(defun fixp (x) (integerp x))
(defun add1 (x) (1+ x))

(defun fmSpec (c m imod &optional order)
    (let ((spec) s p q MI)
         (setq MI imod)
         (if (floatp imod) (setq imod (ceil imod)) (setq imod (fix imod)))
         (if (null order)
             ;(setq order (car order))
             ;(setq order (add1 imod)) 
             (setq order imod));ML
         (setq order (min order *maxorder*))
         (setq spec `((, c . 0 )))
         (dofor (i 1 1 order)
              (newl spec (cons (- c (* i m)) (- i)))
              (setq  spec (nconc spec (list (cons (+ c (* i m)) i))))
              (when (and (null p) (< (caar spec) 0))
                    (setq p spec)))
         (setq s spec)
         (dowhile s
                ;(when (and (null p) (>= (caar s) 0))
                ;      (setq p q))
                (cond 
                      ( (< (cdar s) 0)
                        (if (oddp (cdar s))
                            (rplacd (car s) (- (bessel MI (abs (cdar s)))))
                            (rplacd (car s) (bessel MI (abs (cdar s)))))
                        (when (< (caar s) 0)
                              (rplaca (car s) (- (caar s)))
                              (rplacd (car s) (- (cdar s)))))
                      ( t
                        (rplacd (car s) (bessel MI (cdar s)))))
                (setq q s)
                (nextl s))
         (setq spec
               (if (not p)
                    spec
                    (fmMerge (cdr p) 
                             (progn (rplacd p ()) (nreverse spec)))))
         (mapc #'(lambda (comp)
                       (rplacd comp (abs (cdr comp))))
               spec)
         (when (<= (caar spec) 0) (nextl spec))
          (fmNormalize spec)
         spec
))


(defun fmNormalize (spec)
    (let ((etot 0) ratio)
         (mapc #'(lambda (x) (setf  etot (+ etot (cdr x))))
               spec)
         (setq ratio (/ 1000.0 etot));;1000.0
         (mapc #'(lambda (x)
                  (rplacd x (fix (* (cdr x) ratio))))
               spec)
        spec))


 
(defun bessel (imod i)
    (if (fixp imod)
        (aref *bessel* i imod)
        (let ((i1 (aref *bessel* i (fix imod))) (i2 (aref *bessel* i (ceil imod))))
             (fix (+ i1 (* (- imod (fix imod)) (- i2 i1)))))))

(defun fmMerge   (f1 f2)
    (let ((r (list ())))
         (fmMerge2 r f1 f2)
         (cdr r)))


(defun fmMerge2 (r f1 f2)
    (cond 
          ((null f1) (rplacd r f2))
          ((null f2) (rplacd r f1))
          ((< (caar f1) (caar f2))
           (rplacd r f1)
           (fmMerge2 f1 (cdr f1) f2))
          ((= (caar f1) (caar f2))
           (rplaca f1 (cons (caar f1) (+ (cdar f1) (cdar f2))))
           (rplacd r f1)
           (fmMerge2 f1 (cdr f1) (cdr f2)))
          (t (rplacd r f2)
             (fmMerge2 f2 f1 (cdr f2)))))


(defun fm (c m i)
  (let ((spec (fmspec c m i)))
    (cons (mapcar #'car spec)
          (mapcar #'(lambda (x) (round (* (/ 127 3.0) (log (cdr x) 10)))) spec))))




(defun fm/p (car mod ind) ;;;; ((car 5) (mod 7) (ind 4)) 
  "Computes a FM spectrum. Outputs a list of partials and a list of dyns"
  ()
   (let ((spec (fmspec car mod ind)))
    (cons (mapcar #'car spec)
          (mapcar #'(lambda (x) (round (* (/ 127 3.0) (log (cdr x) 10)))) spec))))

;(mk-chord  pitch-list dur-list offset-list vel-list chan-list)
;(inspect (ccl::make-enp-chord '(:notes ((36 :dur 0.5) (43 :dur 0.5)) :dur 7  :start-time 5.0)))


(defun fm-chord (carrier modul index &optional (unit "midi"))

                ; ((carrier 60) (modul 66) (index 1)
                ;    &optional 
                ;    (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))) 

    "Computes a FM spectrum. Outputs a chord object"
    ()
  (when (equalp unit "midi")
    (setf carrier (m->f carrier) modul (m->f modul)))
  (let* ((spec (fmspec carrier modul index)); (slength (length spec))
         (ms (f->m (band-filter (mapcar #'car spec) '((15.0 20000.0)))))
         (dur 0.5) (vels (mapcar #'(lambda (x) (round (* (/ 127 3.0) (log (cdr x) 10)))) spec)))
         ; (notes (loop for m in ms  for v in vels collect (make-instance 'ccl::Note :midi m :dur dur  :chan 1 :vel v :offset-time 0))))
    ; (make-instance 'ccl::Chord  :start-time 0 :notes notes)
    (list spec ms dur) ;;;; modif for MOZ
    ))

(defun fm-spec (carrier modul index &optional (unit "midi") (output "M"))

            ; ((carrier 60) (modul 66) (index 1)
            ;        (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
            ;        (output 1 (ccl::mk-menu-subview  :menu-list '(("C"  4)("M"  1) ("V"  2)("F"  3))))) 

    "Computes a FM spectrum. index is an int or float value between 1 and 25
(float values a re interpolated).<carrier> and <modul> can be midis or freqs (default midis)
depending on the value of the <unit> argument. 

Outputs either a chord object ("C", in MOZ a list containing frequencies & velocities ) 
or midis (default, "M"), or freqs ("F"), or velocities ("V") depending on the last input."


    ;;; (:groupings '(1 2 2) :w 0.4); (:outputs '("M" "V" "F" "C"))


  (when (equalp unit "midi")
    (setf carrier (m->f carrier) modul (m->f modul)))
  (let* ((spec (fmspec carrier modul index))
         (vels (mapcar #'(lambda (x) (round (* (/ 127 3.0) (if (<= (cdr x) 0.0) 0 (log (cdr x) 10))))) spec))
         (spec (band-filter (mapcar #'car spec) '((15.0 20000.0))))
        ; (slength (length spec))
         )
    (cond ((equalp output "M") (f->m spec))
          ((equalp output "V") vels)
          ((equalp output "F") spec)
          ((equalp output "C")
            (list spec vels) ;; modif MOZ
           ; (let* ((dur 0.5)
           ;        (notes (loop for m in (f->m spec)  for v in vels 
           ;                     collect (make-instance 'ccl::Note :midi m :dur dur  :chan 1 :vel v :offset-time 0))))
           ;   (make-instance 'ccl::Chord  :start-time 0 :notes notes))
           )
          )))


#|
(in-package :ccl)


(defmethod patch-value :around ((self PWGL-box) outbox);; t -> PWGL-box  25.01.01 
 (printl (box-string outbox))
  (if (recursive-output self outbox) ;  18.03.01 
    (recursive-patch-value self outbox)
    (if (pw-lock self)
      (box-buffer self)
      (setf (box-buffer self) (call-next-method)))))
|#