
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
;(and this rule propose to buckjump). The longest buckjump that fails all candidates will be 
;picked. If a rule only fails a few of the candidates, it will be given low priority in how 
;to backtrack (i.e. if a step is proposed, it will be picked). Note that it is possible this 
;engine will mis a solution because of this structure, however it is in general a faster method 
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
;Backjumping improved: the test-rule function now suggest backtrack routes
;even when there is no candidate left in a domain and rules are not checked.
;This is done by checking all proposed rules from all active rules for the coandidate.
;(the earlier version always suggested backstep for this scenario).
;This seems to make the engine more reliable and give less false no_solution

;version 3.13 (January 13,2023)
;Backjumping Mode 3 changed: backjumping is now dependent on all rules for a candidate, not 
;just the once that were failed.

;version 3.14 (January 13,2023)
;Backtracking modes are changed - the old mode 2 is removed, and the old mode 3 is now called mode 2.
;It works identical to teh previous mode 3, butrtyeh code is more efficient.
;
;Mode 1: No backjumping, only steps
;Mode 2: Backjumping. In this version, the engine stops checking the rules immediately 
;        when a fail is detected. The size of the backjumping will be determined using the  
;        information from the rules tested on the candidate that failed. The minimum  
;        backtracking step/jump will be used.

;version 3.15 (January 18, 2023)
;The state of the engine can now be saved to a text file (named states.txt) and used as a startig point for a new search.
;There is a new argument for the angine function: read-write-engine-state?. It has four modes
;
;Mode 0: off, the state is not saved nore read
;Mode 1: The state of the engine is saved to a text file when the engine stops (i.e. when a solution 
;        is found or when no solution can be found)
;Mode 2: The state of the engine is read from the previously stored file and used as the starting point 
;        for the search. IMPORTANT: the index stored in the text file will be the starting point for the 
;        new search.
;Mode 3: The engine stops at each index and saves the state. When the engine
;        is restarted, it steps one step further. The engine can do this over and over until it reaches 
;        the total niumber of variables (from this point it will not expand the search further, just 
;        return the final solutioin. NOTE that the text file has to previously exist for this mode to run,
;        and that the index in the saved state file has to be set to 0

;version 3.16 (January 22, 2023)
;There is a fourth mode for how to continue an interrupted search
;
;Mode 4: Start the search from the state in the stored file, but don't allow the previous solution (this is 
;        done by incrementing the state by 1). This state will automatically store the index as 0 to allow for 
;        itteraive searches until all solutions are found. Note that if no backjumping is selected, all solutions
;        will be found. Backjumping mode 3 has a higher chance to g=find all solutions than mode 2.
;
;A new backtracking mode was added:
;Mode 1: No backjumping, only steps
;Mode 2: Backjumping. In this version, the engine stops checking the rules immediately 
;        when a fail is detected. The size of the backjumping will be determined using the  
;        information from ALL rules tested on the variable that failed. The minimum  
;        backtracking step/jump will be used. This mode will not allow backjumping to the first 
;        variable; In this case the engine will step back instead.
;Mode 3: Backjumping. In this version, backjumping will only occur if all failed rules agree on where to backjump.
;        This mode will not allow backjumping to the first variable; In this case
;        the engine will step back instead.

;Version 4.0 (January 29)
;A new array stores the solution in 2 dimension - one as absolute pitches, timepoints, or some other numerical data, the other
;as intervals, durations or difference between numbers. 
;
;A domain is a set of absolute values or distances (never mixed). It is also possible to work with general values, that can be anything
;(symbols, objetcs, whatever).
;If a numerical format is used, the engine will store the reult in both fomats and the rules can access a mix of both data formats:
;a variable x can be accessed as an absolute time point or pitch (a x), or an interval/duration (i x) or (d x). A general data can be 
;accessed as (b x)

;Version 4.01 (Feb 14, 2023)
;Adjusted the output to better correspond to index numbers.
;If absolute pitch values are used, the first melodic interval (at index 0) has no meaning: it will be calculated from pitch 0.
;In this case, rules for melodic intervals should strat from index 1.
;When the domain contains relative values (intervals/durations), the absolute starting point (pitch or tiome point 0) will
;not be included in the result.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; THE CODE BEGINS HERE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;To give different seeds to the random function
( setf *random-state*
		( make-random-state t )
	)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; DATA STRUCTURE SEARCHSPACE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmacro make-searchspace (no-of-variables no-of-candidates var-type) `(make-array (list ,no-of-variables ,no-of-candidates) :element-type ,var-type))
(defmacro make-searchspace-state (no-of-variables no-of-candidates) `(let ((new-state (make-array (list ,no-of-variables 2) :element-type 'fixnum :initial-element 0)))
														  (loop for n from 0 to (1- ,no-of-variables)
														  	do (setf (aref new-state n 1) ,no-of-candidates))
													new-state))

;The search space state keeps track on what candidates have been tested and failed, i.e. where the current candidate at each index is positioned.
;The complete domain is always intact, only pointers keep track on the state of the engine.
;The format for the searchspace-state: (n-for-current-candidate total-no-of-candidates) - for each index
;SBCL ignores the :element-type declaration


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; DATA STRUCTURE SPECIALIZED SOLUTION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defconstant *duration-domain* 3)
(defconstant *absolute-rhythm-domain* 2)
(defconstant *absolute-domain* 1)
(defconstant *interval-domain* 0)
(defconstant *basic-domain* -1)


(defmacro solution (no-of-variables var-type) `(make-array (list ,no-of-variables 2) :element-type ,var-type))
;solution will have the structure ((abs-val distance) (abs-val distance))
;Note that this vector starts from index -1, i.e. any given offset value (timepoint 0, or start pitch)

(defmacro write-one-absolute-value-to-solution (value index solution) `(setf (aref ,solution (1+ ,index) *absolute-domain*) ,value))
(defmacro write-one-interval-value-to-solution (value index solution) `(setf (aref ,solution (1+ ,index) *interval-domain*) ,value))
(defmacro read-one-absolute-value-from-solution (index solution) `(aref ,solution (1+ ,index) *absolute-domain*))
(defmacro read-one-interval-value-from-solution (index solution) `(aref ,solution (1+ ,index) *interval-domain*))

(defun write-one-candidate-to-solution (value index solution type) 
		(declare (type fixnum type index))
		(declare (type array solution))
					(cond ((= type *absolute-domain*) 
						   (write-one-absolute-value-to-solution value index solution)
						   (write-one-interval-value-to-solution (- value (read-one-absolute-value-from-solution (1- index) solution)) index solution)
						   	)
						  ((= type *interval-domain*) 
						   (write-one-interval-value-to-solution value index solution)
						   (write-one-absolute-value-to-solution (+ (read-one-absolute-value-from-solution (1- index) solution) value) index solution)
						  	)
						  ((= type *duration-domain*) 
						   (write-one-interval-value-to-solution value index solution)
						   (write-one-absolute-value-to-solution (+ (read-one-absolute-value-from-solution (1- index) solution) (abs value)) index solution)
							)
						  ((= type *basic-domain*)
						   (write-one-absolute-value-to-solution value index solution)
						  	)))

(defmacro a (candidate) `(second ,candidate)) ; a for absolute
(defmacro b (candidate) `(second ,candidate)) ; b for basic
(defmacro i (candidate) `(first ,candidate)) ; i for interval
(defmacro d (candidate) `(first ,candidate)) ; d for duration

;(print (p '(1 3)))

;(print (d 100 200))

;;test
#|
(let ((mysolution (solution 10 'integer)))
	(write-one-candidate-to-solution 45 0 mysolution *absolute-domain*)
	(write-one-candidate-to-solution 3 1 mysolution *interval-domain*)
	(write-one-candidate-to-solution 40 2 mysolution *absolute-domain*)
	(print mysolution)
	(print (list (aref mysolution 1 0)(aref mysolution 1 1))))
|#




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ACCESS SEARCHSPACE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmacro candidate (searchspace index candidate-no)
	`(aref ,searchspace (the fixnum ,index) (the fixnum ,candidate-no) ))

(defmacro variablepointer (searchspace-state index)
	`(aref ,searchspace-state (the fixnum ,index) 0))
;The variable pointer points at the current candidate (earlier candidates have failed, later have not been tested).

(defmacro no-of-candidates (searchspace-state index)
	`(aref ,searchspace-state (the fixnum ,index) 1))

(defmacro no-of-variables (searchspace)
	;This counts no-of-variables in a search space. Only use if the original number is not available.
	`(first (array-dimensions ,searchspace)))

(defmacro get-current-candidate (searchspace searchspace-state index)
	`(aref ,searchspace ,index (variablepointer ,searchspace-state (the fixnum ,index))))

(defun get-remaining-candidates (searchspace searchspace-state index)
	(declare (type fixnum index))
	(declare (type array searchspace searchspace-state))
	(loop for candidate-no from (variablepointer searchspace-state index) to (1- (no-of-candidates searchspace-state index))
				collect (candidate searchspace index candidate-no))
	)

(defun replace-remaining-candidates (new-candidates searchspace searchspace-state index)
	;Number of candidates needs to be the same as number of remaining candidates (this is not checked).
		(declare (type fixnum index))
		(declare (type array searchspace searchspace-state))
		(declare (type list new-candidates))
	(loop for candidate-no from (variablepointer searchspace-state index) to (1- (no-of-candidates searchspace-state index))
				for n from 0
				do (setf (candidate searchspace index candidate-no) (nth n new-candidates)))
	)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; SEARCH INDEX ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass index ()
	((index :initarg :index
			:type fixnum
			:accessor index
			;This is the index for the engine.
			)))

