(in-package cluster-engine)

(defclass heuristic-rule ()
  ((layer :type array :initform (make-array 1) :reader get-heuristic-rule :writer set-heuristic-rule)))

(defun make-heuristic-rule-instance (hrule-vector)
  (let ((this-instance (make-instance 'heuristic-rule)))
    (set-heuristic-rule hrule-vector this-instance)
    this-instance))


(defun filter-heuristic-rules-from-input (big-list)
  "This functions removes everything but items of the class 'heuristic-rule from a list. The heuristic-rules will
be output in the format of a list of individual heuristic-rule arrays."
  (remove nil (loop for element in big-list
                    collect (if (typep element 'heuristic-rule)
                                (get-heuristic-rule element)
                              nil))))


(defun replace-flags-with-metric-engine-in-heuristic-rules (heuristic-rules nr-of-engines)
  (loop for vheuristic-rule in heuristic-rules
        collect (progn (setf (aref vheuristic-rule 0) (subst (1- nr-of-engines) -1 (aref vheuristic-rule 0)))
                  vheuristic-rule)))


(defun test-if-engines-nr-exist-in-hrules (nr-of-engines engines-for-rules)
  (when (member (1- nr-of-engines) engines-for-rules :test '<)
    (error "One or more heuristic rules refer to voices that you did not define in the Cluster engine. Note that voices are numbered starting from 0 (zero).")))


(defun create-heuristic-rule-vector (rules-input-list nr-of-engines locked-engines)
  "Sorts all rules in a array. Objects that are not rules in the input list (i.e. heuristic rules) are sorted out."
  (let ((heuristic-rules (filter-heuristic-rules-from-input rules-input-list))
        engines-for-heur-rules-include-duplicates
        engines-for-heur-rules
        nr-of-heur-rules-per-engine
        vheuristic-rules)

    (replace-flags-with-metric-engine-in-heuristic-rules heuristic-rules nr-of-engines)
    ;;;;remove locked engines from backtrack routes from rules    

    ;calculate how many rules in each engine
    (setf engines-for-heur-rules-include-duplicates 
          (sort (copy-list (apply 'append (loop for heur-rule in heuristic-rules
                                                collect (aref heur-rule 0)))) '<))
    (setf engines-for-heur-rules (remove-duplicates engines-for-heur-rules-include-duplicates))
    (test-if-engines-nr-exist-in-hrules nr-of-engines engines-for-heur-rules)

    (setf nr-of-heur-rules-per-engine (loop for engine in engines-for-heur-rules
                                            collect (count engine engines-for-heur-rules-include-duplicates)))



    ;;;;;;;;;-----------------
    ;create heuristic-rule array
    (setf vheuristic-rules (make-array (list nr-of-engines 1) :initial-element nil))
    ;; (setf vheuristic-rules (make-array (list nr-of-engines 1) :initial-element nil :element-type 'array))
    (loop for engine in engines-for-heur-rules
          for nr-of-heuristic-rules in nr-of-heur-rules-per-engine
          do (setf (aref vheuristic-rules engine 0)
                   (make-array (list nr-of-heuristic-rules) :initial-element nil :element-type 't))) ;changed from type 'function for SBCL

    ;fill rule array
    (loop for heuristic-rule in heuristic-rules
          do (loop for engine in (aref heuristic-rule 0)
                   do (loop for ruleindex from 0 to (1- (array-dimension  (aref vheuristic-rules engine 0) 0))
                            while (aref (aref vheuristic-rules engine 0) ruleindex)
                            finally (progn 
                                      (setf (aref (aref vheuristic-rules engine 0) ruleindex) (aref heuristic-rule 1))
                                      ))))
    vheuristic-rules))



(defun get-one-engine-col1-minus-one (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (> (aref vindex engine) 0)
      (apply 'append (loop for index from 0 to (1- (aref vindex engine))
                           collect (caar (aref (aref vsolution engine) index))))
    nil))

(defun get-one-engine-col1bars-minus-one (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (> (aref vindex engine) 0)
      (loop for index from 0 to (1- (aref vindex engine))
            collect (caar (aref (aref vsolution engine) index)))
    nil))

(defun get-one-engine-col2pitch-minus-one (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (> (aref vindex engine) 0)
      (apply 'append (loop for index from 0 to (1- (aref vindex engine))
                           collect (cadar (aref (aref vsolution engine) index))))
    nil))

(defun get-one-engine-col2onset-minus-one (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (cond ((> (aref vindex engine) 1)
         (apply 'append (append (loop for index from 0 to (- (aref vindex engine) 2)
                                      collect (butlast (cadar (aref (aref vsolution engine) index))))
                                (list (cadar (aref (aref vsolution engine) (1- (aref vindex engine))))))))
        ((= (aref vindex engine) 1) 
         (cadar (aref (aref vsolution engine) 0))) ;bugfix 6/3 2011
        (t nil)))

(defun get-one-engine-col3-minus-one (vsolution vindex engine)
  (declare (type array vsolution vindex))
  (declare (type fixnum engine))
  (if (> (aref vindex engine) 0)
      (apply 'append (loop for index from 0 to (1- (aref vindex engine))
                           collect (caddar (aref (aref vsolution engine) index))))
    nil))




(defun get-linear-solution-for-heuristic-rules (vlinear-solution vsolution vindex col1-this-engine-minus-one col2-this-engine-minus-one
                                                                 col3-this-engine-minus-one current-engine meter-onsetgrids meter-beatstructures nr-of-engines nth-candidate)
  "Get the linear solution by combining the linear solution excluding the current index, with the current candidate. 
The nth-candidate refers to the position of the candidate in the list of candidates.
This function also updates all candidates in the vsolution. Only the backjump array is not updated.

This function is used in order to test the heuristic rules on all the candidates (not just the first candidate).
"
  (declare (type array vsolution vindex vlinear-solution))
  (declare (type list col1-this-engine-minus-one col2-this-engine-minus-one col3-this-engine-minus-one meter-onsetgrids meter-beatstructures))
  (declare (type fixnum nr-of-engines current-engine nth-candidate))

;(set-timepoints-and-count-for-current-candidate (aref vcurrent-engine 0) vindex vsolution meter-beatstructures meter-onsetgrids nr-of-engines)

  (cond ((= current-engine (1- nr-of-engines)) 
         ;metric engine
         (let* ((this-time-sign (get-nth-cell-at-current-index current-engine vindex vsolution nth-candidate))
                (meter-onsetgrid (cdr (find this-time-sign meter-onsetgrids :test 'compare-timesign)))
                (meter-beatstructure (cdr (find this-time-sign meter-beatstructures :test 'compare-timesign))))
           (declare (type list this-time-sign meter-onsetgrid meter-beatstructure))

           ;set column 1
           (setf (aref vlinear-solution current-engine 0) (append col1-this-engine-minus-one (list this-time-sign)))

           ;set column 3 and 2
           (if (= (aref vindex current-engine) 0)
              ;special case, index 0
               (progn
                 ;set metric grid, column 3
                 (setf (caddr (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine)))) 
                       (shift-list 1 meter-onsetgrid))
                 (setf (aref vlinear-solution current-engine 2) 
                       (caddr (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine)))))
                 ;set beat structure, column 2
                 (setf (cadr (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine)))) 
                       (shift-list-accept-rests 1 meter-beatstructure))
                 (setf (aref vlinear-solution current-engine 1) 
                       (cadr (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))))

             (let ((offset (get-previous-index-endtime current-engine vindex vsolution)))
               (declare (type number offset))
              ;all other cases
               (progn
                ;set metric grid
                 (setf (caddr (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))
                       (shift-list offset meter-onsetgrid))
                 (setf (aref vlinear-solution current-engine 2) 
                       (append (butlast col3-this-engine-minus-one) (caddr (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine)))))) ;bugfix 6/3 2011
                ;set beat structure
                 (setf (cadr (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine)))) 
                       (shift-list-accept-rests offset meter-beatstructure))
                 (setf (aref vlinear-solution current-engine 1) 
                       (append (butlast col2-this-engine-minus-one) (cadr (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))))))))) ;bugfix 6/3 2011

        ((evenp current-engine)
         ;rhythm engine
         (let ((this-rhythm-cell (get-nth-cell-at-current-index current-engine vindex vsolution nth-candidate)))
           (declare (type list this-rhythm-cell))

           ;set column 1
           (setf (aref vlinear-solution current-engine 0) (append col1-this-engine-minus-one this-rhythm-cell))

           ;set column 2 and 3
           (if (= (aref vindex current-engine) 0)
               (progn
               ;special case, index 0
               ;set onsets
                 (setf (second (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))
                       (dx-to-x-with-rests 1 this-rhythm-cell))
                 (setf (aref vlinear-solution current-engine 1) 
                       (append col2-this-engine-minus-one (second (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))));I think the append is not necessary
               ;set notecount
                 (setf (third (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))
                       (count-notes-not-rests 0 this-rhythm-cell))
                 (setf (aref vlinear-solution current-engine 2) 
                       (append col3-this-engine-minus-one (third (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine)))))))
             (progn
              ;all other cases
              ;set onsets
               (setf (second (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))
                     (dx-to-x-with-rests (get-previous-index-endtime current-engine vindex vsolution)
                                         this-rhythm-cell))
               (setf (aref vlinear-solution current-engine 1) 
                     (append (butlast col2-this-engine-minus-one) (second (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine)))))) ;bugfix 6/3 2011
              ;set notecount
               (setf (third (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))
                     (count-notes-not-rests (get-previous-index-total-notecount current-engine vindex vsolution)
                                            this-rhythm-cell))
               (setf (aref vlinear-solution current-engine 2) 
                     (append col3-this-engine-minus-one (third (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))))
               ))
           ))
        (t
         ;pitch engine
         (let ((this-pitch-cell (get-nth-cell-at-current-index current-engine vindex vsolution nth-candidate)))
           (declare (type list this-pitch-cell))

          ;set column 3 (column 2 is not used)
           (if (= (aref vindex current-engine) 0)
             ;first index can not be pitchmotif (no need to assign pitches)
               (progn
                 (setf (third (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))
                       (count-pitches-and-chords 0 this-pitch-cell))
                 (setf (aref vlinear-solution current-engine 2) 
                       (append col3-this-engine-minus-one (third (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine)))))))
             (progn
               (when (nth-m-motif? current-engine vindex vsolution nth-candidate)
                 (setf this-pitch-cell (assign-pitches-for-nth-motif current-engine vsolution vindex nth-candidate)))

               (setf (third (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))
                     (count-pitches-and-chords (get-previous-index-total-notecount current-engine vindex vsolution) 
                                               this-pitch-cell))
               (setf (aref vlinear-solution current-engine 2) 
                     (append col3-this-engine-minus-one (third (nth nth-candidate (aref (aref vsolution current-engine) (aref vindex current-engine))))))))

           ;set column 1 - THIS CANNOT BE DONE BEFORE THE ABOVE CHECK IF THE CURRENT CANDIDATE IS A M-MOTIF: PITCHES NEEDS TO BE ASSIGNED
           (setf (aref vlinear-solution current-engine 0) (append col1-this-engine-minus-one this-pitch-cell))
           ))))



