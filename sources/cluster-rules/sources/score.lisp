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

(in-package :cluster-rules)

(PWGLDef voice->start-times ((voice nil) &key (rationalize? NIL))
	 "Expects a voice and returns a list of its note and rest start times. Start times of rests are notated as negative numbers. If a score or part is given instead, then the first voice is selected.

NOTE: The resulting start times depend on the tempo of the score. If a quarternote should result in a 0.25 (or 1/4) then the tempo of the score should be constant at 60.

Args:
rationalize? (Boolean): If the score has a constant tempo of 60, then start times can be output as ratios, by setting this argument to T.
"
	 ()
	 (mappend #'(lambda (c) 
		      (if (ccl::tied-p c)
			  NIL
			(list (let ((start-time
				     ;; divide by four - transform beats for dur 1 into 1/4 
				     (/ (* (ccl::start-time c)
					   (if (ccl::rest-p c) -1 1))
					4)))
				(if rationalize? 
				    (rationalize start-time)
				  start-time)))))
		  (ccl::collect-enp-objects (first (ccl::collect-enp-objects voice :voice)) 
					    :chord)))


(PWGLDef voice->durations ((voice nil) &key (rationalize? NIL))
	 "Expects a voice and returns a list of its note and rest durations. Durations of rests are notated as negative numbers. If a score or part is given instead, then the first voice is selected.

NOTE: The resulting start times depend on the tempo of the score. If a quarternote should result in a 0.25 (or 1/4) then the tempo of the score should be constant at 60.

Args:
rationalize? (Boolean): If the score has a constant tempo of 60, then durations can be output as ratios (i.e., 1/4 means a quarter note), by setting this argument to T."
	 ()
	 (let ((starts (voice->start-times voice)))
	   (mapcar #'(lambda (start dur)
		       (let ((dur-or-rest (* (if (zerop start) 1 (signum start)) ; sign of start
					     dur)))
			 (if rationalize? (rationalize dur-or-rest) dur-or-rest)))
		   starts
		   (pw:x->dx
		    (append (mapcar #'abs starts)
			    (let ((c (first (last (ccl::collect-enp-objects 
						   (first (ccl::collect-enp-objects voice :voice))
						   :chord)))))
			      (if (ccl::tied-p c)
				  NIL
				(list (/ (+ (ccl::start-time c) (ccl::duration c)) 4)))))))))


(PWGLDef voice->pitches ((voice nil))
	 "Expects a voice and returns a list of its note pitches. If a score or part is given instead, then the first voice is selected. In case there is a rest, NIL is returned.
"
	 ()
	 (mappend #'(lambda (c) 
		      (cond ((ccl::rest-p c) '(NIL))
			    ((ccl::tied-p c) NIL)
			    (T (list (ccl::midi (first (ccl::collect-enp-objects c :note)))))))
		  (ccl::collect-enp-objects (first (ccl::collect-enp-objects voice :voice)) 
					    :chord)))




;;
;; Set clefs for a score
;;
;; Definitions inspired by Julien Vincenot
;;

(ccl::add-box-type :staff-types-scroll 
  `(ccl::mk-menu-subview :menu-list 
     ,(ccl::add-menu-list-keyword :staff-types '("treble-staff" "alto-staff" "tenor-staff" "bass-staff" "percussion-staff" "piano-staff"))
     :value 0))
(PWGLDef set-staff-clefs ((score '())
			  (clef 'treble-staff :staff-types-scroll) 
			  &rest (clefs 'treble-staff :staff-types-scroll))
	 "Set the clef of successive staves by extending and scrolling menus.

Definition inspired Julien Vincenot"
	 (:groupings '(1 1))
	 (let ((all-clefs (cons clef clefs)))
	   (system::enp-script score        
			       (loop for clef in all-clefs
				     for index in (pw::arithm-ser 1 1 (length all-clefs))
				     collect 
				     `(* ?1 :partnum (list ,index)
					 (ccl::?if 
					  (setf (ccl::staff (ccl::read-key ?1 :part))
						(ccl::make-instance ',clef)))))
			       NIL)))


(PWGLDef set-staff-instruments ((score '()) 
				(instrument 'piano)
				&rest (instruments 'piano))
	 ;; (instruments () (ccl::mk-menu-subview :menu-list '(":beats" ":1st-beat")))
	 "Set the instruments of successive staves."
	 (:groupings '(1 1))
	 (let ((all-instruments (cons instrument instruments)))
	   (system::enp-script score        
			       (loop for instr in all-instruments
				     for index in (pw::arithm-ser 1 1 (length all-instruments))
				     collect 
				     `(* ?1 :partnum (list ,index)
					 (ccl::?if 
					  (setf (ccl::instrument (ccl::read-key ?1 :part))
						(ccl::make-instance ',instr)))))
			       NIL)))


(PWGLDef set-staff-channels ((score '()) (channel 0) &rest (channels 0))
	 "Set the MIDI channels of successive staves."
	 (:groupings '(1 1))
	 (let ((all-chans (cons channel channels)))
	   (system::enp-script score        
			       (loop for channel in all-chans
				     for index in (pw::arithm-ser 1 1 (length all-chans))
				     collect 
				     `(* ?1  :partnum (list ,index)
					 (?if (setf (ccl::chan ?1) ,channel))))
			       NIL)))

