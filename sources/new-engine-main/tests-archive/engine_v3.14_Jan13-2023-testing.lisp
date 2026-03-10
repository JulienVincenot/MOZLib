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
;        when a fail is detected. The size of the ackjumping will be determined using the  
;        information from the rules tested on the candidate that failed. The minimum  
;        backtracking step/jump will be used.



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




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;; HERE IS THE MAIN FUNCTION TO USE: THE ENGINE ;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun engine_v3.14 (no-variables domain var-type rulelist heurrulelist mode rnd?)
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
				(init-domains-function #'initialize-uniform-domains))

		(declare (type fixnum no-variables loopcounter mode))
		(declare (type list rulelist heurrulelist))
		(declare (type array searchspace searchspace-state rulevector rulespace heurrulevector heurrulespace))
		(declare (type function rule-check-function analyze-backjump-function init-domains-function))

		;;;;;;;; The mode setting switches between different search strategies.
		(case mode (2 (setf rule-check-function #'check-all-rules-on-one-candidate) 
									(setf analyze-backjump-function #'analyze-backjump-from-test-result2))
							 (1 (setf rule-check-function #'check-all-rules-on-one-candidate) 
									(setf analyze-backjump-function #'analyze-backjump-from-test-result1)))

		(if rnd? (setf init-domains-function #'initialize-uniform-randomized-domains)
						 (setf init-domains-function #'initialize-uniform-domains))

			(funcall init-domains-function searchspace searchspace-state domain)

		;;;;;;;; Loop for each searchindex until a solution is found, or no solution is possible
			(loop until (or (= (get-index searchindex) no-variables) (< (get-index searchindex) 0)) 
				do (let ((ruleids-at-index (get-ruleids-at-index2 rulespace (get-index searchindex)))
								 (heurruleids-at-index (get-ruleids-at-index2 heurrulespace (get-index searchindex))))
					(declare (type list ruleids-at-index heurruleids-at-index))

					(incf loopcounter) ;for debuggiung
					;(print (list 'index (get-index searchindex)))

					;Testing heuristic rules will sort the domain according to these.
				  (when heurrulelist (test-heur-rules heurrulevector heurruleids-at-index searchspace searchspace-state searchindex))

					(if ruleids-at-index 
						(let ((test-result (test-rules rulevector ruleids-at-index searchspace searchspace-state searchindex rule-check-function)))
							(declare (type list test-result))
								(if test-result
									(progn (backtrack searchspace-state searchindex test-result analyze-backjump-function) (incf backtrackcounter)) ;backtrack
									(incf (get-index searchindex))))										  ;step forward
			
						;If there are no rules to check - increase the search index.

						;(when (not (step-forward-without-rules searchindex searchspace-state)) (return nil))  ;The function needs to be there but probably not the 'when'
						(step-forward-without-rules searchindex searchspace-state)
						))
				)
			;;;Print debug information when search is over
			(print (list 'loopcounter loopcounter))  
			(print (list 'backtrackcounter backtrackcounter))

			;;;Print solution (or no solution)
			(if (= (get-index searchindex) no-variables) (print (extract-solution searchspace searchspace-state no-variables)) (print 'NO_SOLUTION))

		))


(defun step-forward-without-rules (searchindex searchspace-state)
	(declare (type array searchspace-state))
		;1. Check that the search space still has at least one candidate left.
		(if (>= (variablepointer searchspace-state (get-index searchindex))  (no-of-candidates searchspace-state (get-index searchindex))) 
			;2A. If not, backtrack one step.
			(progn 	(decf (get-index searchindex)) ;BACKTRACK BY STEP
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


(defun test-rules (rulevector ruleids searchspace searchspace-state searchindex rule-check-function)
;This function checks all rules that apply at one index and call the fail function to backtrack. 
;NIL means no backtracking - the rule passed.
;The pointer in the search-state is updated in this function.
	(declare  (type fixnum engine_version))
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state))

	(when (>= (variablepointer searchspace-state (get-index searchindex))  (no-of-candidates searchspace-state (get-index searchindex))) 
		;;; Fail because the domain at the current index ran out of candidates - no candidate to check.
		;;; Backtrack according to all rules aqssigned to this variable (THIS WAS CHANGED in version 3.12)
				(return-from test-rules
   							(loop for ruleid of-type fixnum in ruleids
											collect (list (get-backjump rulevector ruleid)))))
				
			    
				;The check-all-rules-at-index returns information on how to backtrack. NIL means no backtracking - the rules passed.

		 (the list (check-all-rules-at-index ruleids rulevector searchspace searchspace-state searchindex rule-check-function))
		)


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



;;;NEW VERSION 3; check-all-rules-at-index (only function call?) and check-all-rules-on-one-candidate


	(defun check-all-rules-at-index (ruleids rulevector searchspace searchspace-state searchindex rule-check-function)
	;The function returns a list with lists of backtracking addresses from each candidate. NIL means that the rules passed.
	(declare (type fixnum engine_version))
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state))

	;Loop through all candidates at one index.
	(loop for candidate-idx from (variablepointer searchspace-state (get-index searchindex)) to (1- (no-of-candidates searchspace-state (get-index searchindex)))
				do (setf (variablepointer searchspace-state (get-index searchindex)) candidate-idx)
				collect (let ((one-candidate-backjumping-list
										(funcall rule-check-function ruleids rulevector searchspace searchspace-state searchindex)))
									(when (not (apply-or one-candidate-backjumping-list))
											(return nil) ))
				finally (return (list (collect-backjump-info-from-rules rulevector ruleids)))))



;The check-all-rules-on-one-candidate is for version 3. 


;;;NEW IN 2023
(defun check-all-rules-on-one-candidate (ruleids rulevector searchspace searchspace-state searchindex)
	;Returns a list of backjump addresses for rules. NIL indicates that a rule passed.
	;This version breaks testing rules immediately when a rule fails.
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state))

;	(setf RL (extract-solution searchspace searchspace-state (get-index searchindex)))

	;Loop through all rules for one candidate.
	(loop for ruleid of-type fixnum in ruleids
				collect (let (i-vars-candidates)
									(declare (type list i-vars-candidates))

									(setf i-vars-candidates (loop for i fixnum in (get-varidx-for-any-rule (get-rule rulevector ruleid) (get-index searchindex))																			
												collect  (get-current-candidate searchspace searchspace-state i)))
									     
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


(defun test-heur-rules (heurrulevector heurruleids searchspace searchspace-state searchindex)
;; This function sorts the (remaining) domain according to the heuristic rules. During backtracking, the domain might be reduced.

	(declare (type list heurruleids))
	(declare (type array heurrulevector searchspace searchspace-state))

	(when (>= (variablepointer searchspace-state (get-index searchindex))  (no-of-candidates searchspace-state (get-index searchindex))) 
		;;; Fails because the domain at the current index ran out of candidates - this should never happen.
				(return-from test-heur-rules nil) ) ;no candidates to check

	(when (not heurruleids) (return-from test-heur-rules nil)) ;no heuristic rules to check
 
	;The check-all-rules-at-index collects the weights from the heuristic rules.
	(let ((heuristic-weigths (check-all-heur-rules-at-index heurruleids heurrulevector searchspace searchspace-state searchindex))
				(remaining-domain (get-remaining-candidates searchspace searchspace-state (get-index searchindex))))
		(declare (type list heuristic-weigths remaining-domain))

		;Sorts remaining candidates at current index according to weights from heuristic rules.
		(setf remaining-domain (sort-follow-order remaining-domain heuristic-weigths))

		;Replaces the remaining candidates at the current index in the domain with the sorted candidates.
		;DO NOT TOUCH THE CANDIDATES THAT HAS FAILED - they will have to keep their position for correct backtracking.
		(replace-remaining-candidates remaining-domain searchspace searchspace-state (get-index searchindex))

		))



(defun check-all-heur-rules-at-index (heurruleids heurrulevector searchspace searchspace-state searchindex)
	;The function returns a list with weights for all candidates.
	(declare (type list heurruleids))
	(declare (type array heurrulevector searchspace searchspace-state searchindex))

	;Loop through all candidates at one index.
	(loop for candidate-idx from (variablepointer searchspace-state (get-index searchindex)) to (1- (no-of-candidates searchspace-state (get-index searchindex)))
					collect (check-all-heur-rules-on-one-candidate heurruleids heurrulevector searchspace searchspace-state candidate-idx searchindex)
))




(defun check-all-heur-rules-on-one-candidate (heurruleids heurrulevector searchspace searchspace-state candidate-idx searchindex)
	;Returns a list of backjump addresses for rules. NIL indicates that a rule passed.
	(declare (type list heurruleids))
	(declare (type array heurrulevector searchspace searchspace-state searchindex))
	(declare (type fixnum candidate-idx))

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
;;;NEW VERSION 3: (only function call?) and analyze-backjump-from-test-result2 

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



;For version 3 - NOT COMPATIBLE WITH VERSION 2 (don't use check-all-rules-on-one-candidate).
(defun analyze-backjump-from-test-result2 (test-result)
	;;;This function takes some decision on how to backjump. This might be something you want to adjust.
	;;;It differentiates if a rule fails alone or in combination with other rules.
	;;;BACKJUMP IF A RULE FAILS ALL CANDIDATES, OTHERWISE STEP BACK.
	(declare (type list test-result))

	(let ((backjump-proposals (remove 0 (remove nil (apply 'append test-result)))))
		(declare (type list backjump-proposals))
			;(print (list 'backjump-proposals backjump-proposals))
	(if (not backjump-proposals) 1 ; if no proposed backtrack route is given (i.e. rules only include one variable), return standard 1 step for backtracking
				 (abs (apply 'min backjump-proposals)))))



;  no-backjump option 
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





;;;;;; EXAMPLE ENGINE CALL


#|
(defvar *rulecounter* 0)

(time (engine_v3.14 16 '(1 2 3 4 5 6 7 8 9 10 11 12 13) 'integer
	(list 
	;	(format-RL-rule #'(lambda (&rest x) (if (cdr x)   (not (member (car x) (cdr x))) t))  0 )
	;(format-RL-rule #'(lambda (&rest x) (progn (print x)  t))  0 )
	(format-wildcardrule #'(lambda (y) (progn (incf *rulecounter*) (print (list '1st_rule *rulecounter* y)) t)) '(0))
	(format-wildcardrule #'(lambda (x y) (>  (- x y) 0)) '(0 2)) 
	(format-wildcardrule #'(lambda (y) (progn (incf *rulecounter*) (print (list '2nd_rule *rulecounter* y)) t)) '(0))
	(format-wildcardrule #'(lambda (x y) (= (- x y) 4)) '(0 5)) 
	)
	nil
	3
	t))

|#

#|

(time 
(let ((pass 0) (fail 0))

	(loop for n from 0 to 1000
		do
(if (equal  
	(engine_v3.14 12 '(1 2 3 4 5 6 7 8 9 10 11 12 13) 'integer
	(list 
	 (format-wildcardrule #'(lambda (x y) (= (- x y) 3)) '(0 3))
	 (format-wildcardrule #'(lambda (x y) (>  (- x y) 0)) '(0 2)) 
	)
	nil
	2
	t)

 'NO_SOLUTION

) (incf fail) (incf pass)

))
(print (list 'pass pass 'fail fail))))

|#

#|
	(engine_v3.14 12 '(4 9 10 8 7 1 12 6 11 2 5 3)  'integer
	(list 
	 (format-wildcardrule #'(lambda (x y) (= (- x y) 3)) '(0 3))
	 (format-wildcardrule #'(lambda (x y) (>  (- x y) 0)) '(0 2)) 
	)
	nil
	2
	nil)

|#

(time 
(let ((pass 0) (fail 0))

	(loop for n from 0 to 1000
		do
(if (equal  
	(engine_v3.14 12 '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20) 'integer
	(list 
	 (format-wildcardrule #'(lambda (x y) (= (- x y) 3)) '(0 3))
	 (format-wildcardrule #'(lambda (x y) (>  (- x y) 0)) '(0 1))
	)
	nil
	2
	t)

 'NO_SOLUTION

) (incf fail) (incf pass)

))
(print (list 'pass pass 'fail fail))))




