(in-package cluster-engine)

;;;;;;;;;;;;;;;;;;;;;GENERAL FOR FORMATING RULES;;;;;;;;;;;;;;;;;;;;;;;;

;the class is only used to distinguish rules from heuristic rules
 
(defclass rule ()
  ((layer :type array :initform (make-array 1) :reader get-rule :writer set-rule)))

(defun compile-if-not-compiled (name expr)
  (if (compiled-function-p expr) 
      expr
    (compile name expr)))

;;;;;;;;;;;;;;;;; Replace -1 flags with number for metric engine
(defun replace-flags-with-metric-engine-in-rules (rules nr-of-engines)
  (loop for vrule in rules
        collect (progn (setf (aref vrule 0) (subst (1- nr-of-engines) -1 (aref vrule 0)))
             (setf (aref vrule 2) (subst (1- nr-of-engines) -1 (aref vrule 2)))
             vrule)
        ))
 

;;;;;;;;;;;;;;;;;; Flags for setting backtrack routes
;This structure is provided so it is possible to change the way the system choses backtrack routes.
;Normally they should not be changed (it can be done via the preference box).

(defvar *bktr-rp1v* 1) ;flag for backtrack route for rhythm-pitch-rule
(defvar *bktr-rp1v-A* 1) ;flag for backtrack route for rhythm-pitch-rule
(defvar *bktr-rp1v-B* 1) ;flag for backtrack route for rhythm-pitch-rule include rests
(defvar *bktr-rp1v-C* 1) ;flag for backtrack route for rhythm-pitch-index-rule on notes
(defvar *bktr-rp1v-D* 1) ;flag for backtrack route for rhythm-pitch-index-rule on duration include rests
(defvar *bktr-rp1v-E* 1) ;flag for backtrack route for rhythm-pitch-rule exclude gracenotes
(defvar *bktr-rp1v-F* 1) ;flag for backtrack route for rhythm-pitch-rule include rests exclude gracenotes
(defvar *bktr-rp1v-G* 1) ;flag for backtrack route for rhythm-pitch-segments rule 
(defvar *bktr-rp1v-H* 1) ;flag for backtrack route for rhythm-pitch-segments rule exclude gracenotes
(defvar *bktr-rp1v-I* 1) ;flag for backtrack route for rhythm-pitch-rule list all
(defvar *bktr-rp1v-J* 1) ;flag for backtrack route for rhythm-pitch-rule list all exclude gracenotes

(defvar *bktr-rr2v* 2) ;flag for backtrack route for rhythm-rhythm-rule   -  this was a bug in version 0.143
(defvar *bktr-rr2v-A* 2) ;flag for backtrack route for rhythm-rhythm-rule format '(dur-v1 offset) Rests are included in v2 (not gracenotes).
(defvar *bktr-rr2v-B* 2) ;flag for backtrack route for rhythm-rhythm-rule format '(dur-v1 offset dur-v2) Rests are included in v2 (not gracenotes).
(defvar *bktr-rr2v-C* 2) ;flag for backtrack route for rhythm-rhythm-rule format '(dur-v1 offset) Break at rests in v1. Rests are included in v2 (not gracenotes).
(defvar *bktr-rr2v-D* 2) ;flag for backtrack route for rhythm-rhythm-rule format '(dur-v1 offset dur-v2) Break at rests in v1. Rests are included in v2 (not gracenotes).
(defvar *bktr-rr2v-E* 2) ;flag for backtrack route for rhythm-rhythm-rule format '(dur-v1 offset) Break at rests in v2.
(defvar *bktr-rr2v-F* 2) ;flag for backtrack route for rhythm-rhythm-rule format '(dur-v1 offset dur-v2) Break at rests in v2.
(defvar *bktr-rr2v-G* 2) ;flag for backtrack route for rhythm-rhythm-rule format '((dur-v1 offset) (dur-v1 offset) ...) Rests are included in v2 (not gracenotes).
(defvar *bktr-rr2v-H* 2) ;flag for backtrack route for rhythm-rhythm-rule format '((dur-v1 offset dur-v2) (dur-v1 offset dur-v2) ...) Rests are included in v2 (not gracenotes).
(defvar *bktr-rr2v-I* 2) ;flag for backtrack route for rhythm-rhythm-rule format '((dur-v1 offset) (dur-v1 offset) ...)  Break at rests in v1.
(defvar *bktr-rr2v-J* 2) ;flag for backtrack route for rhythm-rhythm-rule format '((dur-v1 offset dur-v2) (dur-v1 offset dur-v2) ...)  Break at rests in v1.
(defvar *bktr-rr2v-K* 2) ;flag for backtrack route for rhythm-rhythm-rule format '((dur-v1 offset) (dur-v1 offset) ...)  Break at rests in v1 or v2.
(defvar *bktr-rr2v-L* 2) ;flag for backtrack route for rhythm-rhythm-rule format '((dur-v1 offset dur-v2) (dur-v1 offset dur-v2) ...)  Break at rests in v1 or v2.

