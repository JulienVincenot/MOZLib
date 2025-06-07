;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

;;; *************************************************************
;;; Copyright (C) 2013 Torsten Anders (torsten.anders@beds.ac.uk) 
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

;; define a user menu
(add-PWGL-user-menu 
 '(:menu-component
   ("Cluster Rules"
    (; ("generic" ())
     ("profile" (follow-timed-profile-hr
		 follow-profile-hr
		 follow-interval-profile
		 rhythm-profile-BPF-hr 
		 compose-functions)
		 ("mappings" (mp-add-offset mp-multiply mp-add-random-offset))
		 ("transformations" (trfm-scale trfm-add-BPF trfm-multiply-BPF trfm-reverse)))
     ("rhythm"  ("Cluster Engine" (cluster-engine::r-predefine-meter
				   cluster-engine::r-metric-hierarchy
				   cluster-engine::r-rhythm-hierarchy))
                (no-two-consecutive-syncopations no-syncopation only-simple-syncopations only-simple-tuplet-offs
		 start-with-rest
		 metric-offset-of-motif phrase-length
		 similar-sim-durations
		 ; accent-is-longer-than-predecessor
		 metric-accents
		 accents-in-other-voice)
                 ("accent rules" (mk-accent-has-at-least-duration-ar
				  mk-accent->-prep-AND->=-dur-ar
				  mk-accent->-prep-OR->=-dur-ar)))
     ("melody"  ("Cluster Engine" (cluster-engine::r-mel-interval-one-voice))
                (min/max-interval set-pitches set-intervals prefer-interval-hr accumulative-interval
		 no-direct-repetition no-repetition 
		 restrict-consecutive-directions resolve-skips
		 durations-control-intervals
		 ))
     ("harmony"  ("Cluster Engine" (cluster-engine::r-chords))
                 (only-scale-PCs only-chord-PCs long-notes-chord-PCs chord-tone-before/after-rest
		  chord-PC-at-1st-tone-HACK stepwise-non-chord-tone-resolution chord-tone-follows-non-chord-tone
		  unequal-sim-PCs number-of-sim-PCs set-harmonic-intervals min/max-harmonic-interval
		  tintinnabuli-M-voice tintinnabuli-T-voice))
     ("counterpoint" ("Cluster Engine" (cluster-engine::r-canon))
                     (no-voice-crossing no-parallels))
     ("score" (voice->start-times voice->durations voice->pitches
	       set-staff-clefs
	       set-staff-instruments
	       set-staff-channels))
     ("utilities"  (scale->pitchdomain
		    file-in-this-directory read-lisp-file read-harmony-file 
		    output-filename
		    export-enp))
     ))))

