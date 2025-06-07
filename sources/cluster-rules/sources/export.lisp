(in-package :cluster-rules)

(export '(;; profile
	  follow-timed-profile-hr
	  follow-profile-hr
	  follow-interval-profile
	  rhythm-profile-BPF-hr
	  compose-functions
	  ;;;; mappings
	  mp-add-offset mp-multiply mp-add-random-offset
	  ;;;; transformations
	  trfm-scale trfm-add-BPF trfm-multiply-BPF trfm-reverse
	  ;; rhythm
	  no-two-consecutive-syncopations no-syncopation only-simple-syncopations only-simple-tuplet-offs
	  start-with-rest
	  metric-offset-of-motif phrase-length
	  similar-sim-durations
					; accent-is-longer-than-predecessor
	  metric-accents
	  accents-in-other-voice
	  ;;;; accent rules
	  mk-accent-has-at-least-duration-ar mk-accent->-prep-AND->=-dur-ar mk-accent->-prep-OR->=-dur-ar
	  thomassen-accents thomassen-accents-ar
	  ;; ;;;; Cluster Engine
	  ;; cluster-engine::r-predefine-meter cluster-engine::r-metric-hierarchy cluster-engine::r-rhythm-hierarchy
	  ;; melody
	  min/max-interval set-pitches set-intervals prefer-interval-hr accumulative-interval
	  no-direct-repetition no-repetition 
	  restrict-consecutive-directions resolve-skips
	  durations-control-intervals
	  ;; ;;;; Cluster Engine
	  ;; cluster-engine::r-mel-interval-one-voice
	  ;; harmony
	  only-scale-PCs only-chord-PCs only-spectrum-pitches long-notes-chord-PCs chord-tone-before/after-rest
	  chord-PC-at-1st-tone-HACK stepwise-non-chord-tone-resolution chord-tone-follows-non-chord-tone
	  unequal-sim-PCs number-of-sim-PCs set-harmonic-intervals min/max-harmonic-interval
	  tintinnabuli-M-voice tintinnabuli-T-voice
	  set-chord-at-positions set-root-at-positions
	  limit-voice-leading-distance
	  schoenberg-progression-rule ascending-progression resolve-descending-progression
	  ;; progression-strength constant-progression? superstrong-progression? descending-progression? ascending-progression*? ascending-progression? common-pcs?
	  ;; ;;;; Cluster Engine
	  ;; cluster-engine::r-chords
	  ;; counterpoint
	  no-voice-crossing no-parallels
	  ;; ;;;; Cluster Engine
	  ;; cluster-engine::r-canon
	  #|  ; score and utilities defs not included because of ENP dependencies
	  ("score" (voice->start-times voice->durations voice->pitches
		    set-staff-clefs
		    set-staff-instruments
		    set-staff-channels))
	  ("utilities"  (scale->pitchdomain
			 file-in-this-directory read-lisp-file read-harmony-file 
			 output-filename
			 export-enp))
	  |#
          cluster-engine
          scale->pitchdomain
	  )
	:cluster-rules)