(defvar *bktr-rh2v* 2) ;flag for rhythm-hierarchy-rules
(defvar *bktr-rh2v-A* 2) ;flag for rhythm-hierarchy-rule all durations
(defvar *bktr-rh2v-B* 2) ;flag for rhythm-hierarchy-rule motif onsets
(defvar *bktr-rh2v-C* 2) ;flag for rhythm-hierarchy-rule motif onsets

(defvar *bktr-rmh2v* 4) ;flag for rhythm-metric-hierarchy-rules (i.e. position of onsets in relation to the metric grid): 4 is rhythm engine


(defvar *bktr-dm1v* 3) ;flag for duration-meter-rule: 3 is rhythm engine

(defvar *bktr-md1v* 4) ;flag for duration-meter-rule: 4 is rhythm engine

(defvar *bktr-mn1v* 1) ;flag for meter-note-rule:
(defvar *bktr-nm1v* 1) ;flag for note-meter-rule

;N below stands for aNy number of voices/engines
(defvar *bktr-leNv* 2) ;flag for list-all-events-rule (any number of voices)
(defvar *bktr-leNv-A* 2) ;flag for list-all-events-rule (any number of voices) pitches
(defvar *bktr-leNv-B* 2) ;flag for list-all-events-rule (any number of voices) durations


(defvar *bktr-ppNv* 1) ;flag for backtrack route for pitch-pitch-rule
(defvar *bktr-ppNv-A* 1) ;flag for backtrack route for pitch-pitch-rule (all possible harmonic slices)
(defvar *bktr-ppNv-B* 1) ;flag for backtrack route for pitch-pitch-rule (harmonic slices on all beats)
(defvar *bktr-ppNv-C* 1) ;flag for backtrack route for pitch-pitch-rule (1st voice)
(defvar *bktr-ppNv-D* 1) ;flag for backtrack route for pitch-pitch-rule (at time points)

#|
(defun print-backtrack-preferences ()
      (system::pwgl-print (cond ((equal *bktr-rp1v* 1) "rp1v: self (default)")
                                ((equal *bktr-rp1v* 2) "rp1v: other")))
      (system::pwgl-print (cond ((equal *bktr-rr2v* 1) "rr2v: self")
                                ((equal *bktr-rr2v* 2) "rr2v: other (default)")))
      (system::pwgl-print (cond ((equal *bktr-rh2v* 1) "rh2v: self")
                                ((equal *bktr-rh2v* 2) "rh2v: other (default)")))
      (system::pwgl-print (cond ((equal *bktr-rmh2v* 3) "rmh2v: meter")
                                ((equal *bktr-rmh2v* 4) "rmh2v: rhythm (default)")))
      (system::pwgl-print (cond ((equal *bktr-dm1v* 3) "dm1v: rhythm (default)")
                                ((equal *bktr-dm1v* 4) "dm1v: meter")))
      (system::pwgl-print (cond ((equal *bktr-md1v* 3) "md2v: meter")
                                ((equal *bktr-md1v* 4) "md2v: rhythm (default)")))
      (system::pwgl-print (cond ((equal *bktr-mn1v* 1) "mn1v: self (default)")
                                ((equal *bktr-mn1v* 2) "mn1v: rhythm/pitch")
                                ((equal *bktr-mn1v* 3) "mn1v: pitch/rhythm")))
      (system::pwgl-print (cond ((equal *bktr-nm1v* 1) "mn1v: self (default)")
                                ((equal *bktr-nm1v* 2) "mn1v: rhythm/pitch")
                                ((equal *bktr-nm1v* 3) "mn1v: pitch/rhythm")))
      (system::pwgl-print (cond ((equal *bktr-ppNv* 1) "ppNv: next-pitch (default)")
                                ((equal *bktr-ppNv* 2) "ppNv: next-rhythm")
                                ((equal *bktr-ppNv* 3) "ppNv: current-pitch")
                                ((equal *bktr-ppNv* 4) "ppNv: current-rhythm")))
      (system::pwgl-print (cond ((equal *bktr-leNv* 1) "leNv: self")
                                ((equal *bktr-leNv* 2) "leNv: next (default)")))
)
|#


