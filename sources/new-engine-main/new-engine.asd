;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Constraint engine developed with the support from a UM/SSHRC 
;;; Explore Grant at the University of Manitoba
;;;
;;; Copyright Örjan Sandred and Julien Vincenot 2022
;;;
;;;


;;;; Implemented features: rules, heuristic rules, backjumping, search space can be randomized

;Note that all lists and vectors start to count from 0

;Version 2.0 (July 2, 2022)
;This version implemented backjumping. The engine buckjumps if a rule failed ALL candidates 
;(and this rule proposes to buckjump). The longest buckjump that fails all candidates will be 
;picked. If a rule only fails a few of the candidates, it will be given low priority in how 
;to backtrack (i.e. if a step is proposed, it will be picked). Note that it is possible this 
;engine will miss a solution because of this structure, however it is in general a faster method 
;to find a solution.

;Version 3.0 (July 7, 2022)
;This version implemented a more efficient way to check the rules: the engine stops 
;checking the rules immediately when a fail is detected. It cuts the number of loops 
;for testing the rules but with limited information on backtracking suggestions, it 
;backjumps less than version 2.

;version 3.1 (July 9, 2022)
;This engine combines version 2 and 3, and switches between them with a mode setting :
;Mode 1: No backjumping, using version 3
;Mode 2: backjumping version 2. This also affects how the rules are checked - 
;        all rules need to be checked for a candidate to make a conclusion on backjumping
;Mode 3: backjumping version 3. In this version, the engine stops checking the rules immediately 
;        when a fail is detected. It cuts the number of loops for testing the rules but
;        with limited information on backtracking suggestions, it backjumps less than
;        mode 2. Mode 3 is slightly "safer" than mode 2 since it will probably miss less
;        potential solutions.
;
;version 3.11 (July 10, 2022)
;Added the rnd? argument to the engine to select the initial state of the domains.

;version 3.12 (August 24, 2022)
;Backjumping improved: the test-rule function now suggests backtrack routes
;even when there is no candidate left in a domain and rules are not checked.
;This is done by checking all proposed rules from all active rules for the candidate.
;(the earlier version always suggested backstep for this scenario).
;This seems to make the engine more reliable and gives less false no_solution.

;version 3.13 (January 13,2023)
;Backjumping Mode 3 changed: backjumping is now dependent on all rules for a candidate, 
;not just the one that were failed.

;version 3.14 (January 13,2023)
;Backtracking modes are changed - the old mode 2 is removed, and the old mode 3 is now called mode 2.
;It works identically to previous mode 3, but the code is more efficient.
;
;Mode 1: No backjumping, only steps
;Mode 2: Backjumping. In this version, the engine stops checking the rules immediately 
;        when a fail is detected. The size of the backjumping will be determined using the  
;        information from the rules tested on the candidate that failed. The minimum  
;        backtracking step/jump will be used.

