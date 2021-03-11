
(in-package cluster-engine)

(defun make-onset-grid (tuplets timesign)
  (remove-duplicates (sort (apply 'append (loop for tuplet in tuplets
                             collect (dx-to-x 0 (make-list (* (first timesign) tuplet) :initial-element (/ (/ 1 (second timesign)) tuplet))))) '<)))

(defun make-onset-grids (tuplets-list timesign-list)
  (remove nil (loop for timesign in timesign-list
                    for tuplets in tuplets-list
                    collect (if (and timesign tuplets)
                                (cons timesign (make-onset-grid tuplets timesign))
                              nil))))


;new version
(defun make-beatstructure (timesign alt-beatlength)
  (cond ((not alt-beatlength)
         (append (dx-to-x 0 (make-list (1- (first timesign)) :initial-element (- (/ 1 (second timesign))))) (list (apply '/ timesign))))
        ((numberp alt-beatlength)
         (append (dx-to-x 0 (make-list (1- (truncate (+ (/ (apply '/ timesign) alt-beatlength) 1/2))) :initial-element (- alt-beatlength))) (list (apply '/ timesign))))
        ((listp alt-beatlength)
         (when (/= (apply '+ alt-beatlength) (apply '/ timesign)) (error "The list of alternative beat lengths inthe metric domain box does not add up to the length of the measure."))
         (append (mapcar #'(lambda (x) (* -1 x)) (butlast (dx-to-x 0 alt-beatlength))) (last (dx-to-x 0 alt-beatlength))))
        ))


(defun make-beatstructures (timesign-list alt-beatlength-list)
  (remove nil (loop for timesign in timesign-list
                    for alt-beatlength in alt-beatlength-list
                    collect (if timesign
                                (cons timesign (make-beatstructure timesign alt-beatlength))
                              nil))))




(defun make-onset-grid2 (tuplets timesign alt-beatlength)
  "This version uses the alternative beatlength (if there is one) as the base for the subdivision.
The code is slightly complex to handle beatlengths that don't add up to the measure length.

NOTE THAT if the alt-beatlength is a list, the default beat length will be used for the grid."
  (cond ((not alt-beatlength)
         (remove-duplicates (sort (apply 'append (loop for tuplet in tuplets
                                                       collect (dx-to-x 0 (make-list (* (first timesign) tuplet) :initial-element (/ (/ 1 (second timesign)) tuplet))))) '<)))
        ((numberp alt-beatlength)
         (truncate-list-at-endpoint (apply '/ timesign)
                                    (remove-duplicates (sort (apply 'append 
                                                                    (append (loop for tuplet in tuplets
                                                                                  collect (dx-to-x 0 (make-list (* (truncate (+ (/ (apply '/ timesign) alt-beatlength) 1/2)) tuplet) 
                                                                                                                :initial-element (/ alt-beatlength tuplet))))
                                                                            (list (list (apply '/ timesign)))))
                                                             '<))))
        ((listp alt-beatlength)
         (remove-duplicates (sort (apply 'append (loop for tuplet in tuplets
                                                       collect (dx-to-x 0 (make-list (* (first timesign) tuplet) :initial-element (/ (/ 1 (second timesign)) tuplet))))) '<)))
    
        ))



(defun make-onset-grids2 (tuplets-list timesign-list alt-beatlength-list)
  (remove nil (loop for timesign in timesign-list
                    for tuplets in tuplets-list
                    for alt-beatlength in alt-beatlength-list
                    collect (if (and timesign tuplets)
                                (cons timesign (make-onset-grid2 tuplets timesign alt-beatlength))
                              nil))))


(defun create-metric-domain-vector (timesign-list tuplets-lists alt-beatlength1-list)
  (let ((metric-domain-vector (make-array '(3) :element-type 'list)))
    (setf (aref metric-domain-vector 0) (remove nil timesign-list))
    (setf (aref metric-domain-vector 1) (make-onset-grids2 tuplets-lists
                                                           timesign-list
                                                           alt-beatlength1-list))
    (setf (aref metric-domain-vector 2) (make-beatstructures timesign-list
                                                             alt-beatlength1-list))
    metric-domain-vector))


(defun analyze-domain-for-locked-engines (domains metric-domain)
  ""
  (let ((locked-engines nil))
    (loop for n from 0 to (1- (length domains))
          for domain in domains
          do (when (<= (length domain) 1) (setf locked-engines (cons n locked-engines))))
    (when (<= (length (aref metric-domain 0)) 1) (setf locked-engines (cons (length domains) locked-engines)))
    (when (= (length locked-engines) (1+ (length domains))) (error "All engines are locked! There is nothing to search for."))
    ;This avoids error with backtracking when all engines are locked.

    (sort locked-engines '<)
    ))



(defun polyengine-ify-symbols (tree)
  "Puts symbols into the poly-engine package. This solves package-problem with the m symbol"
  (cond
    ((null tree)
     nil)
    ((consp tree)
     (cons (polyengine-ify-symbols (car tree))
	   (polyengine-ify-symbols (cdr tree))))
    ;; convert symbols that are not keywords
    ((and (symbolp tree) (not (keywordp tree)))
     (intern (symbol-name tree) #.(find-package 'cluster-engine)))	
    (t tree)))



(defun set-vnumber-of-candidates (vdomain vnumber-of-candidates nr-of-engines)
  "vnumber-of-candidates is a simple array that stores the number of candidates in the domain for each engine. 
If there is no candidate, 1 is stored to avoid division with 0."
  (declare (type array vdomain vnumber-of-candidates))
  (declare (type fixnum nr-of-engines))
  (loop for n from 0 to (1- nr-of-engines)
        do (setf (aref vnumber-of-candidates n) (length (aref vdomain n)))))