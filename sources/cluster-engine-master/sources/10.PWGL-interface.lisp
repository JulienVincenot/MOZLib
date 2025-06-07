(in-package cluster-engine)

 

(system::PWGLDef preferences ((backjump? *backjump?*)
                              (max-nr-of-loops *max-nr-of-loops*)
                              (bktr-rp1v  10 (ccl::mk-menu-subview :menu-list '(":self" ":other")))
                              (bktr-rr2v  10 (ccl::mk-menu-subview :menu-list '(":other" ":self")))
                              (bktr-rh2v  10 (ccl::mk-menu-subview :menu-list '(":other" ":self")))
                              (bktr-rmh2v 10 (ccl::mk-menu-subview :menu-list '(":rhythm" ":meter")))
                              (bktr-dm1v  10 (ccl::mk-menu-subview :menu-list '(":rhythm" ":meter")))
                              (bktr-nm1v  10 (ccl::mk-menu-subview :menu-list '(":self" ":rhythm/pitch" ":pitch/rhythm")))
                              (bktr-md1v  10 (ccl::mk-menu-subview :menu-list '(":rhythm" ":meter")))
                              (bktr-mn1v  10 (ccl::mk-menu-subview :menu-list '(":self" ":rhythm/pitch" ":pitch/rhythm")))
                              (bktr-ppnv  10 (ccl::mk-menu-subview :menu-list '(":next-pitch" ":next-rhythm" ":current-pitch" ":current-rhythm")))
                              (bktr-leNv  10 (ccl::mk-menu-subview :menu-list '(":next" ":self"))))
                 "
By evaluating this box you may change some default settings of the 
system. The box should not be connected to other boxes. Note that you 
need to evaluate this box every time you restart PWGL or after you 
change a setting to change the preferences.

<backjump?>     Backjumping speeds up backtracking by jumping 
directly to the variable that caused a failed ruletest instead of 
step-by-step backtracking. The speed difference vary from no 
difference to a huge difference. The way backjumping is used in this 
system, it should not cause the system to miss possible solutions. It 
is strongly recommended to keep backjumping on.

<max-nr-of-loops> is the maximum search loops the engine will do before stopping. 
---

The following variables sets what engine a failed rule prefers to
backtrack. If the prefered engine cannot be backtracked, the system
will make another choice based on lower priorities. Note that if
more than one rule fails, the choice will be based on the most
frequently proposed engine to backtrack. 

The default settings can be found by opening a new preference box.

<bktr-rp1v>  r-rhyth-pitch-one-vocie
 - self (default): backtrack the engine (rhythm or pitch) where the failed variable was found.
 - other: backtrack the engine (rhythm or pitch) that is associated with the enginewhere the failed variable was found.

<bktr-rr2v> r-rhythm-rhythm
 - self: backtrack the engine (voice 1 or 2) where the failed varialbe was found.
 - other (default): backtrack the engine (voice 1 or 2) that is associated with the engine where the failed variable was found.

<bktr-rh2v> r-rhythm-hierarchy
 - self: backtrack the engine (voice 1 or 2) where the failed variable was found.
 - other (default): backtrack the engine (voice 1 or 2) that is associated with the engine where the failed variable was found.

<bktr-rmh2v> r-metric-hierarchy
 - rhythm (default): backtrack the rhythm engine
 - meter: backtrack the metric engine.

<bktr-dm1v> r-note-meter if pitch information is NOT asked for
 - rhythm (default): backtrack the rhythm engine
 - meter: backtrack the metric engine.

<bktr-nm1v> r-note-meter if pitch information is asked for
 - self (default): backtrack the engine (rhythm, pitch or meter) where the failed variable was found.
 - rhythm/pitch: backtrack the engine (rhythm or pitch) that is associated with the engine where the failed variable was found. The metric engine always prefer to backtrack the rhythm engine.
 - pitch/rhythm: backtrack the engine (rhythm or pitch) that is associated with the engine where the failed variable was found. The metric engine always prefer to backtrack the pitch engine.

<bktr-md1v> r-meter-note if pitch information is NOT asked for
 - rhythm (default): backtrack the rhythm engine
 - meter: backtrack the metric engine.

<bktr-mn1v> r-meter-note if pitch information is asked for
 - self (default): backtrack the engine (rhythm, pitch or meter) where the failed variable was found.
 - rhythm/pitch: backtrack the engine (rhythm or pitch) that is associated with the engine where the failed variable was found. The metric engine always prefer to backtrack the rhythm engine.
 - pitch/rhythm: backtrack the engine (rhythm or pitch) that is associated with the engine where the failed variable was found. The metric engine always prefer to backtrack the pitch engine.

<bktr-ppnv> r-pitch-pitch
 - next-pitch (default): backtrack the pitch engine after the engine where the failed variable was found (the order is defined by the voice input).
 - next-rhythm: backtrack the pitch engine after the engine where the failed variable was found (the order is defined by the voice input).
 - current-pitch: if the failed variable is in a pitch engine, backtrack the same engine. If it is in a rhythm engine, backtrack the associated pitch engine.
 - current-rhythm: if the failed variable is in a rhythm engine, backtrack the same engine. If it is in a pitch engine, backtrack the associated rhythm engine.

<bktr-leNv> r-list-all-events
 - next:  backtrack the engine after the engine where the failed variable was found (the order is defined by the voice input).
 - self:  backtrack the engine where the failed variable was found.

"
                 (:groupings '(1 1 1 1 1 1 1 1 1 1 1 1)  :x-proportions '((0.2)(0.2)(0.2)(0.2)(0.2)(0.2)(0.2)(0.2)(0.2)(0.2)(0.2)(0.2)) :w 0.25)
                 (setf *backjump?* backjump?)
                 (setf *max-nr-of-loops* max-nr-of-loops)
                 (if *backjump?* (print (format nil "Backjumping is on") *cluster-engine-log-output*)
                   (print (format nil "Backjumping is off") *cluster-engine-log-output*))
                 (print (format nil "Max number of search loops: ~D" *max-nr-of-loops*) *cluster-engine-log-output*)

                 (setf *bktr-rp1v* (cond ((equal bktr-rp1v :self) 1)
                                         ((equal bktr-rp1v :other) 2)))

                 (setf *bktr-rr2v* (cond ((equal bktr-rr2v :self) 1)
                                         ((equal bktr-rr2v :other) 2)))

                 (setf *bktr-rh2v* (cond ((equal bktr-rh2v :self) 1)
                                         ((equal bktr-rh2v :other) 2)))

                 (setf *bktr-rmh2v* (cond ((equal bktr-rmh2v :meter) 3)
                                          ((equal bktr-rmh2v :rhythm) 4)))

  ;it is correct that rhythm is 4 above and 3 below
                 (setf *bktr-dm1v* (cond ((equal bktr-dm1v :rhythm) 3)
                                         ((equal bktr-dm1v :meter) 4)))

                 (setf *bktr-md1v* (cond ((equal bktr-md1v :meter) 3)
                                         ((equal bktr-md1v :rhythm) 4)))


                 (setf *bktr-mn1v* (cond ((equal bktr-mn1v :self) 1)
                                         ((equal bktr-mn1v :rhythm/pitch) 2)
                                         ((equal bktr-mn1v :pitch/rhythm) 3)))

                 (setf *bktr-nm1v* (cond ((equal bktr-nm1v :self) 1)
                                         ((equal bktr-nm1v :rhythm/pitch) 2)
                                         ((equal bktr-nm1v :pitch/rhythm) 3)))

                 (setf *bktr-ppNv* (cond ((equal bktr-ppnv :next-pitch) 1)
                                         ((equal bktr-ppnv :next-rhythm) 2)
                                         ((equal bktr-ppnv :current-pitch) 3)
                                         ((equal bktr-ppnv :current-rhythm) 4)))

                 (setf *bktr-leNv* (cond ((equal bktr-leNv :self) 1)
                                         ((equal bktr-leNv :next) 2)))

;*bktr-leNv*   *bktr-leNv*-A

  ;it is possible to specify a more detailed behaviour for the backtrack routes (below).
                 (setf *bktr-rp1v-A* *bktr-rp1v*)
                 (setf *bktr-rp1v-B* *bktr-rp1v*)
                 (setf *bktr-rp1v-C* *bktr-rp1v*)
                 (setf *bktr-rp1v-D* *bktr-rp1v*)
                 (setf *bktr-rp1v-E* *bktr-rp1v*)
                 (setf *bktr-rp1v-F* *bktr-rp1v*)
                 (setf *bktr-rp1v-G* *bktr-rp1v*)
                 (setf *bktr-rp1v-H* *bktr-rp1v*)
                 (setf *bktr-rp1v-I* *bktr-rp1v*)
                 (setf *bktr-rp1v-J* *bktr-rp1v*)

                 (setf *bktr-rr2v-A* *bktr-rr2v*)
                 (setf *bktr-rr2v-B* *bktr-rr2v*)
                 (setf *bktr-rr2v-C* *bktr-rr2v*)
                 (setf *bktr-rr2v-D* *bktr-rr2v*)
                 (setf *bktr-rr2v-E* *bktr-rr2v*)
                 (setf *bktr-rr2v-F* *bktr-rr2v*)
                 (setf *bktr-rr2v-G* *bktr-rr2v*)
                 (setf *bktr-rr2v-H* *bktr-rr2v*)
                 (setf *bktr-rr2v-I* *bktr-rr2v*)
                 (setf *bktr-rr2v-J* *bktr-rr2v*)
                 (setf *bktr-rr2v-K* *bktr-rr2v*)
                 (setf *bktr-rr2v-L* *bktr-rr2v*)

                 (setf *bktr-rh2v-A* *bktr-rh2v*)
                 (setf *bktr-rh2v-B* *bktr-rh2v*)
                 (setf *bktr-rh2v-C* *bktr-rh2v*)

                 (setf *bktr-ppNv-A* *bktr-ppNv*)
                 (setf *bktr-ppNv-B* *bktr-ppNv*)
                 (setf *bktr-ppNv-C* *bktr-ppNv*)
                 (setf *bktr-ppNv-D* *bktr-ppNv*)

                 (setf *bktr-leNv-A* *bktr-leNv*)
                 (setf *bktr-leNv-B* *bktr-leNv*)

                 (print-backtrack-preferences)
                 nil)




(system::PWGLDef ClusterEngine2 ((no-of-variables 10)
                                 (rnd? t)
                                 (debug? nil)
                                 (rules nil)
                                 (bktr-rule  10 (ccl::mk-menu-subview :menu-list '(":bktr-rule1" ":bktr-rule2" ":bktr-rule3")))
                                 (tempo 90)
                                 (fwd-rule 10 (ccl::mk-menu-subview :menu-list '(":fwd-indep" ":fwd-rule2" ":fwd-rule3" ":fwd-rule4" ":fwd-rule5" ":fwd-rule6" ":fwd-rule6B")))
                                 (output  10 (ccl::mk-menu-subview :menu-list '(":score-object" ":list")))
                                 (metric-domain '((4 4)))
                                 (rhythmdomain0 '((1/4)))
                                 (pitchdomain0 nil)
                                 &optional (rhythmdomain1 '((1/4))) ( pitchdomain1 nil) (rhythmdomain2 '((1/4))) (pitchdomain2 nil)
                                 (rhythmdomain3 '((1/4))) (pitchdomain3 nil) (rhythmdomain4 '((1/4))) (pitchdomain4 nil)
                                 (rhythmdomain5 '((1/4))) (pitchdomain5 nil) (rhythmdomain6 '((1/4))) (pitchdomain6 nil)
                                 (rhythmdomain7 '((1/4))) (pitchdomain7 nil) (rhythmdomain8 '((1/4))) (pitchdomain8 nil)
                                 (rhythmdomain9 '((1/4))) (pitchdomain9 nil))
                 "
Forward rules:
-fwd-indep: Forward is independant from backtracking.
This rule does not condsider how the engines backtracked when stepping 
forward in the search. 

-fwd-rule2: If the system backtracked earlier, the system will step forward 
these engines (in reverse order) before picking any other engine.
Backjumping is not taken into consideration when stepping forward (if several 
steps where backjumped, only one forward step will be forced).

-fwd-rule3: Index plays a role in forward stepping. If an engine 
backtracked, it will be forced to step forward by this rule (like 
fwd-rule2), however if the index for this engine when forwarding it is 
lower than when it was backtracked, it will not be forced to step 
forward until the system reaches the correct index. Instead the system 
will step forward according to the general priorities (below).

-fwd-rule4: Index plays a role in forward stepping. As fwd-rule3 but instead 
of leting the system use general rules if index is lower than at the moment 
of backtracking, the engine that needs to catch up will be forced to catch up.

-fwd-rule5: Count value plays a role in forward stepping. If an engine was 
backtracked, it will be forced to step forward by this rule (like fwd-rule2). 
However if the count value for this engine when forwarding it is lower than 
when it was backtracked, the general rules (see below) will determine how to 
step forward until the system reaches the correct count value for this engine.

-fwd-rule6: Rhythm and metric engines are stepped forward acording to
time points, pitch engines are stepped forward accoriding to ount value: If an 
engine was backtracked, it will be forced to step forward by this rule (like 
fwd-rule2). However if the time point/count value for this engine when forwarding 
it is lower than when it was backtracked, it will be stepped forward without 
deducting it from the backtrak route. If the point/vaule is higher than when
it was backtracked, the rule will skip and go to next step in the backtrack
history.

-fwd-rule6B: As fwd-rule6, but if the time point/count value for this engine 
when forwarding it is lower than when it was backtracked, it will be stepped
forward accoring to general rules. 


If backtracking does not play a role, the system willdecide what engine to 
forward according to these three priorities: 
1. Metric structure has to be longest.
2. Fill out pitches (for durations without pitches) in all voices - start 
with the voice with highest priority.
3. Search for rhythm in the voice that is most behind. If two or more are 
equal, the default search order determines which voice to search next.
"
                 (:groupings '(3 2 2 1 1 2)  :extension-pattern '(2) :x-proportions '((0.2 0.1 0.1)(0.1 0.3)(0.1 0.3)(0.4)(0.4)(0.2 0.2)) :w 0.5)


                 (when (not metric-domain) (setf metric-domain (create-metric-domain-vector '((4 4)) '((3 4)) '(nil))))
                 (when (typep metric-domain 'list) (setf metric-domain (create-metric-domain-vector metric-domain 
                                                                                                    (make-list (length metric-domain) :initial-element '(3 4))
                                                                                                    (make-list (length metric-domain) :initial-element nil))))
               
                 
                 (let* ((no-of-engines (- (length (ccl::pwgl-subviews ccl::%box%)) 8)) ;8 since there are 8 inputs before the domain
                        (domains (loop for n from 1 to (1- no-of-engines) 
                                       for sub-domain in (list rhythmdomain0 pitchdomain0 rhythmdomain1 pitchdomain1 rhythmdomain2 pitchdomain2 rhythmdomain3 pitchdomain3
                                                               rhythmdomain4 pitchdomain4 rhythmdomain5 pitchdomain5 rhythmdomain6 pitchdomain6 rhythmdomain7 pitchdomain7
                                                               rhythmdomain8 pitchdomain8 rhythmdomain9 pitchdomain9)
                                       collect sub-domain))
                        (no-of-voices (/ (1- no-of-engines) 2))
                        (locked-engines (analyze-domain-for-locked-engines domains metric-domain))
                        (vrules (create-rule-vector rules no-of-engines locked-engines))
                        (vheuristic-rules (create-heuristic-rule-vector rules no-of-engines locked-engines))
                        (backtrack-rule (cond ((equal bktr-rule :bktr-rule1)
                                               'backtrack-rule1)
                                              ((equal bktr-rule :bktr-rule2)
                                               'backtrack-rule2)
                                              ((equal bktr-rule :bktr-rule3)
                                               'backtrack-rule3)
                                              (t nil)))
                        (forward-rule (cond ((equal fwd-rule :fwd-indep)
                                             'fwd-rule-indep)
                                            ((equal fwd-rule :fwd-rule2)
                                             'fwd-rule2)
                                            ((equal fwd-rule :fwd-rule3)
                                             'fwd-rule3)
                                            ((equal fwd-rule :fwd-rule4)
                                             'fwd-rule4)
                                            ((equal fwd-rule :fwd-rule5)
                                             'fwd-rule5)
                                            ((equal fwd-rule :fwd-rule6)
                                             'fwd-rule6)
                                            ((equal fwd-rule :fwd-rule6B)
                                             'fwd-rule6B)
                                            (t nil))))

                   (if (equal output :list)
                       (time (poly-engine no-of-variables domains metric-domain no-of-voices locked-engines forward-rule backtrack-rule rnd? vrules vheuristic-rules debug?))
                     (poly-engine->score-with-tempo
                      (time (poly-engine no-of-variables domains metric-domain no-of-voices locked-engines forward-rule backtrack-rule rnd? vrules vheuristic-rules debug?))
                      tempo))
                   ))


;;CluterEngine is a siplified version of ClusterEngine2
(system::PWGLDef ClusterEngine ((no-of-variables 10)
                                (rnd? t)
                                (debug? nil)
                                (rules nil)
                                 
                                (tempo 90)
                                 
                                (output  10 (ccl::mk-menu-subview :menu-list '(":score-object" ":list")))
                                (metric-domain '((4 4)))
                                (rhythmdomain0 '((1/4)))
                                (pitchdomain0 nil)
                                &optional (rhythmdomain1 '((1/4))) ( pitchdomain1 nil) (rhythmdomain2 '((1/4))) (pitchdomain2 nil)
                                (rhythmdomain3 '((1/4))) (pitchdomain3 nil) (rhythmdomain4 '((1/4))) (pitchdomain4 nil)
                                (rhythmdomain5 '((1/4))) (pitchdomain5 nil) (rhythmdomain6 '((1/4))) (pitchdomain6 nil)
                                (rhythmdomain7 '((1/4))) (pitchdomain7 nil) (rhythmdomain8 '((1/4))) (pitchdomain8 nil)
                                (rhythmdomain9 '((1/4))) (pitchdomain9 nil))
                 "
The Cluster Engine - the main function.
Pitch domains cannot exist without at least one duration in the rhythm domain.
Domains with only one value will not use up any time in the search process.
"
                 (:groupings '(3 2 1 1 2)  :extension-pattern '(2) :x-proportions '((0.2 0.1 0.1)(0.2 0.2)(0.4)(0.4)(0.2 0.2)) :w 0.5)

                 (let ((bktr-rule :bktr-rule1) ;This is set in a menu in the ClusterEngine2
                       (fwd-rule :fwd-rule6B))

                   (when (not metric-domain) (setf metric-domain (create-metric-domain-vector '((4 4)) '((3 4)) '(nil))))
                   (when (typep metric-domain 'list) (setf metric-domain (create-metric-domain-vector metric-domain 
                                                                                                      (make-list (length metric-domain) :initial-element '(3 4))
                                                                                                      (make-list (length metric-domain) :initial-element nil))))
               
                 
                   (let* ((no-of-engines (- (length (ccl::pwgl-subviews ccl::%box%)) 6)) ;6 since there are 6 inputs before the domain
                          (domains (loop for n from 1 to (1- no-of-engines) 
                                         for sub-domain in (list rhythmdomain0 pitchdomain0 rhythmdomain1 pitchdomain1 rhythmdomain2 pitchdomain2 rhythmdomain3 pitchdomain3
                                                                 rhythmdomain4 pitchdomain4 rhythmdomain5 pitchdomain5 rhythmdomain6 pitchdomain6 rhythmdomain7 pitchdomain7
                                                                 rhythmdomain8 pitchdomain8 rhythmdomain9 pitchdomain9)
                                         collect sub-domain))
                          (no-of-voices (/ (1- no-of-engines) 2))

                          ;;;added july 2012 - potentially the metric engine is locked if flag is true (flag is set in r-predefine-meter)
                          (locked-engines (append (analyze-domain-for-locked-engines domains metric-domain)
                                                  (if *always-lock-meter?* 
                                                      (list (1- no-of-engines))
                                                    nil)))
                          ;;;

                          (vrules (create-rule-vector rules no-of-engines locked-engines))
                          (vheuristic-rules (create-heuristic-rule-vector rules no-of-engines locked-engines))
                          (backtrack-rule (cond ((equal bktr-rule :bktr-rule1)
                                                 'backtrack-rule1)
                                                ((equal bktr-rule :bktr-rule2)
                                                 'backtrack-rule2)
                                                ((equal bktr-rule :bktr-rule3)
                                                 'backtrack-rule3)
                                                (t nil)))
                          (forward-rule (cond ((equal fwd-rule :fwd-indep)
                                               'fwd-rule-indep)
                                              ((equal fwd-rule :fwd-rule2)
                                               'fwd-rule2)
                                              ((equal fwd-rule :fwd-rule3)
                                               'fwd-rule3)
                                              ((equal fwd-rule :fwd-rule4)
                                               'fwd-rule4)
                                              ((equal fwd-rule :fwd-rule5)
                                               'fwd-rule5)
                                              ((equal fwd-rule :fwd-rule6)
                                               'fwd-rule6)
                                              ((equal fwd-rule :fwd-rule6B)
                                               'fwd-rule6B)
                                              (t nil))))

                     (setf *always-lock-meter?* nil)  ;;;added july 2012

                     (if (equal output :list)
                         (time (poly-engine no-of-variables domains metric-domain no-of-voices locked-engines forward-rule backtrack-rule rnd? vrules vheuristic-rules debug?))
                       (poly-engine->score-with-tempo 
                              (time (poly-engine no-of-variables domains metric-domain no-of-voices locked-engines forward-rule backtrack-rule rnd? vrules vheuristic-rules debug?))
                              tempo))
                     )))



(system::PWGLdef metric-domain ((timesign1 '(4 4)) (tuplets1 '(1 2 3 4)) (alt-beatlength1 nil)
                                &optional (timesign2 nil) (tuplets2 '(1 2 3 4)) (alt-beatlength2 nil)
                                (timesign3 nil) (tuplets3 '(1 2 3 4)) (alt-beatlength3 nil)
                                (timesign4 nil) (tuplets4 '(1 2 3 4)) (alt-beatlength4 nil)
                                (timesign5 nil) (tuplets5 '(1 2 3 4)) (alt-beatlength5 nil)
                                (timesign6 nil) (tuplets6 '(1 2 3 4)) (alt-beatlength6 nil)
                                (timesign7 nil) (tuplets7 '(1 2 3 4)) (alt-beatlength7 nil)
                                (timesign8 nil) (tuplets8 '(1 2 3 4)) (alt-beatlength8 nil))
                 "This box sets the metric domain in more detail than just a list of possible time signatures.

<tuplets> is a list of allowed subdivisions of the beat. This setting only has an effect if 
using the rule r-metric-hierarchy.

<alt-beatlength> allows the user to define another beat length than the time 
signature indicates. This will affect rules that consrain events located on
beats:
    - nil:  If this input is nil, the default beat length for a time signature 
            will be used (i.e. the time signature '(4 4) will have the beat length
            1/4, the time signature '(6 8) will have the beat length 1/8, etc.
    - [a fraction]: If this input is a fraction, it will be used as the beat
            length. For example, if the time signature is '(6 8), the fraction
            3/8 will give replace the default beat length 1/8. The subdivision of 
            beats (the tuplets input) will relate to the alternative beat length.
    - [a list]:  If this input is a list, it will define an arbitrary beat
            division of the measure. For example, if the time signature is
           '(9 8), the list '(3/8 2/8 2/8 2/8) will distribute the beats
           accordingly. NOTE: the sum of the beats have to add up to the length 
           of a measure. The subdivision of beats (the tuplets input) will
           relate to the default beat length.
    "
                 (:groupings '(3) :extension-pattern '(3) :x-proportions '((0.4 0.6 0.2)(0.4 0.6 0.2)(0.4 0.6 0.2)(0.4 0.6 0.2)(0.4 0.6 0.2)(0.4 0.6 0.2)(0.4 0.6 0.2)(0.4 0.6 0.2)))

                 (create-metric-domain-vector (list timesign1 timesign2 timesign3 timesign4 timesign5 timesign6 timesign7 timesign8) 
                                              (list tuplets1 tuplets2 tuplets3 tuplets4 tuplets5 tuplets6 tuplets7 tuplets8)
                                              (list alt-beatlength1 alt-beatlength2 alt-beatlength3 alt-beatlength4 alt-beatlength5 alt-beatlength6 alt-beatlength7 alt-beatlength8)))


;;;;;
(system::PWGLDef Rules->Cluster   (&rest (rules  nil))
    "Use this box to collect all rules before inputting them to the Cluster engine.
It is possible to input the output of this box to a second Rules->Cluster box (to help
organizing your rules in groups)."  
    ()
  (remove nil (flat-rule-list rules)))

(defmethod flat-rule-list ((rules list))
  (apply 'append (loop for rule in rules
                       collect (flat-rule-list rule))))

(defmethod flat-rule-list ((rules vector))
  (list rules))

(defmethod flat-rule-list ((rules rule))
  (list rules))

(defmethod flat-rule-list ((rules heuristic-rule))
  (list rules))


;;;;;;


(system::PWGLDef R-rhythms-one-voice ((rule nil)
                                      (voices 0)
                                      (input-mode  10 (ccl::mk-menu-subview :menu-list '(":durations" ":dur/time" ":motifs" ":motif/time" ":all-durations")))
                                      &optional
                                      (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                      (weight 1))
    "<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. If there are more than one 
input to the function, they will receive consecutive durations (or 
consecutive motifs depending on the input-mode). 

<voices> is the number for the voice (starting at 0) that the rule affects. 
It is possible to give a list of several voice numbers: The rule will then 
be applied to every voice in the list (independant of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - durations: The rule will receive individual durations, one for each input.
 - dur/time: As above, but the start-time of the duration will be indicated.
             Format: '(duration start-time), Ex. '(1/4 9/4)
 - motifs: The rule will receive motifs, one (consecutive) motif for each 
           input. A motif is a collection of durations that are grouped in 
           a list. Motifs are designed in the domain and cannot be 
           redesignedby the engine. Note that a motif may be a single 
           duration (a list with one duration-ratio) if it is defined as 
           such in the domain.
 - motif/time: As the previous selection, but with the start-time of the 
               first event in the motif added. Format: '(motif start-time)
               Ex. '((1/4 -1/8) 9/8)
 - all-durations: All durations in the voice that are assigned at the time 
                the rule is checked are given as a list of duration ratios.  
                The list will thus become longer and longer during the 
                search. The rule can only have ONE input in this mode.
[Backtracking: This rule will trigger backtracking in its own engine.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
    (:groupings '(2 1)  :extension-pattern '(2) :x-proportions '((0.2 0.2)(0.4)(0.3 0.1)) :w 0.5)

  (when (typep voices 'number) (setf voices (list voices)))
  (cond ((equal rule-type :heur-switch)
         (loop for voice in voices
               collect
               (let ((engine (* 2 voice)))
                 (cond ((equal input-mode :durations)
                        (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-durations rule engine weight) engine))
                       ((equal input-mode :dur/time)
                        (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-durations-with-total-duration rule engine weight) engine))
                       ((equal input-mode :motifs)
                        (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-cells rule engine weight) engine))
                       ((equal input-mode :motif/time)
                        (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-rhythmcells-with-starttime rule engine weight) engine))
                       ((equal input-mode :all-durations)
                        (when (/= (length (function-lambda-list rule)) 1) (error "The heuristic rule R-rhythms-one-voice is in the all-mode: The rule must have ONE argument."))
                        (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-all-elements rule engine weight) engine))))))
;---
        (t
         (loop for voice in voices
               collect
               (let ((engine (* 2 voice)))
                 (cond ((equal input-mode :durations)
                        (rule-one-engine (rule-1-engine-durations rule engine) engine))
                       ((equal input-mode :dur/time)
                        (rule-one-engine (rule-1-engine-durations-with-total-duration rule engine) engine))
                       ((equal input-mode :motifs)
                        (rule-one-engine (rule-1-engine-cells rule engine) engine))
                       ((equal input-mode :motif/time)
                        (rule-one-engine (rule-1-engine-rhythmcells-with-starttime rule engine) engine))
                       ((equal input-mode :all-durations)
                        (when (/= (length (function-lambda-list rule)) 1) (error "The rule R-rhythms-one-voice is in the all-mode: The rule must have ONE argument."))
                        (rule-one-engine (rule-1-engine-all-elements rule engine) engine))))))))




;;;;;;;;;;;;;;;;;; MY-VERSION ;;;;;;;;;;;;;;;;;;;;;;;

(defun R-rhythms-one-voice (rule    ;;;; nil
                            voices  ;;;; 0
                            input-mode ;;;; '(":durations" ":dur/time" ":motifs" ":motif/time" ":all-durations")
                            &optional
                            rule-type ;;;; '(":true/false" ":heur-switch")
                            weight) ;;;; 1
    "<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. If there are more than one 
input to the function, they will receive consecutive durations (or 
consecutive motifs depending on the input-mode). 

<voices> is the number for the voice (starting at 0) that the rule affects. 
It is possible to give a list of several voice numbers: The rule will then 
be applied to every voice in the list (independant of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - durations: The rule will receive individual durations, one for each input.
 - dur/time: As above, but the start-time of the duration will be indicated.
             Format: '(duration start-time), Ex. '(1/4 9/4)
 - motifs: The rule will receive motifs, one (consecutive) motif for each 
           input. A motif is a collection of durations that are grouped in 
           a list. Motifs are designed in the domain and cannot be 
           redesignedby the engine. Note that a motif may be a single 
           duration (a list with one duration-ratio) if it is defined as 
           such in the domain.
 - motif/time: As the previous selection, but with the start-time of the 
               first event in the motif added. Format: '(motif start-time)
               Ex. '((1/4 -1/8) 9/8)
 - all-durations: All durations in the voice that are assigned at the time 
                the rule is checked are given as a list of duration ratios.  
                The list will thus become longer and longer during the 
                search. The rule can only have ONE input in this mode.
[Backtracking: This rule will trigger backtracking in its own engine.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
  ;  (:groupings '(2 1)  :extension-pattern '(2) :x-proportions '((0.2 0.2)(0.4)(0.3 0.1)) :w 0.5)

  (when (typep voices 'number) (setf voices (list voices)))
  (cond ((equal rule-type :heur-switch)
         (loop for voice in voices
               collect
               (let ((engine (* 2 voice)))
                 (cond ((equal input-mode :durations)
                        (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-durations rule engine weight) engine))
                       ((equal input-mode :dur/time)
                        (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-durations-with-total-duration rule engine weight) engine))
                       ((equal input-mode :motifs)
                        (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-cells rule engine weight) engine))
                       ((equal input-mode :motif/time)
                        (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-rhythmcells-with-starttime rule engine weight) engine))
                       ((equal input-mode :all-durations)
                        (when (/= (length (function-lambda-list rule)) 1) (error "The heuristic rule R-rhythms-one-voice is in the all-mode: The rule must have ONE argument."))
                        (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-all-elements rule engine weight) engine))))))
;---
        (t
         (loop for voice in voices
               collect
               (let ((engine (* 2 voice)))
                 (cond ((equal input-mode :durations)
                        (rule-one-engine (rule-1-engine-durations rule engine) engine))
                       ((equal input-mode :dur/time)
                        (rule-one-engine (rule-1-engine-durations-with-total-duration rule engine) engine))
                       ((equal input-mode :motifs)
                        (rule-one-engine (rule-1-engine-cells rule engine) engine))
                       ((equal input-mode :motif/time)
                        (rule-one-engine (rule-1-engine-rhythmcells-with-starttime rule engine) engine))
                       ((equal input-mode :all-durations)
                        (when (/= (length (function-lambda-list rule)) 1) (error "The rule R-rhythms-one-voice is in the all-mode: The rule must have ONE argument."))
                        (rule-one-engine (rule-1-engine-all-elements rule engine) engine))))))))



























(system::PWGLDef R-index-rhythms-one-voice ((rule nil)
                                            (positions '(0))
                                            (voices 0)
                                            (input-mode  10 (ccl::mk-menu-subview :menu-list '(":index-for-cell" ":position-for-duration")))
                                            &optional
                                            (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                            (weight 1))
                 "<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. The function should have as many 
inputs as there are positions given in the <positions> list.

<positions> is a list of positions where the logic statement is applied.
Positions are counted from 0. Every position in this list corresponds to
an input in the rule. See also input-mode below.

<voices> is the number for the voice (starting at 0) that the rule affects. 
It is possible to give a list of several voice numbers: The rule will then 
be applied to every voice in the list (independant of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - index-for-cell: The rule will receive motifs as lists of duration 
                   ratios. The positions given above refer to the index
                   number for the motifs in the solution. Each input 
                   will receive one corresponding motif.
 - position-for-duration: The rule will receive individual
                          durations, one for each given position.
                          The positions refer to the position
                          of the individual duraions in the solution.
                          Rests are included.

[Backtracking: This rule will trigger backtracking in its own engine.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate)."
                 (:groupings '(3 1) :extension-pattern '(2) :x-proportions '((0.1 0.2 0.1)(0.4)(0.3 0.1)) :w 0.5)

                 (when (typep voices 'number) (setf voices (list voices)))
                 (cond ((equal rule-type :heur-switch)
                        (loop for voice in voices
                              collect
                              (let ((engine (* 2 voice)))
                                (cond ((equal input-mode :index-for-cell)
                                       (heuristic-rule-one-engine (index-heuristic-switch-rule-1-engine-cells rule engine positions weight) engine))  
                                      ((equal input-mode :position-for-duration)
                                       (heuristic-rule-one-engine (index-heuristic-switch-rule-1-rhythmengine-nth rule engine positions weight) engine))))))
                       (t
                        (loop for voice in voices
                              collect
                              (let ((engine (* 2 voice)))
                                (cond ((equal input-mode :index-for-cell)
                                       (rule-one-engine (index-rule-1-engine-cells rule engine positions) engine))  
                                      ((equal input-mode :position-for-duration)
                                       (rule-one-engine (index-rule-1-rhythmengine-nth rule engine positions) engine))))))))




(system::PWGLDef R-pitches-one-voice ((rule nil)
                                      (voices 0)
                                      (input-mode  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":pitch/nth"":motifs" ":motif/nth" ":motif/index" ":all-pitches")))
                                      &optional
                                      (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                      (weight 1))
                 "<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. If there are more than one 
input to the function, they will receive consecutive pitches (or 
consecutive motifs depending on the input-mode). 

<voices> is the number for the voice (starting at 0) that the rule affects. 
It is possible to give a list of several voice numbers: The rule will then 
be applied to every voice in the list (independant of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - pitches: The rule will receive individual  pitches, one for each input.
 - pitch/nth: As above, but the position of the pitch is also indicated.
              Format: '(pitch nth) Ex. '(60 3).
 - motifs: The rule will receive (consecutive) motifs, one motif for each 
           input. A motif is a collection of pitches that are grouped in 
           a list. Motifs are designed in the domain and cannot be redesigned
           by the engine. Note that a motif may be a single pitch (a list 
           with one MIDI note number) if it is defined as such in the domain.
 - motif/nth: As above, but the position of the pitches is also indicated.
              Format: '((pitch-motif) (nth-list)) Ex. '((60 64) (3 4)).
 - motif/index: As motifs, but the index of the variable is also indicated.
                Format: '((pitch-motif) index) Ex. '((60 64) 2).
 - all-pitches: All pitches in the voice that are assigned at the time the  
                rule is checked are given as a list of MIDI note numbers.  
                The list will thus become longer and longer during the 
                search. The rule can only have ONE input in this mode.

[Backtracking: This rule will trigger backtracking in its own engine.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
                 (:groupings '(2 1)  :extension-pattern '(2) :x-proportions '((0.2 0.2)(0.4)(0.3 0.1)) :w 0.5)

                 (when (typep voices 'number) (setf voices (list voices)))
                 (cond ((equal rule-type :heur-switch)
                        (loop for voice in voices
                              collect
                              (let ((engine (1+ (* 2 voice))))
                                (cond ((equal input-mode :pitches)
                                       (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-pitches rule engine weight) engine))
                                      ((equal input-mode :pitch/nth)
                                       (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-pitches-with-pitchcount rule engine weight) engine))
                                      ((equal input-mode :motifs)
                                       (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-cells rule engine weight) engine))
                                      ((equal input-mode :motif/nth)
                                       (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-pitchcells-with-pitchcount rule engine weight) engine))
                                      ((equal input-mode :motif/index)
                                       (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-pitchcells-with-index rule engine weight) engine))
                                      ((equal input-mode :all-pitches)
                                       (when (/= (length (function-lambda-list rule)) 1) 
                                         (error "The heuristic rule R-pitches-one-voice is in the all-mode: The rule must have ONE argument."))
                                       (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-all-elements rule engine weight) engine))))))

                       (t
                        (loop for voice in voices
                              collect
                              (let ((engine (1+ (* 2 voice))))
                                (cond ((equal input-mode :pitches)
                                       (rule-one-engine (rule-1-engine-pitches rule engine) engine))
                                      ((equal input-mode :pitch/nth)
                                       (rule-one-engine (rule-1-engine-pitches-with-pitchcount rule engine) engine))
                                      ((equal input-mode :motifs)
                                       (rule-one-engine (rule-1-engine-cells rule engine) engine))
                                      ((equal input-mode :motif/nth)
                                       (rule-one-engine (rule-1-engine-pitchcells-with-pitchcount rule engine) engine))
                                      ((equal input-mode :motif/index)
                                       (rule-one-engine (rule-1-engine-pitchcells-with-index rule engine) engine))
                                      ((equal input-mode :all-pitches)
                                       (when (/= (length (function-lambda-list rule)) 1) 
                                         (error "The rule R-pitches-one-voice is in the all-mode: The rule must have ONE argument."))
                                       (rule-one-engine (rule-1-engine-all-elements rule engine) engine))))))
                       ))




(system::PWGLDef R-index-pitches-one-voice ((rule nil)
                                            (positions '(0))
                                            (voices 0)
                                            (input-mode  10 (ccl::mk-menu-subview :menu-list '(":index-for-cell" ":position-for-pitches")))
                                            &optional
                                            (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                            (weight 1))
                 "<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. The function should have as many 
inputs as there are positions given in the <positions> list.

<positions> is a list of positions where the logic statement is applied.
Positions are counted from 0. Every position in this list corresponds to
an input in the rule. See also input-mode below.

<voices> is the number for the voice (starting at 0) that the rule affects. 
It is possible to give a list of several voice numbers: The rule will then 
be applied to every voice in the list (independant of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - index-for-cell: The rule will receive motifs as lists of MIDI note 
                   numbers The positions given above refer to the index
                   number for the motifs in the solution. Each input 
                   will receive one corresponding motif.
 - position-for-pitches: The rule will receive individual
                          pitches, one for each given position.
                          The positions refer to the position
                          of the individual duraions in the solution.

[Backtracking: This rule will trigger backtracking in its own engine.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate)."
                 (:groupings '(3 1)  :extension-pattern '(2) :x-proportions '((0.1 0.2 0.1)(0.4)(0.3 0.1)) :w 0.5)

                 (when (typep voices 'number) (setf voices (list voices)))
                 (cond ((equal rule-type :heur-switch)
                        (loop for voice in voices
                              collect
                              (let ((engine (1+ (* 2 voice))))
                                (cond ((equal input-mode :index-for-cell)
                                       (heuristic-rule-one-engine (index-heuristic-switch-rule-1-engine-cells rule engine positions weight) engine))  
                                      ((equal input-mode :position-for-pitches)
                                       (heuristic-rule-one-engine (index-heuristic-switch-rule-1-pitchengine-nth rule engine positions weight) engine))))))
 
                       (t
                        (loop for voice in voices
                              collect
                              (let ((engine (1+ (* 2 voice))))
                                (cond ((equal input-mode :index-for-cell)
                                       (rule-one-engine (index-rule-1-engine-cells rule engine positions) engine))  
                                      ((equal input-mode :position-for-pitches)
                                       (rule-one-engine (index-rule-1-pitchengine-nth rule engine positions) engine))))))))

(system::PWGLDef R-time-signatures ((rule nil)
                                    (input-mode  10 (ccl::mk-menu-subview :menu-list '(":timesigns" ":all-timesigns")))
                                    &optional
                                    (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                    (weight 1))
                 "<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. If there are more than one 
input to the function, they will receive consecutive time signatures.

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - timesigns: The rule will receive individual time signatures, one for 
              each input. Ex. '(4 4)
 - all-timesigns: All time signatures in the score that are assigned at the
                time the rule is checked are given as a list of time   
                signatures. The list will thus become longer and longer 
                during the search. The rule can only have ONE input in 
                this mode. Ex. '((4 4) (6 8))
[Backtracking: This rule will trigger backtracking in its own engine.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
                 (:groupings '(2)  :extension-pattern '(2) :x-proportions '((0.1 0.3)(0.3 0.1)) :w 0.5)

  
                 (cond ((equal rule-type :heur-switch)
                        (cond ((equal input-mode :timesigns)
                               (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-timesigns rule weight) -1))
                       
                              ((equal input-mode :all-timesigns)
                               (when (/= (length (function-lambda-list rule)) 1) (error "The heuristic rule R-time-signatures is in the all-mode: The rule must have ONE argument."))
                               (heuristic-rule-one-engine (heuristic-switch-rule-1-engine-all-timesigns rule weight) -1))))
;---
                       (t
                        (cond ((equal input-mode :timesigns)
                               (rule-one-engine (rule-1-engine-timesigns rule) -1))
                       
                              ((equal input-mode :all-timesigns)
                               (when (/= (length (function-lambda-list rule)) 1) (error "The rule R-time-signatures is in the all-mode: The rule must have ONE argument."))
                               (rule-one-engine (rule-1-engine-all-timesigns rule) -1))))))


(system::PWGLDef R-index-time-signatures ((rule nil)
                                          (indexes '(0))
                                          &optional
                                          (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                          (weight 1))
                 "<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. The function should have as many 
inputs as there are positions given in the <positions> list.

<indexes> is a list of positions where the logic statement is applied.
Indexes are counted from 0. Every position in this list corresponds to
an input in the rule. 


[Backtracking: This rule will trigger backtracking in its own engine.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate)."
                 (:groupings '(2) :extension-pattern '(2) :x-proportions '((0.2 0.2)(0.3 0.1)) :w 0.5)

                 (cond ((equal rule-type :heur-switch)
                        (heuristic-rule-one-engine (index-heuristic-switch-rule-timesigns rule indexes weight) -1))  
                       (t
                        (rule-one-engine (index-rule-timesigns rule indexes) -1))  
                       ))


(system::PWGLDef R-only-m-motifs ((voices 0)
                                  &optional
                                  (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                  (weight 1))
    "This rule will force the system to only pick transposable pitch
motifs (motifs defined as melodic intervals and flagged with the 
letter m). The first variable in a voice is an exception: this 
variable always has to be a pitch defined as a MIDI note value.

<voices> is the number for the voice (starting at 0) that the rule affects. 
It is possible to give a list of several voice numbers: The rule will then 
be applied to every voice in the list (independant of each other).

[Backtracking: This rule will trigger backtracking in its own engine.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
    (:groupings '(1)  :extension-pattern '(2) :x-proportions '((0.4)(0.3 0.1)) :w 0.5)

  (when (typep voices 'number) (setf voices (list voices)))
  (cond ((equal rule-type :heur-switch)
         (loop for voice in voices
               collect
               (let ((engine (1+ (* 2 voice))))
                 (heuristic-rule-one-engine (heuristic-switch-rule-only-m-motifs engine weight) engine))  
               ))
;---
        (t
         (loop for voice in voices
               collect
               (let ((engine (1+ (* 2 voice))))
                 (rule-one-engine (rule-only-m-motifs engine) engine))  
               ))))


;---Heuristic rules

(system::PWGLDef HR-rhythms-one-voice ((rule nil)
                                       (voices 0)
                                       (ruletype  10 (ccl::mk-menu-subview :menu-list '(":durations" ":dur/time" ":motifs" ":motif/time" ":all-durations"))))
                 "
Heuristic rule for durations in one voice.

Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 

<rule> is a function that outputs a numerical weight. If there are 
more than one input to the function, it will receive consecutive 
pitches or consecutive motifs depending on the input-mode (see below). 

<voices> is the number for the voice (starting at 0) that the heuristic 
rule affects. It is possible to give a list of several voice numbers: 
The rule will then be applied to every voice in the list (independant 
of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - durations: The rule will receive individual  pitches, one for each input.
 - dur/time: As above, but the start time of the duration will be indicated.
             Format: '(duration start-time), Ex. '(1/4 9/4)
 - motifs: The rule will receive (consecutive) motifs, one motif for each 
           input. A motif is a collection of durations that are grouped in 
           a list. Motifs are designed in the domain and cannot be 
           redesignedby the engine. Note that a motif may be a single 
           duration (a list with one duration ratio) if it is defined as 
           such in the domain.
 - motif/time: As the previous selection, but with the start time of the 
               first event in the motif added. Format: '(motif start-time)
               Ex. '((1/4 -1/8) 9/8)
 - all-durations: All durations in the voice that are assigned at the time 
                the rule is checked are given as a list of duration ratios.  
                The list will thus become longer and longer during the 
                search. The rule can only have ONE input in this mode.
"
                 (:groupings '(2 1)  :x-proportions '((0.2 0.2)(0.4)) :w 0.5)

                 (when (typep voices 'number) (setf voices (list voices)))
                 (loop for voice in voices
                       collect
                       (let ((engine (* 2 voice)))
                         (cond ((equal ruletype :durations)
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-durations rule engine) engine))
                               ((equal ruletype :dur/time)
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-durations-with-total-duration rule engine) engine))
                               ((equal ruletype :motifs)
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-cells rule engine) engine))
                               ((equal ruletype :motif/time)
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-rhythmcells-with-starttime rule engine) engine))
                               ((equal ruletype :all-durations)
                                (when (/= (length (function-lambda-list rule)) 1) (error "The rule HR-rhythms-one-voice is in the all-mode: The rule must have ONE argument."))
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-all-elements rule engine) engine))))))


(system::PWGLDef HR-index-rhythms-one-voice ((rule nil)
                                             (positions '(0))
                                             (voice 0)
                                             (ruletype  10 (ccl::mk-menu-subview :menu-list '(":index-for-cell" ":position-for-duration"))))
                 "
Heuristic index rule for durations in one voice.

Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 

<rule> is a function that outputs a numerical weight. The function 
should have as many inputs as there are positions given in the 
<positions> list. 

<positions> is a list of positions where the heuristic rule is applied.
Positions are counted from 0. Every position in this list corresponds to
an input in the rule. See also input-mode below.

<voices> is the number for the voice (starting at 0) that the heuristic 
rule affects. It is possible to give a list of several voice numbers: 
The rule will then be applied to every voice in the list (independant 
of each other).


<input-mode> determines what type of variables the heuristic rule will
receive in its inputs:
 - index-for-cell: The rule will receive motifs as lists of duration 
                   ratios. The positions given above refer to the index
                   number for the motifs in the solution. Each input 
                   will receive one corresponding motif.
 - position-for-duration: The rule will receive individual
                          durations, one for each given position.
                          The positions refer to the position
                          of the individual duraions in the solution.
                          Rests are included.
"
                 (:groupings '(3 1)  :x-proportions '((0.1 0.2 0.1)(0.4)) :w 0.5)

                 (let ((engine (* 2 voice)))
                   (cond ((equal ruletype :index-for-cell)
                          (heuristic-rule-one-engine (index-heuristic-rule-1-engine-cells rule engine positions) engine))  
                         ((equal ruletype :position-for-duration)
                          (heuristic-rule-one-engine (index-heuristic-rule-1-rhythmengine-nth rule engine positions) engine)))))




(system::PWGLDef HR-pitches-one-voice ((rule nil)
                                       (voices 0)
                                       (input-mode  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":pitch/nth"":motifs" ":motif/nth" ":motif/index" ":all-pitches"))))
                 "
Heuristic rule for pitches in one voice.

Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 

<rule> is a function that outputs a numerical weight. If there are more 
than one input to the function, it will receive consecutive pitches 
or consecutive motifs depending on the input-mode (see below). 

<voices> is the number for the voice (starting at 0) that the heuristic 
rule affects. It is possible to give a list of several voice numbers: 
The rule will then be applied to every voice in the list (independant 
of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - pitches The rule will receive individual  pitches, one for each input.
 - pitch/nth: As above, but the position of the pitch is also indicated.
              Format: '(pitch nth) Ex. '(60 3).
 - motifs: The rule will receive (consecutive) motifs, one motif for each 
           input. A motif is a collection of pitches that are grouped in 
           a list. Motifs are designed in the domain and cannot be redesigned
           by the engine. Note that a motif may be a single pitch (a list 
           with one MIDI note number) if it is defined as such in the domain.
 - motif/nth: As above, but the position of the pitches is also indicated.
              Format: '((pitch-motif) (nth-list)) Ex. '((60 64) (3 4)).
 - motif/index: As motifs, but the index of the variable is also indicated.
                Format: '((pitch-motif) index) Ex. '((60 64) 2).
 - all-pitches: All pitches in the voice that are assigned at the time the  
                rule is checked are given as a list of MIDI note numbers.  
                The list will thus become longer and longer during the 
                search. The rule can only have ONE input in this mode.
"

                 (:groupings '(2 1)  :x-proportions '((0.2 0.2)(0.4)) :w 0.5)

                 (when (typep voices 'number) (setf voices (list voices)))
                 (loop for voice in voices
                       collect
                       (let ((engine (1+ (* 2 voice))))
                         (cond ((equal input-mode :pitches)
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-pitches rule engine) engine))
                               ((equal input-mode :pitch/nth)
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-pitches-with-pitchcount rule engine) engine))
                               ((equal input-mode :motifs)
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-cells rule engine) engine))
                               ((equal input-mode :motif/nth)
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-pitchcells-with-pitchcount rule engine) engine))
                               ((equal input-mode :motif/index)
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-pitchcells-with-index rule engine) engine))
                               ((equal input-mode :all-pitches)
                                (when (/= (length (function-lambda-list rule)) 1) (error "The heuristic rule R-pitches-one-voice is in the all-mode: The rule must have ONE argument."))
                                (heuristic-rule-one-engine (heuristic-rule-1-engine-all-elements rule engine) engine))))))




(system::PWGLDef HR-index-pitches-one-voice ((rule nil)
                                             (positions '(0))
                                             (voice 0)
                                             (input-mode  10 (ccl::mk-menu-subview :menu-list '(":index-for-cell" ":position-for-pitches"))))
                 "
Heuristic index rule for pitches in one voice.

Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 

<rule> is a function that outputs a numerical weight. The function 
should have as many inputs as there are positions given in the 
<positions> list. 

<positions> is a list of positions where the heuristic rule is applied.
Positions are counted from 0. Every position in this list corresponds to
an input in the rule. See also input-mode below.

<voices> is the number for the voice (starting at 0) that the heuristic 
rule affects. It is possible to give a list of several voice numbers: 
The rule will then be applied to every voice in the list (independant 
of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - index-for-cell: The rule will receive motifs as lists of MIDI note 
                   numbers The positions given above refer to the index
                   number for the motifs in the solution. Each input 
                   will receive one corresponding motif.
 - position-for-pitches: The rule will receive individual
                          pitches, one for each given position.
                          The positions refer to the position
                          of the individual duraions in the solution.
"
                 (:groupings '(3 1)  :x-proportions '((0.1 0.2 0.1)(0.4)) :w 0.5)

                 (let ((engine (1+ (* 2 voice))))
                   (cond ((equal input-mode :index-for-cell)
                          (heuristic-rule-one-engine (index-heuristic-rule-1-engine-cells rule engine positions) engine))  
                         ((equal input-mode :position-for-pitches)
                          (heuristic-rule-one-engine (index-heuristic-rule-1-pitchengine-nth rule engine positions) engine)))))



(system::PWGLDef HR-time-signatures ((rule nil)
                                     (input-mode  10 (ccl::mk-menu-subview :menu-list '(":timesigns" ":all-timesigns"))))
                 "
Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 

<rule> is a function that outputs a numerical weight. If there are 
more than one input to the function, they will receive consecutive 
time signatures.

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - timesigns: The rule will receive individual time signatures, one for 
              each input. Ex. '(4 4)
 - all-timesigns: All time signatures in the score that are assigned at the
                time the rule is checked are given as a list of time   
                signatures. The list will thus become longer and longer 
                during the search. The rule can only have ONE input in 
                this mode. Ex. '((4 4) (6 8))

"
                 (:groupings '(2)  :x-proportions '((0.1 0.3)) :w 0.5)


                 (cond ((equal input-mode :timesigns)
                        (heuristic-rule-one-engine (heuristic-rule-1-engine-timesigns rule) -1))
                       
                       ((equal input-mode :all-timesigns)
                        (when (/= (length (function-lambda-list rule)) 1) (error "The heuristic rule HR-time-signatures is in the all-mode: The rule must have ONE argument."))
                        (heuristic-rule-one-engine (heuristic-rule-1-engine-all-timesigns rule) -1)))
                 )


(system::PWGLDef HR-index-time-signatures ((rule nil)
                                           (indexes '(0)))
                 "
Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 

<rule> is a function that outputs a numerical weight. The function 
should have as many inputs as there are positions given in the 
<indexes> list.

<indexes> is a list of positions where the logic statement is applied.
Indexes are counted from 0. Every position in this list corresponds to
an input in the rule. See also input-mode below.

"
                 (:groupings '(2) :x-proportions '((0.2 0.2)) :w 0.5)

                 (heuristic-rule-one-engine (index-heuristic-switch-rule-timesigns rule indexes) -1))


;---

(system::PWGLDef set-end ((rule nil)
                          (end-point 12))
                 "This box will set the endpoint for a jbs or a pmc rule. The rule should
pass through this box before going into the r-jbs-one-voice box (or the
r-pmc-one-voice box). The end point is the position (i.e. not the index) for 
the last value in a voice where the rule is checked. It also replaces 
the '(cur-slen) expression by the end point.

Note that the first value has the position 1 (this is compatible with
how index numbers are counted in the PMC engine).

"
                 (:groupings '(2) :x-proportions '((0.1 0.2)) :w 0.25)

                 (rewrite-any-rule-with-stop rule end-point))



(system::PWGLDef R-jbs-one-voice ((jbsrule0 nil)
                                  (ruletype0  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations")))
                                  (voice0 0)
                                  &optional (jbsrule1 nil) (ruletype1  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice1 0)
                                  (jbsrule2 nil) (ruletype2  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice2 0)
                                  (jbsrule3 nil) (ruletype3  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice3 0)
                                  (jbsrule4 nil) (ruletype4  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice4 0)
                                  (jbsrule5 nil) (ruletype5  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice5 0)
                                  (jbsrule6 nil) (ruletype6  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice6 0)
                                  (jbsrule7 nil) (ruletype7  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice7 0)
                                  (jbsrule8 nil) (ruletype8  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice8 0)
                                  (jbsrule9 nil) (ruletype9  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice9 0))
                 "
This box makes it possible to use rules from the JBS-constraint library. 
The box can handle both true/false rules and heuristic rules.

Rules that use the (cur-slen) function are not supported (it is possible 
to use these rules by letting them pass the set-end box).

The voice input can be a list with all voices that the rule should affect.

Score-PMC-rules are NOT supported. 
"
                 (:groupings '(3)  :extension-pattern '(3) :x-proportions '((0.1 0.27 0.1)(0.1 0.27 0.1)(0.1 0.27 0.1)
                                                                            (0.1 0.27 0.1)(0.1 0.27 0.1)(0.1 0.27 0.1)
                                                                            (0.1 0.27 0.1)(0.1 0.27 0.1)(0.1 0.27 0.1)
                                                                            (0.1 0.27 0.1)) :w 0.5)

                 (let ((jbsrules (list jbsrule0 jbsrule1 jbsrule2 jbsrule3 jbsrule4 jbsrule5 jbsrule6 jbsrule7 jbsrule8 jbsrule9))
                       (ruletypes (list ruletype0 ruletype1 ruletype2 ruletype3 ruletype4 ruletype5 ruletype6 ruletype7 ruletype8 ruletype9))
                       (voices (list voice0 voice1 voice2 voice3 voice4 voice5 voice6 voice7 voice8 voice9)))
                   (remove nil
                           (apply 'append 
                                  (loop for jbsrule in jbsrules
                                        for ruletype in ruletypes
                                        for voice in voices
                                        collect (if jbsrule
                                                    (cond ((equal ruletype :durations)
                                                           (when (numberp voice) (setf voice (list voice)))
                                                           (loop for v in voice
                                                                 collect
                                                                 (let ((engine (* 2 v)))
                                                                   (jbs-rhythm-rule jbsrule engine))))
                                                          ((equal ruletype :pitches)
                                                           (when (numberp voice) (setf voice (list voice)))
                                                           (loop for v in voice
                                                                 collect
                                                                 (let ((engine (1+ (* 2 v))))
                                                                   (jbs-pitch-rule jbsrule engine))))
                                                          (t nil))
                                                  nil)))))
                 )


(system::PWGLDef R-pmc-one-voice ((pmcrules0 nil)
                                  (ruletype0  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations")))
                                  (voice0 0)
                                  &optional (pmcrules1 nil) (ruletype1  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice1 0)
                                  (pmcrules2 nil) (ruletype2  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice2 0)
                                  (pmcrules3 nil) (ruletype3  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice3 0)
                                  (pmcrules4 nil) (ruletype4  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice4 0)
                                  (pmcrules5 nil) (ruletype5  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice5 0)
                                  (pmcrules6 nil) (ruletype6  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice6 0)
                                  (pmcrules7 nil) (ruletype7  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice7 0)
                                  (pmcrules8 nil) (ruletype8  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice8 0)
                                  (pmcrules9 nil) (ruletype9  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations"))) (voice9 0))
                 "This box makes it possible to use PMC formated rules with the Poly-engine. The box expects a list of rules (for
example from a text box). The following PMC related variables and functions are supported:
L, RL, LEN, (cur-index)

Both wildcard rules and index rules are possible to use. Wildcard rules are expected to use variables 
in order."
                 (:groupings '(3)  :extension-pattern '(3) :x-proportions '((0.1 0.27 0.1)(0.1 0.27 0.1)(0.1 0.27 0.1)
                                                                            (0.1 0.27 0.1)(0.1 0.27 0.1)(0.1 0.27 0.1)
                                                                            (0.1 0.27 0.1)(0.1 0.27 0.1)(0.1 0.27 0.1)
                                                                            (0.1 0.27 0.1)) :w 0.5)

                 (let ((pmcrules (list pmcrules0 pmcrules1 pmcrules2 pmcrules3 pmcrules4 pmcrules5 pmcrules6 pmcrules7 pmcrules8 pmcrules9))
                       (ruletypes (list ruletype0 ruletype1 ruletype2 ruletype3 ruletype4 ruletype5 ruletype6 ruletype7 ruletype8 ruletype9))
                       (voices (list voice0 voice1 voice2 voice3 voice4 voice5 voice6 voice7 voice8 voice9)))
                   (apply 'append (remove nil
                                          (loop for pmcrule in pmcrules
                                                for ruletype in ruletypes
                                                for voice in voices
                                                collect (if pmcrule
                                                            (cond ((equal ruletype :durations)
                                                                   (let ((engine (* 2 voice)))
                                                                     (pmc-rhythm-rules pmcrule engine)))
                                                                  ((equal ruletype :pitches)
                                                                   (let ((engine (1+ (* 2 voice))))
                                                                     (pmc-pitch-rules pmcrule engine)))
                                                                  (t nil))
                                                          nil)))))
                 )


;;;;;;;;;;




(system::PWGLDef R-rhythm-pitch-one-voice ((rule nil)
                                           (voices 0)
                                           (input-mode  10 (ccl::mk-menu-subview :menu-list '(":rhythm/pitch" ":include-rests" ":rhythm/pitch-segment" ":rhythm/time/pitch" ":rhythm/pitch-list-ALL")))
                                           (gracenotes?  10 (ccl::mk-menu-subview :menu-list '(":normal" ":exclude-gracenotes")))
                                           &optional
                                           (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                           (weight 1))
                 "
Rule for rhythm-pitch pairs in one voice. 

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. Each input will receive a list 
with a duration-pitch pair, one list for each input (for example '(1/4 60)). 
Rests will have the pitch nil indicated (for example '(-1/8 nil)).If there 
is more than one input to the function, they will receive consecutive 
rhythm-pitch pairs.

<voices> is the number for the voice (starting at 0) that the rule affects. 
It is possible to give a list of several voice numbers: The rule will then 
be applied to every voice in the list (independant of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - rhythm/pitch: The rule will receive rhythm-pitch pairs excluding (i.e. 
                 skipping) rests.
 - include-rests: The rule will receive rhythm-pitch pairs including rests.
 - rhythm/pitch-segment: For rules with one input, this setting is  
                  identical to the rhythm/pitch setting. For rules with
                  more than one input, the rule will receive consecutive
                  pitch/rhythm pairs between rests. The rule does not
                  check rhythm/pitch pairs that are divided by a rest. 
                  This setting is good for rules that are only valid 
                  within a phrase.
 - rhythm/time/pitch: The rule will receive rhythm-pitch pairs excluding (i.e. 
                 skipping) rests including the inormation about the
                 absolute onset time:
                 Format '(duration timepoint pitch)
 - rhythm/pitch-list-ALL: The rule receives a list with all duraion-pitch
                  pair upto the point where the rule is checked. Rests are 
                  included in the list. The rule should only have one input.

<gracenotes?> gives the option to leave out grace notes when checking the 
rule:
 - normal: Grace notes are included and checked by the rule. Note: if 
           grace notes are not used in the domain, this setting will create 
           faster rules.
 - exclude-gracenotes: Grace notes are removed and not seen by the rule.

[Backtracking: By default this rule will trigger backtracking in its own 
               engine. If this is not possible, it will trigger backtracking 
               in the other engine.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate)."

                 (:groupings '(2 1 1)  :extension-pattern '(2) :x-proportions '((0.2 0.2)(0.4)(0.4)(0.3 0.1)) :w 0.5)


                 (when (typep voices 'number) (setf voices (list voices)))
                 (cond ((equal rule-type :heur-switch)
                        (loop for voice in voices
                              collect (let ((rhythm-engine (* 2 voice))
                                            (pitch-engine (1+ (* 2 voice))))
                                        (cond ((and (equal input-mode :rhythm/pitch) (equal gracenotes? :normal))
                                               (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm rule rhythm-engine pitch-engine weight) rhythm-engine pitch-engine))
                                              ((and (equal input-mode :include-rests) (equal gracenotes? :normal))
                                               (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-include-rests rule rhythm-engine pitch-engine weight) rhythm-engine pitch-engine))
                                              ((and (equal input-mode :rhythm/pitch) (equal gracenotes? :exclude-gracenotes))
                                               (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-exclude-gracenotes rule rhythm-engine pitch-engine weight) rhythm-engine pitch-engine))
                                              ((and (equal input-mode :include-rests) (equal gracenotes? :exclude-gracenotes))
                                               (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-incl-rests-exclude-gracenotes rule rhythm-engine pitch-engine weight) rhythm-engine pitch-engine))
                                              ((and (equal input-mode :rhythm/pitch-segment) (equal gracenotes? :normal))
                                               (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-segment-at-rests rule rhythm-engine pitch-engine weight) rhythm-engine pitch-engine))
                                              ((and (equal input-mode :rhythm/pitch-segment) (equal gracenotes? :exclude-gracenotes))
                                               (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-segments-at-rests-exclude-gracenotes rule rhythm-engine pitch-engine weight) 
                                                                           rhythm-engine pitch-engine))
                                              ((and (equal input-mode :rhythm/time/pitch) (equal gracenotes? :normal))
                                               (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-with-time rule rhythm-engine pitch-engine weight) rhythm-engine pitch-engine))
                                              ((and (equal input-mode :rhythm/time/pitch) (equal gracenotes? :exclude-gracenotes))
                                               (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-with-time-exclude-gracenotes rule rhythm-engine pitch-engine weight) rhythm-engine pitch-engine))
                                              ((and (equal input-mode :rhythm/pitch-list-ALL) (equal gracenotes? :normal))
                                               (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-include-rests-list-all rule rhythm-engine pitch-engine weight) 
                                                                           rhythm-engine pitch-engine))
                                              ((and (equal input-mode :rhythm/pitch-list-ALL) (equal gracenotes? :exclude-gracenotes))
                                               (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-include-rests-exclude-gracenotes-list-all rule rhythm-engine pitch-engine weight) 
                                                                           rhythm-engine pitch-engine))))
                              ))


                       (t
                        (loop for voice in voices
                              collect
                              (let ((rhythm-engine (* 2 voice))
                                    (pitch-engine (1+ (* 2 voice))))
                                (cond ((and (equal input-mode :rhythm/pitch) (equal gracenotes? :normal))
                                       (cond ((= *bktr-rp1v-A* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (rule-2-engines-pitches-on-rhythm rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-A* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (rule-2-engines-pitches-on-rhythm rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))

                                      ((and (equal input-mode :include-rests) (equal gracenotes? :normal))
                                       (cond ((= *bktr-rp1v-B* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (rule-2-engines-pitches-on-rhythm-include-rests rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-B* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (rule-2-engines-pitches-on-rhythm-include-rests rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))

                                      ((and (equal input-mode :rhythm/pitch) (equal gracenotes? :exclude-gracenotes))
                                       (cond ((= *bktr-rp1v-E* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (rule-2-engines-pitches-on-rhythm-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-E* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (rule-2-engines-pitches-on-rhythm-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))

                                      ((and (equal input-mode :include-rests) (equal gracenotes? :exclude-gracenotes))
                                       (cond ((= *bktr-rp1v-F* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (rule-2-engines-pitches-on-rhythm-incl-rests-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-F* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (rule-2-engines-pitches-on-rhythm-incl-rests-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))

                                      ((and (equal input-mode :rhythm/pitch-segment) (equal gracenotes? :normal))
                                       (cond ((= *bktr-rp1v-G* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (rule-2-engines-pitches-on-rhythm-segment-at-rests rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-G* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (rule-2-engines-pitches-on-rhythm-segment-at-rests rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))

                                      ((and (equal input-mode :rhythm/pitch-segment) (equal gracenotes? :exclude-gracenotes))
                                       (cond ((= *bktr-rp1v-H* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (rule-2-engines-pitches-on-rhythm-segments-at-rests-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-H* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (rule-2-engines-pitches-on-rhythm-segments-at-rests-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))

                                      ((and (equal input-mode :rhythm/time/pitch) (equal gracenotes? :normal))
                                       (cond ((= *bktr-rp1v-A* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (rule-2-engines-pitches-on-rhythm-with-time rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-A* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (rule-2-engines-pitches-on-rhythm-with-time rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))
;;;
                                      ((and (equal input-mode :rhythm/time/pitch) (equal gracenotes? :exclude-gracenotes))
                                       (cond ((= *bktr-rp1v-E* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (rule-2-engines-pitches-on-rhythm-with-time-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-E* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (rule-2-engines-pitches-on-rhythm-with-time-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))

                                      ((and (equal input-mode :rhythm/pitch-list-ALL) (equal gracenotes? :normal))
                                       (cond ((= *bktr-rp1v-I* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (rule-2-engines-pitches-on-rhythm-include-rests-list-all rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-I* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (rule-2-engines-pitches-on-rhythm-include-rests-list-all rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))

                                      ((and (equal input-mode :rhythm/pitch-list-ALL) (equal gracenotes? :exclude-gracenotes))
                                       (cond ((= *bktr-rp1v-J* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (rule-2-engines-pitches-on-rhythm-include-rests-exclude-gracenotes-list-all rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-J* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (rule-2-engines-pitches-on-rhythm-include-rests-exclude-gracenotes-list-all rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))))
                              ))
                       ))
                       



(system::PWGLDef HR-rhythm-pitch-one-voice ((rule nil)
                                            (voices 0)
                                            (input-mode  10 (ccl::mk-menu-subview :menu-list '(":rhythm/pitch" ":include-rests" ":rhythm/pitch-segment" ":rhythm/time/pitch" ":rhythm/pitch-list-ALL")))
                                            (gracenotes?  10 (ccl::mk-menu-subview :menu-list '(":normal" ":exclude-gracenotes"))))
                 "
Heuristic rule for rhythm-pitch pairs in one voice. 

Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 

<rule> is a function that outputs a numerical weight. Each input will 
receive a list with a duration-pitch pair, one list for each input (for 
example '(1/4 60)). Rests will have the pitch nil indicated (for example 
'(-1/8 nil)).If there is more than one input to the function, they will 
receive consecutive rhythm-pitch pairs.

<voices> is the number for the voice (starting at 0) that the heuristic rule 
affects. It is possible to give a list of several voice numbers: The rule 
will then be applied to every voice in the list (independant of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - rhythm/pitch: The heuristic rule will receive rhythm-pitch pairs  
                 excluding (i.e. skipping) rests.
 - include-rests: The heuristic rule will receive rhythm-pitch pairs 
                  including rests.
 - rhythm/pitch-segment: For heuristic rules with one input, this setting  
                          is identical to the rhythm/pitch setting. For 
                          heuristic rules with more than one input, the rule  
                          will receive consecutive pitch/rhythm pairs between 
                          rests. The heuristic rule does not check 
                          rhythm/pitch pairs that are divided by a rest. This
                          setting is good for heuristic rules that are only 
                          valid within a phrase.
 - rhythm/time/pitch: The heuristic  rule will receive rhythm-pitch pairs  
                      excluding (i.e.skipping) rests including the inormation 
                      about the absolute onset time:
                      Format '(duration timepoint pitch)
 - rhythm/pitch-list-ALL:

<gracenotes?> gives the option to leave out grace notes when checking the 
heuristic rule:
 - normal: Grace notes are included and checked by the heuristic rule. Note: 
           if grace notes are not used in the domain, this setting will  
           create faster heuristic rules.
 - exclude-gracenotes: Grace notes are removed and not seen by the heuristic
                       rule.

"

                 (:groupings '(2 1 1)  :x-proportions '((0.2 0.2)(0.4)(0.4)) :w 0.5)


                 (when (typep voices 'number) (setf voices (list voices)))


                 (loop for voice in voices
                       collect
                       (let ((rhythm-engine (* 2 voice))
                             (pitch-engine (1+ (* 2 voice))))
                         (cond ((and (equal input-mode :rhythm/pitch) (equal gracenotes? :normal))
                                (heuristic-rule-two-engines (heuristic-rule-2-engines-pitches-on-rhythm rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                               ((and (equal input-mode :include-rests) (equal gracenotes? :normal))
                                (heuristic-rule-two-engines (heuristic-rule-2-engines-pitches-on-rhythm-include-rests rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                               ((and (equal input-mode :rhythm/pitch-segment) (equal gracenotes? :normal))
                                (heuristic-rule-two-engines (heuristic-rule-2-engines-pitches-on-rhythm-segment-at-rests rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                               ((and (equal input-mode :rhythm/pitch) (equal gracenotes? :exclude-gracenotes))
                                (heuristic-rule-two-engines (heuristic-rule-2-engines-pitches-on-rhythm-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                               ((and (equal input-mode :include-rests) (equal gracenotes? :exclude-gracenotes))
                                (heuristic-rule-two-engines (heuristic-rule-2-engines-pitches-on-rhythm-incl-rests-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                               ((and (equal input-mode :rhythm/pitch-segment) (equal gracenotes? :exclude-gracenotes))
                                (heuristic-rule-two-engines (heuristic-rule-2-engines-pitches-on-rhythm-segments-at-rests-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                               ((and (equal input-mode :rhythm/time/pitch) (equal gracenotes? :normal))
                                (heuristic-rule-two-engines (heuristic-rule-2-engines-pitches-on-rhythm-with-time rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                               ((and (equal input-mode :rhythm/time/pitch) (equal gracenotes? :exclude-gracenotes))
                                (heuristic-rule-two-engines (heuristic-rule-2-engines-pitches-on-rhythm-with-time-exclude-gracenotes rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                               ((and (equal input-mode :rhythm/pitch-list-ALL) (equal gracenotes? :normal))
                                (heuristic-rule-two-engines (heuristic-rule-2-engines-pitches-on-rhythm-include-rests-list-all rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))
                               ((and (equal input-mode :rhythm/pitch-list-ALL) (equal gracenotes? :exclude-gracenotes))
                                (heuristic-rule-two-engines (heuristic-rule-2-engines-pitches-on-rhythm-include-rests-exclude-gracenotes-list-all rule rhythm-engine pitch-engine) rhythm-engine pitch-engine))))
                       ))
                 



(system::PWGLDef R-index-rhythm-pitch-one-voice ((rule nil)
                                                 (positions '(0))
                                                 (voices 0)
                                                 (input-mode  10 (ccl::mk-menu-subview :menu-list '(":nth-note" ":nth-duration-incl-rests")))
                                                 &optional
                                                 (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                                 (weight 1))
                 "
Index rule for rhythm-pitch pairs in one voice. 

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. Each input will receive a list 
with a duration-pitch pair, one list for each input (for example '(1/4 60)). 
Rests will have the pitch nil indicated (for example '(-1/8 nil)). The 
function should have as many inputs as there are positions given in the 
<positions> list. 

<positions> is a list of positions where the heuristic rule is applied.
Positions are counted from 0. Every position in this list corresponds to
an input in the rule. See more under input-mode below.

<voices> is the number for the voice (starting at 0) that the rule affects. 
It is possible to give a list of several voice numbers: The rule will then 
be applied to every voice in the list (independant of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - nth-note: Positions refer to the notes in the voice, excluding (i.e. not
             counting) rests. Notes are counted from 0.
 - nth-duration-incl-rests: Positions refer to the durations in the voice,
                            including rests. Durations are counted from 0.

[Backtracking: By default this rule will trigger backtracking in its own 
               engine. If this is not possible, it will trigger backtracking 
               in the other engine.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate)."

                 (:groupings '(3 1)  :extension-pattern '(2) :x-proportions '((0.1 0.2 0.1)(0.4)(0.3 0.1)) :w 0.5)
                 

                 (when (typep voices 'number) (setf voices (list voices)))
                 (cond ((equal rule-type :heur-switch)
                        (loop for voice in voices
                              collect (let ((rhythm-engine (* 2 voice))
                                            (pitch-engine (1+ (* 2 voice))))
                                        (cond ((equal input-mode :nth-note)
                                               (heuristic-rule-two-engines (heuristic-index-switch-rule-2-engines-pitches-on-rhythm-nth-note 
                                                                            rule rhythm-engine pitch-engine positions weight) rhythm-engine pitch-engine))
                                              ((equal input-mode :nth-duration-incl-rests)
                                               (heuristic-rule-two-engines (heuristic-index-switch-rule-2-engines-pitches-on-rhythm-nth-duration-incl-rests 
                                                                            rule rhythm-engine pitch-engine positions weight) rhythm-engine pitch-engine))
                                              ))
                              ))

                       (t
                        (loop for voice in voices
                              collect
                              (let ((rhythm-engine (* 2 voice))
                                    (pitch-engine (1+ (* 2 voice))))
                                (cond ((equal input-mode :nth-note)
                                       (cond ((= *bktr-rp1v-C* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (index-rule-2-engines-pitches-on-rhythm-nth-note rule rhythm-engine pitch-engine positions) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-C* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (index-rule-2-engines-pitches-on-rhythm-nth-note rule rhythm-engine pitch-engine positions) rhythm-engine pitch-engine))))

                                      ((equal input-mode :nth-duration-incl-rests)
                                       (cond ((= *bktr-rp1v-D* 1)
                                       ;prefer to backtrack the same engine
                                              (rule-two-engines1 (index-rule-2-engines-pitches-on-rhythm-nth-duration-incl-rests rule rhythm-engine pitch-engine positions) rhythm-engine pitch-engine))
                                             ((= *bktr-rp1v-D* 2)
                                       ;prefer to backtrack the other engine
                                              (rule-two-engines2 (index-rule-2-engines-pitches-on-rhythm-nth-duration-incl-rests rule rhythm-engine pitch-engine positions) rhythm-engine pitch-engine))))
                                      ))
                              ))
                       ))






(system::PWGLDef HR-index-rhythm-pitch-one-voice ((rule nil)
                                                  (positions '(0))
                                                  (voices 0)
                                                  (input-mode  10 (ccl::mk-menu-subview :menu-list '(":nth-note" ":nth-duration-incl-rests"))))
                 "
Heuristic index rule for rhythm-pitch pairs in one voice. 

Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 

<rule> is a function that outputs a numerical weight. Each input will 
receive a list with a duration-pitch pair, one list for each input 
(for example '(1/4 60)). Rests will have the pitch nil indicated 
(for example '(-1/8 nil)). The function should have as many inputs 
as there are positions given in the <positions> list. 

<positions> is a list of positions where the heuristic rule is applied.
Positions are counted from 0. Every position in this list corresponds to
an input in the rule. See more under input-mode below.

<voices> is the number for the voice (starting at 0) that the heuristic rule 
affects. It is possible to give a list of several voice numbers: The rule 
will then be applied to every voice in the list (independant of each other).

<input-mode> determines what type of variables the rule will receive in 
its inputs:
 - rhythm/pitch: The rule will receive rhythm-pitch pairs excluding (i.e. 
                 skipping) rests.
 - include-rests: The rule will receive rhythm-pitch pairs including rests.
"

                 (:groupings '(3 1)  :x-proportions '((0.1 0.2 0.1)(0.4)) :w 0.5)
                 

                 (when (typep voices 'number) (setf voices (list voices)))
                 (loop for voice in voices
                       collect 
                       (let ((rhythm-engine (* 2 voice))
                             (pitch-engine (1+ (* 2 voice))))
                         (cond ((equal input-mode :nth-note)
                                (heuristic-rule-two-engines (heuristic-index-rule-2-engines-pitches-on-rhythm-nth-note rule rhythm-engine pitch-engine positions) 
                                                            rhythm-engine pitch-engine))
                               ((equal input-mode :nth-duration-incl-rests)
                                (heuristic-rule-two-engines (heuristic-index-rule-2-engines-pitches-on-rhythm-nth-duration-incl-rests rule rhythm-engine pitch-engine positions) 
                                                            rhythm-engine pitch-engine))))))

;;;;;;;;;;;;RHYTHM RHYTHM



(system::PWGLDef R-rhythm-rhythm ((rule nil)
                                  (voice1 0)
                                  (voice2 1)
                                  (input-mode1  10 (ccl::mk-menu-subview :menu-list '(":d1_offs" ":d1_offs_d2")))
                                  (input-mode2  10 (ccl::mk-menu-subview :menu-list '(":norm" ":list")))
                                  (input-filter  10 (ccl::mk-menu-subview :menu-list '(":at-durations-v1" ":at-events-v1" ":break-at-rest-v1" ":break-at-rest-v1-v2")))
                                  &optional
                                  (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                  (weight 1))
                 "
Rule for the relation between durations in two voices. 

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. Each input will receive a list 
with information regarding a timepoint in the score. If the rule has
more than one input it will receive information for consecutive timepoints. 
If the input-mode2 is set to list, the rule can only have one input.
The exact information and format of the list depends on the selected input 
mode (see below).

<voice1> and <voice2> are the numbers for the voices (starting at 0) that 
the rule affects. 

<input-mode1> determines what format for the variables:
 - d1_offset: The rule will receive a list with a duration in voice 1 and 
              the offset to the event in voice 2 that exist at the onset 
              for the duration in voice 1. Rests and grace notes in voice 1 
              are ignored. Grace notes are ignored in voice 2, but rests are
              included. Format: '(duration offset), example: '(1/2 -1/8).
 - d1_offset_d2: Identical to d1_offset but also returns the duration (or 
              rest) in voice 2. Format: '(duration1 offset duration2), 
              example: '(1/2 -1/8 1/4).

<input-mode2>
 - norm: This setting is the normal behaviour of the box. An input receives
              the information for one time point. More than one input it 
              will receive information for consecutive timepoints.
 - list: The rule must have exactly one input. The input will receive a 
              list of all time points that are known when the rule is
              checked. If any of the break-at-rest settings are used, the
              rule will check each segment at a time.

<input-filter> determines what information the rule will receive:
 - at-durations-v1: The rule will receive informaton for all durations  
              (grace notes and rests excluded) in voice 1.
 - at-events-v1: The rule will receive informaton for all events  
              (grace notes excluded) in voice 1. Rests are included.
 - break-at-rest-v1: This will only differ from the above setting for
              rules with more than one input. The rule will not not
              check durations that are separated by a rest in voice 1.
              If the list setting is chosen above, the list will be
              segmented at rests in voice 1.
 - break-at-rest-v1-v2: The rule will not check points where voice 1 or
              voice 2 (or both) have a rest. If the rule has more than 
              one input, it will not check timepoints that are separated 
              by a rest in voice 1 or timepoints that have rests in voice 2.
              If the list setting is chosen above, the list will be
              segmented at rests in voice 1 or 2.


The latter 2 settings are useful for rules that are only valid within 
a phrase.


[Backtracking: By default this rule will trigger backtracking in the other
               engine than the engine that failed. If this is not possible, 
               it will trigger backtracking in its own engine.]

A word on efficiency:
The most efficient input mode is the d1_offset (if the input-filter is set
to at-durations-v1): the system is able to check this type of rule earlier than rules 
with other input modes. This is due to that it can consider the last endpoint
as a new onset, without knowing the duration for this new event.


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate)."

                 (:groupings '(3 2 1)  :extension-pattern '(2) :x-proportions '((0.1 0.15 0.15)(0.25 0.15)(0.4)(0.3 0.1)) :w 0.5)
                 (let* ((rhythm-engine1 (* 2 voice1))
                        (rhythm-engine2 (* 2 voice2)))
                   (cond ((equal rule-type :heur-switch)

                          (cond ((and (equal input-mode1 :d1_offs) (equal input-filter :at-durations-v1) (equal input-mode2 :norm))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices 
                                                              rule rhythm-engine1 rhythm-engine2 nil weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :at-durations-v1) (equal input-mode2 :norm))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event 
                                                              rule rhythm-engine1 rhythm-engine2 nil weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :at-events-v1) (equal input-mode2 :norm))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices 
                                                              rule rhythm-engine1 rhythm-engine2 t weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :at-events-v1) (equal input-mode2 :norm))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event 
                                                              rule rhythm-engine1 rhythm-engine2 t weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1) (equal input-mode2 :norm))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1 
                                                              rule rhythm-engine1 rhythm-engine2 weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1) (equal input-mode2 :norm))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1 
                                                              rule rhythm-engine1 rhythm-engine2 weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :norm))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1-or-2 
                                                              rule rhythm-engine1 rhythm-engine2 weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :norm))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1-or-2 
                                                              rule rhythm-engine1 rhythm-engine2 weight) rhythm-engine1 rhythm-engine2)
                                 )

                                ((and (equal input-mode1 :d1_offs) (equal input-filter :at-durations-v1) (equal input-mode2 :list))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all 
                                                              rule rhythm-engine1 rhythm-engine2 nil weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :at-durations-v1) (equal input-mode2 :list))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-events-list-all 
                                                              rule rhythm-engine1 rhythm-engine2 nil weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :at-events-v1) (equal input-mode2 :list))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all 
                                                              rule rhythm-engine1 rhythm-engine2 t weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :at-events-v1) (equal input-mode2 :list))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-events-list-all 
                                                              rule rhythm-engine1 rhythm-engine2 t weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1) (equal input-mode2 :list))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1 
                                                              rule rhythm-engine1 rhythm-engine2 weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1) (equal input-mode2 :list))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1 
                                                              rule rhythm-engine1 rhythm-engine2 weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :list))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1-or-2 
                                                              rule rhythm-engine1 rhythm-engine2 weight) rhythm-engine1 rhythm-engine2)
                                 )
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :list))
                                 (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1-or-2 
                                                              rule rhythm-engine1 rhythm-engine2 weight) rhythm-engine1 rhythm-engine2))
                                (t (error "not implemented"))
                                )
                          )
                         (t ;true/false rule
                          (cond ((and (equal input-mode1 :d1_offs) (equal input-filter :at-durations-v1) (equal input-mode2 :norm))
                                 (cond ((= *bktr-rr2v-A* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices 
                                                            rule rhythm-engine1 rhythm-engine2 nil) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-A* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices 
                                                            rule rhythm-engine1 rhythm-engine2 nil) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :at-durations-v1) (equal input-mode2 :norm))
                                 (cond ((= *bktr-rr2v-B* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event ;;;;;;;;;;;;;
                                                            rule rhythm-engine1 rhythm-engine2 nil) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-B* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event ;;;;;;;;;;
                                                            rule rhythm-engine1 rhythm-engine2 nil) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :at-events-v1) (equal input-mode2 :norm))
                                 (cond ((= *bktr-rr2v-A* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices 
                                                            rule rhythm-engine1 rhythm-engine2 t) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-A* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices 
                                                            rule rhythm-engine1 rhythm-engine2 t) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :at-events-v1) (equal input-mode2 :norm))
                                 (cond ((= *bktr-rr2v-B* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event ;;;;;;;;;;;;;
                                                            rule rhythm-engine1 rhythm-engine2 t) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-B* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event ;;;;;;;;;;
                                                            rule rhythm-engine1 rhythm-engine2 t) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1) (equal input-mode2 :norm))
                                 (cond ((= *bktr-rr2v-C* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-C* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1) (equal input-mode2 :norm))
                                 (cond ((= *bktr-rr2v-D* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-D* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :norm))
                                 (cond ((= *bktr-rr2v-E* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1-or-2 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-E* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1-or-2 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :norm))
                                 (cond ((= *bktr-rr2v-F* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1-or-2 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-F* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1-or-2 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))))

                                ((and (equal input-mode1 :d1_offs) (equal input-filter :at-durations-v1) (equal input-mode2 :list))
                                 (cond ((= *bktr-rr2v-G* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all 
                                                            rule rhythm-engine1 rhythm-engine2 nil) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-G* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all 
                                                            rule rhythm-engine1 rhythm-engine2 nil) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :at-durations-v1) (equal input-mode2 :list))
                                 (cond ((= *bktr-rr2v-H* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event-list-all 
                                                            rule rhythm-engine1 rhythm-engine2 nil) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-H* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event-list-all 
                                                            rule rhythm-engine1 rhythm-engine2 nil) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :at-events-v1) (equal input-mode2 :list))
                                 (cond ((= *bktr-rr2v-G* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all 
                                                            rule rhythm-engine1 rhythm-engine2 t) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-G* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all 
                                                            rule rhythm-engine1 rhythm-engine2 t) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :at-events-v1) (equal input-mode2 :list))
                                 (cond ((= *bktr-rr2v-H* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event-list-all 
                                                            rule rhythm-engine1 rhythm-engine2 t) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-H* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-event-list-all 
                                                            rule rhythm-engine1 rhythm-engine2 t) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1) (equal input-mode2 :list))
                                 (cond ((= *bktr-rr2v-I* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-I* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1) (equal input-mode2 :list))
                                 (cond ((= *bktr-rr2v-J* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-J* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :list))
                                 (cond ((= *bktr-rr2v-K* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1-or-2 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-K* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1-or-2 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))))
                                ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :list))
                                 (cond ((= *bktr-rr2v-L* 1)
                  ;prefer to backtrack the same engine
                                        (rule-two-engines1 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1-or-2 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))
                                       ((= *bktr-rr2v-L* 2)
                  ;prefer to backtrack the other engine
                                        (rule-two-engines2 (rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1-or-2 
                                                            rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2))))
                                )))))








(system::PWGLDef HR-rhythm-rhythm ((rule nil)
                                   (voice1 0)
                                   (voice2 1)
                                   (input-mode1  10 (ccl::mk-menu-subview :menu-list '(":d1_offs" ":d1_offs_d2")))
                                   (input-mode2  10 (ccl::mk-menu-subview :menu-list '(":norm" ":list")))
                                   (input-filter  10 (ccl::mk-menu-subview :menu-list '(":at-durations-v1" ":break-at-rest-v1" ":break-at-rest-v1-v2"))))
                 "
Heuristic rule for the relation between durations in two voices. 

Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 

NOTE that this heuristic rule will have most effect on durations: offsets
will be very little affected (if any at all).

<rule> is a function that outputs a numerical weight. Each input will 
receive a list with information regarding a timepoint in the score. If the 
rule has more than one input it will receive information for consecutive 
timepoints. If the input-mode2 is set to list, the rule can only have one 
input. The exact information and format of the list depends on the 
selected input mode (see below).

<voice1> and <voice2> are the numbers for the voices (starting at 0) that 
the rule affects. 

<input-mode1> determines what format for the variables:
 - d1_offset: The rule will receive a list with a duration in voice 1 and 
              the offset to the event in voice 2 that exist at the onset 
              for the duration in voice 1. Rests and grace notes in voice 1 
              are ignored. Grace notes are ignored in voice 2, but rests are
              included. Format: '(duration offset), example: '(1/2 -1/8).
 - d1_offset_d2: Identical to d1_offset but also returns the duration (or 
              rest) in voice 2. Format: '(duration1 offset duration2), 
              example: '(1/2 -1/8 1/4).

<input-mode2>
 - norm: This setting is the normal behaviour of the box. An input receives
              the information for one time point. More than one input it 
              will receive information for consecutive timepoints.
 - list: The rule must have exactly one input. The input will receive a 
              list of all time points that are known when the rule is
              checked. If any of the break-at-rest settings are used, the
              rule will check each segment at a time.

<input-filter> determines what information the rule will receive:
 - at-durations-v1: The rule will receive informaton for all durations  
              (grace notes and rests excluded) in voice 1.
 - break-at-rest-v1: This will only differ from the above setting for
              rules with more than one input. The rule will not not
              check durations that are separated by a rest in voice 1.
              If the list setting is chosen above, the list will be
              segmented at rests in voice 1.
 - break-at-rest-v1-v2: The rule will not check points where voice 1 or
              voice 2 (or both) have a rest. If the rule has more than 
              one input, it will not check timepoints that are separated 
              by a rest in voice 1 or timepoints that have rests in voice 2.
              If the list setting is chosen above, the list will be
              segmented at rests in voice 1 or 2.


The latter 2 settings are useful for rules that are only valid within 
a phrase.


[Backtracking: By default this rule will trigger backtracking in the other
               engine than the engine that failed. If this is not possible, 
               it will trigger backtracking in its own engine.]

A word on efficiency:
The most efficient input mode is the d1_offset (if the input-filter is set
to at-durations-v1): the system is able to check this type of rule earlier than 
rules with other input modes. This is due to that it can consider the last endpoint
as a new onset, without knowing the duration for this new event. This setting
will have more of an impact than other settings. Other input modes will only have
an effect for durations (not offsets).

"

                 (:groupings '(3 2 1) :x-proportions '((0.1 0.15 0.15)(0.25 0.15)(0.4)) :w 0.5)
                 (let* ((rhythm-engine1 (* 2 voice1))
                        (rhythm-engine2 (* 2 voice2)))

;
                   (cond ((and (equal input-mode1 :d1_offs) (equal input-filter :at-durations-v1) (equal input-mode2 :norm))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :at-durations-v1) (equal input-mode2 :norm))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1) (equal input-mode2 :norm))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1) (equal input-mode2 :norm))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :norm))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-break-at-rest-in-voice-1-or-2 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :norm))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-break-at-rest-in-voice-1-or-2 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs) (equal input-filter :at-durations-v1) (equal input-mode2 :list))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :at-durations-v1) (equal input-mode2 :list))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1) (equal input-mode2 :list))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1) (equal input-mode2 :list))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :list))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-list-all-break-at-rest-in-voice-1-or-2 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         ((and (equal input-mode1 :d1_offs_d2) (equal input-filter :break-at-rest-v1-v2) (equal input-mode2 :list))
                          (heuristic-rule-two-engines (heuristic-rule-2-engines-rhythm-and-rhythm-offset-between-voices-indicate-duration-list-all-break-at-rest-in-voice-1-or-2 
                                                       rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)
                          )
                         (t (error "not implemented"))
                         )
                   ))





;rule-2-engines-rhythmic-hierarchy-incl-rests
;heuristic-switch-rule-2-engines-rhythmic-hierarchy-incl-rests

(system::PWGLDef R-rhythm-hierarchy ((voices '(0 1))
                                     (rule-mode  10 (ccl::mk-menu-subview :menu-list '(":dur->dur" ":include-rests"":cells->durations")))
                                     &optional
                                     (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                     (weight 1))
                 "
Rule for a hierarchic relation between onsets in two or more voices. 

<voices> is a list of voice numbers (counted from 0) where the order of 
the voices determines the hierarchical relationship (the first voice 
being the most fundamental). It is also possible to define several 
(independant) relationship by using sublists for each hierarchic 
structure.

<rule-mode>
 - dur->dur: The rule only affects durations. Rests will be ignored 
             in the higher voice in the hierarchy, and not be considered 
             valid onset points in the lower voice.
 - include-rests: The rule will also include the onset points for rests 
             in both voices.
 - cells->durations: As dur->dur, but the onsets in higher voice in the 
             hierarchy will be taken from the onsets for a rhythmic 
             motif (as it is defined in the domain).


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
                 (:groupings '(2)  :extension-pattern '(2) :x-proportions '((0.15 0.25)(0.3 0.1)) :w 0.5)
                 (let* ((all-voice-pairs (create-all-hierarchical-pairs voices))
                        (rhythm-engine-pairs (mapcar #'(lambda (voice-pair) (mapcar #'(lambda (voice) (* 2 voice)) voice-pair)) all-voice-pairs)))

                   (cond ((equal rule-type :heur-switch)
                          (cond ((equal rule-mode :dur->dur)
                                 (loop for engine-pair in rhythm-engine-pairs
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythmic-hierarchy (first engine-pair) (second engine-pair) weight) (first engine-pair) (second engine-pair))))
                                ((equal rule-mode :include-rests)
                                 (loop for engine-pair in rhythm-engine-pairs
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythmic-hierarchy-incl-rests (first engine-pair) (second engine-pair) weight) (first engine-pair) (second engine-pair))))
                                ((equal rule-mode :cells->durations)
                                 (loop for engine-pair in rhythm-engine-pairs
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythmic-hierarchy-cellstart-e1 (first engine-pair) (second engine-pair) weight) (first engine-pair) (second engine-pair))))))
                         (t
                          (cond ((equal rule-mode :dur->dur)
                                 (cond ((= *bktr-rh2v-A* 1)
                                        (loop for engine-pair in rhythm-engine-pairs
                                              collect (rule-two-engines1 (rule-2-engines-rhythmic-hierarchy (first engine-pair) (second engine-pair)) (first engine-pair) (second engine-pair))))
                                       ((= *bktr-rh2v-A* 2)
                                        (loop for engine-pair in rhythm-engine-pairs
                                              collect (rule-two-engines2 (rule-2-engines-rhythmic-hierarchy (first engine-pair) (second engine-pair)) (first engine-pair) (second engine-pair))))))
                                ((equal rule-mode :include-rests)
                                 (cond ((= *bktr-rh2v-B* 1)
                                        (loop for engine-pair in rhythm-engine-pairs
                                              collect (rule-two-engines1 (rule-2-engines-rhythmic-hierarchy-incl-rests (first engine-pair) (second engine-pair)) (first engine-pair) (second engine-pair))))
                                       ((= *bktr-rh2v-B* 2)
                                        (loop for engine-pair in rhythm-engine-pairs
                                              collect (rule-two-engines2 (rule-2-engines-rhythmic-hierarchy-incl-rests (first engine-pair) (second engine-pair)) (first engine-pair) (second engine-pair))))))
                                ((equal rule-mode :cells->durations)
                                 (cond ((= *bktr-rh2v-C* 1)
                                        (loop for engine-pair in rhythm-engine-pairs
                                              collect (rule-two-engines1 (rule-2-engines-rhythmic-hierarchy-cellstart-e1 (first engine-pair) (second engine-pair)) (first engine-pair) (second engine-pair))))
                                       ((= *bktr-rh2v-C* 2)
                                        (loop for engine-pair in rhythm-engine-pairs
                                              collect (rule-two-engines2 (rule-2-engines-rhythmic-hierarchy-cellstart-e1 (first engine-pair) (second engine-pair)) (first engine-pair) (second engine-pair)))))))))))








(system::PWGLDef R-metric-hierarchy ((voices 0)
                                     (rule-mode  10 (ccl::mk-menu-subview :menu-list '(":durations" ":include-rests")))
                                     &optional
                                     (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                     (weight 1))
                 "
Rule for metric hierarchy: the onsets of events will bve forced to line

<voices> is the number for the voice (starting at 0) that the rule 
affects. A list of numbers indicate that the rule is valid for every
voice in the list.

<rule-mode> 
 - durations: The rule only affects durations (including grace notes). 
              Endpoints of durations are not affected.
 - include-rests: The rule affects all events (including rests). Also
              endpoints of events will be affected.


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
                 (:groupings '(2)  :extension-pattern '(2) :x-proportions '((0.1 0.3)(0.3 0.1)) :w 0.5)

                 (when (typep voices 'number) (setf voices (list voices)))
                 (let ((rhythm-engines (mapcar #'(lambda (voice) (* 2 voice)) voices)))
                 ; -1 is the flag to be replaced with the number for the metric engine

                   (cond ((equal rule-type :heur-switch)
                          (cond ((equal rule-mode :durations)
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-grid-rhythm-hierarchy rhythm-engine weight) -1 rhythm-engine)))
                                ((equal rule-mode :include-rests)
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-grid-rhythm-hierarchy-include-rests rhythm-engine weight) -1 rhythm-engine))))
                          )
                         (t
                          (cond ((equal rule-mode :durations)
                                 (cond ((= *bktr-rmh2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-grid-rhythm-hierarchy rhythm-engine) -1 rhythm-engine)))
                                       ((= *bktr-rmh2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-grid-rhythm-hierarchy rhythm-engine) -1 rhythm-engine)))))
                                ((equal rule-mode :include-rests)
                                 (cond ((= *bktr-rmh2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-grid-rhythm-hierarchy-include-rests rhythm-engine) -1 rhythm-engine)))
                                       ((= *bktr-rmh2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-grid-rhythm-hierarchy-include-rests rhythm-engine) -1 rhythm-engine))))))))))





(system::PWGLDef R-note-meter ((rule nil) (voices 0)
                               (format  10 (ccl::mk-menu-subview :menu-list '(":offs" ":d_offs" ":d_offs_m" ":d_offs_m_n")))
                               (metric-structure 10 (ccl::mk-menu-subview :menu-list '(":beats" ":1st-beat")))
                               (rest-mode  10 (ccl::mk-menu-subview :menu-list '(":incl-rests" ":durations")))
                               (gracenotes?  10 (ccl::mk-menu-subview :menu-list '(":normal" ":exclude-gracenotes")))
                               &optional
                               (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                               (weight 1))
                 "
Rule for the metric position of notes and rests. The rule checks all 
events in one voice.

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. Each input will receive the 
information on regarding an events offset to its beat or the first beat of 
its measure. If the rule has more than one input it will receive information 
for consecutive events. The exact information and format of an input depends 
on settings (see below).

<voices> is the number for the voice (starting at 0) that the rule 
affects. A list of numbers indicate that the rule is valid for every
voice in the list.

<format> sets how the information for an input is formated. 
 - offs:       An input will receive the offset to the following beat 
               (i.e. the duration until the following beat). Offset 0 
               indicates that the event is synchronized with the beat.
               If the duration of an event is not necessary to know, this
               setting should be chosen.
 - d_offs:     An input will receive a list with the duration of the 
               event and the offset to the following beat (i.e. the duration 
               until the following beat). Offset 0 indicates that the event
               is synchronized with the beat. Example: '(1/4 -1/8)
 - d_offs_m:   An input will receive a list with the duration of the 
               event, the offset to the following beat (i.e. the duration 
               until the following beat) and the time signature. 
               The time signature is given for the measure where the events
               onset exist (it may be sustained into another measure). 
               ONLY ISE THIS SETTING IF YOU NEED TO KNOW THE TIME SIGNATURE.
               Example: '(1/4 -1/8 (3 4))
 - d_offs_m_n: An input will receive a list with the duration of the 
               event, the offset to the following beat (i.e. the duration 
               until the following beat), the time signature and the pitch. 
               The time signature is given for the measure where the events
               onset exist (it may be sustained into another measure). 
               ONLY ISE THIS SETTING IF YOU NEED TO KNOW THE PITCH.
               Example: '(1/4 -1/8 (3 4) 60)

<metric-structure> 
 - beats: The offsets will relate to the following beat.
 - 1st-beat:  The offset will relate to the following 1st beat in the 
              next measure.

<rest-mode>
 - incl.rests: The rule will be checked for durations and rests (rests are
              indicated as negative durations). If rests are not included
              in the domain, this setting should be chosen.
 - durations: The rule will not be checked for rests (if the rule has
              more than one input, rests will be skipped).

<gracenotes?>
 - normal:    The rule will include grace notes as separate events. If
              grace notes are not included in the domain, this setting 
              should be chosen.
 - exclude-gracenotes: The rule will not be checkes for grace notes (if 
              the rule has more than one input, grace notes will be 
              skipped).

Efficiency: The most efficient setting is <offs>, <incl.rests>, since
it the rule can assume that an offset always is a new onset and it can 
check the rule before the next event is assigned. Least efficient is the
<d_offs_m> setting, since the rule cannot be checked until the time 
signature is known for a metric point. 

Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
                 (:groupings '(3 1 2)  :extension-pattern '(2) :x-proportions '((0.1 0.1 0.2) (0.4)(0.2 0.2)(0.3 0.1)) :w 0.5)
                 (when (typep voices 'number) (setf voices (list voices)))

                 (let ((rhythm-engines (mapcar #'(lambda (voice) (* 2 voice)) voices))
                       (pitch-engines (mapcar #'(lambda (voice) (1+ (* 2 voice))) voices))
                       (metric-structure-flag (if (equal metric-structure :beats) 1 2)))
                 ; -1 is the flag to be replaced with the number for the metric engine

                   (cond ((equal rule-type :heur-switch)
                          (cond ((and (equal format :offs) (equal rest-mode :incl-rests) (equal gracenotes? :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-offset-to-metric-structure-include-rests 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :offs) (equal rest-mode :durations) (equal gracenotes? :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-offset-to-metric-structure-ignor-rests 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :offs) (equal rest-mode :incl-rests) (equal gracenotes? :exclude-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-offset-to-metric-structure-include-rests-ignor-gracenotes 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :offs) (equal rest-mode :durations) (equal gracenotes? :exclude-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-offset-to-metric-structure-ignor-rests-and-gracenotes 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :incl-rests) (equal gracenotes? :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-and-their-offset-to-metric-structure-include-rests 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :durations) (equal gracenotes? :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :incl-rests) (equal gracenotes? :exclude-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :durations) (equal gracenotes? :exclude-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :incl-rests) (equal gracenotes? :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-indicate-timesignature 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :durations) (equal gracenotes? :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :incl-rests) (equal gracenotes? :exclude-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :durations) (equal gracenotes? :exclude-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs_m_n) (equal rest-mode :incl-rests) (equal gracenotes? :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       for pitch-engine in pitch-engines
                                       collect (heuristic-rule-three-engines (heuristic-switch-rule-3-engines-notes-and-their-offset-to-metric-structure-include-rests-indicate-timesignature 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag weight) -1 rhythm-engine pitch-engine))
                                 )
                                ((and (equal format :d_offs_m_n) (equal rest-mode :incl-rests) (equal gracenotes? :exclude-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       for pitch-engine in pitch-engines
                                       collect (heuristic-rule-three-engines (heuristic-switch-rule-3-engines-notes-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag weight) -1 rhythm-engine pitch-engine))
                                 )
                                ((and (equal format :d_offs_m_n) (equal rest-mode :durations) (equal gracenotes? :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       for pitch-engine in pitch-engines
                                       collect (heuristic-rule-three-engines (heuristic-switch-rule-3-engines-notes-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag weight) -1 rhythm-engine pitch-engine))
                                 )
                                ((and (equal format :d_offs_m_n) (equal rest-mode :durations) (equal gracenotes? :exclude-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       for pitch-engine in pitch-engines
                                       collect (heuristic-rule-three-engines (heuristic-switch-rule-3-engines-notes-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag weight) -1 rhythm-engine pitch-engine))
                                 )

                                (t
                                 (error "Not implemented in the R-note-meter.")
                                 ))
                          )
                         (t
                          (cond ((and (equal format :offs) (equal rest-mode :incl-rests) (equal gracenotes? :normal))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-offset-to-metric-structure-include-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-offset-to-metric-beat-include-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :offs) (equal rest-mode :durations) (equal gracenotes? :normal))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-offset-to-metric-structure-ignor-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-offset-to-metric-structure-ignor-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :offs) (equal rest-mode :incl-rests) (equal gracenotes? :exclude-gracenotes))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-offset-to-metric-structure-include-rests-ignor-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-offset-to-metric-structure-include-rests-ignor-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :offs) (equal rest-mode :durations) (equal gracenotes? :exclude-gracenotes))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-offset-to-metric-structure-ignor-rests-and-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-offset-to-metric-structure-ignor-rests-and-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :incl-rests) (equal gracenotes? :normal))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :durations) (equal gracenotes? :normal))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :incl-rests) (equal gracenotes? :exclude-gracenotes))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :durations) (equal gracenotes? :exclude-gracenotes))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :incl-rests) (equal gracenotes? :normal))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :durations) (equal gracenotes? :normal))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :incl-rests) (equal gracenotes? :exclude-gracenotes))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :durations) (equal gracenotes? :exclude-gracenotes))
                                 (cond ((= *bktr-dm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs_m_n) (equal rest-mode :incl-rests) (equal gracenotes? :normal))
                                 (cond ((= *bktr-nm1v* 1)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines1 (rule-3-engines-notes-and-their-offset-to-metric-structure-include-rests-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ((= *bktr-nm1v* 2)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines2 (rule-3-engines-notes-and-their-offset-to-metric-structure-include-rests-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engin)))
                                       ((= *bktr-nm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines3 (rule-3-engines-notes-and-their-offset-to-metric-structure-include-rests-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engin))))
                                 )
                                ((and (equal format :d_offs_m_n) (equal rest-mode :durations) (equal gracenotes? :normal))
                                 (cond ((= *bktr-nm1v* 1)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines1 (rule-3-engines-notes-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ((= *bktr-nm1v* 2)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines2 (rule-3-engines-notes-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engin)))
                                       ((= *bktr-nm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines3 (rule-3-engines-notes-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engin))))
                                 )
                                ((and (equal format :d_offs_m_n) (equal rest-mode :incl-rests) (equal gracenotes? :exclude-gracenotes))
                                 (cond ((= *bktr-nm1v* 1)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines1 (rule-3-engines-notes-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ((= *bktr-nm1v* 2)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines2 (rule-3-engines-notes-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engin)))
                                       ((= *bktr-nm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines3 (rule-3-engines-notes-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engin))))
                                 )
                                ((and (equal format :d_offs_m_n) (equal rest-mode :durations) (equal gracenotes? :exclude-gracenotes))
                                 (cond ((= *bktr-nm1v* 1)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines1 (rule-3-engines-notes-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ((= *bktr-nm1v* 2)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines2 (rule-3-engines-notes-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engin)))
                                       ((= *bktr-nm1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines3 (rule-3-engines-notes-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engin))))
                                 )
                                (t (error "Not yet implemented"))
                                )
                          ))))





(system::PWGLDef HR-duration-meter ((rule nil) (voices 0)
                                    (format  10 (ccl::mk-menu-subview :menu-list '(":dur_offset" ":offset")))
                                    (metric-structure 10 (ccl::mk-menu-subview :menu-list '(":beats" ":1st-beat")))
                                    (rest-mode  10 (ccl::mk-menu-subview :menu-list '(":incl-rests" ":durations")))
                                    (gracenotes?  10 (ccl::mk-menu-subview :menu-list '(":normal" ":exclude-gracenotes"))))
                 "

Heuristic rule for the metric position of durations and rests. The rule 
checks all events in one voice.

Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 

<rule> is a function that outputs a numerical weight.  Each input will  
receive the information on regarding an events offset to its beat or the 
first beat of its measure. If the rule has more than one input it will  
receive information for consecutive events. The exact information and 
format of an input depends on settings (see below).

<voices> is the number for the voice (starting at 0) that the rule 
affects. A list of numbers indicate that the rule is valid for every
voice in the list.

<format> sets how the information for an input is formated. 
 - dur_offset: An input will receive a list with the duration of the 
               event and the offset to the following beat (i.e. the duration 
               until the following beat). Offset 0 indicates that the event
               is synchronized with the beat. Example: '(1/4 -1/8)
 - offset:     An input will receive the offset to the following beat 
               (i.e. the duration until the following beat). Offset 0 
               indicates that the event is synchronized with the beat.
               If the duration of an event is not necessary to know, this
               setting should be chosen.

<metric-structure> 
 - beats: The offsets will relate to the following beat.
 - 1st-beat:  The offset will relate to the following 1st beat in the 
              next measure.

<rest-mode>
 - incl.rests: The rule will be checked for durations and rests (rests are
              indicated as negative durations). If rests are not included
              in the domain, this setting should be chosen.
 - durations: The rule will not be checked for rests (if the rule has
              more than one input, rests will be skipped).

<gracenotes?>
 - normal:    The rule will include grace notes as separate events. If
              grace notes are not included in the domain, this setting 
              should be chosen.
 - exclude-gracenotes: The rule will not be checkes for grace notes (if 
              the rule has more than one input, grace notes will be 
              skipped).


"
                 (:groupings '(3 1 2)  :x-proportions '((0.1 0.1 0.2) (0.4)(0.2 0.2)) :w 0.5)
                 (when (typep voices 'number) (setf voices (list voices)))

                 (let ((rhythm-engines (mapcar #'(lambda (voice) (* 2 voice)) voices))
                       (metric-structure-flag (if (equal metric-structure :beats) 1 2)))
                 ; -1 is the flag to be replaced with the number for the metric engine

                   (cond ((and (equal format :offset) (equal rest-mode :incl-rests) (equal gracenotes? :normal))
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-events-offset-to-metric-structure-include-rests 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         ((and (equal format :offset) (equal rest-mode :durations) (equal gracenotes? :normal))
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-durations-offset-to-metric-structure-ignor-rests 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         ((and (equal format :offset) (equal rest-mode :incl-rests) (equal gracenotes? :exclude-gracenotes))
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-events-offset-to-metric-structure-include-rests-ignor-gracenotes 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         ((and (equal format :offset) (equal rest-mode :durations) (equal gracenotes? :exclude-gracenotes))
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-durations-offset-to-metric-structure-ignor-rests-and-gracenotes 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         ((and (equal format :dur_offset) (equal rest-mode :incl-rests) (equal gracenotes? :normal))
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-events-and-their-offset-to-metric-structure-include-rests 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         ((and (equal format :dur_offset) (equal rest-mode :durations) (equal gracenotes? :normal))
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         ((and (equal format :dur_offset) (equal rest-mode :incl-rests) (equal gracenotes? :exclude-gracenotes))
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         ((and (equal format :dur_offset) (equal rest-mode :durations) (equal gracenotes? :exclude-gracenotes))
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))

                          )
                         )))







(system::PWGLDef HR-meter-duration ((rule nil) (voices 0)
                                    (format  10 (ccl::mk-menu-subview :menu-list '(":offset" ":offset_dur" ":list-all-offsets" ":list-all-offs_dur")))
                                    (metric-structure 10 (ccl::mk-menu-subview :menu-list '(":beats" ":1st-beat"))))

                 "
Heuristic rule for durations and rests at metric timepoints. The heuristic 
rule will affect all metric timepoints (see the setting for the metric 
structure). Grace notes are ignored by the rule.

Heuristic rules sort the candidates locally according to weights. 
The true/false rules will test candidates that receive high weights by
the heuristic rules before other candidates (and in this way give them
higher priority). A heuristic rule can never fail a candidate, nor 
can it trigger backtracking of an engine. 


<rule> is a function that outputs a numerical weight.  Each input will  
receive the information on regarding the offset to the onset for the 
event that coinside with a metric time point (i.e. every beat or only 
the first beat of every measure). If the rule has more than one input 
it will receive information for consecutive metric timepoints The exact 
information and format of an input depends on settings (see below).

<voices> is the number for the voice (starting at 0) that the rule 
affects. A list of numbers indicate that the rule is valid for every
voice in the list.

<format> sets how the information for an input is formated. 
 - offset:     An input will receive the offset to the onset for the 
               event that coinside with the metric timepoint. Offset 0 
               indicates that the event is synchronized with the beat.
               If the duration of an event is not necessary to know, this
               setting should be chosen.
 - offset_dur: An input will receive a list with the duration of the 
               event and its offset to the beat that is checked beat. 
               Offset 0 indicates that the event is synchronized with 
               the beat. Example: '(-1/8 1/4)
 - list-all-offsets: The rule should only have one input. It will receive
               a list of all offsets (as described above) upto the
               point where the rule is checked.
 - list-all-offs_dur: The rule should only have one input. It will receive
               a list of all offset-duration pairs (as described above)
               upto the point where trhe rule is checked.

<metric-structure> 
 - beats: The rule will be applied at every beat.
 - 1st-beat:  The rule will be applied at the first beat of every measure.


"
                 (:groupings '(3 1) :x-proportions '((0.1 0.1 0.2)(0.4)) :w 0.5)

                 (when (typep voices 'number) (setf voices (list voices)))

                 (let ((rhythm-engines (mapcar #'(lambda (voice) (* 2 voice)) voices))
                       (metric-structure-flag (if (equal metric-structure :beats) 1 2)))
                 ; -1 is the flag to be replaced with the number for the metric engine

                   (cond ((equal format :offset)
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-metric-timepoints-and-events-include-rests 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         ((equal format :offset_dur)
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         ((equal format :list-all-offsets)
                          (loop for rhythm-engine in rhythm-engines
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-metric-timepoints-and-events-include-rests-list-all 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         ((equal format :list-all-offs_dur)
                          (loop for rhythm-engine in rhythm-engines 
                                collect (heuristic-rule-two-engines (heuristic-rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-list-all 
                                                                     rule rhythm-engine metric-structure-flag) -1 rhythm-engine))
                          )
                         )
                   ))





(system::PWGLDef R-meter-note ((rule nil) (voices 0)
                               (metric-structure 10 (ccl::mk-menu-subview :menu-list '(":beats" ":1st-beat")))
                               (input-mode1  10 (ccl::mk-menu-subview :menu-list '(":offset" ":offset_dur" ":offset_dur_meter" ":offset_dur_pitch" ":offset_dur_pitch_meter" ":offset_motif" ":offset_motif_meter")))
                               (input-mode2  10 (ccl::mk-menu-subview :menu-list '(":norm" ":list")))
                               &optional
                               (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                               (weight 1))
                 "
Rule for notes at metric timepoints. The rule will check
all metric timepoints (see the setting for the metric structure). 
Grace notes are ignored by the rule.

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. Each input will receive the 
information on regarding the offset to the onset for the note that 
coinside with a metric time point (i.e. every beat or only the first
beat of every measure). If the rule has more than one input it will 
receive information for consecutive metric timepoints. The exact 
information and format of an input depends on settings (see below).

<voices> is the number for the voice (starting at 0) that the rule 
affects. A list of numbers indicate that the rule is valid for every
voice in the list.

<input-mode1> sets how the information for an input is formated. 
 - offset:     An input will receive the offset to the onset for the 
               event that coinside with the metric timepoint. Offset 0 
               indicates that the event is synchronized with the beat.
               If the duration of a note is not necessary to know, this
               setting should be chosen. Example: '(-1/8)
 - offset_dur: An input will receive a list with the duration of the 
               event and its offset to the beat that is checked. 
               Offset 0 indicates that the event is synchronized with 
               the beat. If the pitch of a note is not necessary to 
               know, this setting should be chosen. Example: '(-1/8 1/4)
 - offset_dur_pitch: An input will receive a list with the duration and
               pitch of the note and its offset to the beat that is 
               checked. Offset 0 indicates that the note is synchronized 
               with the beat. Example: '(-1/8 1/4 60)
 - offset_dur_pitch_meter: As the previous option, but also accesses the
               time signature. Example: '(-1/8 1/4 60 (3 4))
 - offset_motif: An input will receive the offset to the onset for the 
               rhytm motif that coinside with the metric timepoint. Offset 
               0 indicates that the motif is synchronized with the beat.
               The motif will also be accessed. If the meter is not
               necessary to know, use this mode (and noot the following).
               Example: '(-1/8 (1/8 1/16 1/16))
 - offset_motif_meter: As the previous input mode, but also the time 
               signature will be accessed.
               Example: '(-1/8 (1/8 1/16 1/16) (3 4))

<input-mode2>
 - norm: This setting is the normal behaviour of the box. An input receives
              the information for one time point. More than one input  
              will receive information for consecutive timepoints.
 - list: The rule must have exactly one input. The input will receive a 
              list of all time points that are known when the rule is
              checked. 


<metric-structure> 
 - beats: The rule will be applied at every beat.
 - 1st-beat:  The rule will be applied at the first beat of every measure.


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
                 (:groupings '(3 2)  :extension-pattern '(2) :x-proportions '((0.1 0.1 0.2)(0.3 0.1)(0.25 0.15)) :w 0.5)

                 (when (typep voices 'number) (setf voices (list voices)))

                 (let ((rhythm-engines (mapcar #'(lambda (voice) (* 2 voice)) voices))
                       (pitch-engines (mapcar #'(lambda (voice) (1+ (* 2 voice))) voices))
                       (metric-structure-flag (if (equal metric-structure :beats) 1 2)))
                 ; -1 is the flag to be replaced with the number for the metric engine

                   (cond ((equal rule-type :heur-switch)
                          (cond ((and (equal input-mode1 :offset) (equal input-mode2 :norm))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-events-include-rests 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal input-mode1 :offset_dur) (equal input-mode2 :norm))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal input-mode1 :offset_dur_meter) (equal input-mode2 :norm))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-and-meter 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal input-mode1 :offset_motif) (equal input-mode2 :norm))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-rhythmcells-include-rests-indicate-cell 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal input-mode1 :offset_motif_meter) (equal input-mode2 :norm))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-rhythmcells-include-rests-indicate-cell-and-timesign 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal input-mode1 :offset_dur_pitch) (equal input-mode2 :norm))
                                 (loop for rhythm-engine in rhythm-engines
                                       for pitch-engine in pitch-engines
                                       collect (heuristic-rule-three-engines (heuristic-switch-rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration 
                                                                              rule rhythm-engine pitch-engine metric-structure-flag weight) -1 rhythm-engine pitch-engine))
                                 )
                                ((and (equal input-mode1 :offset_dur_pitch_meter) (equal input-mode2 :norm))
                                 (loop for rhythm-engine in rhythm-engines
                                       for pitch-engine in pitch-engines
                                       collect (heuristic-rule-three-engines (heuristic-switch-rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration-and-meter 
                                                                              rule rhythm-engine pitch-engine metric-structure-flag weight) -1 rhythm-engine pitch-engine))
                                 )
                                ((and (equal input-mode1 :offset) (equal input-mode2 :list))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-events-include-rests-list-all 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal input-mode1 :offset_dur) (equal input-mode2 :list))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-list-all 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal input-mode1 :offset_dur_pitch) (equal input-mode2 :list))
                                 (loop for rhythm-engine in rhythm-engines
                                       for pitch-engine in pitch-engines
                                       collect (heuristic-rule-three-engines (heuristic-switch-rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration-list-all 
                                                                              rule rhythm-engine pitch-engine metric-structure-flag weight) -1 rhythm-engine pitch-engine))
                                 )
                                ((and (equal input-mode1 :offset_motif) (equal input-mode2 :list))
                                 (error "The list mode is not yet implemented for the offset_motif setting on the R-meter-note.")
                                 )
                                ((and (equal input-mode1 :offset_motif_meter) (equal input-mode2 :list))
                                 (error "The list mode is not yet implemented for the offset_motif_meter setting on the R-meter-note.")
                                 )
                                ((and (equal input-mode1 :offset_dur_pitch_meter) (equal input-mode2 :list))
                                 (error "The list mode is not yet implemented for the offset_dur_pitch_meter setting on the R-meter-note.")
                                 )
                                ((and (equal input-mode1 :offset_dur_meter) (equal input-mode2 :list))
                                 (error "The list mode is not yet implemented for the offset_dur_meter setting on the R-meter-note.")
                                 ))
                          )
                         (t
                          (cond ((and (equal input-mode1 :offset) (equal input-mode2 :norm))
                                 (cond ((= *bktr-md1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-events-include-rests rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-events-include-rests rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                ((and (equal input-mode1 :offset_dur) (equal input-mode2 :norm))
                                 (cond ((= *bktr-md1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                ((and (equal input-mode1 :offset_dur_meter) (equal input-mode2 :norm))
                                 (cond ((= *bktr-md1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-and-meter rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-and-meter rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                ((and (equal input-mode1 :offset_motif) (equal input-mode2 :norm))
                                 (cond ((= *bktr-md1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-rhythmcells-include-rests-indicate-cell rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-rhythmcells-include-rests-indicate-cell rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                ((and (equal input-mode1 :offset_motif_meter) (equal input-mode2 :norm))
                                 (cond ((= *bktr-md1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-rhythmcells-include-rests-indicate-cell-and-timesign rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-rhythmcells-include-rests-indicate-cell-and-timesign rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                ((and (equal input-mode1 :offset_dur_pitch) (equal input-mode2 :norm))
                                 (cond ((= *bktr-mn1v* 1)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines1 (rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ((= *bktr-mn1v* 2)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines2 (rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ((= *bktr-mn1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines3 (rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ))
                                ((and (equal input-mode1 :offset_dur_pitch_meter) (equal input-mode2 :norm))
                                 (cond ((= *bktr-mn1v* 1)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines1 (rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration-and-meter 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ((= *bktr-mn1v* 2)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines2 (rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration-and-meter 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ((= *bktr-mn1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines3 (rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration-and-meter 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ))
                                ((and (equal input-mode1 :offset) (equal input-mode2 :list))
                                 (cond ((= *bktr-md1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-events-include-rests-list-all rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-events-include-rests-list-all rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                ((and (equal input-mode1 :offset_dur) (equal input-mode2 :list))
                                 (cond ((= *bktr-md1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-list-all rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md1v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-list-all rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                ((and (equal input-mode1 :offset_dur_pitch) (equal input-mode2 :list))
                                 (cond ((= *bktr-mn1v* 1)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines1 (rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration-list-all 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ((= *bktr-mn1v* 2)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines2 (rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration-list-all 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine)))
                                       ((= *bktr-mn1v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              for pitch-engine in pitch-engines
                                              collect (rule-three-engines3 (rule-3-engines-metric-timepoints-events-and-pitch-include-rests-indicate-duration-list-all 
                                                                            rule rhythm-engine pitch-engine metric-structure-flag) -1 rhythm-engine pitch-engine))))
                                 )
                                ((and (equal input-mode1 :offset_motif) (equal input-mode2 :list))
                                 (error "The list mode is not yet implemented for the offset_motif setting on the R-meter-note.")
                                 )
                                ((and (equal input-mode1 :offset_motif_meter) (equal input-mode2 :list))
                                 (error "The list mode is not yet implemented for the offset_motif_meter setting on the R-meter-note.")
                                 )
                                ((and (equal input-mode1 :offset_dur_pitch_meter) (equal input-mode2 :list))
                                 (error "The list mode is not yet implemented for the offset_dur_pitch_meter setting on the R-meter-note.")
                                 )
                                ((and (equal input-mode1 :offset_dur_meter) (equal input-mode2 :list))
                                 (error "The list mode is not yet implemented for the offset_dur_meter setting on the R-meter-note.")
                                 ))            


                          ))))


;;;;;;;;;;;;FLEXIBLE NUMBER OF VOICES
;Simple list with all events

(system::PWGLDef R-list-all-events ((rule nil)
                                    (voices '(0 1))
                                    (parameter  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations")))
                                    &optional
                                    (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                    (weight 1))
    "
Rule that accesses lists with ALL pitches or durations in any number of voices. 

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. Each input will receive a list 
with all events in the corresponding voice. The logic statement must have 
the same number of inputs as the number of voices it accesses.

<voices> is a list with the numbers for the voices (starting at 0) that 
the rule affects. Any number of voices can be accessed by the rule, 
however for efficiency reasons it is advised to rather split the rule
into several simpler rules (that only access a few number of voices) if possible.
If voices are given as a list of lists, each sublist will be considered
an individual rule.

<parameter> determines if the rule will access pitches or durations:



[Backtracking: By default this rule will trigger backtracking in the 
               engine following the one that failed. If this is not 
               possible, it will trigger backtracking in its own engine.
               The order of the engines is the same as in the <voices>
               input.]


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate)."

    (:groupings '(2 1)  :extension-pattern '(2) :x-proportions '((0.5 0.5)(1.0)(0.3 0.1)) :w 0.5)

    (cond ((numberp voices) (setf voices (list (list voices))))
          ((numberp (car voices)) (setf voices  (list voices))))

    (loop for voice-group in voices
          collect
          (cond ((equal rule-type :heur-switch)

                 (cond ((equal parameter :pitches)  
                        (heuristic-switch-rule-all-pitches-in-n-voices rule voice-group weight))
                       ((equal parameter :durations)
                        (heuristic-switch-rule-all-durations-in-n-voices rule voice-group weight))
                       )
                 )
                (t ;true/false rule
                 (cond ((equal parameter :pitches)  
                        (cond ((= *bktr-leNv-A* 1)
                  ;prefer to backtrack the same engine
                               (rule-all-pitches-in-n-voices1 rule voice-group))
                              ((= *bktr-leNv-A* 2)
                  ;prefer to backtrack the next engine
                               (rule-all-pitches-in-n-voices2 rule voice-group)
                               )))
                                
                                
                       ((equal parameter :durations)
                        (cond ((= *bktr-leNv-B* 1)
                  ;prefer to backtrack the same engine
                               (rule-all-durations-in-n-voices1 rule voice-group))
                              ((= *bktr-leNv-B* 2)
                  ;prefer to backtrack the next engine
                               (rule-all-durations-in-n-voices2 rule voice-group)
                               )))
                       )))))



(system::PWGLDef HR-list-all-events ((rule nil)
                                     (voices '(0 1))
                                     (parameter  10 (ccl::mk-menu-subview :menu-list '(":pitches" ":durations")))
                                     )
                 "
Heuristic rule that accesses lists with ALL pitches or durations in any number of voices. 

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. Each input will receive a list 
with all events in the corresponding voice. The logic statement must have 
the same number of inputs as the number of voices it accesses.

<voices> is a list with the numbers for the voices (starting at 0) that 
the rule affects. Any number of voices can be accessed by the rule, 
however for efficiency reasons it is advised to rather split the rule
into several simpler rules (that only access a few number of voices) if possible.
If voices are given as a list of lists, each sublist will be considered
an individual heuristic rule.

<parameter> determines if the rule will access pitches or durations:


"

                 (:groupings '(2 1) :x-proportions '((0.5 0.5)(1.0)) :w 0.5)

                 (cond ((numberp voices) (setf voices (list (list voices))))
                       ((numberp (car voices)) (setf voices  (list voices))))
                 (loop for voice-group in voices
                       collect
                       (cond ((equal parameter :pitches)  
                              (heuristic-rule-all-pitches-in-n-voices rule voice-group))
                             ((equal parameter :durations)
                              (heuristic-rule-all-durations-in-n-voices rule voice-group))
                             )))



(system::PWGLDef R-pitch-pitch ((rule nil)
                                (list-all-voices '(0 1))
                                (timepoints '(0))
                                (input-mode  10 (ccl::mk-menu-subview :menu-list '(":all" ":beat" ":1st-beat" ":1st-voice" ":at-timepoints")))
                                (gracenotes?  10 (ccl::mk-menu-subview :menu-list '(":exclude-gracenotes" ":normal")))
                                (format  10 (ccl::mk-menu-subview :menu-list '(":pitch" ":p_d_offs" ":p_d_offs+timepoint")))
                                &optional
                                (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                (weight 1))
                 "Rule that accesses simultaneous pitches in 2 or more voices. 

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. Each input will receive a list 
with simultaneous pitches (optional with duration and offsets). If the 
rule has more than one input it will receive information for consecutive 
events (the positions of the events are determined by the input-mode 
setting).

<list-of-voices> is a list with the numbers of the voices (starting at 0) that 
the rule accesses. Any number of voices can be accessed by the rule. It is also 
possible to give a list of lists of voices: all sublists will generate a 
separate rule. All voices must have a pitch and rhythm domain. For efficiency 
reasons it is advised to rather split the rule into several simpler rules 
(that only access a few number of voices) if possible. This will make it 
possible to find failed candidates sooner, and to be more precise about what 
caused backtracking.

<timepoints>  This input is only considered if the input-mode is 
              at-timepoints. This is a list of absolute timepoints 
              (starting at 0) where the rue will be checked. 
              Ex. (0 5/4 9/4)

<input-mode> sets at what time points the rule will be checked. 
 - all:        The rule will be checked at every harmonic slice.
               Every time any voice has a new note event, the rule
               will be checked.
- beat:        The rule will be checked at metric beats.
- 1st-beat:    The rule will be checked at the first [down] beat
               in every measure.
- 1st-voice:   The rule will be checked at the onset of every new note 
               in the first voice in the list-of-voices.
- at-timepoints:  The rule will be checked at the timepoints in the 
               timepoints input.
<gracenotes?>  
- exclude-gracenotes:    Pitches that relate to grace notes will be ignored.
- normal:  Grace notes are also checked by the rule:
               they are related to the regular notes in the other
               voices.
               
<format> sets the format an input on the abstraction will receive. Note
that rests will be indicated as nil (without the specification of teh exact 
duration of the rest).
- pitch:       Each input receives a list with simultaneous pitches.
               Each pitch belongs to the corresponding voice indicated 
               in the <list-voices> input. Ex. '(67 60)
- p_d_offs:    Each input receives a list of lists. Each sublist represent 
               a corresponding voice indicated in the <list-voices> input.
               A sublist contains the information about an events pitch, 
               duration and offset between the events onset and the time
               point the rule was checked (this is determined by the
               <input-mode> setting). Offsets are either 0 or a negative 
               distance. Ex. '((67 1/4 0) (60 1/4 -1/8)).
- p_d_offs+timepoint: Each input receives a list of lists. Each sublist  
               represent a corresponding voice indicated in the <list-voices> 
               input. In addition, the time point for when the rule is 
               checked is added as a final value (note that this value 
               is not in a sublist). A sublist contains the information 
               about an events pitch, duration and offset between the 
               events onset and the time point the rule was checked (this 
               is determined by the <input-mode> setting). Offsets are 
               either 0 or a negative distance. 
               Ex. '((67 1/4 0) (60 1/4 -1/8) 5/4).

list-all-voices can include any number of voices. All voices must have a pitch 
and rhythm domain.

DO NOT use this rule to restrict rests in relation to other rests: use instead
the r-rhythm-rhythm.

Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
                 (:groupings '(2 2 2) :extension-pattern '(2) :x-proportions '((0.2 0.2)(0.1 0.3)(0.2 0.2)(0.25 0.15)) :w 0.5)

                 (when timepoints (setf timepoints (sort timepoints '<)))
                 (when (/= (count-if 'minusp timepoints) 0) (error "Error in inputs to R-pitch-pitch: timepoints cannot be negative"))
                 (when (numberp (car list-all-voices)) (setf list-all-voices (list list-all-voices)))
                 

                 (loop for list-voices in list-all-voices ;to make it possible to have a list of voice definitions
                       collect (let ((list-with-engine-nrs (apply 'append (loop for voice in list-voices collect (list (* 2 voice) (1+ (* 2 voice)))))))
                                 (cond ((equal format :pitch) ;rules for only pitch information (no duration)
                                        (cond ((equal rule-type :heur-switch) 
                                               (cond ((equal input-mode :all)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-in-n-voices rule list-voices weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-in-n-voices rule list-voices weight))))
                                                     ((equal input-mode :beat)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-in-n-voices rule list-voices 'get-all-beats weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-on-beat-in-n-voices rule list-voices 'get-all-beats weight)))
                                                      )
                                                     ((equal input-mode :1st-beat)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-in-n-voices rule list-voices 'get-1st-down-beats weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-on-beat-in-n-voices rule list-voices 'get-1st-down-beats weight)))
                                                      )
                                                     ((equal input-mode :1st-voice)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-in-n-voices rule list-voices weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-in-n-voices rule list-voices weight)))
                                                      )
                                                     ((equal input-mode :at-timepoints)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-at-timepoints-include-gracenotes-in-n-voices rule timepoints list-voices weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-at-timepoints-in-n-voices rule timepoints list-voices weight)))
                                                      )

                                                     ))

                                              (t ;true/false rule
                                               (cond ((equal input-mode :all)
                                                      (cond ((equal gracenotes? :normal)
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-A* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-A* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-A* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-A* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes rule list-voices) list-with-engine-nrs)))
                                                            (t
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-A* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-A* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-A* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-A* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch rule list-voices) list-with-engine-nrs))))
                                                      )
                                                     ((equal input-mode :beat)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)
             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat rule list-voices 'get-all-beats) list-with-engine-nrs -1)))
                                                            (t
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-on-beat rule list-voices 'get-all-beats) list-with-engine-nrs -1)))
                                                            ))
                                                     ((equal input-mode :1st-beat)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat rule list-voices 'get-1st-down-beats) list-with-engine-nrs -1)))
                                                            (t
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-on-beat rule list-voices 'get-1st-down-beats) list-with-engine-nrs -1))))
                                                      )
                                                     ((equal input-mode :1st-voice)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-C* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-C* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-C* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-C* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes rule list-voices) list-with-engine-nrs)))
                                                            (t

                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-C* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-C* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-C* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-C* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-1st-voice-onsets rule list-voices) list-with-engine-nrs))))
                                                      )
                                                     ((equal input-mode :at-timepoints)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-D* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-D* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-D* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-D* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes rule timepoints list-voices) list-with-engine-nrs)))
                                                            (t

                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-D* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-D* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-D* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-D* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-timepoints rule timepoints list-voices) list-with-engine-nrs))))
                                                      ))))

                                        )
                                       ;;;;;;;;;;;;;;;;;;;;;;;;
                                       ((equal format :p_d_offs)       ;rules for pitch and duration
                                        (cond ((equal rule-type :heur-switch) 

                                               (cond ((equal input-mode :all)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-with-durations-and-offset-in-n-voices rule list-voices weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-with-durations-and-offset-in-n-voices rule list-voices weight))))
                                                     ((equal input-mode :beat)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-with-durations-and-offset-in-n-voices rule list-voices 'get-all-beats weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-on-beat-with-durations-and-offset-in-n-voices rule list-voices 'get-all-beats weight)))
                                                      )
                                                     ((equal input-mode :1st-beat)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-with-durations-and-offset-in-n-voices rule list-voices 'get-1st-down-beats weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-on-beat-with-durations-and-offset-in-n-voices rule list-voices 'get-1st-down-beats weight)))
                                                      )
                                                     ((equal input-mode :1st-voice)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-and-offset-in-n-voices rule list-voices weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-with-durations-and-offset-in-n-voices rule list-voices weight)))
                                                      )
                                                     ((equal input-mode :at-timepoints)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-and-offset-in-n-voices rule timepoints list-voices weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-at-timepoints-with-durations-and-offset-in-n-voices rule timepoints list-voices weight)))
                                                      )

                                                     )
                                               )
                 
                                              (t ;true/false rule
                                               (cond ((equal input-mode :all)
                                                      (cond ((equal gracenotes? :normal)
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-A* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-A* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-A* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-A* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-with-durations-and-offset rule list-voices) list-with-engine-nrs)))
                                                            (t
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-A* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-A* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-A* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-A* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-with-durations-and-offset rule list-voices) list-with-engine-nrs))))
                                                      )
                                                     ((equal input-mode :beat)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)
             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat-with-durations-and-offset rule list-voices 'get-all-beats) list-with-engine-nrs -1)))
                                                            (t
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-on-beat-with-durations-and-offset rule list-voices 'get-all-beats) list-with-engine-nrs -1)))
                                                            ))
                                                     ((equal input-mode :1st-beat)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat-with-durations-and-offset rule list-voices 'get-1st-down-beats) list-with-engine-nrs -1)))
                                                            (t
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-on-beat-with-durations-and-offset rule list-voices 'get-1st-down-beats) list-with-engine-nrs -1))))
                                                      )
                                                     ((equal input-mode :1st-voice)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-C* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-C* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-C* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-C* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-and-offset rule list-voices) list-with-engine-nrs)))
                                                            (t

                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-C* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-C* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-C* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-C* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-with-durations-and-offset rule list-voices) list-with-engine-nrs))))
                                                      )
                                                     ((equal input-mode :at-timepoints)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-D* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-D* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-D* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-D* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-and-offset rule timepoints list-voices) list-with-engine-nrs)))
                                                            (t

                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-D* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-D* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-D* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-D* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-timepoints-with-durations-and-offset rule timepoints list-voices) list-with-engine-nrs))))
                                                      )))))

                                       (t       ;rules for pitch and duration WITH timepoint

;missing heuristics
                                        (cond ((equal rule-type :heur-switch) 

                                               (cond ((equal input-mode :all)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-with-durations-offset-and-timepoint-in-n-voices rule list-voices weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-with-durations-offset-and-timepoint-in-n-voices rule list-voices weight))))
                                                     ((equal input-mode :beat)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-with-durations-offset-and-timepoint-in-n-voices rule list-voices 'get-all-beats weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-on-beat-with-durations-offset-and-timepoint-in-n-voices rule list-voices 'get-all-beats weight)))
                                                      )
                                                     ((equal input-mode :1st-beat)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-with-durations-offset-and-timepoint-in-n-voices rule list-voices 'get-1st-down-beats weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-on-beat-with-durations-offset-and-timepoint-in-n-voices rule list-voices 'get-1st-down-beats weight)))
                                                      )
                                                     ((equal input-mode :1st-voice)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-offset-and-timepoint-in-n-voices rule list-voices weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-with-durations-offset-and-timepoint-in-n-voices rule list-voices weight)))
                                                      )
                                                     ((equal input-mode :at-timepoints)
                                                      (cond ((equal gracenotes? :normal)
                                                             (heuristic-switch-rule-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-offset-and-timepoint-in-n-voices rule timepoints list-voices weight))
                                                            (t
                                                             (heuristic-switch-rule-pitch-and-pitch-at-timepoints-with-durations-offset-and-timepoint-in-n-voices rule timepoints list-voices weight)))
                                                      )

                                                     )
                                               )
                 
                                              (t ;true/false rule
                                               (cond ((equal input-mode :all)
                                                      (cond ((equal gracenotes? :normal)
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-A* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-A* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-A* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-A* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-with-durations-offset-and-timepoint rule list-voices) list-with-engine-nrs)))
                                                            (t
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-A* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-A* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-A* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-A* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-with-durations-offset-and-timepoint rule list-voices) list-with-engine-nrs))))
                                                      )
                                                     ((equal input-mode :beat)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)
             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat-with-durations-offset-and-timepoint rule list-voices 'get-all-beats) list-with-engine-nrs -1)))
                                                            (t
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-on-beat-with-durations-offset-and-timepoint rule list-voices 'get-all-beats) list-with-engine-nrs -1)))
                                                            ))
                                                     ((equal input-mode :1st-beat)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat-with-durations-offset-and-timepoint rule list-voices 'get-1st-down-beats) list-with-engine-nrs -1)))
                                                            (t
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                                           'rule-n-engines-with-meter3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-B* 2)
                                                                                           'rule-n-engines-with-meter4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-B* 3)
                                                                                           'rule-n-engines-with-meter5)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-B* 4)
                                                                                           'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

             ; -1 is the flag to be replaced with the number for the metric engine
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-on-beat-with-durations-offset-and-timepoint rule list-voices 'get-1st-down-beats) list-with-engine-nrs -1))))
                                                      )
                                                     ((equal input-mode :1st-voice)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-C* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-C* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-C* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-C* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-with-durations-offset-and-timepoint rule list-voices) list-with-engine-nrs)))
                                                            (t

                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-C* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-C* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-C* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-C* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-with-durations-offset-and-timepoint rule list-voices) list-with-engine-nrs))))
                                                      )
                                                     ((equal input-mode :at-timepoints)
                                                      (cond ((equal gracenotes? :normal) 
                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-D* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-D* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-D* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-D* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes-with-durations-offset-and-timepoint rule timepoints list-voices) list-with-engine-nrs)))
                                                            (t

                                                             (let ((backtrack-route (cond ((= *bktr-ppNv-D* 1)
                                                                                           'rule-n-engines3)    ;next pitch engine
                                                                                          ((= *bktr-ppNv-D* 2)
                                                                                           'rule-n-engines4)    ;next rhythm engine
                                                                                          ((= *bktr-ppNv-D* 3)
                                                                                           'rule-n-engines4)    ;this pitch engine
                                                                                          ((= *bktr-ppNv-D* 4)
                                                                                           'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                                                               (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-timepoints-with-durations-offset-and-timepoint rule timepoints list-voices) list-with-engine-nrs))))
                                                      )))))))))






(system::PWGLDef HR-pitch-pitch ((rule nil)
                                 (list-voices '(0 1))
                                 (timepoints '(0))
                                 (input-mode  10 (ccl::mk-menu-subview :menu-list '(":all" ":beat" ":1st-beat" ":1st-voice" ":at-timepoints")))
                                 (gracenotes?  10 (ccl::mk-menu-subview :menu-list '(":exclude-gracenotes" ":normal"))))
    "Heuristic rule that accesses simultaneous pitches in 2 or more voices. 

<rule> is a function that outputs a numerical weight.  Each input will 
receive a list with simultaneous pitches. If the rule has more than one 
input it will receive information for consecutive events (the positions 
of the events are determined by the input-mode setting).

<list-of-voices> is a list with the numbers of the voices (starting at 0) that 
the rule accesses. Any number of voices can be accessed by the rule.
All voices must have a pitch and rhythm domain. For efficiency reasons it 
is advised to rather split the rule into several simpler rules (that only 
access a few number of voices) if possible. This will make it possible to 
find failed candidates sooner, and to be more precise about what caused 
backtracking.

<timepoints>  This input is only considered if the input-mode is 
              at-timepoints. This is a list of absolute timepoints 
              (starting at 0) where the rue will be checked. 
              Ex. (0 5/4 9/4)

<input-mode> sets at what time points the rule will be checked. 
- all:        The rule will be checked at every harmonic slice.
               Every time any voice has a new note event, the rule
               will be checked.
- beat:        The rule will be checked at metric beats.
- 1st-beat:    The rule will be checked at the first [down] beat
               in every measure.
- 1st-voice:   The rule will be checked at the onset of every new note 
               in the first voice in the list-of-voices.
- at-timepoints: The rule will be checked at the timepoints in the 
               timepoints input.

<gracenotes?>  
- exclude-gracenotes: Pitches that relate to grace notes will be ignored.
- normal: Grace notes are also checked by the rule:
               they are related to the regular notes in the other
               voices.
               

list-of-voices can include any number of voices. All voices must have a pitch 
and rhythm domain.

"
    (:groupings '(2 2 1)  :x-proportions '((0.2 0.2)(0.1 0.3)(0.4)) :w 0.5)
  (let ((list-with-engine-nrs (apply 'append (loop for voice in list-voices collect (list (* 2 voice) (1+ (* 2 voice)))))))
    (cond ((equal input-mode :all)
           (cond ((equal gracenotes? :normal)
                  (heuristic-rule-pitch-and-pitch-include-gracenotes-in-n-voices rule list-voices))
                 (t
                  (heuristic-rule-pitch-and-pitch-in-n-voices rule list-voices))))
          ((equal input-mode :beat)
           (cond ((equal gracenotes? :normal)
                  (heuristic-rule-pitch-and-pitch-include-gracenotes-on-beat-in-n-voices rule list-voices 'get-all-beats))
                 (t
                  (heuristic-rule-pitch-and-pitch-on-beat-in-n-voices rule list-voices 'get-all-beats))))
          ((equal input-mode :1st-beat)
           (cond ((equal gracenotes? :normal)
                  (heuristic-rule-pitch-and-pitch-include-gracenotes-on-beat-in-n-voices rule list-voices 'get-1st-down-beats))
                 (t
                  (heuristic-rule-pitch-and-pitch-on-beat-in-n-voices rule list-voices 'get-1st-down-beats))))
          ((equal input-mode :1st-voice)
           (cond ((equal gracenotes? :normal)
                  (heuristic-rule-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-in-n-voices rule list-voices))
                 (t
                  (heuristic-rule-pitch-and-pitch-at-1st-voice-onsets-in-n-voices rule list-voices))))
          ((equal input-mode :at-timepoints)
           (cond ((equal gracenotes? :normal)
                  (heuristic-rule-pitch-and-pitch-at-timepoints-include-gracenotes-in-n-voices rule timepoints list-voices))
                 (t
                  (heuristic-rule-pitch-and-pitch-at-timepoints-in-n-voices rule timepoints list-voices)))
           )
          )

    ))




(system::PWGLDef R-chords ((list-voices '(0 1))
                           (model '((4 7)(3 7)))
                           (timepoints '(0))
                           (input-mode  10 (ccl::mk-menu-subview :menu-list '(":all" ":beat" ":1st-beat" ":1st-voice" ":at-timepoints")))
                           (gracenotes?  10 (ccl::mk-menu-subview :menu-list '(":exclude-gracenotes" ":normal")))
                           &optional
                           (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                           (weight 1))
                 "This rule restrics possible chord formations between voices.

<list-of-voices> is a list with the numbers of the voices (starting at 0) that 
the rule accesses. Any number of voices can be accessed by the rule.
If more tan 2 voices are accessed, the rule will split up into several
rules to more efficient find a solution.

<model> is a chord or a list of chords. A chord is expressed as intervals from a 
bass note. The rule will only allow the chords (and all their inversions) from this 
list. Chords in the solution do not need to be complete (i.e. some notes may be missing).
Pitches may exist in any octave.

<timepoints>  This input is only considered if the input-mode is 
              at-timepoints. This is a list of absolute timepoints 
              (starting at 0) where the rue will be checked. 
              Ex. (0 5/4 9/4)

<input-mode> sets at what time points the rule will be checked. 
 - all:        The rule will be checked at every harmonic slice.
               Every time any voice has a new note event, the rule
               will be checked.
- beat:        The rule will be checked at metric beats.
- 1st-beat:    The rule will be checked at the first [down] beat
               in every measure.
- 1st-voice:   The rule will be checked at the onset of every new note 
               in the first voice in the list-of-voices.
- at-timepoints: The rule will be checked at the timepoints in the 
               timepoints input.

[Backtracking behaves the same as fro the R-pitch-pitch rule.]
"
                 (:groupings '(2 2 1) :extension-pattern '(2) :x-proportions '((0.2 0.2)(0.1 0.3)(0.4)(0.25 0.15)) :w 0.5)

                 (when (equal rule-type :heur-switch) (error "Heuristic switch rule setting is not yet implemented in R-chord"))

                 (let* ((voice-combinations (combine-all-any-list-length list-voices))
                        (allowed-chord-positions (all-chords-positions model))
                        (rule (list 'lambda '(pitches) (list 'test-match-chord-any-position2-p (list 'quote allowed-chord-positions) 'pitches))))


                   (cond ((equal input-mode :all)
                          (cond ((equal gracenotes? :exclude-gracenotes)
                                 (let* ((backtrack-route (cond ((= *bktr-ppNv-A* 1)  ;;;Prefered backtrack routes.
                                                                'rule-n-engines3)    ;next pitch engine
                                                               ((= *bktr-ppNv-A* 2)
                                                                'rule-n-engines4)    ;next rhythm engine
                                                               ((= *bktr-ppNv-A* 3)
                                                                'rule-n-engines4)    ;this pitch engine
                                                               ((= *bktr-ppNv-A* 4)  
                                                                'rule-n-engines4))))  ;this rhythm engine (or next if current engine is pitch engine)

                                   (loop for voices-for-individual-rule in voice-combinations
                                         collect
                                         (let ((list-with-engine-nrs (apply 'append (loop for voice in voices-for-individual-rule collect (list (* 2 voice) (1+ (* 2 voice))))))) 
                                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch rule voices-for-individual-rule) list-with-engine-nrs)))))
                                ((equal gracenotes? :normal)
                                 (let* ((backtrack-route (cond ((= *bktr-ppNv-A* 1)  ;;;Prefered backtrack routes.
                                                                'rule-n-engines3)    ;next pitch engine
                                                               ((= *bktr-ppNv-A* 2)
                                                                'rule-n-engines4)    ;next rhythm engine
                                                               ((= *bktr-ppNv-A* 3)
                                                                'rule-n-engines4)    ;this pitch engine
                                                               ((= *bktr-ppNv-A* 4)  
                                                                'rule-n-engines4))))  ;this rhythm engine (or next if current engine is pitch engine)

                                   (loop for voices-for-individual-rule in voice-combinations
                                         collect
                                         (let ((list-with-engine-nrs (apply 'append (loop for voice in voices-for-individual-rule collect (list (* 2 voice) (1+ (* 2 voice))))))) 
                                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes rule voices-for-individual-rule) list-with-engine-nrs))))
                                 )))

                         ((equal input-mode :beat)
                          (cond ((equal gracenotes? :exclude-gracenotes)
                                 (let* ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                'rule-n-engines-with-meter3)    ;next pitch engine
                                                               ((= *bktr-ppNv-B* 2)
                                                                'rule-n-engines-with-meter4)    ;next rhythm engine
                                                               ((= *bktr-ppNv-B* 3)
                                                                'rule-n-engines-with-meter5)    ;this pitch engine
                                                               ((= *bktr-ppNv-B* 4)
                                                                'rule-n-engines-with-meter6))))  ;this rhythm engine (or next if current engine is pitch engine)

                                   (loop for voices-for-individual-rule in voice-combinations
                                         collect
                                         (let ((list-with-engine-nrs (apply 'append (loop for voice in voices-for-individual-rule collect (list (* 2 voice) (1+ (* 2 voice))))))) 
                                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch-on-beat rule list-voices 'get-all-beats) list-with-engine-nrs -1)))))
                                ((equal gracenotes? :normal)
                                 (let* ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                'rule-n-engines-with-meter3)    ;next pitch engine
                                                               ((= *bktr-ppNv-B* 2)
                                                                'rule-n-engines-with-meter4)    ;next rhythm engine
                                                               ((= *bktr-ppNv-B* 3)
                                                                'rule-n-engines-with-meter5)    ;this pitch engine
                                                               ((= *bktr-ppNv-B* 4)
                                                                'rule-n-engines-with-meter6))))  ;this rhythm engine (or next if current engine is pitch engine)

                                   (loop for voices-for-individual-rule in voice-combinations
                                         collect
                                         (let ((list-with-engine-nrs (apply 'append (loop for voice in voices-for-individual-rule collect (list (* 2 voice) (1+ (* 2 voice))))))) 
                                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat rule list-voices 'get-all-beats) list-with-engine-nrs -1))))
                                 )))

                         ((equal input-mode :1st-beat)
                          (cond ((equal gracenotes? :exclude-gracenotes)
                                 (let* ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                'rule-n-engines-with-meter3)    ;next pitch engine
                                                               ((= *bktr-ppNv-B* 2)
                                                                'rule-n-engines-with-meter4)    ;next rhythm engine
                                                               ((= *bktr-ppNv-B* 3)
                                                                'rule-n-engines-with-meter5)    ;this pitch engine
                                                               ((= *bktr-ppNv-B* 4)
                                                                'rule-n-engines-with-meter6)))) ;this rhythm engine (or next if current engine is pitch engine)

                           ; -1 is the flag to be replaced with the number for the metric engine
                                   (loop for voices-for-individual-rule in voice-combinations
                                         collect
                                         (let ((list-with-engine-nrs (apply 'append (loop for voice in voices-for-individual-rule collect (list (* 2 voice) (1+ (* 2 voice))))))) 
                                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch-on-beat rule list-voices 'get-1st-down-beats) list-with-engine-nrs -1)))))
                                ((equal gracenotes? :normal)
                                 (let* ((backtrack-route (cond ((= *bktr-ppNv-B* 1)
                                                                'rule-n-engines-with-meter3)    ;next pitch engine
                                                               ((= *bktr-ppNv-B* 2)
                                                                'rule-n-engines-with-meter4)    ;next rhythm engine
                                                               ((= *bktr-ppNv-B* 3)
                                                                'rule-n-engines-with-meter5)    ;this pitch engine
                                                               ((= *bktr-ppNv-B* 4)
                                                                'rule-n-engines-with-meter6))))  ;this rhythm engine (or next if current engine is pitch engine)

                                   (loop for voices-for-individual-rule in voice-combinations
                                         collect
                                         (let ((list-with-engine-nrs (apply 'append (loop for voice in voices-for-individual-rule collect (list (* 2 voice) (1+ (* 2 voice))))))) 
                                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat rule list-voices 'get-1st-down-beats) list-with-engine-nrs -1))))
                                 )))

                         ((equal input-mode :1st-voice)
                          (cond ((equal gracenotes? :exclude-gracenotes)
                                 (let* ((backtrack-route (cond ((= *bktr-ppNv-C* 1)  ;;;Prefered backtrack routes.
                                                                'rule-n-engines3)    ;next pitch engine
                                                               ((= *bktr-ppNv-C* 2)
                                                                'rule-n-engines4)    ;next rhythm engine
                                                               ((= *bktr-ppNv-C* 3)
                                                                'rule-n-engines4)    ;this pitch engine
                                                               ((= *bktr-ppNv-C* 4)  
                                                                'rule-n-engines4))))  ;this rhythm engine (or next if current engine is pitch engine)

                            ;remove any combination that does not include the 1st voice.
                                   (setf voice-combinations (remove-if #'(lambda (x) (/= (first x) (first list-voices))) voice-combinations))
                                   (loop for voices-for-individual-rule in voice-combinations
                                         collect
                                         (let ((list-with-engine-nrs (apply 'append (loop for voice in voices-for-individual-rule collect (list (* 2 voice) (1+ (* 2 voice))))))) 
                                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-1st-voice-onsets rule list-voices) list-with-engine-nrs)))))
                                ((equal gracenotes? :normal)
                                 (let* ((backtrack-route (cond ((= *bktr-ppNv-C* 1)  ;;;Prefered backtrack routes.
                                                                'rule-n-engines3)    ;next pitch engine
                                                               ((= *bktr-ppNv-C* 2)
                                                                'rule-n-engines4)    ;next rhythm engine
                                                               ((= *bktr-ppNv-C* 3)
                                                                'rule-n-engines4)    ;this pitch engine
                                                               ((= *bktr-ppNv-C* 4)  
                                                                'rule-n-engines4))))  ;this rhythm engine (or next if current engine is pitch engine)

                            ;remove any combination that does not include the 1st voice.
                                   (setf voice-combinations (remove-if #'(lambda (x) (/= (first x) (first list-voices))) voice-combinations))
                                   (loop for voices-for-individual-rule in voice-combinations
                                         collect
                                         (let ((list-with-engine-nrs (apply 'append (loop for voice in voices-for-individual-rule collect (list (* 2 voice) (1+ (* 2 voice))))))) 
                                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes rule list-voices) list-with-engine-nrs))))


                                 )))
                         ((equal input-mode :at-timepoints)
                          (cond ((equal gracenotes? :exclude-gracenotes)
                                 (let* ((backtrack-route (cond ((= *bktr-ppNv-D* 1)  ;;;Prefered backtrack routes.
                                                                'rule-n-engines3)    ;next pitch engine
                                                               ((= *bktr-ppNv-D* 2)
                                                                'rule-n-engines4)    ;next rhythm engine
                                                               ((= *bktr-ppNv-D* 3)
                                                                'rule-n-engines4)    ;this pitch engine
                                                               ((= *bktr-ppNv-D* 4)  
                                                                'rule-n-engines4))))  ;this rhythm engine (or next if current engine is pitch engine)

                            ;remove any combination that does not include the 1st voice.
                                   (setf voice-combinations (remove-if #'(lambda (x) (/= (first x) (first list-voices))) voice-combinations))
                                   (loop for voices-for-individual-rule in voice-combinations
                                         collect
                                         (let ((list-with-engine-nrs (apply 'append (loop for voice in voices-for-individual-rule collect (list (* 2 voice) (1+ (* 2 voice))))))) 
                                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-timepoints rule timepoints list-voices) list-with-engine-nrs)))))
                                ((equal gracenotes? :normal)
                                 (let* ((backtrack-route (cond ((= *bktr-ppNv-D* 1)  ;;;Prefered backtrack routes.
                                                                'rule-n-engines3)    ;next pitch engine
                                                               ((= *bktr-ppNv-D* 2)
                                                                'rule-n-engines4)    ;next rhythm engine
                                                               ((= *bktr-ppNv-D* 3)
                                                                'rule-n-engines4)    ;this pitch engine
                                                               ((= *bktr-ppNv-D* 4)  
                                                                'rule-n-engines4))))  ;this rhythm engine (or next if current engine is pitch engine)

                            ;remove any combination that does not include the 1st voice.
                                   (setf voice-combinations (remove-if #'(lambda (x) (/= (first x) (first list-voices))) voice-combinations))
                                   (loop for voices-for-individual-rule in voice-combinations
                                         collect
                                         (let ((list-with-engine-nrs (apply 'append (loop for voice in voices-for-individual-rule collect (list (* 2 voice) (1+ (* 2 voice))))))) 
                                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch-at-timepoints-include-gracenotes rule timepoints list-voices) list-with-engine-nrs))))
                                 )))
                         )
                   ))



;;;;;;;;;HIGER LEVEL RULES

(system::PWGLDef R-mel-interval-one-voice ((voices 0)
                                           (gracenotes?  10 (ccl::mk-menu-subview :menu-list '(":normal" ":exclude-gracenotes")))
                                           (segments?  10 (ccl::mk-menu-subview :menu-list '(":normal" ":break-at-rest")))
                                           (match-dur  10 (ccl::mk-menu-subview :menu-list '(":=" ":/= " ":member" ":longer-than" ":shorter-than")))
                                           (durations 1/4)
                                           (match-pitch 10 (ccl::mk-menu-subview :menu-list '(":=" ":/= " ":member" ":smaller-than" ":larger-than")))
                                           (intervals 5)
                                           &optional
                                           (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                           (weight 1))
    "Restricts what melodic intervals are allowed from an event with a specific duration.

If the duration the melodic interval start at is
   =:            identical to a value
   member:       member of a list of values
   longer-than:  longer than a value
   shorter-than: shorter than a value

then the melodic interval has to be
=:            equal to an interval
member:       member of a list of intervals
smaller-than: smaller than an interval
larger-than:  larger than an interval


[The prefered back route will be the same as for R-rhythm-pitch-one-voice.]
"

    (:groupings '(3 2 2)  :extension-pattern '(2) :x-proportions '((0.1 0.2 0.2) (0.3 0.2) (0.3 0.2)(0.3 0.2))  :w 0.5)

(when (not (listp voices)) (setf voices (list voices)))
  (let (fn-filterdur fn-filtermel logic-statement backtrack-route)
    (cond ((equal match-dur :=)
           (setf fn-filterdur #'(lambda (dur) (= dur durations))))
          ((equal match-dur :/=)
           (setf fn-filterdur #'(lambda (dur) (/= dur durations))))
          ((equal match-dur :member) 
           (setf fn-filterdur #'(lambda (dur) (member dur durations))))
          ((equal match-dur :longer-than) 
           (setf fn-filterdur #'(lambda (dur) (> dur durations))))
          ((equal match-dur :shorter-than) 
           (setf fn-filterdur #'(lambda (dur) (< dur durations)))))

    (cond ((equal match-pitch :=)
           (setf fn-filtermel #'(lambda (int) (= (abs int) intervals))))
          ((equal match-pitch :/=)
           (setf fn-filtermel #'(lambda (int) (/= (abs int) intervals))))
          ((equal match-pitch :member) 
           (setf fn-filtermel #'(lambda (int) (member (abs int) intervals))))
          ((equal match-pitch :smaller-than) 
           (setf fn-filtermel #'(lambda (int) (< (abs int) intervals))))
          ((equal match-pitch :larger-than) 
           (setf fn-filtermel #'(lambda (int) (> (abs int) intervals)))))

    (setf logic-statement (melodic-statement-for-dur fn-filterdur fn-filtermel))

    (cond ((equal rule-type :heur-switch)
           (loop for voice in voices
                 collect
                 (cond ((and (equal gracenotes? :normal) (equal segments? :normal))
                        (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm logic-statement (* 2 voice) (1+ (* 2 voice)) weight) (* 2 voice) (1+ (* 2 voice))))

                       ((and (equal gracenotes? :exclude-gracenotes) (equal segments? :normal))
                        (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-exclude-gracenotes logic-statement (* 2 voice) (1+ (* 2 voice)) weight) (* 2 voice) (1+ (* 2 voice))))
      
                       ((and (equal gracenotes? :normal) (equal segments? :break-at-rest))
                        (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-segment-at-rests logic-statement (* 2 voice) (1+ (* 2 voice)) weight) (* 2 voice) (1+ (* 2 voice))))

                       ((and (equal gracenotes? :exclude-gracenotes) (equal segments? :break-at-rest))
                        (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-pitches-on-rhythm-segments-at-rests-exclude-gracenotes logic-statement (* 2 voice) (1+ (* 2 voice)) weight) 
                                                    (* 2 voice) (1+ (* 2 voice)))))))
          (t
           (loop for voice in voices
                 collect (cond ((and (equal gracenotes? :normal) (equal segments? :normal))
                                (cond ((= *bktr-rp1v-A* 1) (setf backtrack-route 'rule-two-engines1))
                                      (t (setf backtrack-route 'rule-two-engines2)))
                                (funcall backtrack-route (rule-2-engines-pitches-on-rhythm logic-statement (* 2 voice) (1+ (* 2 voice))) (* 2 voice) (1+ (* 2 voice))))
                               ((and (equal gracenotes? :exclude-gracenotes) (equal segments? :normal))
                                (cond ((= *bktr-rp1v-E* 1) (setf backtrack-route 'rule-two-engines1))
                                      (t (setf backtrack-route 'rule-two-engines2)))
                                (funcall backtrack-route (rule-2-engines-pitches-on-rhythm-exclude-gracenotes logic-statement (* 2 voice) (1+ (* 2 voice))) (* 2 voice) (1+ (* 2 voice))))
                               ((and (equal gracenotes? :normal) (equal segments? :break-at-rest))
                                (cond ((= *bktr-rp1v-G* 1) (setf backtrack-route 'rule-two-engines1))
                                      (t (setf backtrack-route 'rule-two-engines2)))
                                (funcall backtrack-route (rule-2-engines-pitches-on-rhythm-segment-at-rests logic-statement (* 2 voice) (1+ (* 2 voice))) (* 2 voice) (1+ (* 2 voice))))
                               ((and (equal gracenotes? :exclude-gracenotes) (equal segments? :break-at-rest))
                                (cond ((= *bktr-rp1v-H* 1) (setf backtrack-route 'rule-two-engines1))
                                      (t (setf backtrack-route 'rule-two-engines2)))
                                (funcall backtrack-route (rule-2-engines-pitches-on-rhythm-segments-at-rests-exclude-gracenotes logic-statement (* 2 voice) (1+ (* 2 voice))) (* 2 voice) (1+ (* 2 voice))))
                               ))
           ))))



(system::PWGLDef R-canon ((voices '(0 1))
                          (parameter 10 (ccl::mk-menu-subview :menu-list '(":rhythm" ":rhythm&pitch" ":pitch")))
                          (offset 1/2)
                          (interval 7))

    "
Rule for canon between two voices.

<voices> is a list with the number of the two voice (starting at 0) for 
the canon. It is possible to give a list with sublists: The rule will then 
be applied to every voice-pair in the list (independant of each other).

<parameter> 
 - rhythm:       The canon is only for rhythm.
 - rhythm&pitch: The canon is both for rhythm and pitch
 - pitch:        The canon is only for rhythm.

<offset>   This is the duration before the 2nd voice starts (note value).
<interval> This is the pitch interval between the fux and the comes.

Note that the use of grace notes immediately preceeding rests (duration 0 before negative duration) or rhythm cells ending with a grace note is not very efficient in this rule (any result will however be correct).

[Backtracking: This voice backtracks as the r-list-all-events rule].
"

    (:groupings '(2 2)  :x-proportions '((0.1 0.3)(0.2 0.2)) :w 0.5)

  (let (backtrack-route)
    (cond ((= *bktr-leNv* 1)
                  ;prefer to backtrack the same engine
           (setf backtrack-route 'rule-n-engines1))
          ((= *bktr-leNv* 2)
                  ;prefer to backtrack the next engine
           (setf backtrack-route 'rule-n-engines2)))
    (when (not (listp (car voices))) (setf voices (list voices)))

    (loop for voice-pair in voices
          collect (let ((voice2 (first voice-pair))
                        (voice1 (second voice-pair)))
                    (when (/= (length voice-pair) 2) (error "In R-canon, voices can only be given as pairs '(dux comes)."))
                    (cond ((equal parameter :rhythm)
                           ;(funcall backtrack-route (rule-rhythmcanon voice1 voice2 offset) (list (* 2 voice1) (* 2 voice2))) )
                           (rules-rhythm-canon voice2 voice1 offset))


                          ((equal parameter :rhythm&pitch)
                           (list (rules-rhythm-canon voice2 voice1 offset) 
                                 (funcall backtrack-route (rule-pitchcanon2 voice1 voice2 interval offset) (list (1+ (* 2 voice1)) (1+ (* 2 voice2))))))

                          ((equal parameter :pitch)
                           (funcall backtrack-route (rule-pitchcanon voice1 voice2 interval) (list (1+ (* 2 voice1)) (1+ (* 2 voice2))))))))))



;;;;;
;rule-1-engine-cells-at-timepoints (simple-rule engine timepoints)
(system::PWGLDef R-rhythms-one-voice-at-timepoints ((rule nil)
                                                    (voice 0)
                                                    (timepoints '(0))
                                                    (input-mode 10 (ccl::mk-menu-subview :menu-list '(":motifs-start" ":motifs-end" ":dur-start"))))
                 "Rule for rhythms that exist at timepoints in one voice.

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. .If there are more than one 
input to the function, they will receive the information for consecutive
timepoints.

<voices> is the number for the voice (starting at 0) that the rule affects. 
It is possible to give a list of several voice numbers: The rule will then 
be applied to every voice in the list (independant of each other).

<timepoints> is a list of timepoints (starting from 0) counted from the 
beginning of the score where the rule will be checked. For example
the timepoint 15/4 will be 15 quarter notes from the beginning of the 
score. 

<input-mode>              
- motifs-start: The start time for motifs will be compared to the given 
                timepoint. An input receives the as 
                '(offset-to-timepoint (motif)). Offset is the duration 
                between the startingpoint of the motif and given timepoint. 
                Ex. (-1/4 (1/8 -1/8 1/16 1/16))
- motifs-end:   The end time for motifs will be compared to the given 
                timepoint. An input receives the as 
                '(offset-to-timepoint (motif)). Offset is the duration 
                between the endingpoint of the motif and given timepoint. 
                Ex. (1/8 (1/8 -1/8 1/16 1/16))
- dur-start:    The start time for durations and rests will be compared to 
                the given timepoint. An input receives the as 
                '(offset-to-timepoint duration). Offset is the duration 
                between the startingpoint of the event and given timepoint. 
                Ex. (-1/16 1/4)



This rule always prefer to backtrack the rhythm engine that it belongs to."
                 (:groupings '(2 2)  :x-proportions '((0.2 0.2)(0.1 0.3)) :w 0.5)

                 (when (numberp voice) (setf voice (list voice)))
                 (loop for v in voice
                       collect
                       (cond ((equal input-mode :motifs-start)
                              (rule-one-engine (rule-1-engine-cells-at-timepoints rule (* 2 v) timepoints) (* 2 v)))
                             ((equal input-mode :motifs-end)
                              (rule-one-engine (rule-1-engine-cells-end-at-timepoints rule (* 2 v) timepoints) (* 2 v)))
                             ((equal input-mode :dur-start)
                              (rule-one-engine (rule-1-engine-rhythm-at-timepoints rule (* 2 v) timepoints) (* 2 v))))))



;;;;;;;;;

(system::PWGLDef Stop-rule-time ((voices '(0))
                                 (stoptime 4)
                                 (input-mode 10 (ccl::mk-menu-subview :menu-list '(":OR" ":AND" ":meter")))
                                 )
"This rule will not affect the choice of musical parameters (it will always be true), but it will stop the search when a time point has been reached. The solution found when the time point is reached will be returned as a valid solution.

The rule compares the START TIME of motifs to the stoptime (i.e. the end time or the time point for durations inside motifs of a motif is not checked). The stop will happen when a duration reaches the stop time.

<voices> is one or a list of voices that will be checked.

<stoptime> is a timepoint in the score, counting from 0, where the search will stop (ex. the time point 5/2 is 2 whole notes + 1 half note into the score). The stoptime has to be reached in all given voices. Note that the rule ignors the pitch information.

<input-mode>

 - OR: The search will stop when one of the voices in the given list reached the stop time. The metric structure will be ignored.
 - AND: The search will stop when all the voices in the given list reached the stop time. The metric structure will be ignored.
 - meter: The start time for the measures will determine the stop.


Note that if the system has not assigned a meter for durations, they will not be displayed in the score.

"
    (:groupings '(2 1)  :x-proportions '((0.2 0.2)(0.4)) :w 0.5)

  (when (numberp voices) (setf voices (list voices)))
  (let ((engines (mapcar #'(lambda (voice) (* 2 voice)) voices))
        (flag-for-metric-engine nil))

    (cond ((equal input-mode :meter)
           (setf flag-for-metric-engine t)
           (stoprule-time-OR engines stoptime flag-for-metric-engine))
          ((equal input-mode :OR)
           (stoprule-time-OR engines stoptime flag-for-metric-engine))
          ((equal input-mode :AND)
           (stoprule-time-AND engines stoptime flag-for-metric-engine)))))


;;;
;stoprule-index-OR (engines stopindex)
(system::PWGLDef Stop-rule-index ((voices '(0))
                                 (stopindex 4)
                                 (input-mode 10 (ccl::mk-menu-subview :menu-list '(":OR")))
                                 (parameters 10 (ccl::mk-menu-subview :menu-list '(":pitch" ":rhythm" ":pitch/rhythm"))))
    "This rule will not affect the choice of musical parameters (it will always be true), but it will stop the search when an index has been reached. The solution found when the index is reached will be returned as a valid solution.

<voices> is one or a list of voices that will be checked.

<stopindex> is an index in the score, counting from 0, where the search will stop.

<input-mode>

 - OR: The search will stop when one of the voices in the given list reached the stop time. The metric structure will be ignored.
"
    (:groupings '(2 1 1)  :x-proportions '((0.2 0.2)(0.4)(0.4)) :w 0.5)

  (when (numberp voices) (setf voices (list voices)))
  (let (engines)

    (cond ((equal parameters :pitch)
           (setf engines (mapcar #'(lambda (voice) (1+ (* 2 voice))) voices)))
          ((equal parameters :rhythm) 
           (setf engines (mapcar #'(lambda (voice) (* 2 voice)) voices)))
          ((equal parameters :pitch/rhythm) 
           (setf engines (apply 'append (mapcar #'(lambda (voice) (list (* 2 voice) (1+ (* 2 voice)))) voices))))
          )
(system::pwgl-print engines)

    (cond ((equal input-mode :OR)
           (stoprule-index-OR engines stopindex))
          ((equal input-mode :AND) ;still not yet implemented
           ()))))

;;;


(system::PWGLDef R-predefine-meter ((timesig-list))
    "This rule predefines the time signature to follow a given sequence.
WARNING: This rule will preset the sequence of time signature and 
will not allow the system to backtrack them.

It the given list of time signatures is shorted than what is needed 
in the solution, the remaining time signatures will be picked
randomly.
"
    (:groupings '(1)   :x-proportions '((0.4)) :w 0.25)

  (setf *always-lock-meter?* t) ;this will be reset to nil if the rule is not used.

  (let (rule)
    (setf rule  (list 'lambda '(timesigns); ' ;(system::pwgl-print (length (quote timesig-list)))
                      (list 'if (list '> '(length timesigns) (list 'length (list 'quote timesig-list))) t
                            (list 'equal (list 'first-n  (list 'quote timesig-list) '(length timesigns)) 'timesigns))))
    

    (rule-one-engine (rule-1-engine-all-timesigns rule) -1)
    ))


;;;;;;;;;;EXTRA TOOLS
(system::PWGLDef apply-and ((list nil))
    "Test that all values in a list are true."
    (:groupings '(1) :w 0.25)
  (eval (append '(and) list)))

(system::PWGLDef apply-minus ((list nil))
    "Test that all values in a list are true."
    (:groupings '(1) :w 0.25)
  (apply '- list))



(system::PWGLDef R-pitch-pitch-all-include-gracenotes ((rule nil)
                                                       (voice1 0)
                                                       (voice2 1))
                 "This rule always prefer to backtrack the rhythm engine."
                 (:groupings '(1 2)  :x-proportions '((0.2)(0.2 0.2)) :w 0.5)
                 (let* ((rhythm-engine1 (* 2 voice1))
                        (pitch-engine1 (1+ rhythm-engine1))
                        (rhythm-engine2 (* 2 voice2))
                        (pitch-engine2 (1+ rhythm-engine2)))

                   (rule-four-engines-pitch-pitch (rule-4-engines-pitch-and-pitch-include-gracenotes rule rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2) 
                                                  rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2)))



(system::PWGLDef R-pitch-pitch-on-beat-include-gracenotes ((rule nil)
                                                           (voice1 0)
                                                           (voice2 1))
                 "This rule always prefer to backtrack the rhythm engine."
                 (:groupings '(1 2)  :x-proportions '((0.2)(0.2 0.2)) :w 0.5)
                 (let* ((rhythm-engine1 (* 2 voice1))
                        (pitch-engine1 (1+ rhythm-engine1))
                        (rhythm-engine2 (* 2 voice2))
                        (pitch-engine2 (1+ rhythm-engine2)))
    ; -1 is the flag to be replaced with the number for the metric engine
                   (rule-five-engines-pitch-pitch (rule-5-engines-pitch-and-pitch-include-gracenotes-on-beat rule rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2) 
                                                  rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2 -1)))



;;;;;;;;;;;NEW VERSION OF THE RHYTHM HIERARCHY RULE - NOW WITH SETTINGS FOR THE RANGE WHERE IT IS APPLIED (START TIME AND END TIME)

(system::PWGLDef R-rhythm-hierarchy-range ((voices '(0 1))
                                           (rule-mode  10 (ccl::mk-menu-subview :menu-list '(":dur->dur" ":include-rests"":cells->durations")))
                                           (ranges '(0 10))
                                           &optional
                                           (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                           (weight 1))
    "
Rule for a hierarchic relation between onsets in two or more voices. 
The range setting determines where in the score the rule is applied
(the start and end points are included in teh range where the rule is 
applied).

<voices> is a list of voice numbers (counted from 0) where the order of 
the voices determines the hierarchical relationship (the first voice 
being the most fundamental). It is also possible to define several 
(independant) relationship by using sublists for each hierarchic 
structure.

<rule-mode>
 - dur->dur: The rule only affects durations. Rests will be ignored 
             in the higher voice in the hierarchy, and not be considered 
             valid onset points in the lower voice.
 - include-rests: The rule will also include the onset points for rests 
             in both voices.
 - cells->durations: As dur->dur, but the onsets in higher voice in the 
             hierarchy will be taken from the onsets for a rhythmic 
             motif (as it is defined in the domain).


Optional inputs:
By expanding the box it is possible to use the rule as a heuristic switch 
rule. A heuristic switch rule is still using a logic statement (that 
outputs true or false), but the effect of the rule is different: If the rule 
is true, the weight (given in the <weight> input) is passed to the engine. 
If it is false, a weight of 0 will be passed. A candidate that receive a 
high weight will have a higher priority for being picked when the true/false 
rules are checked. A heuristic rule can never fail a candidate, nor can it 
trigger backtracking of the engine. Heuristic rules only sort the 
candidates locally before the strict rules are applied. Depending on the 
context, heuristic rules might have more or less of an effect. 

Heuristic switch rules differs slightly form regular heuristic rules (the 
latter don't output true or false, but a weight that might vary depending
on the candidate).
"
    (:groupings '(3)  :extension-pattern '(2) :x-proportions '((0.15 0.25 0.2)(0.3 0.1)) :w 0.5)
  (let* ((all-voice-pairs (create-all-hierarchical-pairs voices))
         (rhythm-engine-pairs (mapcar #'(lambda (voice-pair) (mapcar #'(lambda (voice) (* 2 voice)) voice-pair)) all-voice-pairs))
                        
         )

    (when (not (listp (first ranges))) (setf ranges (list ranges)))
    (apply #'append
           (loop for range in ranges
                 collect (let ((start (1+ (first range))) (end (1+ (second range))))
                           (cond ((equal rule-type :heur-switch)
                                  (cond ((equal rule-mode :dur->dur)
                                         (loop for engine-pair in rhythm-engine-pairs
                                               collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythmic-hierarchy-range (first engine-pair) (second engine-pair) weight start end) (first engine-pair) (second engine-pair))))
                                        ((equal rule-mode :include-rests)
                                         (loop for engine-pair in rhythm-engine-pairs
                                               collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythmic-hierarchy-incl-rests-range (first engine-pair) (second engine-pair) weight start end) (first engine-pair) (second engine-pair))))
                                        ((equal rule-mode :cells->durations)
                                         (loop for engine-pair in rhythm-engine-pairs
                                               collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-rhythmic-hierarchy-cellstart-e1-range (first engine-pair) (second engine-pair) weight start end) (first engine-pair) (second engine-pair))))))
                                 (t
                                  (cond ((equal rule-mode :dur->dur)
                                         (cond ((= *bktr-rh2v-A* 1)
                                                (loop for engine-pair in rhythm-engine-pairs
                                                      collect (rule-two-engines1 (rule-2-engines-rhythmic-hierarchy-range (first engine-pair) (second engine-pair) start end) (first engine-pair) (second engine-pair))))
                                               ((= *bktr-rh2v-A* 2)
                                                (loop for engine-pair in rhythm-engine-pairs
                                                      collect (rule-two-engines2 (rule-2-engines-rhythmic-hierarchy-range (first engine-pair) (second engine-pair) start end) (first engine-pair) (second engine-pair))))))
                                        ((equal rule-mode :include-rests)
                                         (cond ((= *bktr-rh2v-B* 1)
                                                (loop for engine-pair in rhythm-engine-pairs
                                                      collect (rule-two-engines1 (rule-2-engines-rhythmic-hierarchy-incl-rests-range (first engine-pair) (second engine-pair) start end) (first engine-pair) (second engine-pair))))
                                               ((= *bktr-rh2v-B* 2)
                                                (loop for engine-pair in rhythm-engine-pairs
                                                      collect (rule-two-engines2 (rule-2-engines-rhythmic-hierarchy-incl-rests-range (first engine-pair) (second engine-pair) start end) (first engine-pair) (second engine-pair))))))
                                        ((equal rule-mode :cells->durations)
                                         (cond ((= *bktr-rh2v-C* 1)
                                                (loop for engine-pair in rhythm-engine-pairs
                                                      collect (rule-two-engines1 (rule-2-engines-rhythmic-hierarchy-cellstart-e1-range (first engine-pair) (second engine-pair) start end) (first engine-pair) (second engine-pair))))
                                               ((= *bktr-rh2v-C* 2)
                                                (loop for engine-pair in rhythm-engine-pairs
                                                      collect (rule-two-engines2 (rule-2-engines-rhythmic-hierarchy-cellstart-e1-range (first engine-pair) (second engine-pair) start end) (first engine-pair) (second engine-pair))))))))))))))