;version 3.15 (January 18, 2023)
;The state of the engine can now be saved to a text file (named state.txt) and used as a starting point for a new search.
;There is a new argument for the engine function: read-write-engine-state?. It has four modes:
;
;Mode 0: off, the state is not saved nore read
;Mode 1: The state of the engine is saved to a text file when the engine stops 
;   (i.e. when a solution is found or when no solution can be found)
;Mode 2: The state of the engine is read from the previously stored file and used as the starting point 
;        for the search. IMPORTANT: the index stored in the text file will be the starting point for the 
;        new search.
;Mode 3: The engine stops at each index and saves the state. When the engine is restarted,
;        it steps one step further. The engine can do this over and over until it reaches 
;        the total number of variables (from this point it will not expand the search further, 
;        just return the final solution. NOTE that the text file has to previously exist for this mode to run,
;        and that the index in the saved state file has to be set to 0.

;version 3.16 (January 22, 2023)
;There is a fourth mode for how to continue an interrupted search:
;
;Mode 4: Starts the search from the state in the stored file, but doesn't allow the previous solution 
;        (this is done by incrementing the state by 1). This state will automatically store the index as 0  
;        to allow for iterative searches until all solutions are found. Note that if no backjumping is selected,
;        all solutions will be found. Backjumping mode 3 has a higher chance to find all solutions than mode 2.
;
;A new backtracking mode was added:
;Mode 1: No backjumping, only steps
;Mode 2: Backjumping. In this version, the engine stops checking the rules immediately 
;        when a fail is detected. The size of the backjumping will be determined using the  
;        information from ALL rules tested on the variable that failed.   
;        The minimum backtracking step/jump will be used. This mode will not allow backjumping
;        to the first variable. In this case the engine will step back instead.
;Mode 3: Backjumping. In this version, backjumping will only occur if all failed rules agree
;        on where to backjump. This mode will not allow backjumping to the first variable. 
;        In this case the engine will step back instead.

;Version 4.0 (January 29)
;A new array stores the solution in 2 dimensions - one as absolute pitches, timepoints, or some other numerical data, 
;the other as intervals, durations or differences between numbers. 
;
;A domain is a set of absolute values or distances (never mixed).
;It is also possible to work with general values, that can be anything (symbols, objects, whatever).
;If a numerical format is used, the engine will store the result in both formats and the rules can access a mix of both data formats.
;A variable x can be accessed as an absolute time point or pitch (a x), or an interval/duration (i x) or (d x). 
;A general data can be accessed as (b x).

;Version 4.01 (Feb 14, 2023)
;Adjusted the output to better correspond to index numbers.
;If absolute pitch values are used, the first melodic interval (at index 0) has no meaning: it will be calculated from pitch 0.
;In this case, rules for melodic intervals should start from index 1.
;When the domain contains relative values (intervals/durations), the absolute starting point (pitch or time point 0)
;will not be included in the result.

;Version 4.02 (Feb 14, 2023)
;When using a pitch domain, the first melodic interval will be set to zero. This is just the default value
;before an interval exists (it will thus not be calculated from pitch 0, as in version 4.01).


;Version 4.03 (May 31, 2023)
;
;Bugfix for mode 2 - reading the state from a file and continue the search from where it ended: the previous solution was not 
;read properly (it stoped wotking after verseion 3.15).
;
;There is a fifth mode for how to continue an interrupted search that combines mode 1 and 2:
;
;Mode 5: The state of the engine is read from the previously stored file and used as the starting point 
;        for the search (= mode 2). The state of the engine is saved to the file when the engine stops (= mode 1).
;
;Fixed type declaration bug for search index in heuristic rules.

;Version 4.04 (June 1, 2023)
;
;Heuristic rules now access the canidates identical to strict rules (either absolute values or distances).
;This was achieved by changing the function check-all-heur-rules-on-one-candidate 
;
;There is a sixth mode for how to continue a search
;Mode 6: The state of the engine is read from the previously stored file and used as the starting point 
;        for the search (= mode 2). The state at the last 10 indexes of the engine is saved to the file when the engine stops.
;        If repeating the search with this mode, the effect is that the previous ending will be the next beginning, creating 
;        a chain between solutions (however the full solution will not be kept)
;
;Fixed the issue that when a state;txt file was not found, it used to create a crash. Now it will indicate that it will 
;instead search for a new solution from scratch.
;
;Version 4.05 (June 1, 2023)
; bugfix in check-all-heur-rules-on-one-candidate (a domain with symbols created thsi function to crash)
; bugfix - candidates where previously not correctly accessed in the RL rule
;Documentation in teg "Notes.rtf" file are updated



(in-package :asdf)

;; you might want to put this somewhere else:
;; (:optimize ((debug 3) (speed 3) (safety 1)))

;; e.g. 
;; (declaim (optimize ((debug 3) (speed 3) (safety 1))))
;; at the top of each file after in-package


(defsystem new-engine
  :version "4.05"
  :author "Main author: Orjan Sandred <Orjan.Sandred@umanitoba.ca>; Contributions: Julien Vincenot <julien.vincenot@gmail.com>"
  :licence "Simplified BSD License"
  :description "This is not an official release - use this at your own risk.

This system is experimental: Any found solution is always valid, however in some cases the system might not be able to find a solution even if there is one. Typically it is  enough to try again to find a valid solution. 


Copyright (c) 2022, Orjan Sandred
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
   
   (:file "sources/Kilian-backtracking") ;;; perhaps not useful to expose

   ;(:file "sources/engine_v0.1_June15-2022")      
   ;(:file "sources/engine_v1.0_June15-2022")
   ;(:file "sources/engine_v2.0_July2-2022")  ;; adds heuristic
   ;(:file "sources/engine_v3.0_July7-2022")  ;; optimization backjump
   ;(:file "sources/engine_v3.0_July9-2022")  ;; CLEAN-UP TO STUDY
   ;(:file "sources/engine_v3.1_July10-2022") ;; added menus mode & rnd?
   ;(:file "sources/engine_v3.12_Aug24-2022")
   ;(:file "sources/engine_v3.13_Jan13-2023")
   ;(:file "sources/engine_v3.14_Jan13-2023") ;; mode 1 & 2 only
   ;(:file "sources/engine_v3.15_Jan19-2023")
   ;(:file "sources/engine_v3.16_Jan22-2023")
   ;(:file "sources/engine_v4.0_Jan26-2023")
   ;(:file "sources/engine_v4.01_Feb14-2023")
   ;(:file "sources/engine_v4.02_Feb14-2023")
   ;(:file "sources/engine_v4.03_May31-2023")
   ;(:file "sources/engine_v4.04_June1-2023")

   (:file "sources/engine_v4.05_June1-2023") ;;; last version

  ))