(defun initialize-searchindex ()
	(make-instance 'index :index 0))

(defmacro get-index(index)
	`(index ,index))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; DATA STRUCTURE RULES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; Note that the classes for the rules are also used for heuristic rules ;;;;;;;;;;;;;;;;;

(defclass indexrule ()
	((rulefn :initarg :rulefn
		:type function
		:accessor rulefn
		;This is the function for the rule.
		)
	(i-vars :initarg :i-vars
		:type list
		:accessor i-vars
		;This is a list with indexes for the variables of the rule function.
		)
	(backjump :initarg :backjump
		:type fixnum
		:accessor backjump
		;This is the number of steps to backjump. 1 = step back one (i.e. no jump).
		)))


(defclass wildcardrule ()
	((rulefn :initarg :rulefn
		:type function
		:accessor rulefn
		;This is the function for the rule
		)
	(*-vars :initarg :*-vars
		:type list
		:accessor *-vars
		;This is a list with the pattern of variables, counting from 0. Ex.'(0 1 3) is a wildcard rule applied on 
		;variable 3 and thereafter. It skips its neighbour candidate and checks the candidate together with the two following variables (0 and 1).
		)
	(backjump :initarg :backjump
		:type fixnum
		:accessor backjump
		;This is the number of steps to backjump. 1 = step back one (i.e. no jump).
		)))

(defclass RL-rule ()
	((rulefn :initarg :rulefn
		:type function
		:accessor rulefn
		;This is the function for the rule.
		)
	(1-var :initarg :1-var
		:type fixnum
		:accessor 1-var
		;This is the first variable the rule will check. All following variables will be included.
		)
	(backjump :initarg :backjump
		:type fixnum
		:accessor backjump
		;This is the number of steps to backjump. 1 = step back one (i.e. no jump).
		)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(defmacro make-rulevector (no-of-rules) `(make-array '( ,no-of-rules ) :element-type 'symbol ))
(defun make-rulevector (no-of-rules) (make-array (list no-of-rules) :element-type 'symbol ))
;The rule vector is a vector containing all rules.

;(defmacro make-rulespace (no-of-variables) `(make-array '(,no-of-variables) :element-type 'list :initial-element nil))
(defun make-rulespace (no-of-variables) (make-array (list no-of-variables) :element-type 'list :initial-element nil))
;The rulespace contains a list of every rule to check at each index. Rules are identified by ruleid (= index in the rulevector).

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; RULES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;; Note that the make- functions are also used for heuristic rules ;;;;;;;;;
;;;;;;;;; Only the RL rule has a separate function for heuristic rules, ;;;;;;;;;;;
;;;;;;;;; due to preset backjumping (this info is not used in           ;;;;;;;;;;;
;;;;;;;;; heuristic rules, so it is more cosmetic than necessary).      ;;;;;;;;;;;


(defun make-indexrule (rulefn i-vars backjump)
	(make-instance 'indexrule :rulefn rulefn :i-vars i-vars :backjump backjump))


(defun make-wildcardrule (rulefn *-vars backjump)
	;*-vars HAS to start on 0 (i.e. the highest *-vars value is where the rule will start to be checked)
	(make-instance 'wildcardrule :rulefn rulefn :*-vars *-vars :backjump backjump))

(defun make-RL-rule (rulefn 1-var)
	(make-instance 'RL-rule :rulefn rulefn :1-var 1-var :backjump 1))

(defun make-heur-RL-rule (rulefn 1-var)
	(make-instance 'RL-rule :rulefn rulefn :1-var 1-var :backjump 0))


;;;;;;;;;;;;;;;;;;;;; FORMAT RULES ;;;;;;;;;;;;;;;;;;;;;;;;

(defun format-indexrule (rule variable-idxs)
	(declare (type list variable-idxs))
	(let ((backjump 0))
		(declare (type fixnum backjump))
		(if (<= (length variable-idxs) 1) (setf backjump 0) ; 0 indicates no dependencies, i.e. "no opinion" on backjump
				(let ((sorted-idxs (sort (copy-seq variable-idxs) '>)))
					(declare (type list sorted-idxs))
					(setf backjump (- (first sorted-idxs) (second sorted-idxs)))
					))
		(make-indexrule (compile '() rule) variable-idxs backjump)))


(defun format-wildcardrule (rule variable-*dxs )
	(declare (type list variable-*dxs))
	(let ((backjump 0))
		(declare (type fixnum backjump))
		(if (<= (length variable-*dxs) 1) (setf backjump 0) ; 0 indicates no dependencies, i.e. "no opinion" on backjump
				(let ((sorted-*dxs (sort (copy-seq variable-*dxs) '>)))
					(declare (type list sorted-*dxs))
					(setf backjump (- (first sorted-*dxs) (second sorted-*dxs)))
					))
		(make-wildcardrule (compile '() rule) variable-*dxs backjump)))


(defun format-RL-rule (rule 1-var) (make-RL-rule (compile '() rule) 1-var))

;;;;;;;;;;;;;;;;;;;;; FORMAT HEURISTIC RULES ;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;; These functions are very similar to the functions    ;;;;;;
;;;;;;;;; for the strict rules, but with the backjump always   ;;;;;;
;;;;;;;;; set to 0 (this info is not used in heuristic rules,  ;;;;;;
;;;;;;;;; so it is more cosmetic than necessary)        ;;;;;;;;;;;;;


(defun format-heuristic-indexrule (rule variable-idxs)
	(declare (type list variable-idxs))
	(let ((backjump 0))
		(declare (type fixnum backjump))
		(make-indexrule (compile '() rule) variable-idxs backjump)))


(defun format-heuristic-wildcardrule (rule variable-*dxs )
	(declare (type list variable-*dxs))
	(let ((backjump 0))
		(declare (type fixnum backjump))
		(make-wildcardrule (compile '() rule) variable-*dxs backjump)))

(defun format-heuristic-RL-rule (rule 1-var) (make-heur-RL-rule (compile '() rule) 1-var))


;;;;;;; ORGANIZE THE RULES IN VECTORS FOR EASY ACCESS DURING SEARCH ;;;;;;;;;;;
;;;;;;; Below is a number of functions to access the information in  ;;;;;;;;;;
;;;;;;; the rule vector. Rules are of different classes (see above). ;;;;;;;;;;
;;;;;;; Informations accessed by asking for a specific rule (ruleid) ;;;;;;;;;;
;;;;;;; and then accessing the relevant slot on the rule.           ;;;;;;;;;;;


(defmacro put-rule-in-vector (rule rulevector ruleid)
	`(declare (type fixnum ruleid))
	`(setf (aref ,rulevector ,ruleid) ,rule))

(defmacro get-rule (rulevector ruleid)
	`(declare (type fixnum ruleid))
	`(aref ,rulevector ,ruleid))

(defmacro get-rulefn (rulevector ruleid)
	`(declare (type fixnum ruleid))
	`(rulefn (aref ,rulevector ,ruleid)))

(defmacro get-i-vars (rulevector ruleid)
	`(declare (type fixnum ruleid))
	`(i-vars (aref ,rulevector ,ruleid)))

(defmacro get-backjump (rulevector ruleid)
	`(declare (type fixnum ruleid))
	`(backjump (aref ,rulevector ,ruleid)))

(defun setup-rulevector (rulelist)
	(declare (type list rulelist))
	(let* ((no-of-rules (length rulelist))
		     (rulevector (make-rulevector no-of-rules)))
		(declare (type fixnum no-of-rules))
		(loop for rule in rulelist
			  for n from 0
				do (put-rule-in-vector rule rulevector n))
		rulevector))


;;;;;;;; Rule ids are used to identify which rule should be ;;;;;
;;;;;;;; applied on which search index. The information is  ;;;;;
;;;;;;;; stored in the rule space vector.  ;;;;;;;;;;;;;;;;;;;;;;

(defmacro get-ruleids-at-index (rulespace index)
	`(declare (type fixnun index))
	`(aref ,rulespace ,index))

(defun get-ruleids-at-index2 (rulespace index)
	(declare (type fixnum index))
	(aref rulespace index))


;;; Three methods 
;;; (one for each rule type to figure out at what indexes a rule should be applied) :

(defmethod get-idxs-to-apply-for-any-rule ((indexrule indexrule) no-variables)
			  (declare (type fixnum no-variables))
	;no-variables is not used, it is only there to conform the method.
	;The rule is applied at the index for the last variable in the rule.
	(list (apply 'max (i-vars indexrule))))

(defmethod get-idxs-to-apply-for-any-rule ((wildcardrule wildcardrule) no-variables)
		  (declare (type fixnum no-variables))
	;The rule is applied at the index for the last variable in the rule,
	;and for each following position of the rule until the end of the variable sequence.
		  (loop for i  from (apply 'max (*-vars wildcardrule)) to (1- no-variables)
		  	collect i))

(defmethod get-idxs-to-apply-for-any-rule ((RL-rule RL-rule) no-variables)
		  (declare (type fixnum no-variables))
	;The rule is applied at the index for the last variable in the rule, 
	;and for each following position of the rule until the end of the variable sequence.
		  (loop for i  from (1-var RL-rule) to (1- no-variables)
		  	collect i))


;;;; The setup-rulespace should be called ONCE AFTER that the rulevector is complete. 
;;;; It uses the information of the location of the variables in the rules to understand
;;;; where rules should be applied, and sorts this information into the rulespace.

(defun setup-rulespace (rulevector no-of-variables)
	(declare (type fixnum no-of-variables))
	(declare (type array rulevector))
	(let ((rulespace  (make-rulespace no-of-variables)))
		(declare (type array rulespace))
		(loop for ruleid from 0 to (1- (car (array-dimensions rulevector)))
					do (loop for index in (get-idxs-to-apply-for-any-rule (get-rule rulevector ruleid) no-of-variables)
									 do (setf (get-ruleids-at-index rulespace index) (append (get-ruleids-at-index rulespace index) (list ruleid)) )))
	rulespace)
	)



;;;;;;;;;;;;;;;;;;;;;;; UTILITIES - MACROS ;;;;;;;;;;;;;;;;;;;;;;;

(defmacro apply-or (list)
	`(declare (type list list))
	`(some #'(lambda (x) x) ,list))

(defmacro apply-and (list)
	`(declare (type list list))
	`(every #'(lambda (x) x) ,list))


(defun random-perm (list)
	(declare (type list list))
	(let ((list2 (copy-seq list)))
		(declare (type list list2))
		(loop
			while list2
			collect (let* ((n (random (length list2)))
					  				 (x (nth n list2)))
								(declare (type fixnum n))
								(setf (nth n list2) nil)
								(setf list2 (remove nil list2))
								x)
			)))


;;;;;;;;;;;;;;;;;;;;;;; UTILITIES - FUNCTIONS ;;;;;;;;;;;;;;;;;;;;;;;

(defun matrix-trans (matrix)
  "The cluster engine version of the mat-trans function."
  (declare (type list matrix))
  (loop for n fixnum from 0 to (1- (length (first matrix)))
        collect (loop for row list in matrix
                      collect (nth n row))))





;;;;;;;;;;;;;;;;;;;;;;; INITIALIZE THE DOMAIN ;;;;;;;;;;;;;;;;;;;;

(defun initialize-domain-at-index (searchspace searchspace-state domain index)
	(when (/= (length domain) (no-of-candidates searchspace-state index)) 
		(error "The size of the domain is not equal to the expected number of candidates." ))
	(loop for x in domain
		for n from 0
		do 
		(setf (aref searchspace index n) x)))


(defun initialize-uniform-domains (searchspace searchspace-state domain)
		(loop for index from 0 to (1- (no-of-variables searchspace))
			do (initialize-domain-at-index searchspace searchspace-state domain index)))


(defun initialize-uniform-randomized-domains (searchspace searchspace-state domain)
		(loop for index from 0 to (1- (no-of-variables searchspace))
			do (progn (setf domain (random-perm domain)) ; this is necessary since random-perm is destructive
				(initialize-domain-at-index  searchspace searchspace-state domain index)
				)))


; A dynamic domain has a different set of candidates for each search index.

(defun initialize-dynamic-domains (searchspace searchspace-state domain-list)
	(if (/= (length domain-list) (no-of-variables searchspace)) 
		(error "There are not equal number of domains as number of variables."))
		(loop for index from 0 to (1- (no-of-variables searchspace))
			do (initialize-domain-at-index searchspace searchspace-state (nth index domain-list) index)))


(defun initialize-dynamic-randomized-domains (searchspace searchspace-state domain-list)
	(if (/= (length domain-list) (no-of-variables searchspace)) 
		(error "There are not equal number of domains as number of variables."))
		(loop for index from 0 to (1- (no-of-variables searchspace))
			do (let ((domain (random-perm (nth index domain-list))))
			(initialize-domain-at-index searchspace searchspace-state domain index))))



;;;;;;;;;; save state of a search ;;;;;;;;;;;;;

(defun 2d-array-to-list (array)
  (loop for i below (array-dimension array 0)
        collect (loop for j below (array-dimension array 1)
                      collect (aref array i j))))

(defun list-to-2d-array (list)
  (make-array (list (length list)
                    (length (first list)))
              :initial-contents list))



(defun write-engine-state-to-file (filename content)
	  (with-open-file (stream filename :direction :output
	                                 :if-exists :supersede)
					(format stream (write-to-string  content))))


(defun save-engine-state (filename searchindex searchspace-state searchspace solution)
		  (declare (type array searchspace searchspace-state))

		  (write-engine-state-to-file filename (list (list 'index (get-index searchindex)) 
		  											 (list 'state  (2d-array-to-list searchspace-state)) 
		  											 (list 'space (2d-array-to-list searchspace))
		  											 (list 'solution (2d-array-to-list solution))
		  											  )))

;;;;;;;;;; read state of a search from file;;;;;;;;;;;;;

(defun read-engine-state-file (filename)
	  (with-open-file (stream filename) 
	  (read stream nil)))


(defmacro set-engine-state (filename)
	`(let ((state-from-file (read-engine-state-file ,filename)))
	    (setf previous-index (cadr (find 'index state-from-file :key #'first)))
		  (setf (get-index searchindex) (cadr (find 'index state-from-file :key #'first)))
	  	(setf searchspace-state (list-to-2d-array (cadr (find 'state state-from-file :key #'first))))
	  	(setf searchspace (list-to-2d-array (cadr (find 'space state-from-file :key #'first))))
	  	(setf solution (list-to-2d-array (cadr (find 'solution state-from-file :key #'first))))
	  	(setf (get-index searchindex) previous-index)))


(defmacro set-engine-state-not-0 (filename)
	`(let ((state-from-file (read-engine-state-file ,filename)))
	    (setf previous-index (cadr (find 'index state-from-file :key #'first)))
	    (when (/= 0 previous-index) ;this will make the engine reset the search space at index 0, but maintain it after that point
		  	(setf (get-index searchindex) (cadr (find 'index state-from-file :key #'first)))
	  		(setf searchspace-state (list-to-2d-array (cadr (find 'state state-from-file :key #'first))))
	  		(setf searchspace (list-to-2d-array (cadr (find 'space state-from-file :key #'first)))) 
	  		(setf solution (list-to-2d-array (cadr (find 'solution state-from-file :key #'first))))
	  		(setf (get-index searchindex) previous-index))))


(defmacro set-engine-state-until-index (filename)
	;the searchspace and searchspacestate saved inteh file will overwrite the once in teh engine 
	;ONLY UNTIL THE INDEX 

	`(let ((state-from-file (read-engine-state-file ,filename))
					temp-searchspacestate temp-searchspace)
		(setf previous-index (cadr (find 'index state-from-file :key #'first)))
	  	(setf temp-searchspacestate (list-to-2d-array (cadr (find 'state state-from-file :key #'first))))
	  	(setf temp-searchspace (list-to-2d-array (cadr (find 'space state-from-file :key #'first)))) 
	  	(setf solution (list-to-2d-array (cadr (find 'solution state-from-file :key #'first))))
	  	(setf (get-index searchindex) previous-index)

	  	(loop for n from 0 to (- previous-index  1)
					do (progn (setf (aref searchspace-state n 0) (aref temp-searchspacestate n 0))
										(loop for m from 0 to (- no-candidates 1)
					 		      		       do (setf (aref searchspace n m)  (aref temp-searchspace n m)))))
			))

;;;;exhaustive search


(defun next-state (state)
	(let ((temp-state (reverse state))
		(flag-reset nil))
		(loop named increase-state for pair in temp-state
			do (if (< (first pair) (1- (second pair)))
				 (progn (incf (first pair)) (return-from increase-state (reverse temp-state)))
				 (setf (first pair) 0))
		    finally (return-from increase-state nil))
  	))

(defmacro set-next-engine-state (filename)
	`(let ((state-from-file (read-engine-state-file ,filename))
		temp-state)
	    (setf previous-index (cadr (find 'index state-from-file :key #'first)))
		(setf (get-index searchindex) (cadr (find 'index state-from-file :key #'first)))

	  	(setf temp-state (cadr (find 'state state-from-file :key #'first)))
	  	(setf searchspace-state (list-to-2d-array (next-state temp-state)))

	  	(setf searchspace (list-to-2d-array (cadr (find 'space state-from-file :key #'first)))) 
	  	(setf solution (list-to-2d-array (cadr (find 'solution state-from-file :key #'first))))
	  	;(setf (get-index searchindex) (1- previous-index))
	  	(setf (get-index searchindex) 0)
	  	))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;; HERE IS THE MAIN FUNCTION TO USE: THE ENGINE ;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun engine_v4.01 (no-variables domain var-type abs-interval? start rulelist heurrulelist mode rnd? read-write-engine-state?)
		;;;;;;;; setup searchspace
		(let* ((no-candidates (length domain))
			  (searchspace (make-searchspace no-variables no-candidates var-type))
			  (searchspace-state (make-searchspace-state no-variables no-candidates))
		;;;;;;;; setup rule vectors
			  (rulevector (setup-rulevector rulelist))
			  (rulespace (setup-rulespace rulevector no-variables))
			  (heurrulevector (setup-rulevector heurrulelist))
			  (heurrulespace (setup-rulespace heurrulevector no-variables))
			  (searchindex (initialize-searchindex))
			  (loopcounter 0) ; debug info
			  (backtrackcounter 0) ; debug info
			  (rule-check-function #'check-all-rules-on-one-candidate)
			  (analyze-backjump-function #'analyze-backjump-from-test-result2) 
			  (init-domains-function #'initialize-uniform-domains)
			  (solution (solution (1+ no-variables) var-type))
			   previous-index)

		(declare (type fixnum no-variables loopcounter mode abs-dist?))
		(declare (type list rulelist heurrulelist))
		(declare (type array searchspace searchspace-state rulevector rulespace heurrulevector heurrulespace solution))
		(declare (type function rule-check-function analyze-backjump-function init-domains-function))

;;;;;;;;;;;;;;;
		(when (= abs-interval? *interval-domain*);;set first pitch in solution
				(progn (when (not start) (setf start 60))
					(write-one-absolute-value-to-solution start -1 solution)
				))

		(when (= abs-interval? *duration-domain*) ;;set first timepoint in solution
				(write-one-absolute-value-to-solution 0 -1 solution))


		;;;;;;;; The mode setting switches between different search strategies.
		(case mode (3 (setf rule-check-function #'check-all-rules-at-index2) 
									(setf analyze-backjump-function #'analyze-backjump-from-test-result3))
				   (2 (setf rule-check-function #'check-all-rules-at-index2) 
									(setf analyze-backjump-function #'analyze-backjump-from-test-result2))
				   (1 (setf rule-check-function #'check-all-rules-at-index) 
									(setf analyze-backjump-function #'analyze-backjump-from-test-result1)))

		(if rnd? (setf init-domains-function #'initialize-uniform-randomized-domains)
						 (setf init-domains-function #'initialize-uniform-domains))

			(funcall init-domains-function searchspace searchspace-state domain)


;;;;;;; load a state of the search engine from file
		(when (= read-write-engine-state? 3)
		   (set-engine-state-not-0 "state.txt"))

		(when (= read-write-engine-state? 4)
		   (set-next-engine-state "state.txt"))

 		(when (= read-write-engine-state? 2)
	       (set-engine-state-until-index "state.txt"))

		(when (and (= read-write-engine-state? 3) (< previous-index no-variables))
		   (setf no-variables (+ previous-index  1))) ; this will make the engine stop at the next index




		;;;;;;;; Loop for each searchindex until a solution is found, or no solution is possible
			(loop until (or (= (get-index searchindex) no-variables) (< (get-index searchindex) 0)) 
				do (let ((ruleids-at-index (get-ruleids-at-index2 rulespace (get-index searchindex)))
						 (heurruleids-at-index (get-ruleids-at-index2 heurrulespace (get-index searchindex))))
					(declare (type list ruleids-at-index heurruleids-at-index))

					(incf loopcounter) ;for debuggiung
					;(print (list 'index (get-index searchindex)))

					;Testing heuristic rules will sort the domain according to these.
				  (when heurrulelist (test-heur-rules heurrulevector heurruleids-at-index searchspace searchspace-state searchindex solution abs-interval?))
					(if ruleids-at-index 
						(let ((test-result (test-rules rulevector ruleids-at-index searchspace searchspace-state searchindex rule-check-function solution abs-interval?)))
							(declare (type list test-result))

								(if test-result
									(progn (backtrack searchspace-state searchindex test-result analyze-backjump-function) (incf backtrackcounter)) ;backtrack
									(incf (get-index searchindex)))
									)										  ;step forward

						;If there are no rules to check - increase the search index.
						;(when (not (step-forward-without-rules searchindex searchspace-state)) (return nil))  ;The function needs to be there but probably not the 'when'
						(progn 
							(when (< (variablepointer searchspace-state (get-index searchindex))  (no-of-candidates searchspace-state (get-index searchindex))) 
								(write-one-candidate-to-solution (get-current-candidate searchspace searchspace-state (get-index searchindex)) (get-index searchindex) solution abs-interval?))
							(step-forward-without-rules searchindex searchspace-state)))
				))

			;;;Print debug information when search is over
			(print (list 'loopcounter loopcounter))  
			(print (list 'backtrackcounter backtrackcounter))

			;;;Print solution (or no solution)
			(if (= (get-index searchindex) no-variables) (print (extract-from-solution-array solution no-variables abs-interval?)) (print 'NO_SOLUTION))


;;;;;;;

			(when (or (= read-write-engine-state? 1) (= read-write-engine-state? 3) (= read-write-engine-state? 4))
				(save-engine-state "state.txt" searchindex  searchspace-state searchspace solution))
			))



(defun step-forward-without-rules (searchindex searchspace-state)
	(declare (type array searchspace searchspace-state))

		;1. Check that the search space still has at least one candidate left.
		(if (>= (variablepointer searchspace-state (get-index searchindex))  (no-of-candidates searchspace-state (get-index searchindex))) 
			;2A. If not, backtrack one step.
			(progn (decf (get-index searchindex)) ;BACKTRACK BY STEP
							;2B. Check that backtracking did not step beyond the beginning of the sequence.
							(when (< (get-index searchindex) 0) (return-from step-forward-without-rules nil)) ;;;; BACKTRACKED BEYON BEGINNING OF SEQ - NO SOLUTION
							;2C. If OK, update serchspace at the index - remove old candidate.
							(incf (variablepointer searchspace-state (get-index searchindex)))
							;2D. Reset domain at the index that the engine backtracked from.
							(setf (variablepointer searchspace-state (1+ (get-index searchindex))) 0))
			;3A. If there is a candidate left, step forward.
			(progn (incf (get-index searchindex)) 
						 (return-from step-forward-without-rules T)))
	)


(defun test-rules (rulevector ruleids searchspace searchspace-state searchindex rule-check-function solution abs-interval?)
;This function checks all rules that apply at one index and call the fail function to backtrack. 
;NIL means no backtracking - the rule passed.
;The pointer in the search-state is updated in this function.
	(declare  (type fixnum engine_version abs-interval?))
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state solution))
	(declare (type function rule-check-function))

	(when (>= (variablepointer searchspace-state (get-index searchindex))  (no-of-candidates searchspace-state (get-index searchindex))) 
		;;; Fail because the domain at the current index ran out of candidates - no candidate to check.
		;;; Backtrack according to all rules aqssigned to this variable (THIS WAS CHANGED in version 3.12)
				(return-from test-rules
   							(loop for ruleid of-type fixnum in ruleids
											collect (list (get-backjump rulevector ruleid)))))
				
			    
				;The check-all-rules-at-index returns information on how to backtrack. NIL means no backtracking - the rules passed.

		 (the list (funcall rule-check-function ruleids rulevector searchspace searchspace-state searchindex solution abs-interval?))
		)


;check-all-rules-at-index2 

;;get-varidx-for-any-rule figures out the actual indexes for the varibales in a rule.
(defmethod get-varidx-for-any-rule ((indexrule indexrule) index)
			  (declare (type fixnum index))
	;index is not used, it is only there to conform the method.
	(i-vars indexrule))


(defmethod get-varidx-for-any-rule  ((wildcardrule wildcardrule) index)
		  (declare (type fixnum index))
	(let ((high-*-vars (apply 'max (*-vars wildcardrule) )))
	  (declare (type fixnum high-*-vars))
			(loop for i fixnum in (*-vars wildcardrule) 
						collect (- (+ index i) high-*-vars))))


(defmethod get-varidx-for-any-rule ((RL-rule RL-rule) index)
		  (declare (type fixnum index))
	;index is not used, it is only there to conform the method.
	(loop for i from index downto (1-var RL-rule)
		collect i))



; backtrack / backjump  according to all rules (also those that passed)
(defun check-all-rules-at-index (ruleids rulevector searchspace searchspace-state searchindex solution abs-interval?)
	;The function returns a list with lists of backtracking addresses from each candidate. NIL means that the rules passed.
	;Backtarcking routes will be taken from ALL rules.
	(declare (type fixnum engine_version abs-interval?))
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state solution))

	;Loop through all candidates at one index.
	(loop for candidate-idx from (variablepointer searchspace-state (get-index searchindex)) to (1- (no-of-candidates searchspace-state (get-index searchindex)))
				do (setf (variablepointer searchspace-state (get-index searchindex)) candidate-idx)
				collect (let ((one-candidate-backjumping-list
										(check-all-rules-on-one-candidate ruleids rulevector searchspace searchspace-state searchindex solution abs-interval?)))
									(when (not (apply-or one-candidate-backjumping-list))
											(return nil) ))
				finally (return (list (collect-backjump-info-from-rules rulevector ruleids))))) ;;;;;;!!!!!!



(defun check-all-rules-on-one-candidate (ruleids rulevector searchspace searchspace-state searchindex solution abs-interval?)
	;Returns true if a rule failed, nil if all passed
	;This version breaks testing rules immediately when a rule fails.
	(declare (type fixnum abs-interval?))
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state solution))

;	(setf RL (extract-solution searchspace searchspace-state (get-index searchindex)))
;;;;;;;;;;;;;;;;;;;;;;;;;HERE CONTINUE
	(write-one-candidate-to-solution (get-current-candidate searchspace searchspace-state (get-index searchindex)) (get-index searchindex) solution abs-interval?)

	;Loop through all rules for one candidate.
	(loop for ruleid of-type fixnum in ruleids
				collect (let (i-vars-candidates)
									(declare (type list i-vars-candidates))

									(setf i-vars-candidates (loop for i fixnum in (get-varidx-for-any-rule (get-rule rulevector ruleid) (get-index searchindex))																			
;;;;;;;;;;;;;;;;;;;;;;;;;HERE CONTINUE
												collect  (list (aref solution (1+ i) 0)(aref solution (1+ i) 1))))
;												collect  (get-current-candidate searchspace searchspace-state i)))
;(print i-vars-candidates)									     
									  ;;;;;;;THIS IS WHERE A RULE IS CHECKED
									  (if (apply (get-rulefn rulevector ruleid) i-vars-candidates)
									  	 nil ;NIL means the rule passed, i.e. no backjump is proposed.
								  		(return-from check-all-rules-on-one-candidate '( t )))) ;flag for fail
									  ))


(defun collect-backjump-info-from-rules (rulevector ruleids)
	(declare (type list ruleids))
	(declare (type array rulevector))
		(loop for ruleid of-type fixnum in ruleids
			collect (get-backjump rulevector ruleid)))


;;backtrack / backjump according to failing rules only

(defun check-all-rules-at-index2 (ruleids rulevector searchspace searchspace-state searchindex solution abs-interval?)
	;The function returns a list with lists of backtracking addresses from each candidate. NIL means that the rules passed.
	(declare (type fixnum engine_version abs-interval?))
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state solution))


	;Loop through all candidates at one index.
	(loop for candidate-idx from (variablepointer searchspace-state (get-index searchindex)) to (1- (no-of-candidates searchspace-state (get-index searchindex)))
				do (setf (variablepointer searchspace-state (get-index searchindex)) candidate-idx)
				collect (let ((one-candidate-backjumping-list
										(check-all-rules-on-one-candidate2 ruleids rulevector searchspace searchspace-state searchindex solution abs-interval?)))
									(if (not (apply-or one-candidate-backjumping-list))
											(return nil)
											one-candidate-backjumping-list))

				)) ;;;;;;!!!!!!




(defun check-all-rules-on-one-candidate2 (ruleids rulevector searchspace searchspace-state searchindex solution abs-interval?)
	;Returns a list of backjump addresses for rules. NIL indicates that a rule passed.
	;Only failed rules will propose backtracking.
	(declare (type fixnum  abs-interval?))
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state solution))

;	(setf RL (extract-solution searchspace searchspace-state (get-index searchindex)))
;;;;;;;;;;;;;;;;;;;;;;;;;HERE CONTINUE
	(write-one-candidate-to-solution (get-current-candidate searchspace searchspace-state (get-index searchindex)) (get-index searchindex) solution abs-interval?)

	;Loop through all rules for one candidate.

	(loop for ruleid of-type fixnum in ruleids
				collect (let (i-vars-candidates)
									(declare (type list i-vars-candidates))

									(setf i-vars-candidates (loop for i fixnum in (get-varidx-for-any-rule (get-rule rulevector ruleid) (get-index searchindex))																			
;;;;;;;;;;;;;;;;;;;;;;;;;HERE CONTINUE 
												collect  (list (aref solution (1+ i) 0)(aref solution (1+ i) 1))))
;												collect  (get-current-candidate searchspace searchspace-state i)))
									     
									  ;;;;;;;THIS IS WHERE A RULE IS CHECKED
									  (if (apply (get-rulefn rulevector ruleid) i-vars-candidates)
									  	  nil ;NIL means the rule passed, i.e. no backjump is proposed.
									  	 (get-backjump rulevector ruleid))) ;flag for fail
									  ))










;;;;;;;;;;;;; THE FOLLOWING FUNCTIONS ARE FOR HEURISTIC RULES ;;;;;;;;;;;;;;;;

;;;; The sort function is to reorder the domain according to heuristic rules.
(defun sort-follow-order (dom order)
	(declare (type list dom order))
	(let (temp)
		(declare (type list  temp))
		(setf temp
			(sort 
				(loop for n2 in dom
							for n1 in order
							collect (list n2 n1))
			#'>
			:key #'second))

		(loop for a in temp
			collect (first a))
		))


(defun test-heur-rules (heurrulevector heurruleids searchspace searchspace-state searchindex solution abs-interval?)
;; This function sorts the (remaining) domain according to the heuristic rules. During backtracking, the domain might be reduced.

	(declare (type list heurruleids))
	(declare (type fixnum abs-interval?))
	(declare (type array heurrulevector searchspace searchspace-state solution))

	(when (>= (variablepointer searchspace-state (get-index searchindex))  (no-of-candidates searchspace-state (get-index searchindex))) 
		;;; Fails because the domain at the current index ran out of candidates - this should never happen.
				(return-from test-heur-rules nil) ) ;no candidates to check

	(when (not heurruleids) (return-from test-heur-rules nil)) ;no heuristic rules to check
 
	;The check-all-rules-at-index collects the weights from the heuristic rules.
	(let ((heuristic-weigths (check-all-heur-rules-at-index heurruleids heurrulevector searchspace searchspace-state searchindex solution abs-interval?))
		  (remaining-domain (get-remaining-candidates searchspace searchspace-state (get-index searchindex))))
		(declare (type list heuristic-weigths remaining-domain))

		;Sorts remaining candidates at current index according to weights from heuristic rules.
		(setf remaining-domain (sort-follow-order remaining-domain heuristic-weigths))

		;Replaces the remaining candidates at the current index in the domain with the sorted candidates.
		;DO NOT TOUCH THE CANDIDATES THAT HAS FAILED - they will have to keep their position for correct backtracking.
		(replace-remaining-candidates remaining-domain searchspace searchspace-state (get-index searchindex))

		))



(defun check-all-heur-rules-at-index (heurruleids heurrulevector searchspace searchspace-state searchindex solution abs-interval?)
	;The function returns a list with weights for all candidates.
	(declare (type list heurruleids))
	(declare (type fixnum abs-interval?))
	(declare (type array heurrulevector searchspace searchspace-state searchindex solution))

	;Loop through all candidates at one index.
	(loop for candidate-idx from (variablepointer searchspace-state (get-index searchindex)) to (1- (no-of-candidates searchspace-state (get-index searchindex)))
					collect (check-all-heur-rules-on-one-candidate heurruleids heurrulevector searchspace searchspace-state candidate-idx searchindex solution abs-interval?)
))




(defun check-all-heur-rules-on-one-candidate (heurruleids heurrulevector searchspace searchspace-state candidate-idx searchindex solution abs-interval?)
	;
	(declare (type list heurruleids))
	(declare (type array heurrulevector searchspace searchspace-state searchindex solution))
	(declare (type fixnum candidate-idx abs-interval?))

	(when (not heurruleids) (return-from check-all-heur-rules-on-one-candidate 0)) ;if no heuristic rules to check, returns 0.

	;Loop through all rules for one candidate.
	(apply '+ ;add weights from all heuristic rule for the candidate
		(loop for heurruleid of-type fixnum in heurruleids
					collect (let (i-vars-candidates)							  
									(declare (type list i-vars-candidates))
										(setf i-vars-candidates (loop for i fixnum in (get-varidx-for-any-rule (get-rule heurrulevector heurruleid) (get-index searchindex))
																	collect  (if (= i (get-index searchindex))
													        				    (candidate searchspace i candidate-idx)
																				(get-current-candidate searchspace searchspace-state i))
													))								
										  ;;;;;;;THIS IS WHERE A RULE IS CHECKED
										  (the number (apply (get-rulefn heurrulevector heurruleid) i-vars-candidates))) ;calculates weight for heuristic rule
										  )))




;;;;;;;;BACKTRACK 

#|
;;This backtrack function did not care about baclktracking to teh first variable
(defun backtrack (searchspace-state searchindex test-result analyze-backjump-function)
	(declare (type list test-result))
	;(print test-result)
	(let ((departure-index (get-index searchindex)))
		(declare (type fixnum departure-index))
          ;;;;; backjump-mode
	;step back index 
	(setf (get-index searchindex) (- (get-index searchindex) (funcall analyze-backjump-function test-result)))
	;(print (list 'fail 'jump 'from departure-index 'to (get-index searchindex)))

	(when (<  (get-index searchindex) 0) (return-from backtrack nil))
	;reset searchspace-state n-for-current-candidate for backtracked indexes
	(loop for i from (1+ (get-index searchindex)) to departure-index
			do (setf (variablepointer searchspace-state i) 0)
			)


	;increase searchspace-state n-for-current-candidate at the index (where the engine backtracked)
	(incf (variablepointer searchspace-state (get-index searchindex))   )

	;(print (variablepointer searchspace-state (get-index searchindex)))
	))
|#


(defun backtrack (searchspace-state searchindex test-result analyze-backjump-function)
	;This backtrack function will not allow backjump to the first variable - in  case
	;a backjump is proposed all teh way to the beginning, intermediate variables might not be visited
	;and it is a higher risk that a solution is not found 
	(declare (type list test-result))

	(let ((departure-index (get-index searchindex))
		  (backjump (funcall analyze-backjump-function test-result)))
		(declare (type fixnum departure-index declare))

	(if (< backjump (get-index searchindex)) ; check if the backjump reaches the first variable
		(setf (get-index searchindex) (- (get-index searchindex) backjump))
		(setf (get-index searchindex) (- (get-index searchindex) 1)))
	;(print (list 'fail 'jump 'from departure-index 'to (get-index searchindex)))

	(when (<  (get-index searchindex) 0) (return-from backtrack nil))

	;when backtracking, reset the state for variables that became unassigned
	(loop for i from (1+ (get-index searchindex)) to departure-index
			do (setf (variablepointer searchspace-state i) 0)
			)
		;increase searchspace-state n-for-current-candidate at the index (where the engine backtracked)
	(incf (variablepointer searchspace-state (get-index searchindex))   )
	))







;For version 2 
(defun analyze-backjump-from-test-result2 (test-result)
	;;;This function takes the decision on how to backjump. 
	;;;Of all proposed backjump sizes, it will propose the shortest jump.
	;;;This function might miss a potential solution

	(declare (type list test-result))

	(let ((backjump-proposals (remove 0 (remove nil (apply 'append test-result)))))
		(declare (type list backjump-proposals))

	(if (not backjump-proposals) 1 ; if no proposed backtrack route is given (i.e. rules only include one variable), return standard 1 step for backtracking
				 (abs (apply 'min backjump-proposals)))))


(defun most-common (list)
	(declare (type list list))
 (let* ((values (remove-duplicates list))
 	    (occurances (loop for value in values
 	  			          collect (count value list))))
 		  (declare (type list values occurances))
 		  (nth (position (apply 'max occurances) occurances) values)))


(defun identical-or-1 (list)
	;;If all backtrackroutes suggest the same, use it 
	;;otehrwise, back step 1 step
	(declare (type list list))
 (let ((values (remove-duplicates list)))
 	(if (= (length values) 1)
 		(car values)
 		1)))



;for version 3
(defun analyze-backjump-from-test-result3 (test-result)
	;;;This function takes the decision on how to backjump.
	;;;It is more restrictive on proposing backjump than version 2.
	;;;Only backjump if all rules suggest the same backjump, otherwise step back.
	(declare (type list test-result))

	(let ((backjump-proposals (remove 0 (remove nil (apply 'append test-result)))))
		(declare (type list backjump-proposals))

	(if (not backjump-proposals) 1 ; if no proposed backtrack route is given (i.e. rules only include one variable), return standard 1 step for backtracking
			(abs (identical-or-1 backjump-proposals)))))



;no-backjump option 
(defun analyze-backjump-from-test-result1 (test-result)
	;;;This is a dummy. Very clean code.
	(declare (type list test-result))

	1)



;;;;;;;;;;;;;EXTRACT THE SOLUTION WHEN SEARCH IS DONE ;;;;;;;;;;;;;;;
;;;;; It should also be possible to use for temporary solutions ;;;;;

(defun extract-solution (searchspace searchspace-state no-variables)
	(loop for i from 0 to (1- no-variables)
		collect (get-current-candidate searchspace searchspace-state i)
	))

(defun extract-reverse-solution (searchspace searchspace-state no-variables)
	(loop for i from (1- no-variables) downto 0
		collect (get-current-candidate searchspace searchspace-state i)
	))


(defun extract-from-solution-array (solution no-variables type)
	(cond ((= type *basic-domain*) 
		    (loop for i from 1 to no-variables
		         collect (aref solution i 1)))
		  (t
			(list
	 			 (loop for i from 1 to no-variables
		     		 collect (aref solution i 0))
	 			 (loop for i from 1 to no-variables
		    		  collect (aref solution i 1)))
		  )))


;*duration-domain*
;*absolute-domain*
;*interval-domain*
;*basic-domain*


;;;;;;;;;;;;;;; utilities to use in rules

(defun dx->x (start list)
  (declare (type number start))
  (declare (type list list))
  (let ((n start))
    (cons start 
    (loop for x in list
          collect (setf n (+ n x))))))



 (defun x->dx (self)
 	(declare (type list self))
  	(loop for x in self
          for y in (rest self)
          collect (- y x)))


  (defun x->dx-abs (self)
 	(declare (type list self))
  	(loop for x in self
          for y in (rest self)
          collect (abs (- y x))))





;;;;;;;;;;;;;;;    CODE ENDS HERE



;;;;;;;;;;;;;;;; extras - not used

(defun hybrid-rule-indexes (i-var no-variables)
	(declare (type fixnum i-var no-variables))

	(loop for i from 0 to (1- no-variables)
		when (/= i-var i)
		collect (list i-var i) ))

(defun wildcard-wildcard-rule-indexes (no-variables)
	(declare (type fixnum no-variables))
	(apply 'append
	(loop for i from 0 to (1- no-variables)
		collect (loop for j from (1+ i) to (1- no-variables)

		collect (list i j)))))

(defun format-wildcard-wildcard-rule-indexes (rule no-variables)
	(loop for idxs in (wildcard-wildcard-rule-indexes no-variables)
		collect (format-indexrule rule idxs)))





;;;;TEST FUNCTION

;*duration-domain*
;*absolute-domain*
;*interval-domain*
;*basic-domain*

#|
;Example with durations
(engine_v4.01 15  '(1/4 -1/8 -1/4) 'ratio *duration-domain*  nil
	(list 
	  (format-wildcardrule #'(lambda (x y) (if (< (a x) 2) (not (= (d x) (d y))) (= (d x) (d y)))) '(0 1))
	  (format-indexrule #'(lambda (x) (= (d x) 1/4)) '(1))
	)
	nil 1 t 1
)

|#


#|
;Example with time points
(engine_v4.01 5 '(1/4 1/2 3/4 1 1/8 3/2) 'ratio *absolute-domain* 0
	(list 
	  (format-wildcardrule #'(lambda (x) (plusp (d x))) '(0))
	  (format-indexrule #'(lambda (x) (= (a x) 1/4)) '(1))
	)
	nil 1 t 1
)
|#


#|
;Example with pitches
(engine_v4.01 15  '(60 62 64 65 67 69 71 72) 'integer *absolute-domain*  nil
	(list 
	  (format-wildcardrule #'(lambda (x) (<= (abs (i x)) 2)) '(0))
	  (format-indexrule #'(lambda (x) (= (a x) 62)) '(0))
	)
	nil 1 t 1
)
|#



#|
;Example with intervals
(engine_v4.01 15  '(1 2 -2 -1)  'integer *interval-domain*  60
	(list 
	  (format-wildcardrule #'(lambda (x y)  (=   (i x) (i y))) '(0 2))
	  (format-indexrule #'(lambda (x) (= (a x) 60)) '(1))
	)
	nil 1 t 1
)
|#


#|
;Example with any candidates
(engine_v4.01 15  '('green 'blue 'red)  't *basic-domain*   nil
	(list 
	  (format-wildcardrule #'(lambda (x y)  (equal  x y)) '(0 2))
	  ;(format-indexrule #'(lambda (x) (= (a x) 60)) '(2))
	)
	nil 2 t 1
)

|#

;Example with durations
(engine_v4.01 15  '(1/4 -1/8 -1/4) 'ratio *duration-domain*  nil
	(list 
	  (format-wildcardrule #'(lambda (x y) (if (< (a x) 2) (not (= (d x) (d y))) (= (d x) (d y)))) '(0 1))
	  (format-indexrule #'(lambda (x) (= (d x) 1/4)) '(1))
	)
	nil 1 t 1
)

