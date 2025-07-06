;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ClusterEngine Library
;;; Copyright (c) 2017, Orjan Sandred.  All rights reserved.
;;;
;;; This is an experimental library, and a work in progress
;;;
;;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS' AND ANY EXPRESSED
;;; OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
;;; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;;; DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
;;; GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
;;; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

;;; version 0.1 (Uppsala April 14, 2010)
;;; version 0.12 (Winnipeg April 3, 2011)
;;; version 0.13 (Winnipeg May 30, 2011)
;;; version 0.14 
;;;    bugfix: r-duration-meter and  hr-duration-meter (the incl-rests, normal setting)
;;;    changed behaviour of r-rhythm-rhythm
;;;    new box: r-meter-note (replaces r-meter-duration)
;;;    r-duration-meter now also can check the time signature
;;; version 0.141 (Paris July 4, 2011)
;;;    bugfix: get-rhythm-motifs-from-index-to-current-index-nth (affected r-rhythms-one-voice)
;;;    added: test-seq-follows-markov-chain?, test-seq-follows-energy-profile?
;;;     r-time-signatures, r-index-time-signatures, hr-time-signatures, hr-index-time-signatures, 
;;;     r-only-m-motifs
;;;    new box: r-note-meter (replaces r-duration-meter)
;;; version 0.142 (Uppsala July 16, 2011)
;;;    r-meter-note has two new input-modes: offset-motif and offset-motif-meter (also works for heuristic rule-types, but not in the list input mode) 
;;; version 0.143 
;;;    r-meter-note has two new input-modes: offset-dur-meter and offset-dur-pitch-meter (also works for heuristic rule-types, but not in the list input mode) 
;;; version 0.15 (Uppsala July 7, 2012)
;;;    added: r-list-all-events, hr-list-all-events, r-pitch-pitch, hr-pitch-pitch, r-chords, r-mel-interval-one-voice
;;;    removed r-pitch-pitch-all, r-pitch-pitch-on-beats, r-pitch-pitch-on-1st-beats
;;;    bugfix: global variable *bktr-rr2v* not correctly initiated, renamed *bktr-dm2v* and *bktr-md2v* to *bktr-dm1v* and *bktr-md1v* to better reflect what they are
;;; version 0.151 (Saline Royale July 12, 2012)
;;;    added: r-rhythms-one-voice-at-timepoints, first-n
;;; version 0.152 (Saline Royale July 14, 2012)
;;;    added: stop-rule-time, r-predefine-meter
;;;    improved r-rhythms-one-voice-at-timepoints
;;; version 0.153 (Uppsala Aug 2012)
;;;    bugfix: count-notes-last-cell-at-current-index-nth (did not work if notes are chords in a voice) - this affected r-rhythm-pitch-one-voice in the heuristic-switch settmode
;;;            first-n (n can now be longer than the list length)
;;; version 0.154 (Paris July 2013)
;;;    added: r-pitch-pitch can now access the duration of a pitch and offsets for events' onsets. r-rhythm-pitch-one-voice can now access absolute onset time.
;;;           metric-domain can now handle a list of lternative beat lengths (i.e. it allows any beat distribution).
;;;    minor fix: removed unnecessary error message at r-pitches-one-voice in the :all setting.
;;; version 0.1541 (Saline Royal July 2013)       
;;;    added: hr-rhythm-pitch-one-voice can now access absolute onset time.  
;;; version 0.1542 (Saline Royal July 2013)       
;;;    added: r-pitch-pitch can now access can now access absolute onset time. The global variable *vindex* was added to mirror the index in the engine.
;;;    improved the stop-time-rule - it can now handle AND and OR.
;;; version 0.1543 (Paris/Uppsala July 2013)     
;;;    added: stop-rule-index, get-index-during-search (not in menu - use with care!!)
;;;    improved: r-rhythms-one-voice and hr-rhythms-one-voice (it can now access the start time of durations or motifs)
;;;              r-pitches-one-voice and r-pitches-one-voice (it can now access the position of pitches or motifs, or the index of motifs)
;;; version 0.155 (St Sauveur December 31 2014)
;;;    The domain can now include chords defined as interval relations. The FIRST pitch in teh definition will be considered having an intervalic relation to preceedingand following pitch.
;;;    Ex. The chords '(0 3 4) and '(2 3 4) are both minor triads, but the first starts at the same pitch as the previous event, while the second example starts a major second higher.
;;;
;;;    Since 2017 released via GitHub (https://github.com/tanders/cluster-engine) with a version git history since then
;;;
;;; Winnipeg May 2020: added heuristic versions of rules for r-note-meter, r-meter-note, r-rhythm-rhythm
;;;    Missing: PWGL interface adaption for these rules
;;; Winnipeg June 2020: added a range setting for r-rhythm-hierachy-range (new)
;;;
;;; version 0.159 (Winnipeg October 20 2022)
;;;   Fixed 2 bugs in r-note-meter: the format offs setting (list declared for a number, which caused the search to generate 
;;;   an error message) and the d-offs-m-n setting (chords were not accepted). The bugs were in the 
;;;   rule-2-engines-events-offset-to-metric-structure-include-rests function and the get-pitches-at-notecounts (it did not accept chords).
;;;version 0.16 (Winnipeg October 20 2022)
;;;   Fixed a bug in r-meter-note: the format setting offset_duration_pitch (chords  created error messages) and the offset_duration_meter 
;;;   (timesignatures created error messages). The bugs were in 
;;;   rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration and
;;;   rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-and-meter
;;;  
;;;   Fixed the above bugs (v.0.159 andf 0.16) for heuristic and heuristic switch rules as well
;;;
;;; version 0.161 (Winnipeg October 24 2022)
;;;   Fixed a but in r-rhythm-pitch-one-voice: the rule input setting include-rests created errors in the jeuristic and switch heuristic settings (an old function that does not exist anymore was called)
;;;
;;; version 0.162 (Winnipeg March 12 2023)
;;;   Fixed a but in r-pitch-pitch: Grace notes caused a crash with the p_d_offs setting (type error in file 5g)


(in-package :asdf)

;; you might want to put this somewhere else:
;; (:optimize ((debug 3) (speed 3) (safety 1)))

;; e.g. 
;; (declaim (optimize ((debug 3) (speed 3) (safety 1))))
;; at the top of each file after in-package


(defsystem cluster-engine
  :version "0.162"
  :author "Main author: Orjan Sandred <Orjan.Sandred@umanitoba.ca>; Contributions: Julien Vincenot <julien.vincenot@gmail.com>, Torsten Anders <torstenanders@gmx.de>"
  :licence "Simplified BSD License"
  :description "This is not an official release - use this at your own risk.

This library provides a constraint system that uses several search engines that run in parallel to solve a musical constraint problem. Any number of engines can run in parallel (however the interface limits the user to maximum 21 engines). Variables in different engines can be constrained, and the engines can trigger backtracking in dependant engines to find a solution. 

This system is experimental: Any found solution is always valid, however in some cases the system might not be able to find a solution even if there is one. Typically it is  enough to try again to find a valid solution. 


Copyright (c) 2013, Orjan Sandred
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
  #+PWGL :default-component-class #+PWGL ccl::pwgl-source-file
  :serial t
  :components
  (

   (:file "sources/package")

   (:file "sources/from-studio-flat")
   (:file "sources/12.debug-tools")
   ;; (:file "sources/000.box-ptr-for-orjan") ; likely obsolete 
   
   (:file "sources/01.domain")
   (:file "sources/02.engine")
   (:file "sources/03.Fwd-rules")
   (:file "sources/04.Backtrack-rules")
   (:file "sources/05.rules-interface")
   (:file "sources/05a.rules-interface-1engine")
   (:file "sources/05b.rules-interface-2engines") ;pitch and rhythm
   (:file "sources/05c.rules-interface-2engines") ;rhythm and rhythm
   (:file "sources/05d.rules-interface-2engines") ;hierarchy and metric rules
   (:file "sources/05d-2.rules-interface-2engines") ;added range to the rhythm hierarchy rule
   (:file "sources/05e.rules-interface-2engines") ;metric rules and duration
   (:file "sources/05f.rules-interface-3engines") ;meter note
   (:file "sources/05g.rules-interface-any-n-engines") ;flexible number of layers, r-pitch-pitch
   (:file "sources/05h.rules-higher-level") ;"ready made" rules
   (:file "sources/05i.rules-stop-search")
   (:file "sources/05n.rules-interface-nn-engines")
   (:file "sources/05o.new-canon-rule")
   (:file "sources/06.heuristic-rules-interface")
   (:file "sources/06a.heuristic-rules-interface-1engine")
   (:file "sources/06b.heuristic-rules-interface-2engines")
   (:file "sources/06c.heuristic-rules-interface-2engines")
   (:file "sources/06d.heuristic-rules-interface-2engines")
   (:file "sources/06e.heuristic-rules-interface-2engines")
   (:file "sources/06f.heuristic-rules-interface-3engines")
   (:file "sources/06g.heuristic-rules-interface-any-n-engines")
   (:file "sources/06h.heuristic-rules-interface-added2020")
   (:file "sources/07.backjumping")
   (:file "sources/08.decode")
   (:file "sources/09.utilities")
   (:file "sources/09b.markov-tools")
   (:file "sources/09c.cluster-energy-profile")
   
   #+PWGL (:file "sources/10.PWGL-interface")
   #+PWGL (:file "sources/11.simple-tree")
   (:file "sources/13.convert-pmc-rules")
   ;; (:file "sources/14.back-compability")
   #+PWGL (:file "sources/00.menu")
   ;; Files added after moving away from PWGL
   #-PWGL (:file "sources/_000.main-interface")
   ;;; TMP comment -- dependency on two PW functions
   ;; (:file "sources/_001.gen_domains")
   (:file "sources/export")

))
