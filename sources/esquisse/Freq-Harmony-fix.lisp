;;;;=========================================================
;;;;
;;;; ESQUISSE PATCH-WORK
;;;;  By Mikael Laurson, Jacques Duthen, Camilo Rueda.
;;;;  Contributions by Tristan Murail
;;;;  (c) 1986-1992 IRCAM 
;;;;
;;;;  revision finale -  decembre 92 -  Tristan Murail
;;;;  PWGL revision -  February 07 -  Mikael Laurson
;;;;=========================================================

(in-package patch-work)

;(import '(m->f1 f->m1)) ; etc.

;=============================================================
;===================== freq harmony ==========================
;=============================================================
(defun cents->coef (nb-cents)  ;;((nb-cents 100)) 
	"<cents->coef> takes an interval expressed in midi-cents and returns the ratio 
	between two frequencies separated by that interval; i.e., the value: (freq + <nb-
	cents>) / freq."
	()
	(expt 2.0 (/ nb-cents 1200.0)))

; (cents->coef 1200)  => 2
; (cents->coef  200)  => 1.122462048309373
; (cents->coef  100)  => 1.059463094359295
; (cents->coef   50)  => 1.029302236643492

(defun coef->cents (coef) ;;; ((coef 2)) 
	"<coef->cents> takes a frequency ratio <coef> f1/f2 and returns the interval, 
	expressed in midi-cents, between f1 and f2."
	()
	(round (log coef) #.(/ (log 2) 1200)))

; (coef->cents 2)                 => 1200
; (coef->cents 1.122462048309373) =>  200
; (coef->cents 1.059463094359295) =>  100
; (coef->cents 1.029302236643492) =>   50

; ==================== sŽrie harm  ===========================

(defun rankcalc (numer denom begin end)
	(let ((cdeb (mod begin denom)) (pas (if (< end begin) -1 1)) res)
		(dofor (n begin pas end) 
			(if (not (>= (mod (- n cdeb) denom) numer)) (push n res)) )
		(nreverse (remove 0 (if (and (not (null (find 1 res))) (not (null (find -1 res)))) 
			(remove -1 res) res)))))

(defun hrmcalc1 ( listharm fond)
	(let (res)
		(dolist ( n listharm)
			(cond ( ( > n 0 ) (push (* fond  n ) res))
				( ( < n 0 ) (push (/ fond (abs n))  res))
				( t () ) ))
		(nreverse  res)))

(defun hrmcalc (fond listharm )
	(less-deep-mapcar #'hrmcalc1 listharm fond))

(defun sercalc (fund  numer denom begin end )
	(hrmcalc fund (rankcalc numer denom begin end) ))


(defun harm-series (fund numer denom begin end &optional (unit "midi")(type "seq"))

				  ; ((fund 36) (numer 1) (denom 1) (begin 1) (end 7)
				  ; &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
				  ; (type 1 (ccl::mk-menu-subview  :menu-list '(("seq"  1) ("chord"  2)))))

				  "Builds the harmonic and/or sub-harmonic series starting with the 
				  fundamental <fund>. The harmonic series is the series of positive integer 
				  multiples of the fundamental frequency. The sub-harmonic series is the 
				  series of positive integer divisions of the fundamental frequency. 

				  The arguments <numer> and <denom> determine what sample (<numer>/<denom>)
				  of the partials is taken. (e.g. 1/1 = all; 1/2 = every other; 2/5 = the 
				  first two of each group of five)

				  The arguments <begin> and <end> determine the lowest and highest partials
				  generated. The fundamental is represented by '1' or '-1' sub-harmonics are 
				  represented by negative numbers, overtones by positive. (e.g. partial
				  number 7 is 7 times the fundamental frequency,partial -7 is the 
				  fundamental frequency divided by 7; thus to go from the seventh undertone 
				  to the seventh overtone <begin> would equal '-7' and <end> would equal 
				  '7')

				  The optional argument <unit> determines whether the <fund> is entered in 
				  midis, ('midi'), or in hertz ('freq'). If 'midi' is selected the 
				  value will be converted to frequency inside the function and then the 
				  output is reconverted to midis. If 'freq' is selected the entry, 
				  calculation and output are all in hertz.

				  When <fund> is a list, the optional argument <type> is used to determine
				  the format of the output. The value 'seq' returns a list of chords 
				  representing the partials requested for each successive fundamental. The
				  value 'chord' returns a single chord containing all the partials of all 
				  the fundamentals." 
 ;;;  (:groupings '(1 2 2) :w 0.3)

 (let* ((fund (if (equalp unit "freq") fund (m->f  fund)))
 	(res (car-mapcar 'sercalc  fund  numer denom begin end)))
 (setq res (if (and unit (equalp unit "freq")) res (f->m res) ))
 (if (equalp type "chord") (flat res) res)))



(defun nth-harm (fund nth &optional (unit "midi")(type "seq"))


				; ((fund 36) (nth 1)
				;            &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
				;            (type 1 (ccl::mk-menu-subview  :menu-list '(("seq"  1) ("chord"  2)))))


				"Receives a fundamental <fund>, or list of fundamentals and returns 
				the <nth> harmonic or sub-harmonic of each fundamental. The harmonic 
				series is the series of positive integer multiples of the fundamental 
				frequency. The sub-harmonic series is the series of positive integer 
				divisions of the fundamental frequency. Partial numbers are determined 
				by their relationship to the fundamental. (e.g. partial number 7 is 7 
				times the fundamental frequency,partial -7 is the fundamental frequency 
				divided by 7) 

				If <nth> is a list, a corresponding series of partials will be returned 
				for each <fund>. If <nth> contains non-integers the returned partials 
				and/or sub-partials will be non-harmonic, and correspond to the 
				fundamental frequency multiplied by <nth> (when <nth> is positive) or 
				the fundamental frequency divided by the absolute value of <nth> 
				(when <nth> is negative).

				The optional argument <unit> determines whether the <fund> is entered in 
				midis, ('midi'), or in hertz ('freq'). If 'midi' is selected the 
				value will be converted to frequency inside the function and then the 
				output is reconverted to midis. If 'freq' is selected the entry, 
				calculation and output are all in hertz.

				When <fund> is a list, the optional argument <type> is used to determine
				the format of the output. The value 'seq' returns a list of chords 
				representing the partials requested for each successive fundamental. The
				value 'chord' returns a single chord containing all the partials of all 
				the fundamentals."

;;; (:w 0.3)

(let* ((nth (list! nth)) (fund (list! fund))
	(listfund  (not (one-elem fund)))
	(listnth (not (atom (car nth))))
	(listchord (not (atom (car fund))))
	(fund (if (and unit (equalp unit "freq"))  fund   (m->f fund)))
	res)
(cond  (listchord (setq res (seqfund-nth fund nth type listnth)))
	((and listfund listnth) (setq res (doublenth fund nth type)))
	((not listfund)  (setq res (flat-once (simplenth fund nth type))))
	(t (setq res (simplenth fund nth type))))
(if (one-elem res) (setq res (first res)))
(if (and unit (equalp unit "freq")) res (f->m res))))


(defun simplenth (fund nth type)
	(let ((res (deep-mapcar/1  'hrmcalc  fund  nth)))
		(if (equalp type "chord") (flat-once res) res)))


(defun doublenth (fund nth type)
	(if (equalp type "seq") (flat-once (simplenth fund nth type))
		(mapcar #'(lambda (x) (flat (simplenth fund x type))) nth)))

(defun seqfund-nth (fund nth type listnth)
	(cond ((not listnth) (mapcar #'(lambda (x) (simplenth x nth "chord")) fund)) 
		((equalp type "seq") (flat-once (mapcar #'(lambda (x) (doublenth x nth "chord")) fund)))
		((equalp type "chord")  (mapcar #'(lambda (x) (flat (simplenth x nth type))) fund) )))


; anciens noms, pour compatibilitŽ

(defun overtones (fund numer denom begin end &optional (unit "midi") (type "seq"))

		  ; ((fund 36) (numer 1) 
		  ;            (denom 1) (begin 1)
		  ;            (end 7)
		  ;            &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
		  ;            (type 1 (ccl::mk-menu-subview  :menu-list '(("seq"  1) ("chord"  2)))))

		  ""
		  ()
		  (harm-series fund numer denom begin end unit type))

(defun nth-overtones (fund nth &optional (unit "midi")(type "seq"))

		; ((fund 36) (nth 1)
		;                  &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
		;              (type 1 (ccl::mk-menu-subview  :menu-list '(("seq"  1) ("chord"  2)))))

		""
		()
		(nth-harm fund nth unit type))

;; ==================== frequency shifting  ======================

#|(defun fshift1 (freq dfreq) 
  "adds an interval (in Hz) to a freq"
  (g+   freq dfreq ))|#

  (defun fshift (chord dfreq &optional (unit "midi") (type "seq")(output "exclus"))


		  ; ((chord '(60 61)) (dfreq 100)
		  ;         &optional  (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
		  ;            (type 1 (ccl::mk-menu-subview  :menu-list '(("seq"  1) ("chord"  2))))
		  ;           (output 1 (ccl::mk-menu-subview  :menu-list '(("exclus"  1) ("inclus"  2)))))


		  "Shifts the frequency of each note of <chord> by a frequency <dfreq> 
		  (positive or negative, but always in hertz).

		  The optional argument <unit> determines whether <chord> is entered in 
		  midis, ('midi'), or in hertz ('freq'). If 'midi' is selected the 
		  values will be converted to frequencies inside the function and then the 
		  output is reconverted to midis If 'freq' is selected the entry, 
		  calculations and output are all in hertz. 

		  If <chord> is a list of chords the optional argument <type> is used to 
		  determine whether the output will be a list of chords ('seq'), each one
		  shifted by <dfreq> or a single chord combining the notes of all the 
		  shifted chords ('chord'). If <dfreq> is a list the same argument is used
		  to choose between a list of chords shifted by each successive <dfreq> or a 
		  single chord combining the different distortions. If both <chord> and
		  <dfreq> are lists the position 'seq' will return a list of chords 
		  containing  each chord shifted by each frequency; the position 'chord' 
		  will return a list of chords containing each chord shifted by all the 
		  listed frequencies.

		  The optional argument <output> determines whether the original <chord> is 
		  included ('inclu') or excluded ('exclu') from the output list."
;; (:w 0.42)

(let ((listchord  (not (atom (car chord))))
	(listfreq (not (atom  dfreq)))
	(fchord (if (equalp unit "freq")  chord   (m->f chord)))    res)
(cond  ((and listchord listfreq)
	(setq res (doubleshift fchord dfreq type output)))
(listchord (setq res (lcshift fchord dfreq type output)))
(listfreq  (setq res (lfshift fchord dfreq type output)))
(t (setq res (simpleshift fchord dfreq output))))
(if (equalp unit "freq") res (f->m res))))


  (defun simpleshift (fchord dfreq output)
  	(let ((res (g+ dfreq  fchord )))
  		(if (equalp output "inclus") (x-append fchord res) res)))

  (defun lcshift (fchord dfreq type output)
  	(let ((res (deep-mapcar/1 #'g+ dfreq  fchord )))
  		(if (equalp output "inclus") (setq res (mapcar #'x-append fchord res)) res)
  		(if (equalp type "chord") (flat-once res) res)))

  (defun lfshift (fchord dfreq type output)
  	(let ((res (deep-mapcar/1 #'g+ dfreq  fchord )))
  		(cond ((and (equalp output "inclus") (equalp type "seq"))
  			(mapcar #'(lambda (x) (x-append x fchord)) res))
  		((and (equalp output "inclus") (equalp type "chord"))
  			(x-append fchord (flat-once res)))
  		(t (if (equalp type "chord") (flat-once res) res)))))


  (defun doubleshift (fchord dfreq type output)
  	(cond ((equalp type "chord")
  		(mapcar #'(lambda (x) (lfshift x dfreq type output)) fchord))
  	((and (equalp output "exclus") (equalp type "seq"))
  		(flat-once (mapcar #'(lambda (x) (lfshift fchord x type output)) dfreq)))
  	((and (equalp output "inclus") (equalp type "seq"))
  		(flat-once 
  			(mapcar #'(lambda (x) (lcshift fchord x type output)) dfreq)))))



  (defun fshift-proc (chord dfreq steps &optional (unit "midi")(output "exclus"))

		  ; ((chord '(60 61)) (dfreq 100) (steps 1)
		  ;              &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
		  ;           (output 1 (ccl::mk-menu-subview  :menu-list '(("exclus"  1) ("inclus"  2)))))

		  "Progressively shifts <chord> until the final chord which is shifted by 
		  <dfreq> (positive or negative, but always in hertz). The argument <steps> 
		  determines the number of intermediate distortions to be produced between 
		  the unaltered <chord> and the chord shifted by <dfreq>. 

		  The argument <chord> may be a list, in which case the same process of 
		  shifting is carried out for each successive chord.

		  <dfreq> and <steps> may not be lists.

		  The optional argument <unit> determines whether <chord> is entered in 
		  midis, ('midi'), or in hertz ('freq'). If 'midi' is selected the 
		  values will be converted to frequencies inside the function and then the 
		  output is reconverted to midis. If 'freq' is selected the entry, 
		  calculations and output are all in hertz.

		  The optional argument <output> determines whether the non-shifted <chord> 
		  is included ('inclu') or excluded ('exclu') from the output list of 
		  chords."
;;; (:groupings '(1 2) :w 0.4)

(let* ((dfreq (car! dfreq)) (steps (/ dfreq (car! steps)) )
	(deb (if (not (equalp output "inclus")) 0 steps)) res)

(dofor (n deb steps dfreq ) (newl res (fshift chord n unit "seq" "exclus")))
(setq res (nreverse res))
(if  (not (atom (car chord))) (flat-once res) res)))


; ========== distorsion des frŽquences ==============================================


(defun fdistor (chord minout maxout &optional (minin ()) (maxin ()) (unit "midi") (output "exclus"))

		; ((chord '(60 64 67)) (minout 57) (maxout 63)
		;            &optional (minin ()) 
		;            (maxin ())
		;            (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
		;             (output 1 (ccl::mk-menu-subview  :menu-list '(("exclus"  1) ("inclus"  2)))))

		"Distorts the frequencies of <chord> so that the lowest note is changed to
		<minout> and the highest note to <maxout>. Interior notes are rescaled so
		as to preserve the relative positions of their frequencies.

		The optional inputs <minin> and <maxin> allow the scaling to be done 
		relative to two selected reference notes rather than the highest and 
		lowest notes of the chord. The note entered as <minin> will be moved to 
		<minout>, and <maxin> to <maxout> the rest of the chord is then 
		rescaled accordingly.

		If <chord> is a list of chords, output will be a corresponding list of 
		distorted chords.

		The optional argument <unit> determines whether <chord> is entered in 
		midis, ('midi'), or in hertz ('freq'). If 'midi' is selected the 
		values will be converted to frequencies inside the function and then the 
		output is reconverted to midis. If 'freq' is selected the entry, 
		calculations and output are all in hertz.

		The optional argument <output> determines whether the non-distorted 
		<chord> is included ('inclu') or excluded ('exclu') from the output list. 
		If included the non-distorted notes will be mixed with the distorted into
		a single chord."
;; (:groupings '(1 2) :extension-pattern '(2 1 1) :w 0.4)

(if (not (equalp unit "freq")) (setq chord (m->f chord) minout (m->f minout) maxout (m->f maxout)
	minin (if (not (null minin )) (m->f minin))
	maxin (if (not (null maxin )) (m->f maxin))))
(setq minin (if (null minin) most-negative-fixnum (car! minin))
	maxin (if (null maxin) most-positive-fixnum (car! maxin)))
(let ((res (g-scaling chord (car! minout) (car! maxout) minin maxin)))
	(setq res (if (equalp output "inclus") (if (atom (car chord)) (x-append chord res) 
		(mapcar #'x-append chord res)) res))
	(if (equalp unit "freq") res (f->m res))))



(defun fdistor-proc (chord steps minout maxout &optional (minin ()) (maxin ()) (unit "midi") (output "exclus"))


  ; ((chord '(60 64 67)) (steps 1)
  ;                      (minout 57) (maxout 63)
  ;                      &optional  
  ;                      (minin ()) 
  ;                      (maxin ())
  ;                      (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
  ;                      (output 1 (ccl::mk-menu-subview  :menu-list '(("exclus"  1) ("inclus"  2)))))


  "Progressively distorts <chord> until the distortion specified by <minout> 
  and <maxout> is reached. The argument <steps> determines the number of 
  intermediate distortions to be produced between the unaltered <chord> and 
  the final distortion. (For explanation of frequency distortion, as well as 
  the use of <minout>,<maxout>,<minin> and <maxin> see the box 'fdistor') 

  <chord> may not be a list of chords.

  The optional argument <unit> determines whether <chord> is entered in 
  midis, ('midi'), or in hertz ('freq'). If 'midi' is selected the 
  values will be converted to frequencies inside the function and then the 
  output is reconverted to midis. If 'freq' is selected the entry, 
  calculations and output are all in hertz.

  The optional argument <output> determines whether the non-distorted 
  <chord> is included ('inclu') or excluded ('exclu') from the output list 
  of chords."
;;; (:groupings '(2 2) :extension-pattern '(2 1 1) :w 0.45)

(let*  (
	(valmin (if (null minin) (l-min (list! chord)) (car! minin)))
	(valmax (if (null maxin) (l-max (list! chord)) (car! maxin)))
	(stepmin (if (/= steps 0) (/ (- (car! minout) valmin) steps) 0))
	(stepmax (if (/= steps 0) (/ (- (car! maxout) valmax) steps) 0))
	(deb (if (/= output 2) 0 1 )) res)
(dofor (n deb 1 steps) 
	(newl res (fdistor chord (+ valmin (* n stepmin)) (+ valmax (* n stepmax))
		(car! minin) (car! maxin) unit "exclus")))
(nreverse res)))



;; ==== central frequency ====

(defun midi-center2 (midi1 midi2)
				  ; ((midi1 ()) (midi2 ())) 
				  "central midi between <midi1> and <midi2>"
				  ()
				  (round (+ (car! midi2) (car! midi1)) 2) )

(defun midi-center-1 (chord)
  (g-round (/ (+  (l-min chord) (l-max chord)) 2) 2)) ;; :ML

(defun midi-center (chord) ;;; ((chord '(60 61)))
	"Calculates the value in midis exactly halfway between the lowest 
	and highest notes of the chord <chord>. 

	If <chord> is a list of chords the output is a list of the central 
	values."
	()
	(less-deep-mapcar  'midi-center-1  chord)  )

; fonctions supprimŽes du menu ------------------------------------
(defun freq-center2 (freq1 freq2) ;; ((freq1 ()) (freq2 ())) 
	"central freq between <freq1> and <freq2>"
	()
	(sqrt (* (car! freq2) (car! freq1))) )

(defun freq-center (freqs chord)  ; ((freqs ()) (chord ()))  
	"central freq between the lowest and highest notes of the chord <freqs>"
	()
	(freq-center2 (l-min (list! chord)) (l-max (list! chord))))
;------------------------------------------------------------------

(defun best-freq (chord &optional (unit "midi"))


  ; ((chord '(60 64 67))
  ;             &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2)))))

  "Returns the note which is the minimum possible distance from the 
  frequencies of all the notes of <chord>. (minimum sum of the squares of 
  the distances) This note can be thought of as a sort of center of gravity
  for <chord> (it is not usually a member of the chord).

  If <chord> is a list of chords the box returns a list of best frequencies.

  The optional argument <unit> determines whether <chord> is entered in 
  midis, ('midi'), or in hertz ('freq'). If 'midi' is selected the 
  values will be converted to frequencies inside the function and then the 
  output is reconverted to midis. If 'freq' is selected the entry, 
  calculations and output are all in hertz."
 ;;; (:w 0.35)
 (if (equalp unit "freq")
 	(less-deep-mapcar 'best-freq1 chord)
 	(f->m (less-deep-mapcar 'best-freq1 (m->f chord)))))


(defun best-freq1 (freqs)
	(let ((sum 0) (nb-freq (length freqs)))
		(dowhile freqs (incf sum (log (nextl freqs))))
		(exp (/ sum nb-freq))))




; ============ modulations ==========================================================

; ----------   modulation de frŽquence

(defun fmcalc (p m index)
	(let ((res (list p)))
		(dofor (i 1 1 index)
			(push (+ p (* i m)) res)
			(push (- p (* i m)) res))
		(reverse res)))

(defun fm/freq (fcarrier fmod index) ;((fcarrier ()) (fmod ()) (index 1)) 
	""
	()
	(let* (ll (x (one-elem fcarrier)) (fcarrier (list! fcarrier)) (fmod (list! fmod)))
		(dowhile fcarrier
			(let ((a (pop fcarrier)))
				(push (unique (flat (mapcar #'(lambda (x) (fmcalc a x index)) fmod))) ll) ))
		(if  x (flat (nreverse ll)) (nreverse ll))))

(defun fm/midi (mcarrier mmod index)   ; ((mcarrier ()) (mmod ()) (index 0)) 
	"Returns a list of midis according to frequency modulation:
	(mcarrier +- i * mmod) i=0 -->index  . Input and output = midi
	mcarrier and mmod may be lists"
	()
	(f->m (fm/freq (m->f mcarrier) (m->f mmod) index)))

; nouvelles fonctions plus performantes ---------

(defun fmnth (p m lindex output)
	(let ((res (if (equalp output "inclus") () (list p))))
		(dowhile  lindex 
			(let ((i (pop lindex)))
				(push (+ p (* i m)) res)
				(push (- p (* i m)) res)))
		(reverse res)))

(defun freq-mod/f (fcarrier fmod  index output )
	(let* (ll (x (one-elem fcarrier)) (fcarrier (list! fcarrier)) (fmod (list! fmod))
		(index (if (atom index) (arithm-ser 1 1 index) index)))
	(dowhile fcarrier
		(let ((a (pop fcarrier)))
			(push (unique (flat (mapcar #'(lambda (x) (fmnth a x index output)) fmod))) ll) ))
	(if  x (flat (nreverse ll)) (nreverse ll))))

(defun fm/f/ratio (fcarrier ratio index output)
	(let* (ll (x (one-elem fcarrier)) (fcarrier (list! fcarrier)) (ratio (list! ratio))
		(index (if (atom index) (arithm-ser 1 1 index) index)))
	(dowhile fcarrier
		(let ((a (pop fcarrier)))
			(push (unique (flat (mapcar #'(lambda (x) (fmnth a x index output)) 
				(g* a ratio) ))) ll) ))
	(if x (flat (nreverse ll)) (nreverse ll))))


(defun freq-mod (carrier modul index &optional (unit "midi") (output "exclus"))

  ; ((carrier 60) (modul 66) (index 1)
  ; &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2)))) (output 1 (ccl::mk-menu-subview  :menu-list '(("exclus"  1) ("inclus"  2)))))

  "Simulates the pitches generated by frequency modulation. The frequencies 
  of the carrier <carrier> and the modulator <modul> are treated according 
  to the following formula: carrier + or - (i * modul), i = 0,1,... index

  If <carrier> is a list the output is a list of modulations around each 
  successive carrier.

  If <modul> is a list the carrier or carriers are each modulated by all 
  the notes in <modul> as well as the partials of those notes up to the 
  <index> specified.

  If <index> is a list the formula is computed with 'i' equal to only the
  listed values. (e.g. <index> = (1 3), notes calculated are:
  carr. + 1 * mod.; carr. - 1 * mod.;carr. + 3 * mod.; carr. - 3 * mod.) 

  The optional argument <unit> determines whether the <carrier> and <modul> 
  are given in midis, ('midi'), or in hertz ('freq'). If 'midi' is 
  selected the values will be converted to frequency inside the function 
  and then the output is reconverted to midis. If 'freq' is selected the 
  entry, calculation and output are all in hertz.

  The optional argument <output> determines whether the carriers are 
  included ('inclu') or excluded ('exclu') from the output list or lists."

  (if (equalp unit "freq")
  	(freq-mod/f carrier modul index output)
  	(f->m (freq-mod/f (m->f carrier) (m->f modul) index output))))






(defun fm-ratio (carrier ratio index &optional (unit "midi") (output "exclus"))

		; ((carrier 60) (ratio 1.41) (index 1)
		;             &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
		;                  (output 1 (ccl::mk-menu-subview  :menu-list '(("exclus"  1) ("inclus"  2)))))

		"Simulates the pitches generated by frequency modulation. The frequency of
		the <carrier> is modulated by a modulator whose frequency is equal to the
		frequency of the carrier multiplied by the ratio. Once the frequency of 
		the modulator is determined, the calculations follow the same formula as
		the box 'freq-mod' :
		carr. ± (i * mod.), i = 0,1,...<index>

		If <carrier> is a list the output is a list of modulations around each 
		successive carrier. 

		If <ratio> is a list the carrier or carriers are each modulated by the 
		frequencies that form all the requested ratios as well as the partials of 
		those notes up to the <index> specified.

		If <index> is a list the formula is computed with 'i' equal to only the
		listed values. (e.g. <index> = (1 3), notes calculated are:
		carr. + 1 * mod.; carr. - 1 * mod.;carr. + 3 * mod.; carr. - 3 * mod.) 

		The optional argument <unit> determines whether the <carrier> is entered in 
		midis, ('midi'), or in hertz ('freq'). If 'midi' is selected the 
		value will be converted to frequency inside the function and then the 
		output is reconverted to midis. If 'freq' is selected the entry, 
		calculation and output are all in hertz.

		The optional argument <output> determines whether the carrier or carriers 
		are included ('inclu') or excluded ('exclu') from the output list or 
		lists."
;; (:groupings '(3) :w 0.4)

(if (equalp unit "freq") (fm/f/ratio carrier ratio index output)
	(f->m (fm/f/ratio (m->f carrier) ratio index output))))





; --------------  modulation en anneau

(defun ringharm/f/struc (fond1 fond2 hqa hqb) 
		;((fond1 freq) (fond2 freq) (hqa fix>0) (hqb fix>0)) 

;chord
""
(setq fond1 (car! fond1) fond2 (car! fond2))
(if (and (atom hqa) (atom hqb)) 
	(let ( (mx (max hqa hqb)) (res ()) (resinter ()) )
		(dofor (m 1 1 mx)
			(dofor (ia 1 1 (min m hqa))
				(dofor (ib 1 1 (min m hqb))
					(if (and (< ia m) (< ib m)) ()
						(progn (push (+ (* ia fond1) (* ib fond2)) resinter)
							(push (- (* ia fond1) (* ib fond2)) resinter)))
					))
			(push (reverse resinter) res)
			(setq resinter () ) )
		(reverse res))
	(ringlist fond1 fond2 hqa hqb)))


(defun ringlist (fonda fondb hqa hqb)
	(let ((lfonda (g* fonda hqa)) (lfondb (list!(g* fondb hqb))))
		(flat-once (mapcar #'(lambda (x) (ring-mod lfonda x 2 1 1)) lfondb))))




(defun ring-harm (funda fundb hqa hqb &optional (unit "midi") (type "seq")(output "exclus"))

		; ((funda 60) (fundb 66) 
		;               (hqa 1) (hqb 2)
		;               &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
		;               (type 1 (ccl::mk-menu-subview  :menu-list '(("seq"  1) ("chord"  2))))
		;               (output 1 (ccl::mk-menu-subview  :menu-list '(("exclus"  1) ("inclus"  2)))))

		"Simulates the ring-modulation between the harmonic series (see box 
		'harm-series') built on <funda> and the harmonic series on <fundb>. The 
		arguments <hqa> and <hqb> determine the number of partials present for 
		each fundamental. The frequencies of each partial of the harmonic series 
		on <funda> is added to and subtracted from the frequency of each partial 
		of the harmonic series on <fundb>; thus, all the possible additive and 
		subtractive combinations are produced.

		If the arguments <hqa> or <hqb> are a list, rather then including all the 
		partials up to and including the number given: only the listed partials 
		for both fundamentals will included in the calculations.   

		The optional argument <unit> determines whether <funda> and <fundb> are 
		given in midis, ('midi'), or in hertz ('freq'). If 'midi' is 
		selected the values will be converted to frequencies inside the function 
		and then the output is reconverted to midis. If 'freq' is selected the 
		entries, calculations and output are all in hertz. (note: Ring-modulation 
		can produce negative frequencies; conversion to midis will 
		automatically reflect these notes back into the positive domain.)

		The optional argument <type> is used to determine the format of the 
		output. The value 'seq' returns a list of chords in which each successive 
		chord represents the notes involving the next partial or partials. 
		Thus the first chord contains: funda ± fundb; the second: 2*funda ± fundb,
		funda ± 2*fundb and 2*funda ± 2*fundb; etc. The value 'chord' returns a 
		single chord containing all the notes of all the combinations and 
		differences.

		The optional argument <output> determines whether the notes <funda> and
		<fundb> are included ('inclu') or excluded ('exclu') from the output list 
		or lists."
	 ;; (:w 0.4)
	 (let ((res (if (equalp unit "freq") (ringharm/f/struc  funda fundb hqa hqb)
	 	(f->m (ringharm/f/struc (m->f funda) (m->f fundb) hqa hqb)))))
	 (if (equalp output "inclus") (setq res (push (list funda fundb) res)) res)
	 (if (equalp type "chord") (flat res) res)))


(defun ring-mod (ch1 ch2 &optional (unit "midi") (type "seq") (output "exclus"))

; ((ch1 60) (ch2 66)
;                    &optional (unit 1 (ccl::mk-menu-subview  :menu-list '(("midi"  1) ("freq"  2))))
;                    (type 1 (ccl::mk-menu-subview  :menu-list '(("seq"  1) ("chord"  2))))
;                    (output 1 (ccl::mk-menu-subview  :menu-list '(("exclus"  1) ("inclus"  2)))))

"Simulates the ring modulation of each note of <ch1> by all the notes of 
<ch2>. The frequency of each note of <ch2> is added to and subtracted 
from the frequency of each note of <ch1>; thus, all the possible 
additive and subtractive combinations are produced.

The optional argument <unit> determines whether <ch1> and <ch2> are 
entered in midis, ('midi'), or in hertz ('freq'). If 'midi' is 
selected the values will be converted to frequencies inside the function 
and then the output is reconverted to midis. If 'freq' is selected the 
entries, calculations and output are all in hertz. (note: Ring-modulation 
can produce negative frequencies; conversion to midis will 
automatically reflect these notes back into the positive domain.)

When <ch1> contains multiple notes, the optional argument <type> is used 
to determine the format of the output. The value 'seq' returns a list of 
chords representing the modulation of each successive note of <ch1> by 
all the notes of <ch2>. The value 'chord' returns a single chord 
containing all the notes of all the modulations.

The optional argument <output> determines whether the original notes of 
<ch1> and <ch2> are included ('inclu') or excluded ('exclu') from the 
output list or lists."
  ;;  (:w 0.4)
  (let ((res (if (equalp unit "freq") (ring/freq  ch1  ch2)
  	(f->m (ring/freq (m->f ch1) (m->f ch2))))))
  (if (equalp output "inclus") (setq res (push (x-append ch1 ch2) res)) res)
  (if (or (equalp type "chord") (one-elem ch1)) (flat res) res)))


(defun ring/freq (freqs1 freqs2) ;((freqs1 ()) (freqs2 ())) 
	"Rend une liste de listes de frŽquences contenant la modulation en anneau 
	de chaque frŽquence de la liste <freqs1> par la liste <freqs2>"
	()
	(let* (ll (freqs1 (list! freqs1)) (freqs2 (list! freqs2))
		(x (one-elem freqs1)))
	(dowhile freqs1
		(let ((a (pop freqs1)))
			(push (append (l+ a freqs2) (l- a freqs2)) ll) ))
	(if  x (flat (nreverse ll)) (nreverse ll))))


;; ***********************************  INTERVALS  *************************************

;; ==== chord multiplication ====


(defun mul-chord (ch1 ch2 &optional (type "seq"))

		  ; ((ch1 '(60 71))
		  ;             (ch2 '(64 67))
		  ;             &optional (type 1 (ccl::mk-menu-subview  :menu-list '(("seq"  1) ("chord"  2)))))

		  "Generates a list of chords in which the intervallic structure of <ch2>
		  (a single chord in midis) is reproduced beginning on each successive 
		  note of <ch1> (also a single chord in midis).

		  The optional argument <type> allows the choice of whether the output is
		  a list of chords ('seq') or a single chord ('chord') containing all the 
		  transpositions combined."
		  ()
		  (let ((ch1 (list! ch1)) (int2 ()) (base-note-2 (apply 'min ch2)) res)
		  	(dowhile ch2 (newl int2 (- (nextl ch2) base-note-2)))
		  	(setq int2 (nreverse int2))
		  	(setq res (mapcar 
		  		#'(lambda (midi) (mapcar #'(lambda (iv) (+ iv midi)) int2))
		  		ch1 ))
		  	(if (equalp type "chord") (flat res) res )))

;; ==== (usually) for chord interpolation ====

;; ==== chord proliferation ====

;; after CR
(defun espace-ch (chord)  ;((chord '(6000 6300))) 
	"Computes all chord's downward transpositions from the first note, keeping intervals" 
	()
	(let ((int2 ()) (base-note-2 (car chord)) (ch2 chord))
		(dowhile ch2 (newl int2 (- (nextl ch2) base-note-2)))
		(setq int2  (nreverse int2))
		(mapcar 
			#'(lambda (midi) (mapcar #'(lambda (iv) (- iv midi)) chord))
			int2 )))

;; n0  n1  n2  n3  n4  n5
;;   i1  i2  i3  i4  i5
;;   ^       ^       ^
;;   |       |       |
;; ints   curints revints

;(defunt espace-ch ((chord chord)) chords)

(defun auto-transp (chord &optional (output "exclus") (min 0) (max 0))

		; ((chord '(60 63)) 
		;                &optional (output 1 (ccl::mk-menu-subview  :menu-list '(("exclus"  1) ("inclus"  2))))
		;                (min 0) (max 0)) 

		"Outputs a list of all possible transpositions of <chord> (a single 
		chord in midis) which contain the first note of the chord. 

		The optional argument <output> allows the choice of whether the original
		<chord> will be included, 'inclu' or excluded, 'exclu' from the output
		list.

		The optional arguments <max> and <min> (in midis) will cause the 
		notes to be transposed by octaves to fit within the specified range." 
		()
		(let ((int2 ()) (base-note-2 (car chord)) (ch2 chord)
			chords)
		(if (zerop max) (setq max most-positive-fixnum))
		(dowhile ch2 (newl int2 (- (nextl ch2) base-note-2)))
		(setq int2  (nreverse int2))
		(setq chords
			(mapcar 
				#'(lambda (midi) (mapcar #'(lambda (iv) (- iv midi)) chord))
				int2 ))
		(setq chords (mapcar #'(lambda (list) (transpoct list min max)) chords))
		(if (equalp output "inclus") (cdr chords) chords)))



(defun down-transp (chord &optional (min 0)  (max 0))  

				  ;((chord '(60 63)) &optional (min 0)  (max 0))

				  "Computes all chord's downward transpositions from the first note,
				  keeping intervals.  Each note might be transposed by some octaves to fit
				  in the (optional) register given."
				  ()
				  (let* ((chords ()) (base-note (car chord))
				  	(ints (x->dx chord)) (revints (last ints)) (curints ints) pints
				  	ch)
				  (if (zerop max) (setq max (apply #'max chord)))
				  (dowhile curints
				  	(setq ch (list base-note))
				  	(setq pints curints)
				  	(dowhile pints
				  		(newl ch (transpoct-prox (+ (car ch) (nextl pints)) min max (car ch))))
				  	(setq ch (nreverse ch))
				  	(nreverse ints)
				  	(setq pints (cdr curints))
				  	(dowhile pints
				  		(newl ch (transpoct-prox (- (car ch) (nextl pints)) min max (car ch))))
				  	(newl chords ch)
				  	(nreverse revints)
				  	(nextl curints))
				  (setq ch (list base-note))
				  (nreverse ints)
				  (setq pints revints)
				  (dowhile pints
				  	(newl ch (transpoct-prox (- (car ch) (nextl pints)) min max (car ch))))
				  (newl chords ch)
				  (nreverse revints)
				  (nreverse chords)))

;(defunt espace-chn ((chord chord) (min midi) (max midi)) chords)


; --------------transpositions, filterings ------------------------------

(defun transpoct-prox1 (midis min max pivot)  ; ((midis ()) (min ()) (max ()) (pivot ())) 
	""
	()
	(let ((mmin (max min (- pivot 12)))
		(mmax (min max (+ pivot 12))))
	(cond
		((> mmin mmax)
			(error "The intervals [~S ~S] [~S-12 ~S+12] don't intersect."
				min max pivot pivot))
		((< (- mmax mmin) 12)
			(error "The intersection between [~S ~S] and [~S-12 ~S+12] is smaller than one octave."
				min max pivot pivot)))
	(transpoct midis mmin mmax)))

(defun transpoct-prox (chord min max pivot) ; ((chord 60) (min 0) (max 0) (pivot 60)) 
	"Transposes <chord> (midis) by octaves to fit into the interval [<min> <max>]
	while making with <pivot> an interval smaller than one octave.
	<Chord> may be a list of chords"
	()
	(less-deep-mapcar 'transpoct-prox1 chord min max pivot))

(defun transpoct1 (midis min max)  ; ((midis 60) (min 60) (max 60))
	""
	()
	(let ((result (mapcar #'(lambda (midi)
		(dowhile (< midi min) (incf midi 12))
		(dowhile (> midi max) (decf midi 12))
		midi) (list! midis))))
	(if (cdr result) result (car result))))


(defun transpoct (chord min max &optional (pivot 0)) 

		  ; ;((chord '(60 65))
		  ;             (min 48) (max 60)
		  ;             &optional (pivot 0))
		  "Transposes notes of a chord or list of chords <chord> by octaves such 
		  that all its notes will be contained within the range between <min> and
		  <max>, given in midis.

		  The optional argument <pivot>(a note, in midis) forces all notes 
		  to be transposed so that they will be within one octave of that note. 
		  <pivot> must be within the specified range, or an error will be 
		  produced."
	;;;  (:groupings '(1 2) :w 0.4)
	(if (< max min) (rotatef max min))
	(if (zerop pivot)
		(less-deep-mapcar 'transpoct1 (list! chord) min max)
		(less-deep-mapcar 'transpoct-prox1 (list! chord) min max pivot)))


(defun replier-aux (midi mcible delta-inf delta-sup)
	(cond
		((> midi mcible)
			(setq mcible (+ mcible (abs delta-sup)))
			(dowhile (> midi mcible)
				(decf midi 12)))
		(t
			(setq mcible (- mcible (abs delta-inf)))
			(dowhile (< midi mcible)
				(incf midi 12))))
	midi)

(defun fold1 (midis? mcible)  ;; ((midis? ()) (mcible ()))
	"replier par octave le plus pres possible
	d'une frequence cible (sans approximation des hauteurs)."
	()
	(deep-mapcar 'replier-1 'fold1 midis? mcible))

(defun replier-1 (midi mcible) (replier-aux midi mcible 600 600))

(defun fold2 (midis? mcible) ; ((midis? 60) (mcible 60)) 
	"replier par octave a moins d'une octave
	d'une frequence cible (sans approximation des hauteurs)."
	()
	(deep-mapcar 'replier-2 'fold1 midis? mcible))

(defun replier-2 (midi mcible) (replier-aux midi mcible 12 12))

(defun reject (midi min max &optional (pivot 60)) ; ((midi 60) (min 60) (max 60) &optional (pivot 60)) 

	"Transpose <midi> by octaves outside of the interval [<min> <max>]."
	()
	(if (< midi pivot)
		(dowhile (> midi min) (decf midi 12))
		(dowhile (< midi max) (incf midi 12))))


;==============================================================================

(defun remove-int (chord forbid &optional (replace ()) (inf 1) (sup 1))


		; ((chord '(60 61))
		;                (forbid 1)
		;                &optional (replace ())
		;                (inf 1) (sup 1)) 

		"Removes the interval <forbid> (given in midis) from the list
		<chord>. The upper note of the forbidden interval is deleted. 

		A list of chords may be entered in <chord> in which case the interval
		will be removed from each successive chord. A list of intervals for the 
		argument <forbid> is also possible.

		The optional argument <replace> will take the notes that would have been
		deleted and, instead, moves them to convert the forbidden interval into 
		the replacement.

		The optional arguments <inf> and <sup> allow the low, <inf>, and high, 
		<sup>, limits in which changes can take place to be defined. These values 
		are given in midis, and refer only to the upper note in the interval
		pair.

		Warnings: 
		The lists returned by this box will be ordered lowest note to highest 
		note, regardless of the order in the entries.
		Entries are in true midis, without any internal approximation, this 
		may provoke certain problems which can be rectified through the use of 
		the function approx-m prior to the entries."
	;;  (:w 0.42)

	(let ((new-midis (get-list-of-midis chord)) res)
		(dolist (ch new-midis)
			(push (sort&no-repeat (copy-list ch) inf sup forbid replace) res))
		(get-midi-from-type chord (nreverse res))))


(defmethod get-list-of-midis ((midis cons))
	(if (consp (first midis)) midis
		(mapcan #'get-list-of-midis midis)))

; (defmethod get-list-of-midis ((self ccl::chord)) (list (mapcar 'ccl::midi (ccl::notes self))))

; (defmethod get-list-of-midis ((midis ccl::chord-sequence))
;   (mapcar #'(lambda (chord) (mapcar 'ccl::midi (ccl::notes chord)))
;           (ccl::chords midis)))

(defmethod get-list-of-midis ((midis number)) (list (list midis)))

(defmethod get-midi-from-type ((input number) result) (first (first result))) 

;; (defmethod get-midi-from-type ((input ccl::chord) result) (first result))

;; (defmethod get-midi-from-type ((input ccl::chord-sequence) result) result)

; (defmethod get-midi-from-type ((input cons) result)
;   (if (consp (first input)) result
;       (cond ((numberp (first input)) (first result))
;             ((subtypep (type-of (first input)) 'pw::C-chord) result))))


(defun replace-int (midis inf sup forbid replace)
						; ((midis ()) (inf ()) (sup ()) (forbid ()) (replace ()))

						""
						()
						(sort&no-repeat (sort (copy-list (list! midis)) #'<)
							inf (if (zerop sup) (car (last (list! midis))) sup) forbid replace))

; =============================================================================
;fonctions pour famille replace-inter

;rend une liste ordonnee de valeurs uniques
(defun sort&no-repeat (l-inter inf sup forbid replace)
	(setq l-inter (sort l-inter #'<))
	;on remplace
	(foo1 l-inter inf sup forbid replace)
	;on rend une liste des valeurs uniques
	(sort (unique l-inter) #'<)
	;l-inter
	)

;iteration jusqu'a effet nul, sans protection contre bouclage
(defun foo-iter (l-inter inf sup forbid replace)
	(let ((tem))
		(setq l-inter (sort l-inter #'<))
		(until (equal (setq tem (copy-list l-inter))
			(setq l-inter (foo l-inter inf sup forbid replace)))
		  ;(freelist tem)
		  ))
	l-inter )

;l-inter: liste ORDONNEE de midi "APPROXIME"
;inf et sup : midi, bornes de l'ambitus pris en compte
;forbid replace : intervalles exprimes en midi, valeur a supprimer
;                   et valeur eventuelle de remplacement.
;les pointeurs sur la liste de depart sont impredictibles
;
;
;fonction auxiliaire: ne rend pas de valeur, mais fonctionne par
;modifications physiques de la liste de longueur n,
;en prenant comme pivot successivement les n-1 premieres notes et en verifiant
;les intervalles formŽs avec les notes suivantes. Le sens des intervalles est
;pris en compte.
;SI forbid= 9eme replace=octave =>
;   Pour les notes comprises dans l'ambitus precisŽ, et formant un intervalle
;   sur ou sous-multiple de 9ieme avec le pivot courant:
;   les secondes ne sont pas modifiees
;   les 9iemes, 16iemes, 23iemes... sont remplacees respectivement par des
;       8iemes, 15Iemes, 22iemes... de meme direction par rapport au pivot
;   utilise.
;VARIANTES POSSIBLES:
; - prendre au sens strict (9ieme != 2de) forbid ou bien replace ou bien les
;   deux.
; - Tenir ou ne pas tenir compte du sens
; - ordonner ou non
; - laisser les notes en double ou non

(defun foo1 (l-inter inf sup forbid replace)
	(let ( (tete l-inter) (pivot (car l-inter)) (octaves 0) (tem) (direction) )
	 ;(print "FOO1 " tete " " pivot)
	 (dowhile (cdr l-inter)
		 (ifnot (and (< inf (cadr l-inter)) (< (cadr l-inter) sup)) ;dans la bande
		 	(nextl l-inter)
		 	(setq tem (- (cadr l-inter) pivot)
		 		direction (if (plusp tem) 'up 'down)
		 		octaves 0
		 		tem (abs tem) )
		 	(dowhile (> tem (max 12 forbid)) (setq tem (- tem 12)) (incf octaves))
		 	(if (= tem forbid)
		 		(ifnot replace
		 			(rplacd l-inter (cddr l-inter))
				;(print pivot " " (cadr l-inter) " " direction " " octaves " " replace)
				(rplaca (cdr l-inter)
					(funcall (if (eq direction 'up) #'+ #'-)
						pivot (funcall (if (plusp replace) #'+ #'-)
							replace (* 12 octaves))))
				(nextl l-inter)) 
		 		(nextl l-inter) ) ))
	 (when (cddr tete) (foo1 (cdr tete) inf sup forbid replace)) ))


; =============================================================================
;fonctions pour famille replace-inter2

;rend la liste transformee
(defun foo2 (l-inter inf sup pivot forbid replace oct-flag oct-flag2)
	(let ( (tete (setq l-inter (cons '? l-inter)))
		(octaves 0) (tem) (direction) )
	 ;(print "FOO2 " l-inter " " pivot)
	 (dowhile (cdr l-inter)
		 (ifnot (< inf (cadr l-inter) sup) ;ambitus a traiter
		 	(nextl l-inter)
		 	(setq tem (- (cadr l-inter) pivot)
		 		direction (if (plusp tem) 'up 'down)
		 		octaves 0
		 		tem (abs tem) )
		 	(when oct-flag2
		 		(dowhile (> tem (max 12 forbid)) (setq tem (- tem 12)) (incf octaves)))
		 	(if (eq tem forbid)
		 		(ifnot replace
		 			(progn 
				  ;(print "XX")
				  (rplacd l-inter (cddr l-inter)))
				;(print pivot " " (cadr l-inter) " " direction " " octaves " " replace)
				(rplaca (cdr l-inter)
					(funcall (if (eq direction 'up) #'+ #'-)
						pivot (funcall (if (plusp replace) #'+ #'-)
							replace (if oct-flag (* 12 octaves) 0)
							)))
				(nextl l-inter)) 
		 		(nextl l-inter) ) ))
	 (cdr tete) ))

;; =============================================================================-======

(defun interp-oct (ch mel order) ;((ch ()) (mel ()) (order 1)) 
	"Returns a list of (length <order>) chords from <ch> to <mel> by substitution
	and octaviation."
	()
	(let ((chords (list (list! ch))) (mel (list! mel)) new-ch new-notes)
		(dowhile order
			(setq new-notes ())
			(repeat (nextl order) (newl new-notes (nextl mel)))
			(setq new-ch (copy-list new-notes))
			(mapc
				#'(lambda (n)
					(unless (some #'(lambda (nn) (zerop (mod (- nn n) 12))) new-notes)
						(newl new-ch n)))
				(car chords))
			(newl chords (nreverse new-ch)))
		(nreverse chords)))

;(defunt interp-oct ((ch chord) (mel chord) (order list)) chords)

;; =============================================================================-======

(defun all-series (serie notes ints) 
						; ((serie '(25 24)) (notes '(26_35)) (ints '(2_11)))
						"Prints and returns all the series beginning with the notes of (reverse <serie>)
						and filled with permutations of <notes> and intervals among <intervals>."
						()
						(let (note note-oct)
							(let ((serie (list! serie)) (notes (list! notes)) (ints (list! ints)))
								(if (endp ints)
									(list (prog1 serie (format t "~A~A~%" (midi->notename (reverse serie)) (reverse serie))))
									(mapcan
			#'(lambda (int) ;(ccl::printl int serie (+ int (car serie)) notes)
				 (when (setq note-oct (exist-note? notes (setq note (+ int (car serie)))));;?(exist-note? (setq note (+ int (car serie))) notes )??
				 	(all-series (cons note serie) (remove note-oct notes)
				 		(delete int (permut-random (copy-list ints))))))
			ints)))))

; (all-series '(67 64 60) '(69 68 70 73) '(1 2 3))
; (time (setq ls (all-series '(25 24) (arithm-ser 26 1 35) (arithm-ser 2 1 11))))


;------------ intervals --> chord -------------

;;

(defun inter->chord (base inter &optional  (format "inter"))

						  ; ((base 60) (inter '(1 2)) 
						  ;   &optional  (format 1 (ccl::mk-menu-subview  :menu-list '(("inter"  1) ("notes"  2))))) 

						  "<insert DOC here>"

						  (inter->chord1 base inter format))

(defun inter->chord1 (base inter format)
	(less-deep-mapcar 'inter->chord2 inter base format))

(defun inter->chord2 (inter base format)
	(g+ base (g* 1 (if (equalp format "notes") inter (push 0 inter) ))))


(defun chord->inter (chord &optional (format "inter"))

		  ; ((chord '(60 64 67)) 
		  ;                &optional (format 1 (ccl::mk-menu-subview  :menu-list '(("inter"  1) ("notes"  2)))))


		  "Returns a list containing the intervals (given in semitones; positive
		  or negative) between the first note of <chords> and each successive
		  note. Micro-intervals are represented as floating point number parts of a 
		  semitone (e.g. a quarter-tone = 0.5).

		  If <chords> is a list of chords it will return a structured list
		  containing the intervals of each successive chord.

		  The optional argument <format> allows a choice of whether the box 
		  returns real intervals (setting 'inter') or set notation (setting 
		  'notes'). 'Inter' will return only the intervals between notes. 'Notes' 
		  returns the intervals present as well as the first note, given as '0'."
	;;  (:w 0.4)
	(less-deep-mapcar 'chord->inter1 chord format))

(defun chord->inter1 (chord format)
	(if (equalp format "notes") (g/ (g- chord (first chord)) 1)
		(remove 0 (g/ (g- chord (first chord)) 1)) ))

; ------------ analyse --------------


(defun exist-note? (chord note) ;;; ((chord '(60 61)) (note 60)) 
	"Outputs the first note in <chord> (a single chord in midis) which is 
	the same as <note> (regardless of octave). The value returned is the 
	midis value of that note at the octave it exists in the <chord>. If 
	the note is not present the value 'nil' is returned.

	The argument <chord> may receive a list of chords; in which case the 
	output is a list of lists containing the analyses of each successive 
	chord.

	The argument <note> may receive a list; in which case the output is a 
	corresponding list of notes found and/or nils."
	()
	(less-deep-mapcar #'(lambda (x) (car-mapcar 'exist-note1 note x)) chord ))


(defun exist-note1 (note chord)
	(some #'(lambda (n) (when (zerop (mod (- note n) 12)) n)) (list! chord)))



;;;=======================================
;;; Utilities

(defun puiss/TO9 (x0 y0 x1 y1 x2 y2 sym) 

				; ((x0 0.0) (y0 0.0)(x1 0.0)(y1 0.0)(x2 0.0)
				;   (y2 0.0) (sym "fpuiss9")) 

				"calcule les paramtres de l'Žquation  y=a (x+c)^b+d en fct de trois points 
				(x0,y0) (x1,y1) (x2,y2) .
				La fct doit tre continžment croissante ou dŽcroissante.
				Les points doivent tre donnŽs dans l'ordre (donc : x2 > x1 > x0).
				Utilise l'ancien algorithme du TO9.
				Extrapolation ˆ gauche interdite"
				()
				(let* ((c (- x0))
					(d y0)
					(b (/ (- (log (abs (- y2 y0))) (log (abs (- y1 y0)))) 
						(- (log (- x2 x0)) (log (- x1 x0)))))
					(a (if (>= y2 y0) (/ (- y1 y0) (expt (- x1 x0) b)) (/ (- y2 y0) (expt (- x2 x0) b)))))
				(if (not (null sym)) (format t "y = ~S ( x + ~S ) ^ ~S + ~S  ~%" 
					(lldecimals a 6) (lldecimals c 6) (lldecimals b 6) (lldecimals d 6)))
				(set (if (null sym) 'fpuiss9 sym) 
					(eval `(function 
						(lambda (x) (+ ,d (* ,a (expt (+ x ,c) ,b))))) ) )                      
				))

(defun l-distor/2 (newmin newmax liste)  ;;((newmin 1 ) (newmax 2) (liste '(0.5 0.7)))
	"Distorts a list, <liste>, by a power function, thus if the list is linear 
	the result follow the power function, if the list is non-linear the 
	result will be a hybrid of the old liste and the power function. 

	The arguments <newmin> and <newmax> determine the scaling of the new 
	list. (<newmin> will be the smallest value present, <newmax> the largest)"
	()
	(let ((liste (list! liste)))
		(mapcar (power/2 (l-min liste) newmin (l-max liste) newmax () ) liste)))

;================


(defun l-distor/3 (newmin newmax ref newref liste)               

		; ((newmin 0.5) (newmax 1)
		;                (ref 0.7) (newref 2)
		;                (liste '(0.6 0.9))) 
		"Distorts a list, <liste>, by a power function, thus if the list is linear 
		the result will follow the power function, if the list is non-linear the 
		result will be a hybrid of the old liste and the power function. This box
		is identical to 'l-distor/2' except that a reference point is 
		controllable.

		The arguments <newmin> and <newmax> determine the scaling of the new 
		list. (<newmin> will be the smallest value present, <newmax> the largest)
		The values <ref> and <newref> are used to specify that the element of the 
		original list with a value of <ref> will be moved to the value of 
		<newref>. The curve will be altered in order to accommodate the reference 
		point."
		()
		(if (or (> newmin newref newmax) (< newmin newref newmax))
			(mapcar (puiss/TO9 (l-min liste) newmin  ref newref (l-max liste) newmax () ) liste)
			(mapcar (parabole/3 (l-min liste) newmin  ref newref (l-max liste) newmax () ) liste)))


;=======================
; (defun parabole/2 (x0 y0 x1 y1 sym)


; 		  ; ((x0 0) (y0 0)
; 		  ;             (x1 2) (y1 12)
; 		  ;             (sym "fparab2")) 

; 		  "calcule les paramtres de l'Žquation  y = ax^2 + b  en fct de deux points 
; 		  (x0,y0) (x1,y1)"
; 		  ()
; 		  (let* ((a #i((y1 - y0) / (x1 * x1 - x0 * x0)))
; 		  	(b #i(y0 - a * x0 * x0)))
; 		  (if (not (eq sym ())) (format t "y = ~S x 2 + ~S ~%"  (lldecimals a 6) (lldecimals b 6)))
; 		  (set (if (null sym) 'fparab2 sym) 
; 		  ;;(compile ()
; 		  (eval `(function
; 		  	(lambda (x) (+  (* ,a x x ) ,b )))))                      
; 		  ))

; (defun parabole/3 (x0 y0 x1 y1 x2 y2 sym)


; ; ((x0 0) (y0 0)
; ;                     (x1 2) (y1 15)
; ;                     (x2 1) (y2 7)
; ;                     (sym "fparab3")) 


; "calcule les paramtres de l'Žquation  y = ax^2 + bx + c en fct de trois points 
; (x0,y0) (x1,y1) (x2,y2) ."
; ()
; (let* ((a #i((y0 * (x1 - x2) + y1 * (x2 - x0) + y2 * (x0 - x1))
; 	/(x0 * x0 * (x1 - x2) + x1 * x1 * (x2 - x0) + x2 * x2 * (x0 - x1))))
; (b #i((y1 - y2 + a * (x2 * x2 - x1 * x1)) / (x1 - x2)))
; (c #i(y2 - a * x2 * x2 - b * x2)))
; (if (not (eq sym ())) (format t "y = ~S x 2 + ~S x + ~S  ~%" 
; 	(lldecimals a 6) (lldecimals b 6) (lldecimals c 6)))
; (set (if (null sym) 'fparab3 sym) 
; 		  ;;(compile ()
; 		  (eval `(function
; 		  	(lambda (x) (+  (* ,a x x )  (* ,b x) ,c)))))                      
; ))




(defmethod parabole ((x0 number) (y0 number) (x1 number) (y1 number)
                             &optional (x2 ()) (y2  9.0))
 "Calculates the parameters of the equation  y = ax^2 + b  or y = ax^2 + bx + c 
as a function of the points (x0,y0)  (x1,y1) and (optional) (x2,y2) 
and creates the corresponding function  "
 (if x2 
   (parabole/3 x0 y0 x1 y1 x2 y2 )   
   (parabole/2 x0 y0 x1 y1 )))


(defmethod parabole/2 ((x number) (x0 number) (y0 number)
                               (x1  number) (y1 number))
   "calcule les paramŽtres de l'Žquation  y = ax^2 + b  en fct de deux points 
(x0,y0) (x1,y1)
x = valeur(s) ˆ calculer"
   
   (let* ((a   (/ (- y1  y0)  (- (* x1  x1)  (* x0  x0))  ))
          (b   (- y0   (* a  x0  x0)) )  )
     ; (format t "y = ~S x 2 + ~S ~%"  (om-round a 6) (om-round b 6)) 
     (+  (* a x x ) b )))

(defmethod parabole/2 ((x list) (x0 number) (y0 number)
                               (x1  number) (y1 number))
 
   (let* ((a   (/ (- y1  y0)  (- (* x1  x1)  (* x0  x0))  ))
          (b   (- y0   (* a  x0  x0)) ) res  )
     (format t "y = ~S x 2 + ~S ~%"  (om-round a 6) (om-round b 6)) 
     (dolist (xn x)
       (push (+  (* a xn xn ) b ) res))
     (nreverse res)))

;====Rename parabole/2 as parabole2 in order to avoid / in the name 27-06-2007==========

(defmethod parabole2 ((x number) (x0 number) (y0 number) (x1  number) (y1 number))
   
    "Calculates the parameters of the equation  y = ax^2 + b  as a function of the points (x0,y0)  (x1,y1) and (optional) (x2,y2) and creates the corresponding function."

   (let* ((a   (/ (- y1  y0)  (- (* x1  x1)  (* x0  x0))  ))
          (b   (- y0   (* a  x0  x0)) )  )
     ; (format t "y = ~S x 2 + ~S ~%"  (om-round a 6) (om-round b 6)) 
     (+  (* a x x ) b )))

(defmethod parabole2 ((x list) (x0 number) (y0 number) (x1  number) (y1 number))

  (let* ((a   (/ (- y1  y0)  (- (* x1  x1)  (* x0  x0))  ))
          (b   (- y0   (* a  x0  x0)) ) res  )
     (format t "y = ~S x 2 + ~S ~%"  (om-round a 6) (om-round b 6)) 
     (dolist (xn x)
       (push (+  (* a xn xn ) b ) res))
     (nreverse res)))

;==========================================================================



(defmethod parabole/3 ((x number) (x0 number) (y0 number)
                               (x1  number) (y1 number)
                               (x2 number) (y2 number)) 
    "calcule les paramŽtres de l'Žquation  y = ax^2 + bx + c en fct de trois points 
(x0,y0) (x1,y1) (x2,y2)
x = valeur(s) ˆ calculer ."

   (let* ((a (/ (+ (* y0 (- x1 x2))
                   (* y1 (- x2 x0)) 
                   (* y2 (- x0 x1)))
                (+ (* x0 x0 (- x1 x2))
                   (* x1 x1 (- x2 x0))
                   (* x2 x2 (- x0 x1)))))
          (b (/ (+ y1 (- y2) (* a (- (* x2 x2) (* x1 x1))))
                (- x1 x2)))
          (c (- y2 (* a x2 x2) (* b x2))))
     ; (format t "y = ~S x 2 + ~S x + ~S  ~%" (om-round a 6) (om-round b 6) (om-round c 6))
     (+ (+  (* a x x )  (* b x) c))))


(defmethod parabole/3 ((x list) (x0 number) (y0 number)
                            (x1  number) (y1 number)
                            (x2 number) (y2 number)) 
  
  (let* ((a (/ (+ (* y0 (- x1 x2))
                  (* y1 (- x2 x0)) 
                  (* y2 (- x0 x1)))
               (+ (* x0 x0 (- x1 x2))
                  (* x1 x1 (- x2 x0))
                  (* x2 x2 (- x0 x1)))))
         (b (/ (+ y1 (- y2) (* a (- (* x2 x2) (* x1 x1))))
               (- x1 x2)))
         (c (- y2 (* a x2 x2) (* b x2)))
         res)
    (format t "y = ~S x 2 + ~S x + ~S  ~%" (om-round a 6) (om-round b 6) (om-round c 6))
    
    (dolist (xn x)
      (push (+  (+ (+  (* a xn xn )  (* b xn) c)) b ) res))
    (nreverse res)))


;====Rename parabole/3 as parabole3 in order to avoid / in the name 27-06-2007=======================

(defmethod parabole3 ((x number) (x0 number) (y0 number) (x1  number) (y1 number) (x2 number) (y2 number)) 
  
  	"Calculates the parameters of the equation y = ax^2 + bx + c as a function of three points (x0,y0)  (x1,y1) and (x2,y2) and creates the corresponding function."

   (let* ((a (/ (+ (* y0 (- x1 x2))
                   (* y1 (- x2 x0)) 
                   (* y2 (- x0 x1)))
                (+ (* x0 x0 (- x1 x2))
                   (* x1 x1 (- x2 x0))
                   (* x2 x2 (- x0 x1)))))
          (b (/ (+ y1 (- y2) (* a (- (* x2 x2) (* x1 x1))))
                (- x1 x2)))
          (c (- y2 (* a x2 x2) (* b x2))))
     ; (format t "y = ~S x 2 + ~S x + ~S  ~%" (om-round a 6) (om-round b 6) (om-round c 6))
     (+ (+  (* a x x )  (* b x) c))))

(defmethod parabole3 ((x list) (x0 number) (y0 number) (x1  number) (y1 number) (x2 number) (y2 number))

  (let* ((a (/ (+ (* y0 (- x1 x2))
                  (* y1 (- x2 x0)) 
                  (* y2 (- x0 x1)))
               (+ (* x0 x0 (- x1 x2))
                  (* x1 x1 (- x2 x0))
                  (* x2 x2 (- x0 x1)))))
         (b (/ (+ y1 (- y2) (* a (- (* x2 x2) (* x1 x1))))
               (- x1 x2)))
         (c (- y2 (* a x2 x2) (* b x2)))
         res)
    (format t "y = ~S x 2 + ~S x + ~S  ~%" (om-round a 6) (om-round b 6) (om-round c 6))
    
    (dolist (xn x)
      (push (+  (+ (+  (* a xn xn )  (* b xn) c)) b ) res))
    (nreverse res)))














;=================

(defun L*line (fact1st factlast liste) ; ((fact1st 1) (factlast 2) (liste '(0.3 0.7))) 
	"Multiplies a list, <liste>, by a linear function. The first element is 
	multiplied by <fact1st>, the last by <factlast> and all intermediate 
	elements by linear interpolations between those values."
	()
	(let ((long (length liste)))
		(g* liste (sample-fun (linear 1 fact1st long factlast () ) 1 1 long))))

(defun L*curb/2 (fact1st factlast liste) ;((fact1st 1) (factlast 2) (liste '(0.3 0.7))) 
	"Multiplies a list, <liste>, by a power function. The first element is 
	multiplied by <fact1st>, the last by <factlast> and all intermediate 
	elements by interpolations along a power function between those values."
	()
	(let ((long (length liste)))
		(g* liste (sample-fun (power/2 1 fact1st long factlast () ) 1 1 long))))

(defun L*curb/3 (fact1st factlast ref factref liste)

						 ; ((fact1st 1) (factlast 4)
						 ; (ref 2) (factref 3)
						 ; (liste '(1 2 3 4))) 

						 "Multiplies a list, <liste>, by a power function. This box is identical to 
						 'l*curb/2' except that a reference point is controllable. The first 
						 element is multiplied by <fact1st>, the last by <factlast> and the 
						 element of the original list with a value of <ref> will be multiplied by 
						 <factref>. All intermediate elements will be multiplied by interpolations 
						 along a power function between <fact1st> and <factlast>. The power 
						 function, however, will be altered to accommodate the reference point."
						 ()
						 (let ((long (length liste)))
						 	(if (or (> fact1st factref factlast) (< fact1st factref factlast))
						 		(g* liste (sample-fun (puiss/TO9 1 fact1st  ref factref long factlast () ) 1 1 long))
						 		(g* liste (sample-fun (parabole/3 1 fact1st  ref factref long factlast () ) 1 1 long)))
						 	))

;-----------------------------------------
(defun sec->min1 (sec nbdec format)
	(let ((min (truncate sec 60)))
		(if  (and (equalp format "notes")(= 0 min)) (list(lldecimals sec nbdec))
			(list min 'min (lldecimals (mod sec 60) nbdec)))))

(defun sec->min (lsec &optional nbdec
	(format "inter"))

; ((lsec 65) &optional (nbdec 2)
;                    (format 1 (ccl::mk-menu-subview  :menu-list '(("inter"  1) ("notes"  2))))) 

"Converts values in seconds (<lsec>)to values in minutes and seconds. The 
optional argument <nbdec> determines the number of decimals in the 
seconds column of the output. 

The output is in the format '1 min 15' for an <lsec> equal to '75'. If the 
number of seconds is less than sixty the output will be in the form 
'0 min 32'. The optional argument <format>, if set to the position 
'abbrev', will eliminate the minutes column if it has a value of '0'. 
(The first example would remain '1 min 15' while the second would become 
'32')"
()
(deep-mapcar/1  'sec->min1 lsec nbdec format))

(defun min->sec1 (minutage) 
	(let ((sec 0) (minutes 0) (minutage (list! minutage)))
		(cond  ((= (length minutage) 1)  (setq sec (car minutage)))
			(( or (numberp (second minutage)) (= (length minutage) 3))
				(setq minutes (car minutage)) (setq sec (l-last minutage)))
			(t (setq minutes (car minutage))))
		(lldecimals (+  sec (* minutes 60)) 2)))


(defun min->sec (minutes)  ; ((minutes '(1 min 30)))  
	"Converts values in minutes into values in seconds. The value in minutes
	may be entered as a list in any of the following formats: (3 min), or 
	(3 0); (3 min 30), or (3 30), or (3.5 min); (3 min 30.2), or (3 30.2). 
	(the letters 'min' may be replaced by simply 'm' or any other non-numeric 
	character or characters) "
	()
	(less-deep-mapcar  'min->sec1 (list! minutes)))
;; (min->sec '(1 min 30))
;--------------------------------------------

(defun monnayage (list density)
	(let* ((interv (/ (- (second list) (car list)) (1+ density))) res)
		(dofor (n 1 1  density)
			(push (+ (car list) (*  n interv)) res))
		res))

(defun densifier (list density &optional min max) 

		; ((list '(60 64 67)) (density 1) &optional (min ()) (max ())) 

		"Increases the density of a <list> by adding equally spaced notes between 
		each of its elements. The number of added notes is determined by the 
		argument <density>, which is equal to the number of notes added between 
		each pair of elements. 

		The optional arguments <min> and <max> allow the densification to take 
		place within only a portion of the list. Notes will only be added between 
		pairs of elements in which both members are at least <min> and no greater
		than <max>; all other parts of the list will be returned unchanged."
	;;  (:extension-pattern '(2) :w 0.45 :x-proportions '((3 2)(1)))

	(setq min (if min  min (l-min list))) 
	(setq max (if max  max (l-max list)))
	(let ((long (1- (length list))) res)
		(dotimes (n long)
			(push (car list) res)
			(if (and (>= (min (car list) (second list)) min)
				(<= (max (car list) (second list)) max)
				(> density 0))
			(push (monnayage list density) res))
			(setq list (cdr list)))
		(nreverse (flat (push (last-elem list) res)))))


;---------------------formatage de texte-----------------------

(defun special-char (sep nb)

		; ((sep 1 (ccl::mk-menu-subview  :menu-list '(("space"  1) ("line"  2) ("tab" 3)))) (nb 1)) 


		"gŽnŽrateur de caracteres spŽciaux (espace, newline, tab)
		<nb> = nombre de ces sŽparateurs"
		()
		(let* ((char (case sep
			(1  (if (> nb 1) #\Space nil))
			(2 #\newline)
			(3 #\tab)))
		(nb (if (= sep 1) (1- nb) nb))) 
		(make-list   nb :initial-element char)))


(defun text-format (sep nb word1 word2 &rest words)

		; ((sep 1 (ccl::mk-menu-subview  :menu-list '(("space"  1) ("line"  2) ("tab" 3))))
		;                 (nb 1) (word1 ()) (word2 ()) &rest (words ()))

		"formate du texte pour entrer dans text-win.
		<sep> sŽparateur de mot (espace, newline, tab)
		<nb> = nombre de ces sŽparateurs"
		()
		(let* ((separ (special-char sep nb))
			(res (list word2 separ word1 )))

		(dolist (m  words) (push  (x-append separ m ) res))

		(x-append (flat (nreverse res)) separ)))


(defun insert-special (sep nb inter text  &rest texts) 

  ; ((sep 1 (ccl::mk-menu-subview  :menu-list '(("space"  1) ("line"  2) ("tab" 3))))
  ;                        (nb 1) (inter 1) (text ())  &rest (texts ())) 

  "insere un sŽparateur dans un texte ˆ intervalle rŽgulier
  <sep> sŽparateur de mot (espace, newline, tab)
  <nb> = nombre de ces sŽparateurs
  <inter> = intervalle de sŽparation"
  ()
  (insert  (special-char sep nb)  inter (flat (x-append text texts ))))


; pourrait etre mis dans kernel

(defun insert (item inter liste &optional nb) ; ((item 'toto  ) (inter 1) (liste ()) &optional (nb 1)) 
	"insere un ŽlŽment <item> dans une liste, ˆ intervalle rŽgulier
	<inter> = intervalle de sŽparation
	ext.: <nb> = nombre de ces ŽlŽments"
	()
	(let* ((separ (make-list   nb :initial-element item))
		(liste (list-div liste inter))
		res)
	(dolist (m  liste) (push  (x-append m separ  ) res))
	(flat (nreverse res))))



(defun list-div (list divisor) ;((list ()) (divisor 2)) 
	"divise la liste en sous-listes de dimension <divisor>"
	()
	(let ((long (1- (length list))) res )
		(for  (i 0 divisor long)
			(let* ((inter (1- (+ i divisor )))
				(inter (if (< inter long) inter long)))
			(setq res (push (l-nth list (arithm-ser i 1 inter)) res))))
		(nreverse res)))




