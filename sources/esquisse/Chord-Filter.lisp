;;;;=========================================================
;;;;
;;;;  PATCH-WORK
;;;;  By Mikael Laurson, Jacques Duthen, Camilo Rueda.
;;;;  (Several contributions by Tristan Murail)
;;;;  (c) 1986-1992 IRCAM 
;;;;

;;;;  revision finale -  dŽcembre 92 -  Tristan Murail
;;;;  PWGL revision -  February 07 -  Mikael Laurson
;;;;=========================================================

;; =============================================================================-======
;; [jack] 910913               Chord-Filter.Lisp
;; =============================================================================-======

;; Chord Filtering -- CLPF V2.0 by Jacques Duthen (c) 1991 IRCAM

(in-package patch-work)

;(import '(mc->f1 f->mc1)) ; etc.

;; =============================================================================-======
;; ==== chord filtering ====

;; [jack] 910612 after Magnus


;;; *********************
(defun sort-mod (chord)
                ;;; ((chord '(60 61)))
  "Returns a sorted list of lists in which each note of the chord <chord> 
(in midis) is converted into a list containing the interval in 
midis of that note from the 'c' below it, followed by the midis 
value of that 'c.' A list of chords also may be entered for <chord> the 
resulting list will, however, have a higher level of structure and may 
not be acceptable as entry for some other boxes."
 ()
  (less-deep-mapcar 'sort-mod1 chord))

(defun sort-mod1 (ch)
  (sort (mapcar #'(lambda (m) (let ((pc (mod m 12))) (list pc (- m pc)))) (list! ch))
   #'< :key #'car))

;; ---- max-abs-idt ----

(defun max-abs-idt (ch1 ch2)
  "Uses as intervalic distance the maximum of the absolute intervals (in cents)
between the corresponding notes of the two chords <ch1> and <ch2>.
Returns the minimum intervalic distance between <ch1> and the best transposition
of <ch2> and returns this transposition as second value."
  (let* ((ints (mapcar #'- ch1 ch2))
         (int-min (apply #'min ints))
         (int-max (apply #'max ints)))
    (values (/ (- int-max int-min) 2) (/ (+ int-max int-min) 2))))

;;so that user extended box works with max-abs-idt as default value...!!!
(defun CL-USER::max-abs-idt (ch1 ch2) (max-abs-idt ch1 ch2))




;;; *********************
(defun ma-best-transp (ch1 ch2) 
                        ;;;;; ((ch1 '(60 61)) (ch2 '(60 61))) 
  "Uses as intervalic distance the maximum of the absolute intervals (in cents)
between the corresponding notes of the two chords <ch1> and <ch2>.
Computes the minimum intervalic distance between <ch1> and the best transposition
of <ch2> and returns this transposition."
  ()
  (multiple-value-bind (dist ch) (max-abs-idt ch1 ch2)
    (declare (ignore dist))
    ch))

;;; *********************
(defun ma-min-interv (ch1 ch2) 
                        ;;;;; ((ch1 '(60 61)) (ch2 '(60 61))) 
  "Uses as intervalic distance the maximum of the absolute intervals (in cents)
between the corresponding notes of the two chords <ch1> and <ch2>.
Returns the minimum intervalic distance between <ch1> and the best transposition
of <ch2>."
  ()
  (multiple-value-bind (dist ch) (max-abs-idt ch1 ch2)
    (declare (ignore ch))
    dist))

;(mapcar #'- '(4700 5500 6000) '(6000 6300 6500))
;(max-abs-idt '(4600 5600 6000) '(6000 6300 6500))
;(max-abs-idt '(0 100 200 300) (mapcar #'1+ '(0 100 200 300)))
;(max-abs-idt '(0 100 200 300) '(1 101 200 302))
;(max-abs-idt '(0 100 200 300) '(1 101 195 311))

;; ---- sum-abs-idt ----

;; - the best transposition "Tbest" is the middle point of the list:
;;   (cond ((oddp (length ints)) (nth (/ n 2) ints))
;;         ((evenp (length ints)) (/ (+ (nth (floor n 2) ints)
;;                                     (nth (floor (1+ n) 2) ints)) 2)))
;; - the corresponding distance is:
;;   D = (Sum (i 0 n/2) |Tbest-INTi|) + (Sum (i n/2 n+1/2) |INTi-Tbest|)
;;   D = (Sum (i n/2 n+1/2) INTi) - (Sum (i 0 n/2) INTi)

(defun sum-abs-idt (ch1 ch2)
  "Uses as intervalic distance the arevage of the absolute intervals (in cents)
between the corresponding notes of the two chords <ch1> and <ch2>.
Returns the minimum intervalic distance between <ch1> and the best transposition
of <ch2> and returns this transposition as second value."
  (let* ((ints (sort (mapcar #'- ch1 ch2) #'<))
         (1-length (1- (length ints)))
         (summin 0) (summax 0)
         transpos)
    (repeat (floor 1-length 2)
      (incf summin (nextl ints)))
    (if (evenp 1-length)
      (nextl ints transpos)
      (progn
        (incf summin (nextl ints transpos))
        (setq transpos (/ (+ transpos (car ints)) 2))))
    (dowhile ints (incf summax (nextl ints)))
    (values (- summax summin) transpos)))



;;; *********************
(defun sa-best-transp (ch1 ch2) 
                    ;;;;; ((ch1 '(60 61)) (ch2 '(60 61))) 
  "Uses as intervalic distance the arevage of the absolute intervals (in cents)
between the corresponding notes of the two chords <ch1> and <ch2>.
Computes the minimum intervalic distance between <ch1> and the best transposition
of <ch2> and returns this transposition."
  ()
  (multiple-value-bind (dist ch) (sum-abs-idt ch1 ch2)
    (declare (ignore dist))
    ch))


;;; *********************
(defun sa-min-interv (ch1 ch2) 
                    ;;;;; ((ch1 '(60 61)) (ch2 '(60 61)))  
  "Uses as intervalic distance the arevage of the absolute intervals (in cents)
between the corresponding notes of the two chords <ch1> and <ch2>.
Returns the minimum intervalic distance between <ch1> and the best transposition
of <ch2>."
  ()
  (multiple-value-bind (dist ch) (sum-abs-idt ch1 ch2)
    (declare (ignore ch))
    dist))

(defvar *default-intervalic-distance* 'max-abs-idt
  "Contains the intervalic distance function (which defaults to 'max-abs-idt) used by
the function closest-renv.
This function should return 2 values: the distance and the best transposition.")


;-----------------------------------------------------------------------------------


;;; *********************
(defun closest-inv (regch intch &optional (fct "sum"))
                ;;;; ((regch '(60 61)) (intch 65) &optional (fct "sum"))
        "Transpose globaly the intervallic chord <intch> and individually each of its notes
by octaves to produce a chord where each note is as close as possible to the
chord <regch>.
i.e distorts <regch> as little as possible to take the intervallic structure of <intch>."
  ()
  (multiple-value-bind (dist result) 
                  (closest-renv regch intch 
                        (if (equalp fct "max") #'max-abs-idt #'sum-abs-idt ))
    (declare (ignore dist))
    (g-round result 1))); 100??




;;; *********************
(defun best-closest-inv (regch intchs &optional (fct "sum")) 
                        ;;;;;; ((regch '(60 61)) (intchs '((6400))) &optional (fct "sum")) 

  "Like \"closest-renv\" but chooses the best intervallic-chord among <intchs>,
comparing the distorsions of <regch>."
  ()
  (multiple-value-bind (dist chord) 
              (best-closest-renv regch intchs 
                          (if (equalp fct "max") #'max-abs-idt #'sum-abs-idt ))
    (declare (ignore dist))
    (g-round chord 1))); 100??




;;; *********************
;;approx:Changer???
(defun closest-renv (regch intch &optional (int-dist 'pw::sum-abs-idt))
                  ;;;;; ((regch '(60 61)) (intch 65) &optional (int-dist 'pw::sum-abs-idt)) ;;??
  "Transpose globaly the intervallic chord <intch> and individually each of its notes
by octaves to produce a chord where each note is as close as possible to the
chord <regch>.
i.e distorts <regch> as little as possible to take the intervallic structure of <intch>."
 ()
  (let* ((regch (list! regch))
         (intch (list! intch))
         (length (length intch))
         (regch-sort-mod (sort-mod regch))
         (regch-mod (mapcar #'car regch-sort-mod))
         (regch-transp (mapcar #'second regch-sort-mod))
         (intch-mod (sort (mapcar #'(lambda (m) (mod m 12)) intch) #'<))
         (dist-min most-positive-fixnum)
         best-renvers best-transpos)
    (unless (= (length regch) length)
      (error "The two chords ~S and ~S should have the same length." regch intch))
    (dofor (renvers 0 1 (1- length))
      (multiple-value-bind (dist transpos) (funcall int-dist regch-mod intch-mod)
        (when (< dist dist-min)
          (setq dist-min dist best-renvers renvers best-transpos transpos)))
      (setf (car intch-mod) (+ 12 (car intch-mod)))
      (setq intch-mod (permut-circn intch-mod)))
    (repeat best-renvers ; could be faster
      (setf (car intch-mod) (+ 12 (car intch-mod)))
      (setq intch-mod (permut-circn intch-mod)))
    (values dist-min
            (mapcar #'(lambda (intmidi regtransp)
                        (+ intmidi best-transpos regtransp -12))
                    intch-mod regch-transp))))


;;; *********************
(defun best-closest-renv (regch intchs &optional (int-dist 'pw::sum-abs-idt))
                      ;;;;; ((regch '(60 61)) (intchs '((6400))) &optional (int-dist 'pw::sum-abs-idt)) ;??
  "Like \"closest-renv\" but chooses the best intervallic-chord among <intchs>,
comparing the distorsions of <regch>."
  ()
  (let ((best-dist-min most-positive-fixnum) best-ch (regch (list! regch)))
    (mapc
     #'(lambda (intch)
         (multiple-value-bind (dist-min ch) (closest-renv regch intch int-dist)
           (when (< dist-min best-dist-min)
             (setq best-dist-min dist-min best-ch ch))))
     intchs)
    (values best-dist-min best-ch)))


;------------------  fonctions du menu esquisse:intervals:treatments   ----------


;;; *********************
(defun best-transp (ch1 ch2 &optional (fct "sum"))
                ;;;;;;; ((ch1 '(46 56 60)) (ch2 '(60 63 65))  &optional (fct "sum")) ;;; (fct 1 (ccl::mk-menu-subview  :menu-list '(("sum"  1) ("max"  2)))) 
    "Transposes the chord <ch2> (a single chord in midis) so that its 
intervallic distance to <ch1> (also a single chord in midis) is as 
small as possible. Thus the distance between each note of <ch2> and each 
note of <ch1> becomes as small as possible.This is essentially the same 
as the box 'best-inv' except the ordering of <ch2> is preserved.

The optional argument <fct> allows the choice between two different 
algorithms for calculating this function,"sum" and "max". The default
is "sum", because "max" can produce quarter tones from demi-tone input. For
best results one should experiment with both and chose according to 
context."
    ()
  (g+ ch2 (if (equalp fct "max") (ma-best-transp ch1 ch2) (sa-best-transp ch1 ch2))))

;;; *********************
(defun best-inv (regch intch &optional (fct "sum"))
            ;;;;;;; ((regch '(46 56 60))(intch '(60 63 65)) &optional (fct "sum")) ;;;; (fct 1 (ccl::mk-menu-subview  :menu-list '(("sum"  1) ("max"  2))))

"Extracts the intervallic content of the chord <intch> (in midis) 
and through a global transposition of the chord followed by octave 
transpositions of individual notes produces a chord with the intervals 
of <intch> whose notes are as close as possible to those of the chord 
<regch> (also in midis). This in essence distorts the chord <regch> 
by the smallest amount possible for it to take on the intervallic 
structure of <intch>.

<regch> must be a single chord.

<intch> may be a list of chords (also in midis) from which the one 
that distorts least <regch> is used for the operation. The output will 
still be a single chord.

The optional argument <fct> allows the choice between two different 
algorithms for calculating this function,"sum" and "max". The default
is "sum" because "max" can produce quarter tones from demi-tone input. For
best results one should experiment with both and choose according to 
context."
  ()
  (if (atom (car intch)) (closest-inv regch intch fct) 
      (best-closest-inv regch intch fct)))

(defun inversion1 (chord direction)
"gives first inversion of <chord>, going down or up ,
according to <direction> ( > or < )"
  (setq chord (sort-list chord  direction))
  (let ( (oper (if (equal direction '>) '- '+)) (note (pop chord)))
    (dowhile (funcall direction note (pw::l-last chord))
      (setq note (funcall oper note 12)))
    (append chord (list note))))


;;; *********************
(defun all-inversions (chord direction &optional (format "inclus"))

              ;;;;;; ((chord '(60 64 67)) (direction ">") ;;; (direction 1 (ccl::mk-menu-subview  :menu-list '((">"  1) ("<"  2))))
              ;;;;;; &optional (format "inclus")) ;;; (format 1 (ccl::mk-menu-subview  :menu-list '(("inclus"  1) ("exclus"  2))))  
  
    "Outputs a structured list of all possible inversions of <chord> 
(in midis). Inversion here means the moving of the highest note down 
by octaves so as to make it the new bass note (when direction is '>'), or 
moving the lowest note up by octaves to make it the highest (when 
direction is '<'). The output is a list of chords on which this operation 
has been performed to each successive chord until all notes of <chord> 
have served as the base note.

The optional argument <format> allows the choice of whether the original
<chord> will be included, 'inclu' or excluded, 'exclu' from the output
list.

Warning: <chord> can take only a single chord."
    ;; (:x-proportions '((3 2) (1)))
 
  ;;;; (if (= direction 1) (setq direction '>) (setq direction '<))
 
  (let ((res (list chord)))
    (dotimes (n (1- (length chord)))
      (setq chord (inversion1 chord direction))
      (push chord res)) 
    (if (equalp format "exclus") (cdr (nreverse res)) (nreverse res))))


