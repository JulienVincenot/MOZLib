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

; (require :ta-utilities)
; (require :tot)
; (asdf:load-system :tot)
(require :cluster-rules)

(in-package :om) ;; Opusmodus package (not OpenMusic)

#| ; would cause conflicts
(use-package :cluster-engine)
(use-package :cluster-rules)
|#



;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Testing cluster-rules 
;;;

;;;
;;; rhythmic rules
;;;

;; minimal demo example
(preview-cluster-engine-score
 (cr:cluster-engine
  20 
  ;; rules
  (ce::rules->cluster (cr::no-syncopation :metric-structure :beats)
                      (cr::no-repetition))
  '((3 4)) 
  '(((1/4) (1/8))
    ((60) (61)))))


;;; BUG: metric domain of multiple values seemingly always results in static meter
(preview-cluster-engine-score
 (cr:cluster-engine 
  20 
  () ; no rules
  '((3 4) (2 4)) 
  '(((1/4) (1/8))
    ((60))))
 )


;;;
;;; Profile test
;;;

;; cr:follow-profile-hr

(setf my-melody '((q c4 cs4 stacc fs4 -q) 
                  (e f4 b4 tr2 c4 -h e g4) 
                  (q d4 e4 f4 g4) 
                  (h a4 -h)))

;; OK: follow pitch sequence of input melody results in same melody
;; ... though solution is repeating melody
(preview-cluster-engine-score
 (cr:cluster-engine 
  (count-notes my-melody)
  ;; rules
  (ce::rules->cluster 
   (cr:follow-profile-hr my-melody :voices 0 :mode :pitch))
  '((4 4)) 
  `((,(flatten (omn :length my-melody))) ; set rhythm as rhythmic motif
    ,(mclist (gen-integer 60 84))))
 )


;; OK: test args :n and :start 
(preview-cluster-engine-score
 (cr:cluster-engine 
  20 
  ;; rules
  (ce::rules->cluster 
   (cr:follow-profile-hr my-melody :voices 0 :mode :pitch :n 4 :start 1)
   )
  '((4 4)) 
  `((,(flatten (omn :length my-melody)))
    ,(mclist (gen-integer 60 84))))
 )


;;; BUG: rhythm profile not working
(preview-cluster-engine-score
 (cr:cluster-engine 
  20 
  ;; rules
  (ce::rules->cluster 
   (cr:follow-profile-hr my-melody :mode :rhythm)
   )
  '((4 4)) 
  '(((1/2) (1/4) (1/8) (-1/2) (-1/4) (-1/8))
    ((60))))
 )



