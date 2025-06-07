;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

;;; *************************************************************
;;; Copyright (C) 2017 Torsten Anders (torsten.anders@beds.ac.uk) 
;;; This program is free software; you can redistribute it and/or
;;; modify it under the terms of the GNU General Public License
;;; as published by the Free Software Foundation; either version 3
;;; of the License, or (at your option) any later version.
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;; *************************************************************

;;;
;;; TODO:
;;; - Update rules avoiding PWGL dependencies
;;;   - follow-timed-profile-hr
;;;   - follow-profile-hr
;;;   - follow-interval-profile
;;;   - mp-add-random-offset, trfm-scale, trfm-add-BPF, trfm-multiply-BPF
;;;   - min/max-interval
;;;   - prefer-interval-hr
;;;   - accumulative-interval
;;;
;;;
;;;

#| ;; TODO: ideas for more rules

Strict profile rule: roughtly preserve intervals between local maxima. Argument specifies how many semitones the interval can be off in a solution compared with the given profile. However, if the interval between maxima is only small, then that small distance should be preserved. So, perhaps have two arguments: specifying how far close intervals (up to 2-3 semitones) can be off, and how far larger intervals can be off.

|#



(in-package :cluster-rules)


;; follow-timed-profile-hr

(defun _number-list? (x)
  "[aux fun] Returns T if x is a list of numbers."
  (and (listp x) (every #'numberp x)))

(defun _direction-int (x1 x2)
  "[aux fun] Encodes the direction of the interval between x1 and x2 as integer. An interval 'upwards' (the predecessor is smaller than the successor) is represented by 2, an 'horizontal' interval (the predecessor and the successor are equal) is represented by 1, and an interval 'downwards' by 0."
  (cond ((< x1 x2) 2)
	((= x1 x2) 1)
	((> x1 x2) 0)))

#+opusmodus
(defun total-omn-duration (sequence)
  "Returns the total duration (length) of `sequence', i.e. the sum of the length of all its notes and rests.

  Example:
  ;;; (total-duration '((h c4 q) (q h tie) (h.)))
  ;;; => 9/4"
  (reduce #'+ (mapcar #'abs (om:omn :length (om:flatten-omn sequence)))))


;; TODO:
;; - BUG: In pitch mode, rests (NIL) not (fully) treated -- resulting in errors like 
;;    An error occured: In - of (67 NIL) arguments should be of type NUMBER.
;;   See tests/melody/follow-timed-profile-hr-rests.pwgl
;; - !! Support rests: arg with two different options -- either rest only preferred if BPF is negative, or rest can happen at any position of a BPF value (distance between absolutes)
;; - BUG: end time of score BPF is last start time?
;; - NO Consider mode pitch-n-rhyth when using a score input
;; - OK enable score input 
;; - OK rhythm not constrained? -- hr-rhythm-pitch-one-voice does not apply heuristic constraints on rhythmic values
;; - OK interpolate-score? has no effect?
;; - OK arg constrain still ignored
;; - OK Update documentation
;; - OK handle tempo of score -- tempo must be constant and must be set to 60 (or specify constant tempo as arg?) -- Handle by documenting.
;; - OK allow for list of BPFs / voices
(defun follow-timed-profile-hr  
    (profile     
     &key
     (voices 0)
     ;; basically factor for fenv x values.
     ;; should this be required arg? Not needed for OMN, but for fenv, and I cannot have a default for fenv     
     (profile-duration 1)
     (start 0) 
     (end NIL)
     (mode :pitch) ; options: :pitch, :rhythm
     (constrain :profile) ; options: :profile, :intervals, :directions
     (gracenotes? :normal) ; options: :normal, :exclude-gracenotes
     (interpolate-score? :no)  ; options: :yes, :no   	  
     (weight-offset 0))
  "Heuristic rule. The pitches or rhythmic values of the resulting music follow the given profile, taking the timing of the profile into account. For example, with profile-duration set to 2 the profile (a fenv) ranges from 0 to 2 so that the fenv describes a profile over 2 whole notes.

Args:
- profile (a list of numbers, a fenv or -- when using Opusmodus -- an OMN sequence): Specifies the profile that should be followed. A list of numbers is translated into a fenv with equidistant points. If an OMN expression contains chords, then only the first chord note is extracted. If a list of profiles is specified, then these are used to constrain multiple given different voices. In this case, the number of profiles, and the number of specified voices to constrain must match.

- voices (int or list of ints): The voice(s) to which the constraint is applied. If multiple profiles are given, then a different voice for each profile should be specified.

- profile-duration (number): The overall duration of the profile. Even if the profile is specified as OMN expression with rhythmic values, by default the profile lasts for a whole tone (1/1) -- all rhythmic values are streched/shrinked accordingly. 

- start / end (number or list of numbers): At which time point to start / end applying this rule. A start time greater zero has the effect that the profile is shifted in time to start at the specified time. An end time smaller than the duration of the profile has the effect that the part of the profile behind the set end is cut off. If end is NIL (the default) then the full profile duration is used.
start and end can both also be a list of start/end values to specify different values for different voices.

- mode: Select whether to constrain the rhythmic values (rhythm) or the pitches (pitch). If you want to constrain both, then simply use two instances of this rule with different mode settings.

- constrain: Select whether pitch/rhythm should follow the profile directly, or whether pitch/rhythm intervals should follow the intervals between profile, or pitch/rhythm directions should follow the directions of profile intervals.

- interpolate-score? (only relevant if profile is an OMN expression): Specifies whether score pitches or durations should be hold for their whole duration in the profile (sample-and-hold format), or whether between these values should be interpolated (zick-zack format).

- weight-offset (int): offset to the heuristic weight of this rule (the higher the offset, the more important this rule becomes compared with other heuristic rules).

Other arguments are inherited from hr-rhythm-pitch-one-voice.

Note: If this rule is used with pitch/rhythm motifs, then only the selection of the 1st motif note is controlled by the rule.

BUG:
A profile as OMN expression with leading rests not yet properly supported. 
"
  (let* ((my-voices (if (listp voices) voices (list voices)))
	 (voices-length (length my-voices)))
    (mappend #'(lambda (my-profile my-voice my-start my-end)
		 ;; (format T "follow-timed-profile-hr: my-profile: ~A, voice: ~A~%" my-profile voice)
		 ;; Internal representation is a fenv to allow for interpolation. A score is transformed into a fenv.
		 (let ((fenv-profile 
			;; process different inputs: list of int, BPF, score... 
			(cond 
			 ((_number-list? my-profile) (fe:list->fenv my-profile)) 
			 ((fe:fenv? my-profile) my-profile)
			 #+opusmodus
			 ((om:omn-formp my-profile)
			  (let ((flat-omn (om:flatten (om:length-legato my-profile)))) 
			    (funcall (case interpolate-score? 
				       (:no #'fenv:constant-segements-fenv-fn)
				       (:yes #'fenv:linear-fenv-fn)) 
				     (list
				      (tu:mat-trans
				       ;; x values: note start times (skips the last end time)
				       (let ((omn-dur (total-omn-duration flat-omn))) 
					 (mapcar #'(lambda (x) (/ x omn-dur))
						 (tu:dx->x (om:omn :length flat-omn) 0)))
				       ;; y values
				       (case mode
					 (:pitch 
					  (let ((pitches (mapcar #'(lambda (x) 
								     (if (om:chordp x) 
									 (first (last (om:melodize x)))
								       x)) 
								 (om:omn :pitch flat-omn))))
					    (om:pitch-to-midi (append pitches (last pitches))))
					  ;; use omn-encode to ensure numeric rhythmic values?
					  (:rhythm 
					   (let ((ls (om:omn :length flat-omn)))
					     (append ls (last ls)))))))))))
			 (T (error "Not a supported profile format: ~A" my-profile)))))	
		   (flet ((profile-hr (curr-var time)
				      "Defines core of profile heuristic. Essentially, returns the abs difference between current pitch/rhythm and the profile value at time."
				      (if (and (not (null curr-var)) ; curr-var is not a rest
					       (if my-end
						   (<= my-start time my-end) 
						 (<= my-start time))
					       (<= time profile-duration))
					  ;; actual constraint: heuristic value is distance between curr-var and curr-fenv-val
					  (let ((curr-fenv-val (fenv:y fenv-profile (/ (- time my-start) profile-duration))))
					    (- weight-offset
					       (abs (- curr-var curr-fenv-val))))
					;; otherwise no preference
					0))
			  (interval/direction-hr (var1 time1 var2 time2)
						 "Defines core of profile heuristic. Essentially, returns the abs difference between current pitch/rhythm values interval and the profile values interval at given times."
						 (if (and (not (null var1)) ; var is not a rest
							  (not (null var2))
							  (if my-end
							      (and (<= my-start time1)
								   (<= time2 my-end))
							    (<= my-start time1))
							  (<= time2 profile-duration))
						     (let ((fenv-val1 (fenv:y fenv-profile (/ (- time1 my-start) profile-duration)))
							   (fenv-val2 (fenv:y fenv-profile (/ (- time2 my-start) profile-duration))))
						       (- weight-offset
							  (abs 
							   (case constrain
							     (:intervals (case mode
									   ;; distance between distances of two vars and two fenv vals
									   (:pitch (- (- var1 var2)
										      (- fenv-val1 fenv-val2)))
									   ;; for rhythm distance is quotient not difference
                                                      ;;; TODO: unfinished for rhythm -- how to compute distance of distances?
									   (:rhythm (- (/ var1 var2)
										       (/ fenv-val1 fenv-val2)))))
							     ;; distance between directions of last two vals
                                        ;;; TODO: for rhythm def direction as whether distances are smaller or larger than 1 not 0
							     (:directions (- (_direction-int var1 var2)
									     (_direction-int fenv-val1 fenv-val2))))
							   )))
						   ;; otherwise no preference
						   0)))
		     ;; process different settings for constrain
		     (case constrain
		       (:profile (case mode
				   (:pitch 
				    (hr-rhythm-pitch-one-voice
				     #'(lambda (rhythm-time-pitch) 
					 (destructuring-bind (rhythm time pitch) rhythm-time-pitch
					   ;; (format T "follow-timed-profile-hr: rhythm: ~A, time: ~A, pitch: ~A~%" rhythm time pitch)
					   (profile-hr pitch time)))
				     my-voice
				     :rhythm/time/pitch
				     gracenotes?))
				   (:rhythm 
				    (hr-rhythms-one-voice
				     #'(lambda (value-time) 
					 (destructuring-bind (curr-value time) value-time
					   (profile-hr curr-value time)))
				     my-voice
				     :dur/time))))
		       ((:intervals :directions) (case mode
						   (:pitch 
						    (hr-rhythm-pitch-one-voice
						     #'(lambda (rhythm-time-pitch1 rhythm-time-pitch2) 
							 (destructuring-bind ((rhythm1 time1 pitch1) (rhythm2 time2 pitch2))
							     (list rhythm-time-pitch1 rhythm-time-pitch2)
							   (interval/direction-hr pitch1 time1 pitch2 time2)))
						     my-voice
						     :rhythm/time/pitch
						     gracenotes?))
						   (:rhythm 
						    (hr-rhythms-one-voice
						     #'(lambda (value-time1 value-time2) 
							 (destructuring-bind ((var1 time1) (var2 time2))
							     (list value-time1 value-time2)
							   (interval/direction-hr var1 time1 var2 time2)))
						     my-voice
						     :dur/time))))
		       ))))
	     (if (and (listp profile) 
		      (every #'(lambda (x)
				 (or 
				  #+opusmodus (om:omn-formp x)
				  (_number-list? x)
				  (fe:fenv? x)))
			     profile))
                 profile
	       (make-list voices-length :initial-element profile))
	     my-voices
	     (if (listp start) start (make-list voices-length :initial-element start))
	     (if (and (listp end) (not (null end))) end (make-list voices-length :initial-element end)))))





;; follow-profile-hr


;;; TODO:
;; - some test ensuring that argument values are in range allowed -- otherwise error (e.g. assert startments?)
;; - OK revise for polyphonic case, i.e. allow for a list of lists/fenvs/omn expressions.
;; - !! Efficiency: change profile from list into array/vector for faster access during search -- see PWConstraints example.. 
;; - Generalise: constrain could also receive a function, which is used for specifying that relation
;; - generalise this def for rhythms -- work in progress.
;; - ? Add support for "simple score format" by Kilian -- I can more easily transform such scores before handing them over 
;;   -> postpone until I actually need it
;; - turn into polyphonic version, with different pitches per voice
;;   -> postpone until I actually need it
;; - ? Some case of arg constrain that is more flexible than :intervals but less than :directions -- allow for +/- one semitone (is this really worth it -- after all, these are just heuristics? It could be if it is combined with other heuristic constraints)
;;
;; - OK change name to follow-profile-hr, and make sure you change all example patches. Store elsewhere in menu and file?
;; - OK support also BPFs
;; - OK Predefine some functions for transform and map
;; - OK How to handle rests in a given score? The current code simply ignores them, only returns notes of pitches. However, if rest are included then the pitch profile is still folled by the notes, so it appears I only need to deal with rests in the rhythmic variant of this definition.
(defun follow-profile-hr
    (profiles
     &key
     (voices 0)
     (n 0)
     (mode :pitch) ; options: :pitch, :rhythm
     (constrain :profile) ; options: :profile, :intervals, :directions
     (start 0)
     (weight-offset 0))
  "Heuristic rule. The pitches or rhythmic values of the resulting music follow the given profile.

Args:

- profile (a list of numbers, a fenv, or -- when using Opusmodus -- an OMN sequence, or a list of any of these): Specifies the profile to be followed. In case an OMN sequence contains chords, then only the first chord note is extracted. In case a fenv is given, then that fenv is sampled (n equidistant samples) and the y values are used. If multiple profiles are given, they are applied to the given voices in the same order.  

- voices (int or list of ints): The voice(s) to which the constraint is applied. 

- n (int): The first n notes are affected (if n is greater than the length of profile, then that length is taken). If 0, then n is disregarded and the full length of the profile is used. NOTE: if the profile is a fenv then make sure n is greater than 0.

- mode: Select whether to constrain either the rhythmic values (rhythm) or the pitches (pitch). If you want to constrain both, then simply use two instances of this rule with different mode settings.

- constrain: Select whether pitch/rhythm should follow the profile directly, or whether pitch/rhythm intervals should follow the intervals between profile, or pitch/rhythm directions should follow the directions of profile intervals.

- start (int): At which note position to start applying this rule (zero-based). 

- weight-offset (int): offset to the heuristic weight of this rule (the higher the offset, the more important this rule becomes compared with other heuristic rules).


Note: If this rule is used with pitch/rhythm motifs, then only the selection of the 1st motif note is controlled by the rule (in future it would be nice to control the average pitch/rhythm of motifs, but that would require different rule applicators).

BUG: mode :rhythm not yet working.
"
  (let* ((my-voices (tu:ensure-list voices))
	 (voices-length (length my-voices)))    
    (mappend 
     #'(lambda (profile-voice)
	 (let* ((profile (first profile-voice))
		(voice (second profile-voice))
		(my-profile 
		 ;; process different inputs: list of int, BPF, score... 
		 (cond ((_number-list? profile) profile) 
		       ((fe:fenv? profile)
			(if (> n 0)  
			    (fenv:fenv->list profile n)
			  (progn (warn "Cannot sample BPF with n set to 0") NIL)))
		       #+opusmodus
		       ((om:omn-formp profile)
			(case mode
			  (:pitch 
			   (let ((flat-omn (om:omn-merge-ties 
					    (om:flatten (om:length-legato profile)))))
			     (om:pitch-to-midi
			      (mapcar #'(lambda (x) 
					  (if (om:chordp x) 
					      (first (last (om:melodize x)))
					    x)) 
				      (om:omn :pitch flat-omn)))))
			  (:rhythm (om:omn :length profile))))
		       (T (error "Not a supported profile format: ~A" profile))))
		(profile-length (length my-profile)))
	   (funcall (case mode
		      (:pitch #'hr-pitches-one-voice)
		      (:rhythm #'hr-rhythms-one-voice))
		    ;;; TODO: consider reducing following function (rule) for efficiency, because all case expressions etc. are executed again and again for every variable decision during search
		    #'(lambda (xs) 
			"Defines a heuristic -- larger return values are preferred. Essentially, returns the abs difference between current value and pitch."
			(let ((l (- (length xs) start)))
			  (if (and (> l 0)
				   (or (= n 0) (<= l n))
				   (<= l profile-length))
			      (- weight-offset
				 (abs
				  ;; process different settings for constrain
				  (case constrain
				    (:profile  (- (first (last xs)) (nth (1- l) my-profile)))
				    (:intervals (if (>= l 2)
						    (case mode
						      ;; distance between distances of last two vals
						      (:pitch (- (abs (- (apply #'- (last xs 2))
									 (- (nth (- l 2) my-profile)
									    (nth (- l 1) my-profile))))))
						      ;; for rhythm distance is quotient not difference
						      ;; TODO: unfinished for rhythm -- how to compute distance of distances?
						      (:rhythm (abs (- (apply #'/ (last xs 2))
								       (/ (nth (- l 2) my-profile)
									  (nth (- l 1) my-profile))))))
						  0))
				    ;; distance between directions of last two vals
				    ;; TODO: for rhythm def direction as whether distances are smaller or larger than 1 not 0
				    (:directions (if (>= l 2)
						     (- (apply #'_direction-int (last xs 2))
							(_direction-int
							 (nth (- l 2) my-profile)
							 (nth (- l 1) my-profile)))
						   0)))))
			    ;; otherwise no preference
			    0)))
		    voice
		    (case mode
		      (:pitch :all-pitches)
		      (:rhythm :list-with-all-durations)))))
     (tu:mat-trans
      (list (if (and (listp profiles) 
		     (every #'(lambda (x)
				(or 
				 #+opusmodus (om:omn-formp x)
				 (_number-list? x)
				 (fe:fenv? x)))
			    profiles))
		profiles
	      (make-list voices-length :initial-element profiles))
	    my-voices)))))


#|
(PWGLDef follow-interval-profile  
	 ((voices 0)
	  (n 0)
	  (profile NIL)
	  (step-size 2)
	  ;; removed args:
	  ;; (mode () (ccl::mk-menu-subview :menu-list '(":pitch" ":rhythm")))
	  ;; (constrain () (ccl::mk-menu-subview :menu-list '(":profile" ":intervals" ":directions")))
	  &key
	  (start 0)
	  ;; removed args:
	  ;; (weight-offset 0)
	  ;; (transform NIL)
	  ;; (map NIL))
	  )
	 "Strict rule: The pitches of the resulting music follow the intervals of the given profile (numbers, a voice, or BPFs). If the profile contains a pitch repetition, then the corresponding interval in the solution must be a repetition. If the profile contains a step (up to `step-size'), then the corresponding interval in the solution must be a step in the same direction (up to `step-size'). If the profile contains a skip (larger than `step-size'), then the corresponding interval in the solution must be a skip in the same direction. 

Args:

voices (int or list of ints): The voice(s) to which the constraint is applied. 

n (int): The first n notes are affected (if n is greater than the length of profile, then that length is taken). If 0, then n is disregarded. NOTE: if a BPF is used then make sure n is greater than 0.

profile: Specifies the profile, which should be followed. This can be either a list of numbers (ints, floats or ratios), a voice object (or a score/part), a BPF object. In case a score or part object is given, then only the first voice is extracted and used. If voice objects contains chords, then only the first chord note is extracted. In case a BPF is given, then that BPF is sampled (n samples) and the y values are used.

Key args:

start (int): At which note position to start applying this rule (zero-based). 

TODO: revise -- is this part of doc (copied from previous version of rule) still true?
NOTE: If this rule is used with pitch/rhythm motifs, then only the selection of the 1st motif note is controlled by the rule (in future it would be nice to control the average pitch/rhythm of motifs, but that would require different rule applicators).
"
	 ()
	 ;; (:groupings '(3 2))
	 (flet ((same-direction (interval1 interval2)
		  "interval1 and interval2 go into the same direction. Repetitions are not covered."
		  (cond ((< 0 interval1) (< 0 interval2))
			((> 0 interval1) (> 0 interval2))
			(T NIL)
			)))
	   ;; TODO: Improve performance: encode profile as vector in this and other profile rules
	   (let ((list-profile  
		  ;; process different inputs: list of int, BPF, score... 
		  (cond ((listp profile) profile) ;; TODO: revise for polyphonic case (test for list of numbers)
			((ccl::break-point-function-p profile)
			 (if (> n 0)  
			     (ccl::pwgl-sample profile n)
			     (progn (warn "Cannot sample BPF with n set to 0") NIL)))
			((or (ccl::voice-p profile) (ccl::score-p profile) (ccl::part-p profile)) 
			 (voice->pitches profile))
			(T (error "Neither list nor score nor BPF: ~A" profile))
			)))
	     (r-pitches-one-voice
	      #'(lambda (xs) 
		  "Strict rule"
		  (let ((l (- (length xs) start)))
		    (if (and (>= l 2) ; (> l 0)
			     (or (= n 0) (<= l n))			     
			     (<= l (length list-profile)))
			(let ((profile-interval (- (nth (- l 2) list-profile)
						   (nth (- l 1) list-profile)))
			      (solution-interval (apply #'- (last xs 2))))
			  (cond
			    ;; repetition
			    ((= profile-interval 0) (= solution-interval 0))
			    ;; step
			    ((<= (abs profile-interval) step-size)
			     (and (<= (abs solution-interval) step-size)
				  (same-direction profile-interval solution-interval)))
			    ;; skip
			    ((> (abs profile-interval) step-size)
			     (and (> (abs solution-interval) step-size)
				  (same-direction profile-interval solution-interval)))
			    (T NIL)))
			;; otherwise 
			T)))
	      voices
	      :all-pitches))))
|#	 


;; Some mapping functions for pitch-profile-hr or rhythm-profile-hr

(defun compose-functions (&rest funs)
  "Expects any number of mapping or transformation functions and composes these into a single function that can be given to pitch-profile-hr or rhythm-profile-hr. The functions will be called in their given order."
  #'(lambda (x) 
      (reduce #'(lambda (y f) (funcall f y)) funs :initial-value x)))

(defun mp-add-offset (offset)
  "Returns a mapping function for pitch-profile-hr or rhythm-profile-hr. offset is added to the original value."
  #'(lambda (x) (+ x offset)))

(defun mp-multiply (factor)
  "Returns a mapping function for pitch-profile-hr or rhythm-profile-hr. factor is multiplied to the original value."
  #'(lambda (x) (* x factor)))

#|
(defun mp-add-random-offset (max-random-offset)
  "Returns a mapping function for pitch-profile-hr or rhythm-profile-hr. max-random-offset is the maximun random deviation, above or below the original value."
  #'(lambda (x) 
      (let ((abs-rnd-offset (abs max-random-offset)))
	(+ x (pw::g-random (* abs-rnd-offset -1) abs-rnd-offset)))))


;; Some transformation functions for pitch-profile-hr or rhythm-profile-hr

(defun trfm-scale (min max)
  "Returns a transformation function for pitch-profile-hr or rhythm-profile-hr. The original values are scaled between min and max."
  #'(lambda (xs) (pw::g-scaling xs min max)))

(defun trfm-add-BPF (BPF)
  "Returns a transformation function for pitch-profile-hr or rhythm-profile-hr. To each original value the corresponding BPF vcalue is added."
  #'(lambda (xs) 
      (mapcar #'+ xs (ccl::pwgl-sample BPF (length xs)))))

(defun trfm-multiply-BPF (BPF)
  "Returns a transformation function for pitch-profile-hr or rhythm-profile-hr. To each original value the corresponding BPF vcalue is multiplied."
  #'(lambda (xs) 
      (mapcar #'* xs (ccl::pwgl-sample BPF (length xs)))))
|#

(defun trfm-reverse (min max)
  "Returns a transformation function for pitch-profile-hr or rhythm-profile-hr. The original value sequence is reversed."
  #'(lambda (xs) (reverse xs)))



;; no-direct-repetition

(defun no-direct-repetition (&key
			       (voices 0)						       
			       (rule-type :true/false) ; options: :true/false :heur-switch
			       (weight 1))
  "Disallows any direct pitch or chord repetition. 

Args: 
voices: the number of the voice(s) to constrain.

Optional arguments are inherited from r-pitches-one-voice."
  (r-pitches-one-voice #'(lambda (p1 p2) 
			   (if (and p1 p2) ; no rests
			       (not (equal p1 p2))
			       T))
		       voices
		       :pitches
		       rule-type weight))

;; no-repetition

(defun no-repetition (&key
			(voices 0)
			(window 2)
			(mode :pitches) ; options: :pitches, :pcs
			(rule-type :true/false) ; options: :true/false :heur-switch
			(weight 1))
  "Disallows repetitions within a window of a give number of melodic notes or chords. 

Args: 
voices: the number of the voice(s) to constrain.
window: the number of notes among which no repetition should happen (if this is larger than the currently available number, then simply the available notes are taken).
mode: whether to disallow repeated pitches (:pitches) or pitch classes (:pcs).

Optional arguments are inherited from r-pitches-one-voice."
  (r-pitches-one-voice #'(lambda (pitches) 
			   (let* ((ps (mapcar #'(lambda (p)
						  (case mode 
						    (:pitches p)
						    (:pcs (pitch->pc p))))
					      (last pitches window)))
				  (p1 (first (last ps))))
			     (if p1 ; no rest
				 (not (member p1 (butlast ps) :test #'equal))
				 ;; (progn (format t "no-repetition -- p: ~A, ps: ~A, result: ~A ~%"
				 ;; 	       p1 (butlast ps) (not (member p1 (butlast ps) :test #'equal)))
				 ;;        (not (member p1 (butlast ps) :test #'equal)))
				 T)))
		       voices
		       :all-pitches
		       rule-type weight))


;; min/max-melodic-interval

;; TODO: 
;; - !! Efficiency: use array/vector instead of list 
(defun min/max-interval (&key
			   (voices 0)
			   (min-interval NIL)
			   (max-interval NIL)
			   (n 0)
			   (rule-type :true/false) ; options: :true/false :heur-switch
			   (weight 1))
  "Limit the minimum/maximum melodic interval for the given voice.

Args: 
voices (int or list of ints): the number of the voice(s) to constrain.

key-args:
min-interval (number, fenv or NIL): minimum interval in semitones. Ignored if NIL. Implicitly disallows repetition if >= 1. If a fenv, then the fenv specifies how the min interval changes over n notes (i.e., fenv specifies n-1 intervals).
max-interval (number, fenv or NIL): maximum interval in semitones. Ignored if NIL. If a fenv, then the fenv specifies how the max interval changes over n notes.
n (int): The first n notes are affected. If 0, then n is disregarded. NOTE: if any fenv is set then make sure n is greater than 0.

Args rule-type and weight inherited from r-pitches-one-voice."
  (if (some #'fenv:fenv? (list min-interval max-interval))	   
      ;; one or both intervals are fenv
      (flet ((make-intervals (min/max-interval)
	       "Transforms fenv (or scalar) interval into list/array of interval numbers."	    
	       (cond ((fenv:fenv? min/max-interval)
		      (if (> n 0)  
			  (fenv:fenv->list min/max-interval (1- n))
			  (progn (warn "Cannot sample fenv with n set to 0")
				 NIL)))
		     ((numberp min/max-interval) (make-list n :initial-element min/max-interval))
		     ((null min/max-interval) min/max-interval))))
	(let ((min-intervals (make-intervals min-interval))
	      (max-intervals (make-intervals max-interval)))
	  (r-pitches-one-voice #'(lambda (pitches)					  
				   (let ((l (length pitches)))
				     (if (and (>= l 2) (<= l n))
					 (let* ((last-pitches (last pitches 2))
						(pitch1 (second last-pitches))
						(pitch2 (first last-pitches)))
					   (if (and pitch1 pitch2) ; no rests
					       (let ((interval (abs (- pitch1 pitch2))))
						 (and (if min-intervals ;; TODO: efficiency: this test only required once
							  (<= (nth (- l 2) min-intervals) interval)
							  T)
						      (if max-intervals ;; TODO: efficiency: this test only required once
							  (progn 
							    ;; (format t "min/max-interval -- interval: ~A, max-interval: ~A, result: ~A ~%"
							    ;; 	   interval 
							    ;; 	   (nth (- l 2) max-intervals)
							    ;; 	   (<= interval (nth (- l 2) max-intervals)))
							    (<= interval (nth (- l 2) max-intervals)))
							  T)))
					       T))
					 T)))
			       voices
			       :all-pitches
			       rule-type
			       weight)))
      ;; both intervals are scalars
      (r-pitches-one-voice #'(lambda (pitch1 pitch2)
			       (if (and pitch1 pitch2) ; no rests
				   (let ((interval (abs (- pitch1 pitch2))))
				     (and (if min-interval 
					      (<= min-interval interval)
					      T)
					  (if max-interval 
					      (<= interval max-interval)
					      T)))
				   T))
			   voices
			   :pitches
			   rule-type
			   weight)))

#| ;; old version with BPFs instead of fenvs
(defun min/max-interval (&key
			   (voices 0)
			   (min-interval NIL)
			   (max-interval NIL)
			   (n 0)
			   (rule-type :true/false) ; options: :true/false :heur-switch
			   (weight 1))
  "Limit the minimum/maximum melodic interval for the given voice.

Args: 
voices (int or list of ints): the number of the voice(s) to constrain.

key-args:
min-interval (number, BPF or NIL): minimum interval in semitones. Ignored if NIL. Implicitly disallows repetition if >= 1. If a BPF, then the BPF specifies how the min interval changes over n notes (i.e., BPF specifies n-1 intervals).
max-interval (number, BPF or NIL): maximum interval in semitones. Ignored if NIL. If a BPF, then the BPF specifies how the max interval changes over n notes.
n (int): The first n notes are affected. If 0, then n is disregarded. NOTE: if any BPF is set then make sure n is greater than 0.

Args rule-type and weight inherited from r-pitches-one-voice."
  (if (some #'ccl::break-point-function-p (list min-interval max-interval))	   
      ;; one or both intervals are BPF  
      (flet ((make-intervals (min/max-interval)
	       "Transforms BPF (or scalar) interval into list/array of interval numbers."	    
	       (cond ((ccl::break-point-function-p min/max-interval)
		      (if (> n 0)  
			  (ccl::pwgl-sample min/max-interval (1- n))
			  (progn (warn "Cannot sample BPF with n set to 0")
				 NIL)))
		     ((numberp min/max-interval) (make-list n :initial-element min/max-interval))
		     ((null min/max-interval) min/max-interval))))
	(let ((min-intervals (make-intervals min-interval))
	      (max-intervals (make-intervals max-interval)))
	  (r-pitches-one-voice #'(lambda (pitches)					  
				   (let ((l (length pitches)))
				     (if (and (>= l 2) (<= l n))
					 (let* ((last-pitches (last pitches 2))
						(pitch1 (second last-pitches))
						(pitch2 (first last-pitches)))
					   (if (and pitch1 pitch2) ; no rests
					       (let ((interval (abs (- pitch1 pitch2))))
						 (and (if min-intervals ;; TODO: efficiency: this test only required once
							  (<= (nth (- l 2) min-intervals) interval)
							  T)
						      (if max-intervals ;; TODO: efficiency: this test only required once
							  (progn 
							    ;; (format t "min/max-interval -- interval: ~A, max-interval: ~A, result: ~A ~%"
							    ;; 	   interval 
							    ;; 	   (nth (- l 2) max-intervals)
							    ;; 	   (<= interval (nth (- l 2) max-intervals)))
							    (<= interval (nth (- l 2) max-intervals)))
							  T)))
					       T))
					 T)))
			       voices
			       :all-pitches
			       rule-type
			       weight)))
      ;; both intervals are scalars
      (r-pitches-one-voice #'(lambda (pitch1 pitch2)
			       (if (and pitch1 pitch2) ; no rests
				   (let ((interval (abs (- pitch1 pitch2))))
				     (and (if min-interval 
					      (<= min-interval interval)
					      T)
					  (if max-interval 
					      (<= interval max-interval)
					      T)))
				   T))
			   voices
			   :pitches
			   rule-type
			   weight)))
|#

;; set-pcs

;; TODO: generalise for both pitches and PCs
(defun set-pitches (&key
		      (voices 0)
		      (pitches ())
		      (pcs? :pitches) ; options: :pitches, :pcs		      
		      (mode :only-given) ; options: :only-given, :exclude-given
		      (rule-type :true/false) ; options: :true/false :heur-switch
		      (weight 1))
  "Restricts the pitches to the pitches or PCs specified.

Args:
  pitches (list of ints): Specified pitches.
  pcs?: use absolute pitches or pitch classes?
  mode: Controls whether to only use the given intervals (:only-given), or whether to only use intervals that are not given (:exclude-given).

Other arguments are inherited from R-pitches-one-voice."
  (let ((pcs (mapcar #'(lambda (p) (mod p 12)) pitches)))
    (R-pitches-one-voice #'(lambda (pitch)
			     (if pitch ; no rests
				 (let ((member? (case pcs?
						  (:pitches (member pitch pitches))
						  (:pcs (member (mod pitch 12) pcs)))))
				   (format T "set-pitches: pitch: ~A, pcs: ~A, member?: ~A~%"
					   pitch pcs member?)
				   (case mode
				     (:only-given member?)
				     (:exclude-given (not member?))))
				 T))
			 voices :pitches rule-type weight)))


;; set-intervals

(defun set-intervals (&key
			(intervals ())
			(absolute? :absolute) ; options: :absolute, :up/down
			(mode :only-given) ; options: :only-given, :exclude-given
			(voices 0)
			(rule-type :true/false) ; options: :true/false :heur-switch
			(weight 1))
  "Restricts the melodic intervals to those intervals specified. 

Args:
  intervals (list of ints): Specified intervals.
  absolute?: Controls whether the direction of the intervals is taken into account. The direction can be specified with a sign (positive for upwards, negative for downwards). If absolute? is set to :absolute, then the specified intervals can be used for any direction. By contrast, :up/down takes the sign of the given intervals into account.
  mode: Controls whether to only use the given intervals (:only-given), or whether to only use intervals that are not given (:exclude-given).

Other arguments are inherited from R-pitches-one-voice."
  (R-pitches-one-voice #'(lambda (pitch1 pitch2)
			   (if (and pitch1 pitch2) ; no rests
			       (let* ((interval (- pitch2 pitch1))
				      (member? (member (case absolute?
							 (:up/down interval)
							 (:absolute (abs interval)))
						       (case absolute?
							 (:up/down intervals)
							 (:absolute (mapcar #'abs intervals))))))
				 (case mode
				   (:only-given member?)
				   (:exclude-given (not member?))))
			       T))
		       voices :pitches rule-type weight))


;; prefer-interval-hr

#|
;; TODO: translate list into vector for efficiency
(PWGLDef prefer-interval-hr ((voices 0)
			     (interval 1)
			     &optional
			     (n 0)
			     (weight-factor 1))
	 "Heuristic rule that constrains the preferred melodic interval size. By default, small steps are preferred (interval is 0). The more an interval deviates from the set interval the less likely it is to be chosen.

Args:

voices (int or list of ints): The voice(s) to which the constraint is applied. 

interval (number or BPF): The preferred interval size. A number sets a constant size, which a BPF sets a size that changes over time. NOTE: if a BPF is used then make sure arg n (see below) is greater than 0.

n (int): The first n notes are affected. If 0, then n is disregarded.

weight: factor for the heuristic weight.
"
	 ()
	 ;; Heuristic rules prefer large return values, hence the (processed) negative interval is returned
	 (hr-pitches-one-voice (cond 
				 ((and (= n 0) (numberp interval))
				   ;; constant interval
				   #'(lambda (pitch1 pitch2) 
				       ;; Heuristic rules prefer large return values, hence the negative interval is returned
				       (- (* (abs (- interval
						     (abs (- pitch1 pitch2))))
					     weight-factor))))
				 ((> n 0)
				   (let ((offsets (cond
						    ((numberp interval) (make-list n :initial-element interval))
						    ((ccl::break-point-function-p interval) (ccl::pwgl-sample interval n)))))
				     ;; changing interval 
				     #'(lambda (pitch_n1  pitch_n2) 
					 (destructuring-bind ((pitch2 n1) (pitch2 n2)) (list pitch_n1  pitch_n2)
					   (if (<= n1 n)
					       (let ((offset (nth n1 offsets)))
						 ;; (format t "n: ~A offset: ~A~%" n1 offset)
						 (- (* (abs (- offset
							       (abs (- (first pitch_n1) (first pitch_n2)))))
						       weight-factor)))
					       0)))))
				 (T (error "prefer-interval-hr: interval set to a BPF, but n left at 0.")))
			       voices
			       (if (= n 0)
				   :pitches
				   :pitch/nth)))
|#


;; accumulative-interval

#|
;; TODO:
;; - Rule for first n-1 notes ignored -- OK?
;; - Test rule further -- do settings work and make sense?
;; - Improve efficiency: Replace interval BPF list with vector
(PWGLDef accumulative-interval ((voices 0)
				(n 2)
				(interval 7)
				(condition () (ccl::mk-menu-subview :menu-list '(":max" ":min" ":equal")))
				&optional
				(sublists () (ccl::mk-menu-subview :menu-list '(":constrain" ":ignore")))
				(number-of-notes 0)
				(rule-type () (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
				(weight 1))
	 "The sum of melodic intervals between the pitches of n notes is smaller / greater than the given interval. If there are any rests among the last n notes then this rule is ignored.

Args:
  n (int): number of notes involved
  interval (int or BPF): the max/min interval. If a BPF, then it defines how the interval changes across the voice(s). However, in that case the arg number-of-notes must be given, otherwise the rule throws an error.
  condition: the relation that should hold between the sum of intervals and the given interval: whether the sum should not exceed (:max) or be exactly (:equal) or be at least (:min) the given interval. 

Optional args:
  sublists: whether or not to also constrain the intervals between the last n-1, n-2 ... notes in the same way. This argument is only effective if condition is set to :max, otherwise it setting is always :ignore.
  number-of-notes: the number of variables set in clusterengine. This argument is required if interval is a BPF.   

Other arguments are inherited from R-pitches-one-voice."
	 ()
	 (let* ((BPF? (ccl::break-point-function-p interval))
		(intervals (if (and BPF? (> number-of-notes 0))				
			       (ccl::pwgl-sample interval number-of-notes)
			     (when BPF?
			       (error "accumulative-interval: Cannot sample BPF with the keyword argument number-of-notes set to its default 0.")))))
	   (flet ((rule-application (n)
		    (R-pitches-one-voice #'(lambda (pitches)
					     (let ((n-pitches (last pitches n)))
					       (if (and (= (length n-pitches) n)
							(every #'identity pitches)) ; no rests
						   (let ((interv (if BPF?
								     (nth (1- (length pitches)) intervals)
								   interval)))
						     (funcall (case condition
								(:max #'<=)
								(:min #'>=)
								(:equal #'=))					 
							      (abs (- (first (last pitches)) (first pitches)))
							      interv))
						 T)))
					 voices :all-pitches rule-type weight))) 
	     (if (and (eql sublists :constrain)
		      (eql condition :max))
		 (mappend #'rule-application
			  (arithm-ser 2 1 n))
	       (rule-application n)))))
|#


;; durations-control-intervals

(defun durations-control-intervals (&key
				      (voices 0)
				      (rel-factor 32)
				      (acc-factor 2)
				      (rule-type :true/false) ; options: :true/false :heur-switch
				      (weight 1))
  "Pitch intervals and durations are lineary related.

Args:
voices (int or list of ints): The voice(s) to which the rule is applied. 

rel-factor (relation factor): the size of the melodic interval is approximately the duration times rel-factor.

acc-factor (accuracy factor): factor how much the interval can deviate from that relation above and below. 

Examples: If rel-factor is 1 and acc-factor is also one, then the duration of a note would need to be the same as the interval starting at it (e.g., duration = 2 and interval is 2). If rel-factor is 32 and acc-factor is 2 (the defaults) then the interval can be any value between duration*32/2 and duration*32*2.  

Optional arguments are inherited from r-rhythm-pitch-one-voice."
  (r-rhythm-pitch-one-voice #'(lambda (dur-pitch1 dur-pitch2)
				(if (and (second dur-pitch1) (second dur-pitch2)) ; no rests
				    (let ((dur1 (first dur-pitch1))
					  (interval (abs (- (second dur-pitch1) (second dur-pitch2)))))
				      (<= (/ interval acc-factor)
					  (* dur1 rel-factor)
					  (* interval acc-factor)))
				    T))
			    ;; old version
			    ;; (cond ((>= dur1 1/2) (<= interval 16))
			    ;;       ((>= dur1 1/6) (<= interval 5))
			    ;;       ((<= dur1 1/16) (<= interval 2)))
			    voices :rhythm/pitch :exclude-gracenotes rule-type weight))


;; restrict-consecutive-directions

;; TODO: 
;; - allow n to be controlled by a BPF
(defun restrict-consecutive-directions (&key
					  (n 4)
					  ;; direction options: :either, :either-strict, :ascending, :ascending-strict, :descending, :descending-strict
					  (direction :either)
					  ;; (condition () (ccl::mk-menu-subview :menu-list '(":at-most" ":exactly" ":at-least")))
					  ;; "condition: Which restriction to apply? If :at-most, then at most n notes can be connected by intervals of the same given direction, and so forth."
					  (voices 0)
					  (rule-type :true/false) ; options: :true/false :heur-switch
					  (weight 1))
  "This rule controls how many consecutive intervals can be ascending or descending. At most n notes can be connected by intervals of the same direction.

Args:
  n (int): How many consecutive notes are taken into account?  
  direction: Which interval direction is taken into account? For example, :ascending means that the rule only looks at consecutive ascending intervals. Without the ending -strict, note repetitions are also counted as the same direction. 

In case of intermitting rests the rule is not applied.

Other arguments are inherited from R-pitches-one-voice."
  (R-pitches-one-voice #'(lambda (all-pitches)
			   (let ((pitches (last all-pitches (1+ n))))
			     (if (and (= (length pitches) (1+ n))
				      (every #'(lambda (p) (not (null p))) pitches)) ; no rests
				 (progn 
				   ;; (format t "restrict-consecutive-directions: all-pitches: ~A, ~%   pitches: ~A~%" 
				   ;; 	  all-pitches pitches)
				   (not 
				    (case direction
				      (:ascending (apply #'<= pitches))
				      (:ascending-strict (apply #'< pitches))
				      (:descending (apply #'>= pitches))
				      (:descending-strict (apply #'> pitches))
				      (:either (or (apply #'<= pitches)
						   (apply #'>= pitches)))
				      (:either-strict (or (apply #'< pitches)
							  (apply #'> pitches))))))
				 T)))
		       voices :all-pitches rule-type weight))


;; resolve-skips

;; To-do: 
;; - ?? allow n to be controlled by a BPF
(defun resolve-skips (&key
			(skip-size 6)
			(resolution-size 2)
			(repetition? :disallow) ; options: :disallow, :allow
			(voices 0)
			(rule-type :true/false) ; options: :true/false :heur-switch
			(weight 1))
  "Resolve any skip larger than skip-size by an interval in the opposite direction.

Args:
  skip-size: The minimum interval size (in semitones) that triggers this rule.
  resolution-size: The maximum interval size that is allowed as a resolution.
  repetition?: Whether or not tone repetitions are allowed as resolution.

Other arguments are inherited from R-pitches-one-voice."
  (R-pitches-one-voice #'(lambda (pitch1 pitch2 pitch3)
			   (if (and pitch1 pitch2 pitch3) ; no rests
			       (let ((int1 (- pitch2 pitch1)) 
				     (int2 (- pitch3 pitch2)))
				 (if (>= (abs int1) skip-size)
				     (and (<= (abs int2) resolution-size)
					  (/= (signum int1) (signum int2))
					  (case repetition?
					    (:disallow (> (abs int2) 0))
					    (:allow T)))
				     T))
			       T))
		       voices :pitches rule-type weight))
