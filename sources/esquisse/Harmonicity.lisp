;;;;=========================================================
;;;;
;;;;  PATCH-WORK
;;;;  By Mikael Laurson, Jacques Duthen, Camilo Rueda.
;;;;  (c) 1986-1992 IRCAM 
;;;;
;;;;  revision finale -  dŽcembre 92 -  Tristan Murail
;;;;  PWGL revision -  February 07 -  Mikael Laurson
;;;;=========================================================

;; =============================================================================-======
;;                Harmonicity.Lisp
;; =============================================================================-======

;; Esquisse PW harmonicity functions -- CLPF V1.0 by Jacques Duthen (c) 1991 IRCAM


(in-package patch-work)

;; =============================================================================-======

;; ==== harmonic distance ====

;;  f0                   f0*n   freq    f0*(n+1)
;;---|---------------------|------|--------|---------->
;;                         <--d1--><--d2--->
;; ratio:=freq/f0; n:=floor(ratio)
;; ;; d1<=d2 <=> ratio*ratio <= n*(n+1)
;; d1 := freq/(f0*n)   := ratio/n
;; d2 := f0*(n+1)/freq := (n+1)/ratio

(defun harm-dist-f (f0 freq) ;((f0 440) (freq 440)) 
  "Returns the ratio between the closest harmonic of <f0> and <freq>."
 ()
  (if (<= freq f0) (/ f0 freq)
      (let* ((ratio (/ freq f0))
             (n-partial (floor ratio))
             (d1 (/ ratio n-partial))
             (d2 (/ (1+ n-partial) ratio)))
        (min d1 d2))))

(defun harm-dist (chord fund &optional (unit "midi"))

        ; ((chord 60) (fund 24)
        ;             &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))) 

    "Calculates the ratios between each note of <chord> and the closest 
partial of the harmonic series built on <fund>. (For explanations of 
harmonic series and partials, see the box 'harm-series')

If <chord> is a list of chords the result will be the analyses of each 
successive chord.