;; whole-tone ascending scale
(setf my-profile '(q c4 d4 e4 fs4 gs4 as4 c5 d5))

;; OK: using :constrain :intervals 
(preview-cluster-engine-score
 (cr:cluster-engine 
  20 
  ;; rules
  (ce::rules->cluster 
   (cr:follow-profile-hr my-profile :voices 0 :mode :pitch :constrain :intervals)
   )
  '((4 4)) 
  `((,(flatten (omn :length my-profile)))
    ,(mclist (gen-integer 60 84))))
 )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; More complex example harmonically transforming a melody (OMN expression) -- ported from Cinderella harmony patch
;;;

;; Input melody to revise -- replace with whatever melody
(setf galliard-mel 
      '((q e5 f slap+stacc -h q eb5 slap+stacc -h) 
        (q cs5 f slap+stacc eb5 mp ord f5) (q. g5 e gs5 q c6) (h bb5 q a5) (q fs5 - e d5 cs5) (h a5 q b5) (q. cs5 e bb5 q d6) (q cs6 d6 g5) (h e5 q cs6) (q g5 f slap+stacc a5 mp ord bb5) (q. c6 e cs6 q c6) (e b5 a5 q f5 e5) (h b5 q c6) (q eb5 f slap+stacc -e b5 mp ord d6 cs6) (q. eb6 e b5 q e5) (q gs5 d6 b5) (h gs5 q fs5)))

(setf galliard-harmonies
      '((h. c4eb4g4a4)
        (w. c4eb4g4a4)        
        (w. f4g4a4c4) (w. cs4f4g4b4) (w. b4eb4g4a4) (w. f4a4c4eb4) (w. eb4g4b4cs4) (w. a4cs4eb4g4) (w. cs4f4g4c4) (h. g4b4cs4f4)))

(setf galliard-harmonic-rhythm
      (flatten (omn :length galliard-harmonies)))

;; test
(preview-score  
 (list :flt galliard-mel
       :harm galliard-harmonies))

;; ... solution is repeating melody
(preview-cluster-engine-score
 (let ((time-sigs (PWGL-time-signatures 
                   (get-time-signature galliard-harmonies))))
   (cr:cluster-engine 
    (count-notes galliard-mel)
    ;; rules
    (let ((mel-voice 2))
    (ce::rules->cluster 
     (cr:follow-profile-hr 
      galliard-mel :voices mel-voice :mode :pitch :constrain :profile)
     (cr:follow-profile-hr 
      galliard-mel :voices mel-voice :mode :pitch :constrain :intervals)
     (ce:r-predefine-meter time-sigs)
     ;; more rules
     (cr:only-scale-pcs :voices mel-voice :input-mode :all 
                        :scale-voice 0)
     (cr:only-chord-pcs :voices mel-voice :input-mode :beat ; :1st-beat
                        :chord-voice 1) 
     (cr:long-notes-chord-pcs :voices mel-voice :max-nonharmonic-dur 1/4)
     (cr:stepwise-non-chord-tone-resolution
      :voices mel-voice :input-mode :all :step-size 3)
     (cr:chord-tone-before/after-rest :voices mel-voice :input-mode :all)
     (cr:chord-tone-follows-non-chord-tone :voices mel-voice :input-mode :all)
     (cr:no-repetition :voices mel-voice :window 3)
     (cr:resolve-skips :voices mel-voice :resolution-size 4)
     ))
    ;; meter domain
    (remove-duplicates time-sigs :test #'equal) 
    ;; voice domains
    `(
      ; scale rhythm
      (,(length-merge galliard-harmonic-rhythm))
      ; scale pitches
      (,(pitch-to-midi '((c4 cs4 ds4 f4 g4 a4 b4))))
      ; harmonic rhythm for chords 
      (,galliard-harmonic-rhythm)
      ; harmony: chords
      (,(pitch-to-midi
         (flatten (omn :pitch galliard-harmonies))))
      ; voice rhythm (input rhythm as motif) 
      (,(flatten (omn :length galliard-mel))) 
      ,(mclist (gen-integer 60 84))
      ))
   ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Refactoring of example above, this time with a function
;;;

(setf galliard-mel 
      '((q e5 f slap+stacc -h q eb5 slap+stacc -h) 
        (q cs5 f slap+stacc eb5 mp ord f5) (q. g5 e gs5 q c6) (h bb5 q a5) (q fs5 - e d5 cs5) (h a5 q b5) (q. cs5 e bb5 q d6) (q cs6 d6 g5) (h e5 q cs6) (q g5 f slap+stacc a5 mp ord bb5) (q. c6 e cs6 q c6) (e b5 a5 q f5 e5) (h b5 q c6) (q eb5 f slap+stacc -e b5 mp ord d6 cs6) (q. eb6 e b5 q e5) (q gs5 d6 b5) (h gs5 q fs5)))

(setf galliard-harmonies
      '((h. c4eb4g4a4)
        (w. c4eb4g4a4)        
        (w. f4g4a4c4) (w. cs4f4g4b4) (w. b4eb4g4a4) (w. f4a4c4eb4) (w. eb4g4b4cs4) (w. a4cs4eb4g4) (w. cs4f4g4c4) (h. g4b4cs4f4)))

(setf galliard-scales
      (omn-replace :pitch (gen-repeat (length galliard-harmonies)
                                      (chordize '(c4 cs4 ds4 f4 g4 a4 b4)))
                   (omn :length galliard-harmonies)))

(defun harmonise-melody (scales harmonies melody)
  "[CSP] Revises pitches of melody so that it fits into underlying harmony. Returns cluster-engine score encoding with underlying scale as first part, underlying harmony as second part, and revised melody as third part. 
  
  :scales: underlying scales as nested OMN expression, expressing both the underlying scale pitches and their rhythm
  :harmonies: harmonies as nested OMN expression, expressing both the underlying chords and the harmonic rhythm
  :melody: melody to harmonically revise as nested OMN expression

  In the current definition, the pitches of the scales and harmonies are untouched in the CSP, i.e., conflicts between thme are not resolved. 
  "
 (let ((time-sigs (PWGL-time-signatures 
                   (get-time-signature melody)))
       (scale-rhythm (flatten (omn :length scales)))
       (harmonic-rhythm (flatten (omn :length harmonies))))
   (cr:cluster-engine 
    (count-notes melody)
    ;; rules
    (let ((mel-voice 2))
    (ce::rules->cluster 
     (cr:follow-profile-hr 
      melody :voices mel-voice :mode :pitch :constrain :profile)
     (cr:follow-profile-hr 
      melody :voices mel-voice :mode :pitch :constrain :intervals)
     (ce:r-predefine-meter time-sigs)
     ;; more rules
     (cr:only-scale-pcs :voices mel-voice :input-mode :all 
                        :scale-voice 0)
     (cr:only-chord-pcs :voices mel-voice :input-mode :beat ; :1st-beat
                        :chord-voice 1) 
     (cr:long-notes-chord-pcs :voices mel-voice :max-nonharmonic-dur 1/4)
     (cr:stepwise-non-chord-tone-resolution
      :voices mel-voice :input-mode :all :step-size 3)
     (cr:chord-tone-before/after-rest :voices mel-voice :input-mode :all)
     (cr:chord-tone-follows-non-chord-tone :voices mel-voice :input-mode :all)
     (cr:no-repetition :voices mel-voice :window 3)
     (cr:resolve-skips :voices mel-voice :resolution-size 4)
     ))
    ;; meter domain
    (remove-duplicates time-sigs :test #'equal) 
    ;; voice domains
    `(
      ; scale rhythm
      (,scale-rhythm)
      ; scale pitches
      (,(pitch-to-midi (flatten (omn :pitch scales))))
      ; harmonic rhythm for chords 
      (,harmonic-rhythm)
      ; harmony: chordsles 
      (,(pitch-to-midi (flatten (omn :pitch harmonies))))
      ; melody rhythm (input rhythm as motif) 
      (,(flatten (omn :length melody))) 
      ; melody pitch domain
      ,(mclist (apply #'gen-integer (pitch-to-midi (find-ambitus melody :type :pitch))))
      ))
   ))


(preview-cluster-engine-score
 (harmonise-melody galliard-scales galliard-harmonies galliard-mel))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Refactoring of example above: allow for multiple polyphonic parts to be revised 
;;;
;;; See also function revise-score-harmonically in tot/sources/constraints.lisp
;;;


(defun harmonise-parts (scales harmonies &rest parts)
  "[CSP] Revises pitches of given parts so that they fit into the given harmony. Returns cluster-engine score encoding with underlying scale as first part, underlying harmony as second part, and all actual parts following that. 
  
  :scales: underlying scales as nested OMN expression, expressing both the underlying scale pitches and their rhythm
  :harmonies: harmonies as nested OMN expression, expressing both the underlying chords and the harmonic rhythm
  :parts: parts to harmonically revise as nested OMN expression. Note the maximum number of parts is limited by Cluster Engine (to 8 at most?)

  In the current definition, the pitches of the scales and harmonies are untouched in the CSP, i.e., conflicts between them are not resolved. 

  NOTE: Number of notes generated (and resulting meter) takes only first part into account.
  "
 (let ((time-sigs (PWGL-time-signatures 
                   (get-time-signature (first parts))))
       (scale-rhythm (flatten (omn :length scales)))
       (harmonic-rhythm (flatten (omn :length harmonies))))
   (cr:cluster-engine  
    (count-notes (first parts))
    ;; all rules
    (ce::rules->cluster 
     (mappend #'(lambda (part-n-pos)
                  (let ((part (first part-n-pos))
                        (part-pos (second part-n-pos)))
                    (ce::rules->cluster
                     ;; profile rules
                     (cr:follow-profile-hr 
                      part :voices part-pos :mode :pitch :constrain :profile)
                     (cr:follow-profile-hr 
                      part :voices part-pos :mode :pitch :constrain :intervals)
                     ;; more rules
                     (cr:only-scale-pcs :voices part-pos :input-mode :all 
                                        :scale-voice 0)
                     (cr:only-chord-pcs :voices part-pos :input-mode :beat ; :1st-beat
                                        :chord-voice 1) 
                     (cr:long-notes-chord-pcs :voices part-pos :max-nonharmonic-dur 1/4)
                     (cr:stepwise-non-chord-tone-resolution
                      :voices part-pos :input-mode :all :step-size 3)
                     (cr:chord-tone-before/after-rest :voices part-pos :input-mode :all)
                     (cr:chord-tone-follows-non-chord-tone :voices part-pos :input-mode :all)
                     (cr:no-repetition :voices part-pos :window 3)
                     (cr:resolve-skips :voices part-pos :resolution-size 4)                  
                    )))
              (tu:mat-trans 
               (list parts
                     (gen-integer 2 (1+ (length parts))) ; part positions in score
                     )))
     (ce:r-predefine-meter time-sigs))
    ;; meter domain
    (remove-duplicates time-sigs :test #'equal)
    ;; other domains
    `(
      ; scale rhythm 
      (,scale-rhythm)
      ; scale pitches
      (,(pitch-to-midi (flatten (omn :pitch scales))))
      ; harmonic rhythm for chords 
      (,harmonic-rhythm)
      ; harmony: chordsles 
      (,(pitch-to-midi (flatten (omn :pitch harmonies))))
      ;; actual parts' domains
      ,@(mappend #'(lambda (part)
                    `(
                      ; part's rhythm (input rhythm as motif) 
                      (,(flatten (omn :length part)))
                      ; part's pitch domain
                      ,(mclist (apply #'gen-integer (pitch-to-midi (find-ambitus part :type :pitch)))))
                    )
                parts)
      ))))


(preview-cluster-engine-score
 (harmonise-parts galliard-scales galliard-harmonies galliard-mel))

(preview-cluster-engine-score
 (harmonise-parts galliard-scales galliard-harmonies galliard-mel (cons '(-h) galliard-mel)))