;;;;;

(defun filter-rules-from-input (big-list)
  "This functions removes everything but items of the class 'rule from a list. The rules will
be output in the format of a list of individual rule arrays."
  (remove nil (loop for element in big-list
                    collect (if (typep element 'rule)
                                (get-rule element)
                              nil))))

(defun test-if-engines-nr-exist-in-rules (nr-of-engines engines-for-rules)
  (when (member (1- nr-of-engines) engines-for-rules :test '<)
    (error "One or more rules refer to voices that you did not define in the Cluster engine. Note that voices are numbered starting from 0 (zero).")))


(defun create-rule-vector (rules-input-list nr-of-engines locked-engines)
 "Sorts all rules in a array. Objects that are not rules in the input list (i.e. heuristic rules) are sorted out."
  (let ((rules (filter-rules-from-input rules-input-list))
        engines-for-rules-include-duplicates
        engines-for-rules
        nr-of-rules-per-engine
        vrules)

    
    (replace-flags-with-metric-engine-in-rules rules nr-of-engines)
    ;;;;remove locked engines from backtrack routes from rules
    (loop for rule in rules
          do (remove-locked-engines-in-backtrackroutes rule locked-engines))

    ;calculate how many rules in each engine
    (setf engines-for-rules-include-duplicates 
          (sort (copy-list (apply 'append (loop for rule in rules
					     collect (aref rule 0))))
		#'<))
    (setf engines-for-rules (remove-duplicates engines-for-rules-include-duplicates))
    (test-if-engines-nr-exist-in-rules nr-of-engines engines-for-rules)
    (setf nr-of-rules-per-engine (loop for engine in engines-for-rules
                                       collect (count engine engines-for-rules-include-duplicates)))

    ;create rule array
    (setf vrules (make-array (list nr-of-engines 2) :initial-element nil))
		;; (setf vrules (make-array (list nr-of-engines 2) :initial-element nil :element-type 'array))
    (loop for engine in engines-for-rules
          for nr-of-rules in nr-of-rules-per-engine
          do (progn 
               (setf (aref vrules engine 0)
                     (make-array (list nr-of-rules) :initial-element nil :element-type 't))
               (setf (aref vrules engine 1)
                     (make-array (list nr-of-rules) :initial-element nil :element-type 'list))))

    ;fill rule array
    (loop for rule in rules
          do (loop for engine in (aref rule 0)
                   for backtrack-route in (aref rule 2)
                   do (loop for ruleindex from 0 to (1- (array-dimension  (aref vrules engine 0) 0))
                            while (aref (aref vrules engine 0) ruleindex)
                            finally (progn 
                                      (setf (aref (aref vrules engine 0) ruleindex) (aref rule 1))
                                      (setf (aref (aref vrules engine 1) ruleindex) backtrack-route)))))

  
    vrules))


(defun remove-locked-engines-in-backtrackroutes (vrule locked-engines)
  "This is for one rule. If there is a list of rules, each one should pass this check."
  (when locked-engines (loop for locked-engine in locked-engines
                             do (setf (aref vrule 2) 
                                      (loop for backtrackroute in (aref vrule 2) 
                                            collect (remove locked-engine backtrackroute)))))
  vrule)



;;;;;;;;;;;;;;;;;;;;;TEST THE RULES IN SEARCH;;;;;;;;;;;;;;;;;;;;;;;;


(defun test-rules (engine vrules vsolution vlinear-solution vsolution-for-backjump vbackjump-indexes vindex vbacktrack-engines)
  (declare (type array vrules vsolution vlinear-solution vsolution-for-backjump vbackjump-indexes vindex vbacktrack-engines))
  (declare (type fixnum engine))

  (if (aref vrules engine 0) ;if there are any rules to check
      (let ((ruletest (remove t (loop for ruleindex from 0 to (1- (array-dimension (aref vrules engine 0) 0))
                                      collect (if (funcall (aref (aref vrules engine 0) ruleindex) vsolution vlinear-solution vindex vsolution-for-backjump vbackjump-indexes engine)
                                                  t ;flag if rule passed test
                                                (aref (aref vrules engine 1) ruleindex)))))) ;This is where the backtrack route is found.
        ;If ruletest fails, it returns the backtrack route for the rule. If the rule passes the test, it returns T (that is removed above).
        (declare (type list ruletest))

        ;Check if there is a backtrack route (= the ruletest failed)
        (if ruletest

            ;rules failed - set backtrack info
            (progn 
              (setf (aref vbacktrack-engines 0)  
                    (append ruletest (aref vbacktrack-engines 0)))
              (return-from test-rules nil))

          ;rules passed - reset backtrack info 
          (progn 
            (setf (aref vbacktrack-engines 0) nil)
            (return-from test-rules t))))
      
    ;return t if no rules to check
    t)
  )


;;;;;These functions converts the vsolution to the vlinear-solution
(defun get-one-engine-col1 (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (apply 'append (loop for index from 0 to (aref vindex engine)
        collect (caar (aref (aref vsolution engine) index)))))

(defun get-one-engine-col1bars (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (loop for index from 0 to (aref vindex engine)
        collect (caar (aref (aref vsolution engine) index))))

(defun get-one-engine-col2pitch (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (apply 'append (loop for index from 0 to (aref vindex engine)
                       collect (cadar (aref (aref vsolution engine) index)))))

(defun get-one-engine-col2onset (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (cond ((> (aref vindex engine) 0)
         (apply 'append (append (loop for index from 0 to (1- (aref vindex engine))
                                      collect (butlast (cadar (aref (aref vsolution engine) index))))
                                (list (cadar (aref (aref vsolution engine) (aref vindex engine)))))))
        ((= (aref vindex engine) 0) 
         (cadar (aref (aref vsolution engine) (aref vindex engine))))
        (t nil)))

(defun get-one-engine-col3 (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (apply 'append (loop for index from 0 to (aref vindex engine)
        collect (caddar (aref (aref vsolution engine) index)))))

;;convert-vsolution->linear ANVÄNDS EJ. Se convert-vsolution->linear-and-backjump i 06.backjumping.lisp
(defun convert-vsolution->linear (vsolution vindex vlinear-solution vflag-changed-engine nr-of-engines)
  (declare (type array vsolution vindex vlinear-solution vflag-changed-engine))
  (loop for engine in (remove-duplicates (aref vflag-changed-engine 0))
        do (progn 
             (if (= engine (1- nr-of-engines)) 
                   ;measure layer
                 (setf (aref vlinear-solution engine 0) (get-one-engine-col1bars vsolution vindex engine))
               (progn 
                   ;pitch and rhythm layer (also count values)
                 (setf (aref vlinear-solution engine 0) (get-one-engine-col1 vsolution vindex engine))
                 ))
             (setf (aref vlinear-solution engine 2) (get-one-engine-col3 vsolution vindex engine))
             (if (evenp engine) 
                 ;rhythm and measure layer (timepoints)
                 (setf (aref vlinear-solution engine 1) (get-one-engine-col2onset vsolution vindex engine))
               ;pitch motifs
              ; (setf (aref vlinear-solution engine 1) (get-one-engine-col2pitch vsolution vindex engine))
))))