;(convert-vsolution->linear-and-backjump vsolution vindex vlinear-solution vsolution-for-backjump vflag-changed-engine nr-of-engines)
(defun calculate-all-heuristics (vheuristic-rules vsolution vindex vlinear-solution vflag-changed-engine meter-onsetgrids meter-beatstructures nr-of-engines current-engine)
  (declare (type array vheuristic-rules vsolution vindex vlinear-solution vflag-changed-engine))
  (declare (type list meter-onsetgrids meter-beatstructures))
  (declare (type fixnum nr-of-engines current-engine))

  ;get the linear solution for the current engine witout the last step (i.e. excluce the current index)
  (let (col1-this-engine-minus-one
        col2-this-engine-minus-one
        col3-this-engine-minus-one)
    (declare (type list col1-this-engine-minus-one col2-this-engine-minus-one col3-this-engine-minus-one))

    ;;;;;--------------------------
    ;;;;;Set linear solution for the current engine before current index. By doing this first, only the current index needs
    ;;;;;to be appended during each loop.
    ;;;;;OTHER ENGINES MIGHT NEED TO BE UPDATED
    (if (= current-engine (1- nr-of-engines)) 
        ;measure layer
        (setf col1-this-engine-minus-one (get-one-engine-col1bars-minus-one vsolution vindex current-engine))
      ;pitch and rhythm layer (also count values)
      (setf col1-this-engine-minus-one (get-one-engine-col1-minus-one vsolution vindex current-engine)))

    ;column 3: set note count/onset grid
    (setf col3-this-engine-minus-one (get-one-engine-col3-minus-one vsolution vindex current-engine))

    (when (evenp current-engine) 
      ;rhythm and measure layer (timepoints)
      (setf col2-this-engine-minus-one (get-one-engine-col2onset-minus-one vsolution vindex current-engine))
      )
    ;;;;;--------------------------


    ;collect the list of the weigths for each candidate in the vsolution
    ;this is where the loop starts
    (loop for n from 0 to (1- (get-nr-of-candidates-at-current-index current-engine vindex vsolution))
          collect
          (progn
            (get-linear-solution-for-heuristic-rules vlinear-solution vsolution vindex col1-this-engine-minus-one col2-this-engine-minus-one 
                                                     col3-this-engine-minus-one current-engine meter-onsetgrids meter-beatstructures nr-of-engines n)
           ;calculate the sum of all weigths from the heuristic rules
            (loop for heuristic-ruleindex from 0 to (1- (array-dimension (aref vheuristic-rules current-engine 0) 0))
                  sum (funcall (aref (aref vheuristic-rules current-engine 0) heuristic-ruleindex) vsolution vlinear-solution vindex current-engine n))
            ))

      ))



