(in-package cluster-engine)



(system::PWGLDef PolyEngine ((domain nil)
                             (metric-domain nil)
                             (rules nil)
                             (rnd? t)
                             (no-of-variables 10)
                             (no-of-voices 1)
                             (bktr-rule  10 (ccl::mk-menu-subview :menu-list '(":bktr-rule1" ":bktr-rule2")))
                             )
    ""
    (:groupings '(2 2 2 1)  :x-proportions '((0.2 0.2)(0.2 0.2)(0.2 0.2)(0.4)) :w 0.5)
  (let* ((no-of-engines (1+ (* 2 no-of-voices)))
         (locked-engines (analyze-domain-for-locked-engines domain metric-domain));locked engines cannot be backtracked (if there is only one option in the domain, there is no reason to backtrack)
         (vrules (create-rules-vector rules no-of-engines locked-engines))
         (backtrack-rule (cond ((equal bktr-rule :bktr-rule1)
                                'backtrack-rule1)
                               ((equal bktr-rule :bktr-rule2)
                                'backtrack-rule2)
                               (t nil)))
         (debug? t))

    (poly-engine->score
     (poly-engine no-of-variables domain metric-domain no-of-voices locked-engines 'fwd-rule2 backtrack-rule rnd? vrules debug?))
    ))




(system::PWGLDef PolyEngine2 ((no-of-variables 10)
                              (rnd? t)
                              (debug? nil)
                              (rules nil)
                              (output  10 (ccl::mk-menu-subview :menu-list '(":score-object" ":list")))
                              (bktr-rule  10 (ccl::mk-menu-subview :menu-list '(":bktr-rule1" ":bktr-rule2" ":bktr-rule3")))
                              (metric-domain '((4 4)))
                              (rhythmdomain0 '((1/4)))
                              (pitchdomain0 nil)
                              &optional (rhythmdomain1 '((1/4))) ( pitchdomain1 nil) (rhythmdomain2 '((1/4))) (pitchdomain2 nil)
                              (rhythmdomain3 '((1/4))) (pitchdomain3 nil) (rhythmdomain4 '((1/4))) (pitchdomain4 nil)
                              (rhythmdomain5 '((1/4))) (pitchdomain5 nil) (rhythmdomain6 '((1/4))) (pitchdomain6 nil)
                              (rhythmdomain7 '((1/4))) (pitchdomain7 nil) (rhythmdomain8 '((1/4))) (pitchdomain8 nil)
                              (rhythmdomain9 '((1/4))) (pitchdomain9 nil))
    ""
    (:groupings '(3 2 1 1 2)  :extension-pattern '(2) :x-proportions '((0.2 0.1 0.1)(0.1 0.3)(0.4)(0.4)(0.2 0.2)) :w 0.5)

  (when (not metric-domain) (setf metric-domain (create-metric-domain-vector '((4 4)) '((5 6 7 8)) '(nil))))
  (when (typep metric-domain 'list) (setf metric-domain (create-metric-domain-vector metric-domain 
                                                                                     (make-list (length metric-domain) :initial-element '(1))
                                                                                     (make-list (length metric-domain) :initial-element nil))))

  (let* ((no-of-engines (- (length (ccl::pwgl-subviews ccl::%box%)) 6)) ;6 since there are 6 inputs bfore the domain
         (domains (loop for n from 1 to (1- no-of-engines) 
                        for sub-domain in (list rhythmdomain0 pitchdomain0 rhythmdomain1 pitchdomain1 rhythmdomain2 pitchdomain2 rhythmdomain3 pitchdomain3
                                                rhythmdomain4 pitchdomain4 rhythmdomain5 pitchdomain5 rhythmdomain6 pitchdomain6 rhythmdomain7 pitchdomain7
                                                rhythmdomain8 pitchdomain8 rhythmdomain9 pitchdomain9)
                        collect sub-domain))
         (no-of-voices (/ (1- no-of-engines) 2))
         (locked-engines (analyze-domain-for-locked-engines domains metric-domain))
         (vrules (create-rules-vector rules no-of-engines locked-engines))
         (backtrack-rule (cond ((equal bktr-rule :bktr-rule1)
                                'backtrack-rule1)
                               ((equal bktr-rule :bktr-rule2)
                                'backtrack-rule2)
                               ((equal bktr-rule :bktr-rule3)
                                'backtrack-rule3)
                               (t nil))))

(print no-of-engines)
    (if (equal output :list)
        (poly-engine no-of-variables domains metric-domain no-of-voices locked-engines 'fwd-rule2 backtrack-rule rnd? vrules debug?)
      (poly-engine->score
       (poly-engine no-of-variables domains metric-domain no-of-voices locked-engines 'fwd-rule2 backtrack-rule rnd? vrules debug?)))
    ))







(system::PWGLDef R-index-rhythmcells-one-voice ((rule nil)
                                                (indexes '(0))
                                                (voice 0))
    ""
    (:groupings '(3)  :x-proportions '((0.1 0.2 0.1)) :w 0.5)
  (let ((engine (* 2 voice)))
    (rule-one-engine (index-rule-1-engine-cells rule engine indexes) engine)))


(system::PWGLDef R-nth-rhythms-one-voice ((rule nil)
                                          (nths '(0))
                                          (voice 0))
    ""
    (:groupings '(3)  :x-proportions '((0.1 0.2 0.1)) :w 0.5)
  (let ((engine (* 2 voice)))
    (rule-one-engine (index-rule-1-rhythmengine-nth rule engine nths) engine)))

 
;



(system::PWGLDef R-index-pitchcells-one-voice ((rule nil)
                                               (indexes '(0))
                                               (voice 0))
    ""
    (:groupings '(3)  :x-proportions '((0.1 0.2 0.1)) :w 0.5)
  (let ((engine (1+ (* 2 voice))))
    (rule-one-engine (index-rule-1-engine-cells rule engine indexes) engine)))


(system::PWGLDef R-nth-pitches-one-voice ((rule nil)
                                          (nths '(0))
                                          (voice 0))
    ""
    (:groupings '(3)  :x-proportions '((0.1 0.2 0.1)) :w 0.5)
  (let ((engine (1+ (* 2 voice))))
    (rule-one-engine (index-rule-1-pitchengine-nth rule engine nths) engine)))




(system::PWGLDef R-rhythmcells-one-voice ((rule nil)
                                           (voice 0))
    ""
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((engine (* 2 voice)))
    (rule-one-engine (rule-1-engine-cells rule engine) engine)))


(system::PWGLDef R-pitchcells-one-voice ((rule nil)
                                         (voice 0))
    ""
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((engine (1+ (* 2 voice))))
    (rule-one-engine (rule-1-engine-cells rule engine) engine)))

(system::PWGLDef R-all-durations-one-voice ((rule nil)
                                         (voice 0))
    ""
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((engine (* 2 voice)))
    (rule-one-engine (rule-1-engine-all-elements rule engine) engine)))


(system::PWGLDef R-all-pitches-one-voice ((rule nil)
                                         (voice 0))
    ""
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((engine (1+ (* 2 voice))))
    (rule-one-engine (rule-1-engine-all-elements rule engine) engine)))



(system::PWGLDef R-pitch-one-voice ((rule nil)
                                    (voice 0))
    ""
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((engine (1+ (* 2 voice))))
    (rule-one-engine (rule-1-engine-pitches rule engine) engine)))

(system::PWGLDef R-dur-one-voice ((rule nil)
                                  (voice 0))
    "This rule includes rests as negative durations."
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((engine (* 2 voice)))
    (rule-one-engine (rule-1-engine-durations rule engine) engine)))



(system::PWGLDef R-rhythm-hierarchy-two-voices ((voice1 0)
                                                (voice2 1))
    ""
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((rhythm-engine1 (* 2 voice1))
        (rhythm-engine2 (* 2 voice2)))


    (rule-two-engines (rule-2-engines-rhythm-hierarchy rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)))

(system::PWGLDef R-rhythm-pitch-segments-one-voice ((rule nil)
                                                    (voice 0))
    ""
    (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
  (let ((rhythm-engine (* 2 voice))
        (pitch-engine (1+ (* 2 voice))))

    (rule-two-engines (rule-2-engines-pitches-on-rhythm-segment-at-rests rule rhythm-engine pitch-engine) rhythm-engine pitch-engine)))


(system::PWGLDef R-metric-position-tuplets ((voice 0))
    "This rule always prefer to backtrack the rhythm engine."
    (:groupings '(1)  :x-proportions '((0.2)) :w 0.25)
  (let ((rhythm-engine (* 2 voice)))
    ; -1 is the flag to be replaced with the number for the metric engine
    (rule-two-engines-tuplets-in-meter (rule-2-engines-tuplets-in-meter rhythm-engine) rhythm-engine)))


;there might be a bug with rests in this rule - but it is not used anymore
(defun rule-2-engines-tuplets-in-meter (rhythm-engine)
  "Formats a rule for rhythm motifs. The rule should be compiled before used."
  (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
        '(declare (type vector vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
        '(declare (type fixnum engine))

        (list 'let '((metric-engine (1- (array-dimension vindex 0))))
              '(declare (type fixnum metric-engine))
              (list 'if (list '= 'engine rhythm-engine)
                    (list 'let* (list (list 'endtime-meter (list 'get-current-index-endtime 'metric-engine 'vindex 'vsolution))
                                      (list 'timepoints-rhythm (list 'truncate-list-at-endpoint 'endtime-meter 
                                                                     (list 'remove-rests-from-list (list 'butlast (list 'get-rhythm-motif-onsets-at-current-index rhythm-engine 'vindex 'vsolution)))))
                                      (list 'meter-onsetgrid (list 'aref 'vlinear-solution 'metric-engine 2)))
                          '(declare (type list timepoints-rhythm meter-onsetgrid))
                          '(declare (type number endtime-meter))
                          (list 'if 'meter-onsetgrid
                                (list 'if (list 'not '(subsetp timepoints-rhythm meter-onsetgrid))
                                      (list 'let (list (list 'endtime-rhythm (list 'get-current-index-endtime rhythm-engine 'vindex 'vsolution)))
                                            '(declare (type number 'endtime-rhythm))
                                      ;NEED ANOTHER BACKJUMP FUNCTION
                                      ;(list 'set-vbackjump-indexes-from-failed-timepoint-duration-duration 
                                      ;      'endtime-engine1 rhythm-engine2 rhythm-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                            'nil)
                                      't)
                                't))
                    (list 'let* (list (list 'endtime-meter (list 'get-current-index-endtime 'metric-engine 'vindex 'vsolution))
                                      (list 'starttime-meter (list 'get-current-index-starttime 'metric-engine 'vindex 'vsolution))
                                      (list 'timepoints-rhythm (list 'remove-list-before-startpoint 'starttime-meter
                                                                     (list 'truncate-list-at-endpoint 'endtime-meter 
                                                                           (list 'remove-rests-from-list (list 'butlast (list 'aref 'vlinear-solution rhythm-engine 1))))))


                                      (list 'meter-onsetgrid (list 'get-meter-onsetgrid-at-current-index 'metric-engine 'vindex 'vsolution)))
                          '(declare (type list timepoints-rhythm meter-onsetgrid))
                          '(declare (type number endtime-meter starttime-meter))
                          (list 'if (list 'not '(subsetp timepoints-rhythm meter-onsetgrid))
                                (list 'progn
                             ;NEED ANOTHER BACKJUMP FUNCTION   
                             ;   (list 'set-vbackjump-indexes-from-failed-timepoint-duration-duration 
                             ;         'endtime-engine2 rhythm-engine1 rhythm-engine1 rhythm-engine2 'vbackjump-indexes 'vsolution-for-backjump)
                                      'nil)
                                't)
                          )))))




(system::PWGLDef R-rhythm-rhythms ((rule nil)
                                   (voice1 0)
                                   (voice2 1))
    "Check durations that are simultaneous to durations in 1st voice.
Format: '(dur-voice1 (durs-voice2) offset)"
    (:groupings '(1 2)  :x-proportions '((0.2)(0.2 0.2)) :w 0.5)
  (let* ((rhythm-engine1 (* 2 voice1))
         (rhythm-engine2 (* 2 voice2))
         )


    (rule-two-engines (rule-2-engines-rhythm-and-rhythm rule rhythm-engine1 rhythm-engine2) rhythm-engine1 rhythm-engine2)))

(system::PWGLDef R-meter-duration ((rule nil) (voices 0)
                                   (format  10 (ccl::mk-menu-subview :menu-list '(":offset" ":offset_dur" ":list-all-offsets" ":list-all-offs_dur")))
                                   (metric-structure 10 (ccl::mk-menu-subview :menu-list '(":beats" ":1st-beat")))
                                   &optional
                                   (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                   (weight 1))
                 "
Rule for durations and rests at metric timepoints. The rule will check
all metric timepoints (see the setting for the metric structure). 
Grace notes are ignored by the rule.

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. Each input will receive the 
information on regarding the offset to the onset for the event that 
coinside with a metric time point (i.e. every beat or only the first
beat of every measure). If the rule has more than one input it will 
receive information for consecutive metric timepoints The exact 
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
                 (:groupings '(3 1)  :extension-pattern '(2) :x-proportions '((0.1 0.1 0.2)(0.4)(0.3 0.1)) :w 0.5)

                 (when (typep voices 'number) (setf voices (list voices)))

                 (let ((rhythm-engines (mapcar #'(lambda (voice) (* 2 voice)) voices))
                       (metric-structure-flag (if (equal metric-structure :beats) 1 2)))
                 ; -1 is the flag to be replaced with the number for the metric engine

                   (cond ((equal rule-type :heur-switch)
                          (cond ((equal format :offset)
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-events-include-rests 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((equal format :offset_dur)
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((equal format :list-all-offsets)
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-events-include-rests-list-all 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((equal format :list-all-offs_dur)
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-list-all 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                )
                          )
                         (t
                          (cond ((equal format :offset)
                                 (cond ((= *bktr-md2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-events-include-rests rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-events-include-rests rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                ((equal format :offset_dur)
                                 (cond ((= *bktr-md2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                ((equal format :list-all-offsets)
                                 (cond ((= *bktr-md2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-events-include-rests-list-all rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-events-include-rests-list-all rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                ((equal format :list-all-offs_dur)
                                 (cond ((= *bktr-md2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-list-all rule rhythm-engine metric-structure-flag) -1 rhythm-engine)))
                                       ((= *bktr-md2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-metric-timepoints-and-events-include-rests-indicate-duration-list-all rule rhythm-engine metric-structure-flag) -1 rhythm-engine))))
                                 )
                                )

                          ))))

(defun rule-two-engines (rule engine1 engine2)
"This is for rhythm and pitch in the same voice"
  (let ((compiled-rule (compile nil rule))
        (vrule (make-array '(3))))
    (setf (aref vrule 0) (list engine1 engine2)) ;check this rule in this engine
    (setf (aref vrule 1) compiled-rule)
    ;The backtrack route might not be ideal if more than 1 argument in rule
    (setf (aref vrule 2) (list (list engine2 engine1)(list engine1 engine2))) ;backtrack route if this rule fails
    (make-rule-instance vrule)))


(defun get-position-for-duration-at-notecount+following-rests (engine vlinear-solution notecount tot-no-of-durs)
  "Returns the position for the last rest following a note at the notecount.
If notecount doesn't exist, nil will be returned. A notecount of -1 is acceptable if the first event is a rest.

Replaced by get-position-for-duration-at-notecount-incl-following-rests."
  (declare (type vector vlinear-solution))
  (declare (type fixnum engine notecount tot-no-of-durs))
  
  (let ((position-for-duration-at-notecount (get-position-for-duration-at-notecount engine vlinear-solution notecount))
        (count 0))
    (declare (type fixnum count))
    (declare (type t position-for-duration-at-notecount))

    (when (not position-for-duration-at-notecount) (return-from get-position-for-duration-at-notecount+following-rests nil))
    ;skip loop if the sequence of durations ends just after this position
    (when (<= (1- tot-no-of-durs) position-for-duration-at-notecount)
      (return-from get-position-for-duration-at-notecount+following-rests position-for-duration-at-notecount))

    ;look for following rests
    (loop for n from
          position-for-duration-at-notecount
          to
          (- tot-no-of-durs 2)
          do (progn (setf count n)
               (when (not (minusp (nth (1+ n) (aref vlinear-solution engine 0))))
                 (return count)))
          finally (return (1+ count))))) ;using count since n seems unreliable after the loop


(system::PWGLDef R-duration-meter ((rule nil) (voices 0)
                                   (format  10 (ccl::mk-menu-subview :menu-list '(":offs" ":d_offs" ":d_offs_m")))
                                   (metric-structure 10 (ccl::mk-menu-subview :menu-list '(":beats" ":1st-beat")))
                                   (rest-mode  10 (ccl::mk-menu-subview :menu-list '(":incl-rests" ":durations")))
                                   (gracenote-mode  10 (ccl::mk-menu-subview :menu-list '(":normal" ":excl-gracenotes")))
                                   &optional
                                   (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                   (weight 1))
                 "
Rule for the metric position of durations and rests. The rule checks all 
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

<gracenote-mode>
 - normal:    The rule will include grace notes as separate events. If
              grace notes are not included in the domain, this setting 
              should be chosen.
 - excl-gracenotes: The rule will not be checkes for grace notes (if 
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
                       (metric-structure-flag (if (equal metric-structure :beats) 1 2)))
                 ; -1 is the flag to be replaced with the number for the metric engine

                   (cond ((equal rule-type :heur-switch)
                          (cond ((and (equal format :offs) (equal rest-mode :incl-rests) (equal gracenote-mode :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-offset-to-metric-structure-include-rests 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :offs) (equal rest-mode :durations) (equal gracenote-mode :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-offset-to-metric-structure-ignor-rests 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :offs) (equal rest-mode :incl-rests) (equal gracenote-mode :excl-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-offset-to-metric-structure-include-rests-ignor-gracenotes 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :offs) (equal rest-mode :durations) (equal gracenote-mode :excl-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-offset-to-metric-structure-ignor-rests-and-gracenotes 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :incl-rests) (equal gracenote-mode :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-and-their-offset-to-metric-structure-include-rests 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :durations) (equal gracenote-mode :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :incl-rests) (equal gracenote-mode :excl-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :durations) (equal gracenote-mode :excl-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :incl-rests) (equal gracenote-mode :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-indicate-timesignature 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :durations) (equal gracenote-mode :normal))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :incl-rests) (equal gracenote-mode :excl-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :durations) (equal gracenote-mode :excl-gracenotes))
                                 (loop for rhythm-engine in rhythm-engines
                                       collect (heuristic-rule-two-engines (heuristic-switch-rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature 
                                                                            rule rhythm-engine metric-structure-flag weight) -1 rhythm-engine))
                                 ))
                          )
                         (t
                          (cond ((and (equal format :offs) (equal rest-mode :incl-rests) (equal gracenote-mode :normal))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-offset-to-metric-structure-include-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-offset-to-metric-beat-include-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :offs) (equal rest-mode :durations) (equal gracenote-mode :normal))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-offset-to-metric-structure-ignor-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-offset-to-metric-structure-ignor-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :offs) (equal rest-mode :incl-rests) (equal gracenote-mode :excl-gracenotes))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-offset-to-metric-structure-include-rests-ignor-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-offset-to-metric-structure-include-rests-ignor-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :offs) (equal rest-mode :durations) (equal gracenote-mode :excl-gracenotes))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-offset-to-metric-structure-ignor-rests-and-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-offset-to-metric-structure-ignor-rests-and-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :incl-rests) (equal gracenote-mode :normal))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :durations) (equal gracenote-mode :normal))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :incl-rests) (equal gracenote-mode :excl-gracenotes))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs) (equal rest-mode :durations) (equal gracenote-mode :excl-gracenotes))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :incl-rests) (equal gracenote-mode :normal))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :durations) (equal gracenote-mode :normal))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :incl-rests) (equal gracenote-mode :excl-gracenotes))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-events-and-their-offset-to-metric-structure-include-rests-ignor-gracenotes-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                ((and (equal format :d_offs_m) (equal rest-mode :durations) (equal gracenote-mode :excl-gracenotes))
                                 (cond ((= *bktr-dm2v* 3)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines3 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1)))
                                       ((= *bktr-dm2v* 4)
                                        (loop for rhythm-engine in rhythm-engines
                                              collect (rule-two-engines4 (rule-2-engines-durations-and-their-offset-to-metric-structure-ignor-rests-and-gracenotes-indicate-timesignature rule rhythm-engine metric-structure-flag) rhythm-engine -1))))
                                 )
                                (t (error "Not yet implemented"))
                                )
                          ))))




;;;;;
(system::PWGLDef R-rhythm-pitch-on-1st-beat ((rule nil)
                                             (voice 0))
                 "This rule always prefer to backtrack the rhythm engine."
                 (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
                 (let* ((rhythm-engine (* 2 voice))
                        (pitch-engine (1+ rhythm-engine)))
    ; -1 is the flag to be replaced with the number for the metric engine
                   (rule-three-engines (rule-3-engines-pitch-and-duration-on-1st-beat rule rhythm-engine pitch-engine) rhythm-engine pitch-engine -1)))


(system::PWGLDef R-rhythm-pitch-on-beats ((rule nil)
                                          (voice 0))
                 "This rule always prefer to backtrack the rhythm engine."
                 (:groupings '(2)  :x-proportions '((0.2 0.2)) :w 0.5)
                 (let* ((rhythm-engine (* 2 voice))
                        (pitch-engine (1+ rhythm-engine)))
    ; -1 is the flag to be replaced with the number for the metric engine
                   (rule-three-engines (rule-3-engines-pitch-and-duration-on-beats rule rhythm-engine pitch-engine) rhythm-engine pitch-engine -1)))


;simplest code - always check all 1st beats
;this rule has problems: late rests will be checked even if there are no preceeding pitches - the bug might be remove-rests-from-list (change to remove-rests-from-list2)
(defun rule-3-engines-pitch-and-duration-on-1st-beat (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for pitches on beats. Durations are given as a bonus (it should not slow down the search). The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type vector vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let* (list '(metric-engine (1- (array-dimension vindex 0)))
                            (list 'endtime-rhythmengine (list 'get-current-index-endtime rhythm-engine 'vindex 'vsolution))
                            '(timepoints-for-1st-beats (truncate-list-just-before-endpoint endtime-rhythmengine
                                                        (remove-rests-from-list (aref vlinear-solution metric-engine 1))))
                            (list 'timepoints-rhythmengine (list 'butlast (list 'aref 'vlinear-solution rhythm-engine 1)))
                            (list 'durations-rhythmengine (list 'aref 'vlinear-solution rhythm-engine 0))
                            (list 'notecounts-rhythmengine (list 'aref 'vlinear-solution rhythm-engine 2))
                            (list 'pitches-pitchengine (list 'aref 'vlinear-solution pitch-engine 0))
                            'pitch-dur-pairs)
                '(declare (type fixnum metric-engine))
                '(declare (type list timepoints-for-1st-beats timepoints-rhythmengine durations-rhythmengine notecounts-rhythmengine pitches-pitchengine pitch-dur-pairs))
                '(setf pitch-dur-pairs
                       (remove nil (loop for timepoint-1st-beat in timepoints-for-1st-beats
                                         collect (let ((position-in-list (position timepoint-1st-beat timepoints-rhythmengine :test #'(lambda (a b) (>= a (abs b))) :from-end t)))
                                                   (declare (type t position-in-list))
                                                   (if position-in-list ;filter out when there is no assigned duration
                                                       (let* ((notecount (nth position-in-list notecounts-rhythmengine))
                                                              (duration (nth position-in-list durations-rhythmengine))
                                                              (pitch (nth (1- notecount) pitches-pitchengine)))

                                                         (declare (type fixnum notecount))
                                                         (declare (type number duration))
                                                         (declare (type t pitch)) ; this might be nil
                                                         (cond ((and (minusp duration) pitch)
                                                                (list duration nil)) ;rest gives pitch nil
                                                               (pitch (list duration pitch)) ;COMPARE WITH THE NEXT RULE - rests are problems
                                                               (t nil)))
                                      
                                                     nil)))))


                ;;;;;;;;;;;;test rule
                (list 'loop 'for 'n 'from 0
                      'to (list '- (list '1- (list 'length 'pitch-dur-pairs)) (1- no-of-args))
                      'do (list 'if (list 'apply (compile nil simple-rule) 
                                                     (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                           'collect (list 'nth (list '+ 'n 'm) 'pitch-dur-pairs))) 
                                t
                                (list 'progn 
                                      ;backjump routine here
                                      '(return nil)))
                      'finally '(return t)
                      )))))

;this rule has problems: late rests will be checked even if tehre are no preceeding pitches
(defun rule-3-engines-pitch-and-duration-on-beats (simple-rule rhythm-engine pitch-engine)
  "Formats a rule for pitches on beats. Durations are given as a bonus (it should not slow down the search). The rule should be compiled before used."
  (let ((no-of-args (length (function-lambda-list simple-rule))))

    (list 'lambda '(vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
          '(declare (type vector vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes))
          '(declare (type fixnum engine))
          (list 'let* (list '(metric-engine (1- (array-dimension vindex 0)))
                            (list 'endtime-rhythmengine (list 'get-current-index-endtime rhythm-engine 'vindex 'vsolution))
                            '(timepoints-for-1st-beats (truncate-list-just-before-endpoint endtime-rhythmengine
                                                        (convert-rests-to-notes-in-list (aref vlinear-solution metric-engine 1))))
                            (list 'timepoints-rhythmengine (list 'butlast (list 'aref 'vlinear-solution rhythm-engine 1)))
                            (list 'durations-rhythmengine (list 'aref 'vlinear-solution rhythm-engine 0))
                            (list 'notecounts-rhythmengine (list 'aref 'vlinear-solution rhythm-engine 2))
                            (list 'pitches-pitchengine (list 'aref 'vlinear-solution pitch-engine 0))
                            'pitch-dur-pairs)
                '(declare (type fixnum metric-engine))
                '(declare (type list timepoints-for-1st-beats timepoints-rhythmengine durations-rhythmengine notecounts-rhythmengine pitches-pitchengine pitch-dur-pairs))
;'(print (list 'inside timepoints-for-1st-beats timepoints-rhythmengine (position (car timepoints-for-1st-beats) timepoints-rhythmengine :test #'(lambda (a b) (>= a (abs b))) :from-end t)))
                '(setf pitch-dur-pairs
                       (remove nil (loop for timepoint-1st-beat in timepoints-for-1st-beats
                                         collect (let ((position-in-list (position timepoint-1st-beat timepoints-rhythmengine :test #'(lambda (a b) (>= a (abs b))) :from-end t)))
                                                   (declare (type t position-in-list))
;'(print (list 'hepp position-in-list))
                                                   (if position-in-list ;filter out when there is no assigned duration
                                                       (let* ((notecount (nth position-in-list notecounts-rhythmengine))
                                                              (duration (nth position-in-list durations-rhythmengine)))
                                                         (declare (type fixnum notecount))
                                                         (declare (type number duration))
                                                         (cond ((minusp duration)
                                                                (list duration nil)) ;rest gives pitch nil
                                                               ((plusp notecount) 
                                                                (let ((pitch (nth (1- notecount) pitches-pitchengine)))
                                                                  (declare (type t pitch))
                                                                  (if pitch
                                                                      (list duration pitch)
                                                                    nil)))  ;;;;här borde hela loopen avbrytas
                                                               (t nil)))
                                      
                                                     nil)))))
                ;;;;;;;;;;;;test rule
                (list 'loop 'for 'n 'from 0
                      'to (list '- (list '1- (list 'length 'pitch-dur-pairs)) (1- no-of-args))
                      'do (list 'if (list 'apply (compile nil simple-rule) 
                                                     (list 'loop 'for 'm 'from 0 'to (1- no-of-args)
                                                           'collect (list 'nth (list '+ 'n 'm) 'pitch-dur-pairs))) 
                                t
                                (list 'progn 
                                      ;backjump routine here
                                      '(return nil)))
                      'finally '(return t)
                      )))))



(system::PWGLDef R-pitch-pitch-all ((rule nil)
                                    (voice1 0)
                                    (voice2 1))
                 "This rule always prefer to backtrack the rhythm engine."
                 (:groupings '(1 2)  :x-proportions '((0.2)(0.2 0.2)) :w 0.5)
                 (let* ((rhythm-engine1 (* 2 voice1))
                        (pitch-engine1 (1+ rhythm-engine1))
                        (rhythm-engine2 (* 2 voice2))
                        (pitch-engine2 (1+ rhythm-engine2)))

                   (rule-four-engines-pitch-pitch (rule-4-engines-pitch-and-pitch rule rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2) 
                                                  rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2)))



(system::PWGLDef R-pitch-pitch-on-beat ((rule nil)
                                        (voice1 0)
                                        (voice2 1))
                 "This rule always prefer to backtrack the rhythm engine."
                 (:groupings '(1 2)  :x-proportions '((0.2)(0.2 0.2)) :w 0.5)
                 (let* ((rhythm-engine1 (* 2 voice1))
                        (pitch-engine1 (1+ rhythm-engine1))
                        (rhythm-engine2 (* 2 voice2))
                        (pitch-engine2 (1+ rhythm-engine2)))
    ; -1 is the flag to be replaced with the number for the metric engine
                   (rule-five-engines-pitch-pitch (rule-5-engines-pitch-and-pitch-on-beat rule rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2) 
                                                  rhythm-engine1 pitch-engine1 rhythm-engine2 pitch-engine2 -1)))



;;;This can be removed

(system::PWGLDef R-pitch-pitch-old ((rule nil)
                                (list-voices '(0 1))
                                (timepoints '(0))
                                (input-mode  10 (ccl::mk-menu-subview :menu-list '(":all" ":beat" ":1st-beat" ":1st-voice" ":at-timepoints")))
                                (gracenotes?  10 (ccl::mk-menu-subview :menu-list '(":exclude-gracenotes" ":include-gracenotes")))
                                &optional
                                (rule-type  10 (ccl::mk-menu-subview :menu-list '(":true/false" ":heur-switch")))
                                (weight 1))
    "Rule that accesses simultaneous pitches in 2 or more voices. 

<rule> is a logic statement in he form of a function. The output of the 
function has to be either true or false. Each input will receive a list 
with simultaneous pitches. If the rule has more than one input it will 
receive information for consecutive events (the positions of the events 
are determined by the input-mode setting).

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
- at-timepoints:  The rule will be checked at the timepoints in the 
               timepoints input.
<gracenotes?>  
- exclud-gracenotese: Pitches that relate to grace notes will be ignored.
- include-gracenotes: Grace notes are also checked by the rule:
               they are related to the regular notes in the other
               voices.
               

list-of-voices can include any number of voices. All voices must have a pitch 
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
    (:groupings '(2 2 1) :extension-pattern '(2) :x-proportions '((0.2 0.2)(0.1 0.3)(0.4)(0.25 0.15)) :w 0.5)

    (when timepoints (setf timepoints (sort timepoints '<)))
    (when (/= (count-if 'minusp timepoints) 0) (error "Error in inputs to R-pitch-pitch: timepoints cannot be negative"))

  (let ((list-with-engine-nrs (apply 'append (loop for voice in list-voices collect (list (* 2 voice) (1+ (* 2 voice)))))))
    (cond ((equal rule-type :heur-switch) 
           (cond ((equal input-mode :all)
                  (cond ((equal gracenotes? :include-gracenotes)
                         (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-in-n-voices rule list-voices weight))
                        (t
                         (heuristic-switch-rule-pitch-and-pitch-in-n-voices rule list-voices weight))))
                 ((equal input-mode :beat)
                  (cond ((equal gracenotes? :include-gracenotes)
                         (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-in-n-voices rule list-voices 'get-all-beats weight))
                        (t
                         (heuristic-switch-rule-pitch-and-pitch-on-beat-in-n-voices rule list-voices 'get-all-beats weight)))
                  )
                 ((equal input-mode :1st-beat)
                  (cond ((equal gracenotes? :include-gracenotes)
                         (heuristic-switch-rule-pitch-and-pitch-include-gracenotes-on-beat-in-n-voices rule list-voices 'get-1st-down-beats weight))
                        (t
                         (heuristic-switch-rule-pitch-and-pitch-on-beat-in-n-voices rule list-voices 'get-1st-down-beats weight)))
                  )
                 ((equal input-mode :1st-voice)
                  (cond ((equal gracenotes? :include-gracenotes)
                         (heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-include-gracenotes-in-n-voices rule list-voices weight))
                        (t
                         (heuristic-switch-rule-pitch-and-pitch-at-1st-voice-onsets-in-n-voices rule list-voices weight)))
                  )
                 ((equal input-mode :at-timepoints)
                  (cond ((equal gracenotes? :include-gracenotes)
                         (heuristic-switch-rule-pitch-and-pitch-at-timepoints-include-gracenotes-in-n-voices rule timepoints list-voices weight))
                        (t
                         (heuristic-switch-rule-pitch-and-pitch-at-timepoints-in-n-voices rule timepoints list-voices weight)))
                  )

                 ))

          (t ;true/false rule
           (cond ((equal input-mode :all)
                  (cond ((equal gracenotes? :include-gracenotes)
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
                  (cond ((equal gracenotes? :include-gracenotes) 
                         (let ((backtrack-route (cond ((= *bktr-ppNv-A* 1)
                                                       'rule-n-engines3)    ;next pitch engine
                                                      ((= *bktr-ppNv-A* 2)
                                                       'rule-n-engines4)    ;next rhythm engine
                                                      ((= *bktr-ppNv-A* 3)
                                                       'rule-n-engines4)    ;this pitch engine
                                                      ((= *bktr-ppNv-A* 4)
                                                       'rule-n-engines4)))) ;this rhythm engine (or next if current engine is pitch engine)
                           (funcall backtrack-route (rule-n-engines-pitch-and-pitch-include-gracenotes-on-beat rule list-voices 'get-all-beats) list-with-engine-nrs)))
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
                  (cond ((equal gracenotes? :include-gracenotes) 
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
                  (cond ((equal gracenotes? :include-gracenotes) 
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
                  (cond ((equal gracenotes? :include-gracenotes) 
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

    ))