The optional argument <unit> determines whether <chord> and <fund> are
entered in midis, ('midi'), or in hertz ('freq'). If 'midi' is 
selected the notes will be converted to frequencies inside the function
before analysis."
   ;; (:w 0.4) 

  (if (not (equalp unit "freq")) (setq fund (m->f fund) chord (m->f chord)))
  (pw::deep-mapcar/1 #'(lambda (x) (harm-dist-f fund x)) chord))

   
(defun closest-harm-f (f0 freq) ;((f0 440) (freq 440)) 
  ""
()
  (if (<= freq f0) (/ f0 freq)
      (let* ((ratio (/ freq f0))
             (n-partial (floor ratio))
             (d1 (/ ratio n-partial))
             (d2 (/ (1+ n-partial) ratio)))
        (if (< d1 d2) n-partial (1+ n-partial) ))))


(defun closest-harm (chord fund &optional (unit "midi") (type "rank"))

        ; ( (chord 60) (fund 24) 
        ;                &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
        ;                (type 1 (ccl::mk-menu-subview  :menu-list '(("rank"  1) ("notes"  2))))) 


    "Calculates the closest partial of the harmonic series built on <fund> to
each note of <chord>. (For explanations of harmonic series and partials, 
see the box 'harm-series')

If <chord> is a list of chords the result will be the analyses of each 
successive chord.

The optional argument <unit> determines whether <chord> is entered in 
midis, ('midi'), or in hertz ('freq'). If 'midi' is selected the 
values will be converted to frequencies inside the function and then the 
output (if appropriate) is reconverted to midis. If 'freq' is selected 
the entry, calculations and output (if appropriate) are all in hertz.

The optional argument <type> determines whether the output is a list of 
partial rankings or the notes corresponding to those partials." 
   ;;  (:w 0.4)
  (let* ((ffund  (pw::car! (if (not (equalp unit "freq")) (m->f fund) fund)))
         (fchord (if (not (equalp unit "freq")) (m->f chord) chord))
         (res (pw::deep-mapcar/1 #'(lambda (x) (closest-harm-f ffund x)) fchord)))
    (if (equalp type "notes") (nth-overtones  fund res unit) res)))
                     


;; ==== fondamental virtuel ====

(defun funda-virt-choice (fmin fmax l-fmin.fmax)
  (when (< fmax .1) (error "fundamental out of bounds ~S ~S~%" fmin fmax))
  (let (r n1 n2 (f1min (caar l-fmin.fmax)) (f1max (cdar l-fmin.fmax)))
    (pop l-fmin.fmax)
    (setq n1 (/ f1min fmax))
    (when (> n1 32767.) (error "partial out of bounds ~S~%" n1))
    (setq n1 (ceiling n1)
          n2 (min 32767 (floor f1max fmin)))
    (ifnot l-fmin.fmax
      (when (<= n1 n2)
        (cons (list n1) (cons (max fmin (/ f1min n1)) (min fmax (/ f1max n1)))))
      (dofor (n n1 1 n2)
        (setq r (funda-virt-choice (max fmin (/ f1min n)) (min fmax (/ f1max n))
                                   l-fmin.fmax))
        (when r
          (return-from funda-virt-choice
            (cons (cons n (car r)) (cdr r))))))))



(defun interval-around-f (freq approx)
  "Returns (fmin . fmax), fmax/freq=freq/fmin, int(fmin,fmax)=1/approx tone."
  (let ((coef (cents->coef (/ 100 approx))))
    (cons (/ freq coef) (* freq coef))))

; (interval-around-f 440. (/ 1. 12)) => (220.0 . 880.0)
; (interval-around-f 440. 1) => (415.3046975799451 . 466.1637615180899) (G# . A#)
; (f->mc (interval-around-f 440. 1)) => (6800 . 7000)

#|(defun fond-virt-f (freqs approx)
  (let*
    ((l-fmin.fmax (mapcar #'(lambda (freq) (interval-around-f freq approx)) freqs))
     (f1min (caar l-fmin.fmax))
     (f1max (cdar l-fmin.fmax))
     (fvc (funda-virt-choice (- f1max f1min) f1max l-fmin.fmax))
     (f0min (cadr fvc))
     (f0max (cddr fvc))
     (m0s (f->mc (mapcar #'/ freqs (car fvc))))
     (m0 (/ (apply #'+ m0s) (length m0s))))
    ;(format t "fvc:~S~%" fvc)
    (cond ((< m0 (f->m1 f0min)) f0min)
          ((> m0 (f->m1 f0max)) f0max)
          (t (m->f1 m0)))))|#

(defun fond-virt-f (freqs approx)
  (tolerant-gcd freqs approx))

;;From Gerard Assayag [93 07 16]

(defun tolerant-gcd (values grid-ratio)
  "floating gcd with tolerance grid-ratio around the values."
  (labels ((grid-above (val) (* val (1+ grid-ratio)))
           (grid-below (val) (/ val (1+ grid-ratio)))
           (gcd-try (values gcd-min gcd-max)
             (when (<= gcd-min gcd-max)
               (ifnot values
                 (/ (+ gcd-min gcd-max) 2.0)
                 (let* ((val-below (grid-below (first values)))
                        (val-above (grid-above (first values)))
                        (quo-min (ceiling (/ val-below gcd-max)))
                        (quo-max (floor (/ val-above gcd-min))))
                   (do* ((quotient quo-min (1+ quotient)) (gcd-interval))
                        ((> quotient quo-max) nil)
                     (setf gcd-interval
                           (gcd-try (rest values)
                                         (max gcd-min (/ val-below quotient))
                                         (min gcd-max (/ val-above quotient))))
                     (when gcd-interval
                       (return-from gcd-try gcd-interval))))))))
    (gcd-try values .1 (grid-above (apply 'min values)))))

; (fond-virt-f '(400. 500. 601.) 64) => ((4 5 6) 100.0763034890829 . 100.0902942798978)
; (fond-virt-f '(400. 500. 601.) 32) => ((4 5 6) 99.98602183067244 . 100.1806700903654)

; (f->mc (fond-virt-f (m->f '(6000 6400 6700)) 4)) => 3604

;; ==== harmonic distances ====

(defun max-abs (f0 freqs)
  "Returns the greatest interval (in cents) between <f0> and each of the <freqs>."
  (let ((max 1.0))
    (dowhile freqs
      (setq max (max max (harm-dist-f f0 (nextl freqs)))))
    (coef->cents max)))

(defun sum-abs (f0 freqs)
  "Returns the average sum of the absolute intervals (in cents) between <f0>
and each of the <freqs>."
  (let ((prod 1.0) (nb-freq (length freqs)))
    (dowhile freqs
      (setq prod (* prod (harm-dist-f f0 (nextl freqs)))))
    (round (coef->cents prod) nb-freq)))

(defun sum-square (f0 freqs)
  "Returns the euclidian average of the intervals (in cents) between <f0>
and each of the <freqs>."
  (let ((sum 0.0) (nb-freq (length freqs)) coef)
    (dowhile freqs
      (incf sum (* (setq coef (log (harm-dist-f f0 (nextl freqs)))) coef)))
    (round (/ (sqrt sum) nb-freq) #.(/ (log 2) 12000))
    ;(round #.(/ (log 2) .12) (/ (sqrt sum) nb-freq))
))

(defun fund-virt-plot (m0s ch fun) ; ((m0s 60) (ch (60)) (fun symbol)) 
  "Returns the list of distances (according to <fun>) between each f0 and <ch>."
  ()
  (let ((freqs (m->f ch)))
    (mapcar #'(lambda (f0) (funcall fun f0 freqs)) (list! (m->f m0s)))))

;; CAO:From-Mika-910218:PW-CL:PatchWork:PW-Library:PW-BPF-boxes.lisp

(defun sumabs-allmin (m0min ch m0max) ;((m0min 60) (ch '(60)) (m0max 72)) 
  "Returns the list of midis between <m0min> and <m0max> which correspond to a
minimum \"sum-abs\" harmonic distance to the chord <ch>.
They are the combinations of each frequency of <ch> divided by any integer n."
 ()
  (let ((freqs (sort (m->f (list! ch)) #'<))
        (f0min (m->f1 (pw::car! m0min)))
        (f0max (m->f1 (pw::car! m0max)))
        (l ()) (k 0) freq)
    (dowhile freqs
      (incf k)
      (mapc
       #'(lambda (f)
           (if (< (setq freq (/ f k)) f0min) (nextl freqs)
               (when (< freq f0max) (newl l (f->m1 freq)))))
       freqs))
    ;(sort (nreverse (remove-duplicates l)) #'<) 20 times slower !
    (unique-sorted (sort l #'<) #'=)))

(defun sumabs-allmax (m0min ch m0max) ; ((m0min 60) (ch '(60)) (m0max 72)) 
  "Returns the list of midis between <m0min> and <m0max> which correspond to a
maximum \"sum-abs\" harmonic distance to the chord <ch>.
They are the combinations of each frequency of <ch> divided by any (sqrt (* n (1+ n)))."
  ()
  (let ((freqs (sort (m->f (list! ch)) #'<))
        (f0min (m->f1 (pw::car! m0min)))
        (f0max (m->f1 (pw::car! m0max)))
        (l ()) (k 0) kk freq)
    (dowhile freqs
      (incf k)
      (setq kk (sqrt (* k (1+ k))))
      (mapc
       #'(lambda (f)
           (if (< (setq freq (/ f kk)) f0min) (nextl freqs)
               (when (< freq f0max) (newl l (f->m1 freq)))))
       freqs))
    ;(sort (nreverse (remove-duplicates l)) #'<) 20 times slower !
    (unique-sorted (sort l #'<) #'=)))

(defun sumabs-allminmax (m0min ch m0max) ;((m0min 60) (ch 60) (m0max 72)) 
  "Returns the list of midis between <m0min> and <m0max> which correspond to a
potential minimum or maximum \"sum-abs\" harmonic distance to the chord <ch>.
They are the combinations of each frequency of <ch> divided by any (sqrt (* n (1+ n)))
for the maximums and divided by any n for the minimums."
  ()
  (unique-sorted
   (merge 'list
          (sumabs-allmin m0min ch m0max)
          (sumabs-allmax m0min ch m0max)
          #'<) #'=))

(defun sumabs-minmax (m0min ch m0max) ;((m0min 24) (ch 60) (m0max 48)) 
  "Returns the list of midis between <m0min> and <m0max> which correspond to a
real minimum or maximum \"sum-abs\" harmonic distance to the chord <ch>."
  ()
  (fun-minmax
   (let ((freqs (m->f (list! ch))))
     #'(lambda (midi) (sum-abs (m->f1 midi) freqs)))
   (sumabs-allminmax m0min ch m0max)))

(defun fun-minmax (fun xs)
  "Returns the sublist of <xs> which correspond to real minimum or maximum of <fun>.
If two or more adjacent min or max have the same value, they are collected in a list."
  (let* ((l ())
         (state 'D)
         read
         (1st-0x xs)
         (oxs xs)
         (ox (car xs))
         (oy (funcall fun ox))
         x y )
    (loop
      (setq read
            (when (setq xs (cdr xs))
              (setq x (car xs) y (funcall fun x))
              (cond ((> y oy) '+)
                    ((< y oy) '-)
                    (t '0))))
      (ccase state
        (++ (ccase read
              (- (newl l ox) (setq state '--))
              (+)
              (0 (setq state '+= 1st-0x oxs))
              ((()) (newl l ox) (return))))
        (-- (ccase read
              (+ (newl l ox) (setq state '++))
              (-)
              (0 (setq state '-= 1st-0x oxs))
              ((()) (newl l ox) (return))))
        (+= (ccase read
              (- (newl l (list-sub 1st-0x xs)) (setq state '--))
              (+ (setq state '++))
              (0)
              ((()) (newl l (list-sub 1st-0x xs)) (return))))
        (-= (ccase read
              (+ (newl l (list-sub 1st-0x xs)) (setq state '++))
              (- (setq state '--))
              (0)
              ((()) (newl l (list-sub 1st-0x xs)) (return))))
        (D (ccase read
              (+ (newl l (list-sub 1st-0x xs)) (setq state '++))
              (- (newl l (list-sub 1st-0x xs)) (setq state '--))
              (0)
              ((()) (newl l (list-sub 1st-0x xs)) (return)))))
      (setq oxs xs ox x oy y))
    (nreverse l) ))

(export 'fun-minmax)

;(defun list-sub (l1 l2) (car l1))

(defun list-sub (l1 l2)
  (if (eq l2 (cdr l1)) (car l1)
      (let ((l ()))
        (dowhile (neq l1 l2)
          (when (null l1) (error "~S is not a sublist~%" l2))
          (newl l (nextl l1)))
        (nreverse l))))

#|
(defunp virt-fund ((ch chord) (cents fix>=0 (:value 50))) midic
  "Returns the highest midic which corresponds to a \"sum-abs\" harmonic distance
to the chord <ch> smaller than or equal to <cents>."
  (let* ((ch (list! ch))
         (max (+ (l-min ch) 600)) (freqs (m->f ch)) minmax)
    (loop
      (setq minmax (flat (sumabs-minmax (- max 1200) ch max)))
      (setq max
            (cond ((null minmax) (- max 1100))
                  ((null (cdr minmax)) (min (- max 150) (+ (car! minmax) 100)))
                  (t (min (- max 150) (+ (car! (cdr minmax)) 100)))))
      (when (cdr minmax) (nextl minmax))
      (mapc
       #'(lambda (midic)
           (when (<= (sum-abs (m->f1 (car! midic)) freqs) cents)
             (return-from virt-fund midic)))
       (nreverse minmax)))))
|#

;;; [Camilo] This is  probably wrong, but at least it terminates.
;;; TM: ajoutŽ options et traitement de listes d'accords et d'approx

#| (defunp virt-fund ((ch chord) (cents fix>=0 (:value 50))) midic
  "Returns the highest midic which corresponds to a \"sum-abs\" harmonic distance
to the chord <ch> smaller than or equal to <cents>."
(f->mc (fond-virt-f (m->f ch) (round (/ 100 cents)))))

|#


(defun virt-fund1 (chord cents)
  (car-mapcar #'(lambda (c) (fond-virt-f  chord (1- (cents->coef c)) ;;(round (/ 100 c))
                                          )) cents))


(defun virt-fund (chord cents &optional (unit "midi"))

      ; ((chord '(60 64 67)) (cents 50)
      ;               &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))) 

    "Returns the highest fundamental for which the notes of <chord> could be 
thought of as harmonic partials. In general, the lower the virtual 
fundamental, the more dissonant the chord. 

The argument <cents> determines the precision of the analysis. (a value of 
'0' would return the real fundamental; the larger the value the more 
approximate the result) 

If <chord> is a list of chords the box returns a list of virtual 
fundamentals.

The optional argument <unit> determines whether <chord> is entered and the 
result returned in midis, ('midi'), or in hertz ('freq'). The argument
<cents> remains, however, unchanged."
   ;;  (:x-proportions '((2 1)(1)) :w 0.45)

  (if (equalp unit "freq")
      (less-deep-mapcar 'virt-fund1 chord cents)
    (f->m (less-deep-mapcar 'virt-fund1 (m->f chord) cents))))

;(virt-fund '(60 63.85 67) 50)



(defun sumabs-minsd (ch hicents locents) ;((ch 60) (hicents 1) (locents 1))
  "Like \"sumabs-mins\", but returns pairs (midi . distance)."
 ()
  (let ((mins ()) (cents hicents) (max (+ (l-min ch) 6)) (freqs (m->f ch))
        minmax dist)
    (loop
      (setq minmax (flat (sumabs-minmax (- max 12) ch max)))
      (setq max
            (cond ((null minmax) (- max 11))
                  ((null (cdr minmax)) (min (- max 150) (+ (pw::car! minmax) 1.00)))
                  (t (min (- max 1.50) (+ (pw::car! (cdr minmax)) 1.00)))))
      (when (cdr minmax) (nextl minmax))
      (mapc
       #'(lambda (midi)
           (when (<= (setq dist (sum-abs (m->f1 (pw::car! midi)) freqs)) cents)
             (when (< dist locents) (return))
             (unless (cassq midi mins) (newl mins (cons midi dist)))
             (setq cents dist)))
       (nreverse minmax)))
    mins))

(defun sumabs-mins (ch hicents locents) ;((ch 60) (hicents 1) (locents 1)) 
    "Returns the highest midis (from high to low) which corresponds to a \"sum-abs\"
harmonic distance to the chord <ch> between <locents> and <hicents>."
    ()
  (mapcar #'car (sumabs-minsd ch hicents locents)))

 ;(oct 1)(nreverse (sumabs-minmax (+ min (* (1- oct) 12)) ch (+ min (* oct 12)))))
#|
(time (length (sumabs-allminmax -7 '(41 49 51 57 60 66 70 740) 29)))
; took 1800 ticks (30.000 seconds) to run. with remove-duplicates
; took 93 ticks (1.550 seconds) to run. with unique-sorted
;657
|#

(defun fv-sumabs-plot (m0s ch) ;((m0s 60) (ch 60)) 
  "Returns the list of distances (according to <fun>) between each f0 and <ch>."
  ()
  (let ((freqs (m->f (list! ch))))
    (mapcar #'(lambda (f0) (sum-abs f0 freqs)) (m->f (list! m0s)))))

;; =============================================================================-======
(defun unique-sorted (l &optional (fun #'=))
  "Fast implementation of destructive \"unique\" (or \"remove-duplicates\"),
where equal elements according to <fun> are supposed to be contiguous in <l>."
  (prog1 l
    (dowhile l
      (dowhile (and (cdr l) (funcall fun (first l) (second l)))
        (rplacd l (cddr l)))
      (nextl l))))