(defun sort-candidates-by-weights (weights candidate-list)
  "Sort the candidate list according to the list of weights. Each weight should correspond to 
a candidate (the two lists have the weights and the candidates in the same order)."
  (declare (type list weights candidate-list))
  (mapcar 'second
   (sort
    (mapcar 'list weights candidate-list)
    #'> :key #'first)
   ))


(defun sort-candidates-heuristically-and-set-linear-solution (vheuristic-rules vsolution vindex vlinear-solution vsolution-for-backjump vflag-changed-engine meter-onsetgrids meter-beatstructures nr-of-engines current-engine)
  "Beside calculating the heuristic weights and sorting the candidates according to the heuristics, this function also sets 
the vlinear-solution and vsolution-for-backjump so that the strict rules can be tested after this function."
  (declare (type array vheuristic-rules vsolution vindex vlinear-solution vsolution-for-backjump vflag-changed-engine))
  (declare (type list meter-onsetgrids meter-beatstructures))
  (declare (type fixnum nr-of-engines current-engine))
  (let (list-of-heuristic-weights)
    (declare (type list list-of-heuristic-weights))
  ;set vlinear-solution and vsolution-for-backjump for all engines except for the current engine
    (setf (aref vflag-changed-engine 0) (remove current-engine (aref vflag-changed-engine 0)))
    (convert-vsolution->linear-and-backjump vsolution vindex vlinear-solution vsolution-for-backjump vflag-changed-engine nr-of-engines)
    (setf (aref vflag-changed-engine 0) nil)

  ;calculate the heuristics
    (setf list-of-heuristic-weights
          (calculate-all-heuristics vheuristic-rules vsolution vindex vlinear-solution vflag-changed-engine 
                                    meter-onsetgrids meter-beatstructures nr-of-engines current-engine))

  ;sort candidates and set the current list of candidates to the sorted list
    (setf (aref (aref vsolution current-engine) (aref vindex current-engine))
          (sort-candidates-by-weights list-of-heuristic-weights (aref (aref vsolution current-engine) (aref vindex current-engine))))

  ;sort the candidates

  ;set vlinear-solution and vsolution-for-backjump for the current engine after the candidates have been sorted
    (convert-ONE-vsolution->linear-and-backjump vsolution vindex vlinear-solution vsolution-for-backjump current-engine nr-of-engines))
  )
