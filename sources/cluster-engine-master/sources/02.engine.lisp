(in-package cluster-engine)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;  CLUSTER ENGINE
;
;  Copyright Orjan Sandred 2010. If you use this code, you will do it on your own risk. I will not take any
;  responsibility to any damaged any bugs might create.
;
;  The cluster engine is a set of engines that search for solutions to parallel sequences of variables. The
;  sequences can have constraints that defines relationships between the sequences. The system is specialiced
;  in musical problems. Therefore there is a strict protocol for what different engines search for:
;  The first engine seraches for a sequence of durations, the second engine searches for a sequence of pitches
;  for these durations. These two engines will thus be a voice together. Any number of voices can be searched 
;  for: every sencond engine serahces for durations and every second for pitches. The last engine searches for 
;  a sequence of time signatures that will relate to all voices.
;
;  Each engine has its own domain. The system first puts all domains into a array (to keep track on what domain 
;  relates to which engine). Then the search indexes (one for each engine) are initated to -1. A default order 
;  for how the engines are searched is set: metric engine, engine 0, engine 1, engine 2, engine 3, etc.
;  
;  The serach startes with steping the index of the first engine to 0, and initiates the variable (i.e. the full 
;  domaon for that engine is put into its first variable). The first candidate in the list at a variable is 
;  considered the candidate that passed the rule (if it fails, it will be poped).
;
;  The next step takes place within the main loop for the search engines. The rules are applied on the first candidate.
;  If it passes, the forward rule will determine what engine will be visited next: its index will be increased, and 
;  the new variable will be initiated (as above). It it fails, it will be passed to a loop (inside the fail function)
;  that searches for the next candidate to test - either the next in the list, or (if the list is empty) the system will 
;  backtrack according to a backtrack rule.
;
;  The system will now jump back to the beginning of the loop (and apply the rules on the new candidate).
;
;  When the new index of any engine becomes higher than the length of the array, the search is interrupted and the 
;  solution is output. If a next index is reduced to -1 in the fail-loop, the system will return an empty solution (i.e. 
;  it could not find a solution).
;
;  The solution can be found in two arrays: in vsolution all candidates can be found (the search path depends on this 
;  array. The vlinear-solution is an optimized storage for the temporary solution. This presents every engine's
;  temporary solution as a flat list. This makes it easier (i.e. faster) for most rules to access the temporary solution.
;  The vlinear-solution is updated just befor the rules are applied (in the test-rules function). Engines that have
;  changed their solution since last cycle are flagged. Only flagged engines will be updated.


(defparameter *cluster-engine-log-output* *error-output*
  "Stream to which Cluster Engine log messages are printed.")

(defparameter *verbose-i/o?* T
  "Flag controlling whether log messages and warnings are set to *cluster-engine-log-output*, or whether they are skipped.")


(defvar *backjump?* t)

;added july 2012
(defvar *stop?* nil) 
(defvar *always-lock-meter?* nil)

;added july 2013
(defvar *max-nr-of-loops* 10000000) ; this variable limits how many loops the engine does before stopping the search.
(defvar *vindex* nil) ; this is to create a stop rule that accesses the index


;All variables are local so that engines can be independant
;(The use of arrays has the advantage that they can be passed to sub-routines and be changed without returning the value.
;Vectors are also faster than lists)
;max-index is the max nr-of-variables in a single engine



(defun poly-engine (max-index domains metric-domain nr-of-voices locked-engines forwardrule backtrackrule rnd? vrules vheuristic-rules debug?)
  "Strange bug:bktr-rule cannot be forwarded from this function...It is given in the fail subroutine instead.
Locked engines cannot be backtracked."




  (let* ((nr-of-engines (1+ (* 2 nr-of-voices)))
         (vdomain (make-array (list nr-of-engines) :initial-element nil :element-type 'list))
         (vnumber-of-candidates (make-array (list nr-of-engines) :initial-element 1 :element-type 'fixnum))
         (vindex (make-array (list nr-of-engines) :initial-element -1 :element-type 'fixnum))
         (vmax-index (make-array (list nr-of-engines) :initial-element -1 :element-type 'fixnum))
         (vsolution (make-array (list nr-of-engines) :initial-element (make-array (list max-index) :initial-element nil :element-type 'list)
                                :element-type 'vector))
         (vlinear-solution (make-array (list nr-of-engines 3) :initial-element nil :element-type 'list))
         (vsolution-for-backjump (make-array (list nr-of-engines 2) :initial-element nil  :element-type 'list)) ;this is a summary with startingpoints for each index (countvalue and timepoint)
         (vbackjump-indexes (make-array (list nr-of-engines) :initial-element nil :element-type 'list));this is a list of indexes to jump to for each engine
         ;(master-index 0)
         (meter-beatstructures '(((4 4) 0 -1/4 -1/2 -3/4 1)((3 4) 0 -1/4 -1/2 3/4)));;;;;;start for next step to develop
         (meter-onsetgrids '(((4 4) 0 1/8 1/4 3/8 1/2 5/8 3/4 7/8 1)((3 4) 0 1/4 1/2 3/4)));;;;;;start for next step to develop
         (vdefault-engine-order (make-array '(6) :element-type 'list));this is a vector with lists with all information about used engines and search order 
         (vcurrent-engine (make-array '(1) :element-type 'fixnum))
         (vbacktrack-history (make-array '(4) :initial-element nil :element-type 'list));this is a list with the number of the search engines, the index, the count value and the time position in the reversed order from where backtracking occured (it is used when the solution is rebuilt in the forward rules). 
         (vbacktrack-engines (make-array '(1) :element-type 'list));this is a list of the engines (in order of preference) that should be backtracked (if backtracking is necessary)
         (vflag-changed-engine (make-array '(1) :element-type 'list));this is a list of engines that has been changed since last rule check
         (loop-counter 0);this is to count how many times the system steped forward
         )
;(declare (optimize (speed 3) (safety 0)))


    ;;;;declare types of all variables
    (declare (type t metric-domain))
    (declare (type list domains meter-beatstructures meter-onsetgrids locked-engines))
    (declare (type array vsolution vlinear-solution vsolution-for-backjump vbackjump-indexes vindex vmax-index vdomain vbacktrack-history vcurrent-engine vdefault-engine-order vbacktrack-engines vrules vheuristic-rules vflag-changed-engine vnumber-of-candidates))
    (declare (type fixnum max-index nr-of-voices nr-of-engines loop-counter)) ; master-index
    (declare (type boolean rnd? debug?))
    (declare (type symbol forwardrule))
    (declare (type symbol backtrackrule))


;;;;;;;this was added july 2012
(setf *stop?* nil) 
;
;;;;;;
(when *verbose-i/o?*
  (print (format nil "----")
	 *cluster-engine-log-output*)
  (print (format nil "Cluster-Engine by Orjan Sandred (Studio FLAT, University of Manitoba)")
	 *cluster-engine-log-output*))
;;;;;;


    ;;;;print some default settings
(when *verbose-i/o?* 
    (if *backjump?*
        (print (format nil "Initiate search with ~D engines: backjumping is on." nr-of-engines)
  	     *cluster-engine-log-output*)
        (print (format nil "Initiate search with ~D engines: backjumping is off." nr-of-engines)
    	     *cluster-engine-log-output*)))
    ;(print (format nil "Some engines are locked and cannot be backtracked (maybe because they are pre-defined): ~S" locked-engines) *cluster-engine-log-output*)

    ;;;;set metric grid, beatstructure and time sign from vector in metric domain (in the box-function any input will be transformed into a vector
    (setf meter-onsetgrids (aref metric-domain 1))
    (setf meter-beatstructures (aref metric-domain 2))
    (setf metric-domain (aref metric-domain 0))

    ;;;;initiate solution vectors
    (loop for engine from 0 to (1- nr-of-engines)
          do (setf (aref vsolution engine) (make-array (list max-index) :initial-element nil :element-type 'list)))

    ;;;;initiate indexes
    (loop for engine from 0 to (1- nr-of-engines)
          do (setf (aref vindex engine) -1))

    (when debug? 
      (clear-debug-vector) 

      (if *debug-indexes-filename*            ;;; ADDED 17 Jan, 2021
        (clear-debug-index-vectors-to-file)))
        

    ;;;;put m symbols inside the poly-engine package, and put domains in vector
    (setf domains (polyengine-ify-symbols domains));this line is just to solve package problems
    (put-domains-in-vector nr-of-engines vdomain domains metric-domain)

    ;;;;Analyze domain and store the number of candidates in vnumber-of-candidates
    (set-vnumber-of-candidates vdomain vnumber-of-candidates nr-of-engines)


;;;added july 2012 - this is moved to PWGL function ClusterEngine to correct backtrack rule from failed rules
;(when *always-lock-meter?* (setf locked-engines (append locked-engines (list (1- nr-of-engines)))))
;(setf *always-lock-meter?* nil)
;;;;


    ;;;;set defaults
    (set-default-engineorder vdefault-engine-order nr-of-engines vdomain locked-engines)

    ;;;;step forward first engine and initiate first variable
    (setf (aref vcurrent-engine 0) (first (aref vdefault-engine-order 0)))
    (setf (aref vindex (aref vcurrent-engine 0)) 0)








    (initiate-new-variable (aref vcurrent-engine 0) vindex vsolution vdomain meter-beatstructures meter-onsetgrids nr-of-engines rnd?)


    (if (aref vheuristic-rules (aref vcurrent-engine 0) 0)
                ;If there are heuristic rules, sort the candidate list according to the heuristic rules (this will also update the linear and backjump information)
        (sort-candidates-heuristically-and-set-linear-solution vheuristic-rules vsolution vindex vlinear-solution vsolution-for-backjump vflag-changed-engine meter-onsetgrids meter-beatstructures nr-of-engines (aref vcurrent-engine 0))
              ;Else flag the current engine to update the linear and backjump information in the loop.
      (setf (aref vflag-changed-engine 0) (list (aref vcurrent-engine 0))))



     ;*****************************
     ;Main loop
     (when *verbose-i/o?*
       (print (format nil "Search running..." vindex) *cluster-engine-log-output*))




    (loop for n from 0 to *max-nr-of-loops*
          do (progn

                ;print search progress
               (when (and *verbose-i/o?* (= (mod n 50000) 0) (/= n 0))
		 (print (format nil "Current indexes:  ~S. Number of testloops: ~D." vindex n)
			*cluster-engine-log-output*))
                   
               (convert-vsolution->linear-and-backjump vsolution vindex vlinear-solution vsolution-for-backjump vflag-changed-engine nr-of-engines)
               (setf (aref vflag-changed-engine 0) nil) ;reset vflag-changed-engine (this is used for the convert-vsolution->linear-and-backjump to determine what needs to be updated)
               (setf *vindex* vindex)

                ;check rules
               (if (test-rules (aref vcurrent-engine 0) vrules vsolution vlinear-solution vsolution-for-backjump vbackjump-indexes vindex vbacktrack-engines)
                    ;*****************************
                    ;Rules passed test
                   (progn  
                     ;set debug information and print indexes if they exceed previous max index
                     (if debug? (progn (debug-print-and-update-maxindex vindex vmax-index vsolution (aref vcurrent-engine 0) nr-of-engines)
                                  (store-temp-solution-to-debug-vector (get-all-engines vsolution vindex nr-of-engines))
                                  ;;;;;ADDED MAY 23, 2020 - store debug vectors to file every 100s loop or at record index
                                  (when (and *debug-filename* (= (mod loop-counter 100) 0)) (write-debugvectors-to-file)))  
                      ; (print-and-update-maxindex vindex vmax-index (aref vcurrent-engine 0)) ;this would only print indexes, not store temporary solution
                       )

                     ;set new engine and increase its index
                     (setf (aref vcurrent-engine 0) (funcall forwardrule vsolution vindex vbacktrack-history vdefault-engine-order nr-of-engines))
                     (setf (aref vindex (aref vcurrent-engine 0)) (1+ (aref vindex (aref vcurrent-engine 0))))
                     (setf loop-counter (1+ loop-counter))
                     ;stop if index exceeds max index OR *stop?* variable is true
                     (when (or (>= (aref vindex (aref vcurrent-engine 0)) max-index) *stop?*) (progn 
                                                                                           ;decrease index so it points at the last assigned variable
                                                                                                (setf (aref vindex (aref vcurrent-engine 0)) (1- (aref vindex (aref vcurrent-engine 0))))
												(when *verbose-i/o?*
												  (when *stop?* (print (format nil "A stop rule ended the search.") *cluster-engine-log-output*))
												  (print (format nil "A solution was found.") *cluster-engine-log-output*))
                                                                                                (return 'done)))

                             

                     ;;;;initiate first variable for the current engine


                     (initiate-new-variable (aref vcurrent-engine 0) vindex vsolution vdomain meter-beatstructures meter-onsetgrids nr-of-engines rnd?)


                     (if (aref vheuristic-rules (aref vcurrent-engine 0) 0)
                                 ;If there are heuristic rules, sort the candidate list according to the heuristic rules (this will also update the linear and backjump information)
                         (sort-candidates-heuristically-and-set-linear-solution vheuristic-rules vsolution vindex vlinear-solution vsolution-for-backjump 
                                                                                vflag-changed-engine  meter-onsetgrids meter-beatstructures nr-of-engines (aref vcurrent-engine 0))
                               ;Else flag the current engine to update the linear and backjump information in the loop.
                       (setf (aref vflag-changed-engine 0) (cons (aref vcurrent-engine 0) (aref vflag-changed-engine 0))))

                     (reset-vbackjump-indexes vbackjump-indexes nr-of-engines))  ;This resets memory for backjump targets.

                  ;*****************************
                  ;Rules failed test
                  ;The fail-fuction will take care of backtracking and finding a new candidate to test. The fail-function will also find out if it cannot
                  ;find a solution.
                 (when (not (fail vcurrent-engine vsolution vlinear-solution vsolution-for-backjump vindex meter-beatstructures meter-onsetgrids nr-of-engines (aref vdefault-engine-order 5) 
                                  vbacktrack-history backtrackrule vbacktrack-engines vbackjump-indexes vflag-changed-engine vnumber-of-candidates vheuristic-rules debug?)) 
                   (progn
		     (print (format nil "Unable to find a solution.") *cluster-engine-log-output*)
                     (return nil))))
               )
                 ;Finally is used to stop the engine if it gets stuck in too many loops. The limit canbe increased above.
          finally (error "The search system exceeded ~D loops. ~%The system was unable to find a solution.~%You may increase the maximum number of loops in the preferences." *max-nr-of-loops*)
          )
    
            ;print some information about the search
    (when *verbose-i/o?*
      (print (format nil "This search needed ~D steps to complete." loop-counter) *cluster-engine-log-output*)
      (if *backjump?* (print (format nil "Backjumping was on.") *cluster-engine-log-output*)
	  (print (format nil "Backjumping was off.") *cluster-engine-log-output*))
      (when debug? (print (format nil "The engine needed to backtrack ~D times." *debug-count-backtrack*) *cluster-engine-log-output*) )
      (when locked-engines (print (format nil "The following engines were locked and never backtracked: ~S" locked-engines) *cluster-engine-log-output*)))
     ;output solution
    (get-all-engines vsolution vindex nr-of-engines)
    ;(format nil "~S" (get-all-engines vsolution vindex nr-of-engines))

))







(defun print-and-update-maxindex (vindex vmax-index current-engine)
  "This function stores the highest index so far for each engine, and prints the 
vector of highest indexes everytime it exceeds the previous maximum.

This diagnosis gives an indication if the search is stuck at a certain point
among the variables."
  (declare (type array vindex vmax-index))
  (declare (type fixnum current-engine))
  (when (> (aref vindex current-engine) (aref vmax-index current-engine))
    (progn (setf (aref vmax-index current-engine) (aref vindex current-engine))
	   (when *verbose-i/o?*
	     (print (format nil "Highest indexes during this search: ~a" vmax-index) *cluster-engine-log-output*)
       (if *debug-indexes-filename*
            (write-debug-index-vectors-to-file) ;;; ADDED 17 Jan, 2021
          )
       ))))     


(defun debug-print-and-update-maxindex (vindex vmax-index vsolution current-engine nr-of-engines)
  "1.This function stores the temporary solution when an index exceeds its previous maximum.

2. This function also stores the highest index so far for each engine, and prints the 
vector of highest indexes everytime it exceeds the previous maximum.

This diagnosis gives an indication if the search is stuck at a certain point
among the variables."
  (declare (type array vindex vmax-index vsolution))
  (declare (type fixnum current-engine nr-of-engines))
  (when (> (aref vindex current-engine) (aref vmax-index current-engine))
    (progn (setf (aref vmax-index current-engine) (aref vindex current-engine))
      (store-temp-solution-to-debug-vector2 (get-all-engines vsolution vindex nr-of-engines))
      (when *debug-filename* (write-debugvectors-to-file))  ;;;ADDED MAY 23,2020 - store vectors to file so they can be read by another software
      (when *verbose-i/o?*
	       (print (format nil "Highest indexes during this search: ~a" vmax-index) *cluster-engine-log-output*)
         (if *debug-indexes-filename* 
              (write-debug-index-vectors-to-file)
             )         
         ))))    ;;; ADDED 17 Jan, 2021
        
            

(defun store-temp-solution-for-maxindex-to-debug-vector2  (vindex vmax-index vsolution current-engine nr-of-engines)
  "This function stores the temporary solution when an index exceeds its previous maximum."
  (declare (type array vindex vmax-index vsolution))
  (declare (type fixnum current-engine nr-of-engines))
  (when (> (aref vindex current-engine) (aref vmax-index current-engine))
    (store-temp-solution-to-debug-vector2 (get-all-engines vsolution vindex nr-of-engines))))

(defun put-domains-in-vector (nr-of-engines vdomain domains metric-domain)
  "The domains are always in the order rhythm - pitches - rhythm - pitches... - meter.
Empty sublists will be added for additional information (onsets, number of pitches, etc.)."
  (declare (type fixnum nr-of-engines))
  (declare (type array vdomain))
  (declare (type list domains metric-domain))
  
  (loop for engine from 0 to (- nr-of-engines 2)
        do (if (evenp engine)

               ;durations
               (setf (aref vdomain engine) 
                     (loop for rhythmmotif in (nth engine domains)
                           collect (list rhythmmotif (make-list (length rhythmmotif)) (make-list (length rhythmmotif)))))

             ;pitches
             (setf (aref vdomain engine) 
                   (loop for pitchmotif in (nth engine domains)
                         collect (if (equal (car pitchmotif) 'm)
                                     (list nil pitchmotif nil)
                                   (list pitchmotif nil nil))

                         ))))

  ;meter
  (setf (aref vdomain (1- nr-of-engines)) 
        (loop for meter in metric-domain
              collect (list meter nil nil))))



(defun set-default-engineorder (vdefault-engine-order nr-of-engines vdomain locked-engines)
  "Metric engine is first. Rhythm engine comes before pitch engine. Voices are in order form low to high."
  (declare (type array vdefault-engine-order))
  (declare (type fixnum nr-of-engines))
  ;set a list with all used engines


;;
  (setf (aref vdefault-engine-order 0) (remove nil (append 
                                                    (if (aref vdomain (1- nr-of-engines)) (list (1- nr-of-engines)) nil)
                                                    (loop for n from 0 to (- nr-of-engines 2) collect (if (aref vdomain n) n nil)))))

  ;set a list of all used rhythm engines
  (setf (aref vdefault-engine-order 1) (remove nil (loop for n from 0 to (- nr-of-engines 2) by 2
                                                         collect (if (aref vdomain n) n nil))))
  ;set a list of all used pitch engines
  (setf (aref vdefault-engine-order 2) (remove nil (loop for n from 1 to (- nr-of-engines 2) by 2
                                                         collect (if (aref vdomain n) n nil))))
  ;set a list with the metric engines
  (setf (aref vdefault-engine-order 3) (if (aref vdomain (1- nr-of-engines)) (list (1- nr-of-engines)) nil))

  ;set a list with the timebased engines (i.e. metric and rhythm)
  (setf (aref vdefault-engine-order 4) (remove nil (append (if (aref vdomain (1- nr-of-engines)) (list (1- nr-of-engines)) nil)
                                                           (loop for n from 0 to (- nr-of-engines 2) by 2
                                                                 collect (if (aref vdomain n) n nil)))))
  ;set a list with all used engines EXCLUDING locked engines (this will be used for default backtracking)
  (setf (aref vdefault-engine-order 5) (remove locked-engines (aref vdefault-engine-order 0) :test #'(lambda (a b) (member b a))))
  )




;;;;;;;;;;;;;;;;;;;INITIATE NEW VARIABLE / FAIL;;;;;;;;;;;;;;;;;;;;;;

;;functions that are used in the functions initiate-new-variable and fail

#|
;;OLD (se below)
(defun assign-pitches-for-motif (engine vsolution vindex)
  "index has to be 1 or larger - otherwise this function wil give an error"
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (let ((previous-pitch (get-last-pitch-at-previous-index engine vindex vsolution)))
    (declare (type t previous-pitch))
    (when (listp previous-pitch) (setf previous-pitch (car previous-pitch)))
    (setf (caar (aref (aref vsolution engine) (aref vindex engine)))
          (dx-to-x-cdr previous-pitch (get-m-motif engine vindex vsolution)))))

;;OLD (se below)
(defun assign-pitches-for-nth-motif (engine vsolution vindex nth)
  "index has to be 1 or larger - otherwise this function wil give an error"
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (let ((previous-pitch (get-last-pitch-at-previous-index engine vindex vsolution)))
    (declare (type t previous-pitch))
    (when (listp previous-pitch) (setf previous-pitch (car previous-pitch)))
    (setf (car (nth nth (aref (aref vsolution engine) (aref vindex engine))))
          (dx-to-x-cdr previous-pitch (get-nth-m-motif engine vindex vsolution nth)))))
|#

;Dec 31 2014
(defun assign-pitches-for-motif (engine vsolution vindex)
  "index has to be 1 or larger - otherwise this function wil give an error.
This version can handle chords defined as intervals."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (let ((previous-pitch (get-last-pitch-at-previous-index engine vindex vsolution)))
    (declare (type t previous-pitch))
    (when (listp previous-pitch) (setf previous-pitch (car previous-pitch)))
    (setf (caar (aref (aref vsolution engine) (aref vindex engine)))
          (dx-to-x-cdr-with-sublists previous-pitch (get-m-motif engine vindex vsolution)))))

;Dec 31 2014
(defun assign-pitches-for-nth-motif (engine vsolution vindex nth)
  "index has to be 1 or larger - otherwise this function wil give an error.
This version can handle chords defined as intervals."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (let ((previous-pitch (get-last-pitch-at-previous-index engine vindex vsolution)))
    (declare (type t previous-pitch))
    (when (listp previous-pitch) (setf previous-pitch (car previous-pitch)))
    (setf (car (nth nth (aref (aref vsolution engine) (aref vindex engine))))
          (dx-to-x-cdr-with-sublists previous-pitch (get-nth-m-motif engine vindex vsolution nth)))))
;;;;;;


(defun compare-timesign (find-this test-this)
  "This is a test function for the find function in initiate-new-variable and fail"
  (declare (type list find-this test-this))
  (equal find-this (car test-this)))

;;;;;;;;;;;;;random permutations;;;;;;;;;;
(defun remove-n (n list)
  (setf (nth n list) nil)
  (remove nil list))


(defun rnd-perm (list)
  (if list
      (let* ((rnd (random (length list)))
             (value (nth rnd list)))
        
        (cons value (rnd-perm (remove-n rnd list))))
    nil))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun initiate-new-variable (engine vindex vsolution vdomain meter-beatstructures meter-onsetgrids nr-of-engines rnd?)
  (declare (type array vsolution vindex vdomain))
  (declare (type fixnum engine nr-of-engines))
  (declare (type boolean rnd?))
  (declare (type list meter-beatstructures meter-onsetgrids))

  (cond (rnd? 
         (setf (aref (aref vsolution engine) (aref vindex engine))  (rnd-perm (copy-tree (aref vdomain engine))))
         t)
        (t
         (setf (aref (aref vsolution engine) (aref vindex engine))  (copy-tree (aref vdomain engine)))))

  ;remove pitchmotifs at index 0 '(m...
  (when (and (oddp engine) (= (aref vindex engine) 0))
    (setf (aref (aref vsolution engine) 0)
          (remove nil (loop for candidate in (aref (aref vsolution engine) 0)
                            collect (if (equal (caadr candidate) 'm) nil candidate)))))

  ;The current candidate that is about to be tested has to keep the information regarding onsets, count values, etc.
  (set-timepoints-and-count-for-current-candidate engine vindex vsolution meter-beatstructures meter-onsetgrids nr-of-engines))






(defun set-timepoints-and-count-for-current-candidate (engine vindex vsolution meter-beatstructures meter-onsetgrids nr-of-engines)
  "This functions assignes all extra infromation necessary for the current candidate in the vsolution array. Only the current candidate will be assigned the information.
This function is used by the fail-function and the initiate-new-variable-function."
  (declare (type array vsolution vindex))
  (declare (type fixnum engine nr-of-engines))
  (declare (type list meter-beatstructures meter-onsetgrids))

  
  (cond ((= engine (1- nr-of-engines))
         ;;;meter
         (let ((meter-beatstructure (cdr (find (get-timesig-at-current-index engine vindex vsolution) meter-beatstructures :test 'compare-timesign)))
               (meter-onsetgrid (cdr (find (get-timesig-at-current-index engine vindex vsolution) meter-onsetgrids :test 'compare-timesign))))
           (declare (type list meter-beatstructure meter-onsetgrid))
           (if (= (aref vindex engine) 0)
               (progn
               ;special case, index 0
               ;set metric grid
                 (setf (cadar (aref (aref vsolution engine) (aref vindex engine))) 
                       (shift-list-accept-rests 1 meter-beatstructure))
                 (setf (caddar (aref (aref vsolution engine) (aref vindex engine))) 
                       (shift-list 1 meter-onsetgrid)))

             (let ((offset (get-previous-index-endtime engine vindex vsolution)))
               (declare (type number offset))
               ;set metric grid
               (setf (cadar (aref (aref vsolution engine) (aref vindex engine))) 
                     (shift-list-accept-rests offset meter-beatstructure))
               (setf (caddar (aref (aref vsolution engine) (aref vindex engine))) 
                     (shift-list offset meter-onsetgrid))))) ;
         )
        ((evenp engine)
         ;;;rhythm
         (if (= (aref vindex engine) 0)
             (progn
               ;special case, index 0
               ;set onsets
               (setf (second (first (aref (aref vsolution engine) (aref vindex engine))))
                     (dx-to-x-with-rests 1 (get-rhythm-motif-at-current-index engine vindex vsolution)))
               ;set notecount
               (setf (third (first (aref (aref vsolution engine) (aref vindex engine))))
                     (count-notes-not-rests 0 (get-rhythm-motif-at-current-index engine vindex vsolution))))
           (progn
             ;set onsets
             (setf (second (first (aref (aref vsolution engine) (aref vindex engine))))
                   (dx-to-x-with-rests (get-previous-index-endtime engine vindex vsolution)
                                       (get-rhythm-motif-at-current-index engine vindex vsolution)))
             ;set notecount
             (setf (third (first (aref (aref vsolution engine) (aref vindex engine))))
                   (count-notes-not-rests (get-previous-index-total-notecount engine vindex vsolution)
                                          (get-rhythm-motif-at-current-index engine vindex vsolution)))
             ))
         )
        (t
         ;;;pitch
         (if (= (aref vindex engine) 0)
               ;first index can not be pitchmotif (no need to assign pitches)
             (setf (third (first (aref (aref vsolution engine) (aref vindex engine))))
                   (count-pitches-and-chords 0 (caar (aref (aref vsolution engine) (aref vindex engine)))))

           ;assign pitches for pitchmotif
           (progn
             (when (m-motif? engine vindex vsolution)
               (assign-pitches-for-motif engine vsolution vindex))
             (setf (third (first (aref (aref vsolution engine) (aref vindex engine))))
                   (count-pitches-and-chords (get-previous-index-total-notecount engine vindex vsolution) 
                                             (caar (aref (aref vsolution engine) (aref vindex engine)))))))
         )))



(defun fail (vcurrent-engine vsolution vlinear-solution vsolution-for-backjump vindex meter-beatstructures meter-onsetgrids nr-of-engines default-engine-order 
                             vbacktrack-history backtrackrule vbacktrack-engines vbackjump-indexes vflag-changed-engine vnumber-of-candidates vheuristic-rules debug?)
  "Fail has many things in common with initiate new variable, since onsets, notecount and pitches have to be set for new candidates in both."
;(declare (optimize (speed 3) (safety 0)))
  (declare (type array vsolution vlinear-solution vsolution-for-backjump vindex vbacktrack-history vcurrent-engine vbacktrack-engines vbackjump-indexes vflag-changed-engine vnumber-of-candidates vheuristic-rules))
  (declare (type fixnum nr-of-engines))
  (declare (type list meter-beatstructures meter-onsetgrids default-engine-order))
  (declare (type symbol backtrackrule))
  (declare (type boolean debug?))

  (let ((backtrack? nil))
    (declare (type boolean backtrack?)) ; this flag is used to identify if the heuristic rules should be called in the (i.e. if the system backtracks, they should be called).
    (loop ;loop until a candidate is found - backtrack if necessary
     do
  ;Test if system is about to backtrack: if this is the last candidate, the system will have to step back in the solution.
     (if (= (length (aref (aref vsolution (aref vcurrent-engine 0)) (aref vindex (aref vcurrent-engine 0)))) 1)
         ;;;Below is only executed if there is a need to backtrack
         (progn
           (setf backtrack? t)
           (set-vbacktrack-history vbacktrack-history vindex vsolution (aref vcurrent-engine 0) nr-of-engines)
           (pop (aref (aref vsolution (aref vcurrent-engine 0)) (aref vindex (aref vcurrent-engine 0)))) ;pop so variable is nil
           (setf (aref vflag-changed-engine 0) (cons (aref vcurrent-engine 0) (aref vflag-changed-engine 0))) ;flag engine for next rule check

         ;reduce index
           (setf (aref vindex (aref vcurrent-engine 0)) (1- (aref vindex (aref vcurrent-engine 0)))) 
           (when debug? (setf *debug-count-backtrack* (1+ *debug-count-backtrack*)))

         ;Check backtrack rule to determine where to go next
           (setf (aref vcurrent-engine 0) (funcall backtrackrule vindex vbacktrack-engines nr-of-engines default-engine-order vnumber-of-candidates))

           (setf (aref vbacktrack-engines 0) nil) ;This erases the memory of prefered backtrack between every backtracking

           ;;;Here is the backjump
           (when (and *backjump?* (aref vbackjump-indexes (aref vcurrent-engine 0))) 
             (backjump-engine (aref vcurrent-engine 0) vbackjump-indexes vbacktrack-history vindex vsolution))
           ;;;
           (reset-vbackjump-indexes vbackjump-indexes nr-of-engines) ;This resets memory for backjump targets.
           (if (< (aref vindex (aref vcurrent-engine 0)) 0) (return-from fail nil)) ;nil is returned if there is no solution
         ;now loop once more to pop backtracked engine, or backtrack again
           )
        

       ;;;Below is only exectuted if there is no need to backtrack, but only to pop the variable and try the next candidate
       (progn
         (pop (aref (aref vsolution (aref vcurrent-engine 0)) (aref vindex (aref vcurrent-engine 0))))

         (when (not (aref vheuristic-rules (aref vcurrent-engine 0) 0))
           (set-timepoints-and-count-for-current-candidate (aref vcurrent-engine 0) vindex vsolution meter-beatstructures meter-onsetgrids nr-of-engines))

         (if (and backtrack? (aref vheuristic-rules (aref vcurrent-engine 0) 0))
           ;If there are heuristic rules, sort the candidate list according to the heuristic rules (this will also update the linear and backjump information)
             (sort-candidates-heuristically-and-set-linear-solution vheuristic-rules vsolution vindex vlinear-solution vsolution-for-backjump 
                                                                    vflag-changed-engine meter-onsetgrids meter-beatstructures nr-of-engines (aref vcurrent-engine 0))
           ;Else flag the current engine (that was just poped) to update the linear and backjump information in the loop.
           (setf (aref vflag-changed-engine 0) (cons (aref vcurrent-engine 0) (aref vflag-changed-engine 0))))
         (setf backtrack? nil)

         (return-from fail t))))))


(defun set-vbacktrack-history (vbacktrack-history vindex vsolution engine nr-of-engines)
  (declare (type array vbacktrack-history vindex vsolution))
  (declare (type fixnum engine nr-of-engines))

           ;update backtrack history (0: engine, 1: index, 2: notecount, 3: time point)
  (setf (aref vbacktrack-history 0) (cons engine (aref vbacktrack-history 0))) ;update backtrack history
  (setf (aref vbacktrack-history 1) (cons (aref vindex engine) (aref vbacktrack-history 1)))
  (if (= engine (1- nr-of-engines))
             ;set note count for metric engine to nil
      (setf (aref vbacktrack-history 2) (cons nil (aref vbacktrack-history 2)))

    (if (> (aref vindex engine) 0)
        (setf (aref vbacktrack-history 2) (cons (get-previous-index-total-notecount engine vindex vsolution) (aref vbacktrack-history 2)))
      (setf (aref vbacktrack-history 2) (cons 0 (aref vbacktrack-history 2)))))
  (if (oddp engine)
             ;set time point for pitch engines to nil
      (setf (aref vbacktrack-history 3) (cons nil (aref vbacktrack-history 3)))

    (setf (aref vbacktrack-history 3) (cons (get-current-index-starttime engine vindex vsolution) (aref vbacktrack-history 3)))))



(defun backjump-engine-bad (engine vbackjump-indexes vbacktrack-history vindex vsolution)
  "This functions backjumps by setting the backtrack history to the correct number of 
backtracked steps (i.e. indexes) that was jumped. The trashed variables are set to nil."
  (declare (type fixnum engine))
  (declare (type array vbackjump-indexes vbacktrack-history vindex vsolution))
  (let ((backjump-index (apply 'min (aref vbackjump-indexes engine))))
    (declare (type fixnum backjump-index))

    ;check that new index < current index
    (when (>= backjump-index (aref vindex engine)) (return-from backjump-engine-bad nil))

    ;loop for i from current index back to (1+ new index)
    ;     set trashed variables to nil
    ;     append the backjump engine to backtrack history
    (loop for index from (1+ backjump-index) to (aref vindex engine)
          do (progn
               (setf (aref (aref vsolution engine) index) nil)
               (set-vbacktrack-history vbacktrack-history vindex vsolution engine (1- (array-dimension vindex 0)))              
               ))

    ;set-new-index
    (setf (aref vindex engine) backjump-index)))





#|
(defun backjump-engine (engine vbackjump-indexes vbacktrack-history vindex vsolution)
  "This function does not compensate in the backtrack history when variables are skipped during backjumping.
This works better since variables that fail each other will be rebuilt in sequence this way."
  (declare (type fixnum engine))
  (declare (type array vbackjump-indexes vbacktrack-history vindex vsolution))
  (let ((backjump-index-current-engine (apply 'min (aref vbackjump-indexes engine))))
             (declare (type fixnum backjump-index-current-engine))

             (setf (aref vindex engine) backjump-index-current-engine)
             ))
|#

;this is new april 7 2011
(defun backjump-engine (engine vbackjump-indexes vbacktrack-history vindex vsolution)
  "This function does not compensate in the backtrack history when variables are skipped during backjumping.
This works better since variables that fail each other will be rebuilt in sequence this way."
  (declare (type fixnum engine))
  (declare (type array vbackjump-indexes vbacktrack-history vindex vsolution))
  (let ((backjump-index-current-engine (apply 'min (aref vbackjump-indexes engine))))
             (declare (type fixnum backjump-index-current-engine))

             (if (> (aref vindex engine) (1+ backjump-index-current-engine))
                 (setf (aref vindex engine) (1+ backjump-index-current-engine)))
             ))


;Added July 2013

(defun get-index-during-search (engine) 
  "This function gives the user access to the vecor of indexes. 

Note that if this is used in a rule that accesses more than one engine (for example r-rhythn-pitch-one-voice) 
there is no guarantee that the indexes match up. Most likely they will not.Th euser need to understand what 
engine the index belongs to, and only ask for the one the rule constrain. "

  (aref cluster-engine::*vindex* engine))
