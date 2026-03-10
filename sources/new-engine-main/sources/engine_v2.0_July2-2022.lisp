

;Note that all lists and vectors start to count from 0

;(defvar *no-of-variables* 10)
;(defvar *no-of-candidates* 12)
;(deftype var-type () 'integer)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; THE CODE BEGINS HERE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; DATA STRUCTURE SEARCHSPACE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmacro make-searchspace (no-of-variables no-of-candidates var-type) `(make-array (list ,no-of-variables ,no-of-candidates) :element-type ,var-type))
(defmacro make-searchspace-state (no-of-variables no-of-candidates) `(let ((new-state (make-array (list ,no-of-variables 2) :element-type 'fixnum :initial-element 0)))
														  (loop for n from 0 to (1- ,no-of-variables)
														  	do (setf (aref new-state n 1) ,no-of-candidates))
													new-state))

;The search space state keeps track on what candidates have been tested and failed, i.e. where the current candidate at each index is positioned
;The complete domain is always intact, only pointers keep track on the state of the engine.
;The format for the searchspace-state: (n-for-current-candidate total-no-of-candidates)  - for each index
;SBCL ignores the :element-type declaration

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ACCESS SEARCHSPACE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmacro candidate (searchspace index candidate-no)
	`(aref ,searchspace (the fixnum ,index) (the fixnum ,candidate-no) ))

(defmacro variablepointer (searchspace-state index)
	`(aref ,searchspace-state (the fixnum ,index) 0))
;The variable pointer points at the current candidate (earlier candidates have failed, later have not been tested)

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
		(declare (type fixnum index))
		(declare (type array searchspace searchspace-state))
		(declare (type list new-candidates))
	(loop for candidate-no from (variablepointer searchspace-state index) to (1- (no-of-candidates searchspace-state index))
				for n from 0
				do (setf (candidate searchspace index candidate-no) (nth n new-candidates)))
	)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; SEARCH INDEX;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass index ()
	((index :initarg :index
			:type fixnum
			:accessor index
			;This is the index for the engine
			)))

(defun initialize-searchindex ()
	(make-instance 'index :index 0))

(defmacro get-index(index)
	`(index ,index))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; DATA STRUCTURE RULES;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass indexrule ()
	((rulefn :initarg :rulefn
		:type function
		:accessor rulefn
		;This is the function for the rule
		)
	(i-vars :initarg :i-vars
		:type list
		:accessor i-vars
		;This is a list with indexes for the variables of the rule function
		)
	(backjump :initarg :backjump
		:type fixnum
		:accessor backjump
		;This is the number of steps to backjump. 1 = step back one (i.e. no jump)
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
		;This is the number of steps to backjump. 1 = step back one (i.e. no jump)
		)))

(defclass RL-rule ()
	((rulefn :initarg :rulefn
		:type function
		:accessor rulefn
		;This is the function for the rule
		)
	(1-var :initarg :1-var
		:type fixnum
		:accessor 1-var
		;This is the first variable the rule will check. All following variables will be included.
		)
	(backjump :initarg :backjump
		:type fixnum
		:accessor backjump
		;This is the number of steps to backjump. 1 = step back one (i.e. no jump)
		)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(defmacro make-rulevector (no-of-rules) `(make-array '( ,no-of-rules ) :element-type 'symbol ))
(defun make-rulevector (no-of-rules) (make-array (list no-of-rules) :element-type 'symbol ))
;The rule vector is a vector containing all rules

;(defmacro make-rulespace (no-of-variables) `(make-array '(,no-of-variables) :element-type 'list :initial-element nil))
(defun make-rulespace (no-of-variables) (make-array (list no-of-variables) :element-type 'list :initial-element nil))
;The rulespace contains a list of every rule to check at each index. Rules are identified by ruleid (= index in the rulevector)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; RULES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun make-indexrule (rulefn i-vars backjump)
	(make-instance 'indexrule :rulefn rulefn :i-vars i-vars :backjump backjump))


(defun make-wildcardrule (rulefn *-vars backjump)
	;*-vars HAS to start on 0 (i.e. the highest *-vars value is where the rule will start to be checked)
	(make-instance 'wildcardrule :rulefn rulefn :*-vars *-vars :backjump backjump))

(defun make-RL-rule (rulefn 1-var)
	(make-instance 'RL-rule :rulefn rulefn :1-var 1-var :backjump 1))


;;format rules compile the function and sets backjumping

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

;;; HEURISTIC RULES
;These functions are the same as for strict rules, but with the backjumop always set to 0

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

(defun format-heuristic-RL-rule (rule 1-var) (make-RL-rule (compile '() rule) 1-var))
;The format-heuristic-RL-rule is identical to format-RL-rule

;;;


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


;;;

(defmacro get-ruleids-at-index (rulespace index)
	`(declare (type fixnun index))
	`(aref ,rulespace ,index))

(defun get-ruleids-at-index2 (rulespace index)
	(declare (type fixnum index))
	(aref rulespace index))


;Two methods to figure out at what indexes a rule should be applied
(defmethod get-idxs-to-apply-for-any-rule ((indexrule indexrule) no-variables)
			  (declare (type fixnum no-variables))
	;no-variables is not used, it is only there to conform the method
	;The rule is applied at the index for the last variable in teh rule
	(list (apply 'max (i-vars indexrule))))

(defmethod get-idxs-to-apply-for-any-rule ((wildcardrule wildcardrule) no-variables)
		  (declare (type fixnum no-variables))
	;The rule is applied at the index for the last variable in the rule, and for each following position 
	;of the rule until the end of the variable sequence
		  (loop for i  from (apply 'max (*-vars wildcardrule)) to (1- no-variables)
		  	collect i))

(defmethod get-idxs-to-apply-for-any-rule ((RL-rule RL-rule) no-variables)
		  (declare (type fixnum no-variables))
	;The rule is applied at the index for the last variable in the rule, and for each following position 
	;of the rule until the end of the variable sequence
		  (loop for i  from (1-var RL-rule) to (1- no-variables)
		  	collect i))


;The setup-rulespace should be called ONCE when the rulevector is complete. It takes the information from the rulevector and sorts it into the rulespace.
(defun setup-rulespace (rulevector no-of-variables)
	(declare (type fixnum no-of-variables))
	(declare (type array rulevector))
	(let ((rulespace  (make-rulespace no-of-variables)))
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

;;;list permutations THIS FUNCTION IS DESTRUCTIVE AND THE ORIGINAL VARIABLE WILL BE DESTROYED
;(defmacro random-perm (list)
;	`(let ((list ,list))
;	(declare (type list list))
;	(loop
;		while list
;		collect (let* ((n (random (length list)))
;					  (x (nth n list)))
;					(declare (type fixnum n))
;					(setf (nth n list) nil)
;					(setf list (remove nil list))
;					x)
;		)))

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
  "The cluster engine version of the mat-trans function"
  (declare (type list matrix))
  (loop for n fixnum from 0 to (1- (length (first matrix)))
        collect (loop for row list in matrix
                      collect (nth n row))))





;;;;;;;;;;;;;;;;;;;;;;; INITIALIZE THE DOMAIN ;;;;;;;;;;;;;;;;;;;;

(defun initialize-domain-at-index (searchspace searchspace-state domain index)
	(if (/= (length domain) (no-of-candidates searchspace-state index)) (error "The size of the domain is not equal to the expected number of candidates" ))
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


(defun initialize-dynamic-domains (searchspace searchspace-state domain-list)
	(if (/= (length domain-list) (no-of-variables searchspace)) (error "There are not equal number of domains as number of variables"))
		(loop for index from 0 to (1- (no-of-variables searchspace))
			do (initialize-domain-at-index searchspace searchspace-state (nth index domain-list) index)))


(defun initialize-dynamic-randomized-domains (searchspace searchspace-state domain-list)
	(if (/= (length domain-list) (no-of-variables searchspace)) (error "There are not equal number of domains as number of variables"))
		(loop for index from 0 to (1- (no-of-variables searchspace))
			do (let ((domain (random-perm (nth index domain-list))))
			(initialize-domain-at-index searchspace searchspace-state domain index))))





;;;;;;;;;;;ENGINE


(defun engine_v2 (no-variables domain var-type rulelist heurrulelist)
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
			  (backtrackcounter 0)) ; debug info
		(declare (type fixnum no-variables loopcounter))
		(declare (type array searchspace searchspace-state rulevector rulespace heurrulevector heurrulespace))

			;(initialize-uniform-domains searchspace searchspace-state domain)
			(initialize-uniform-randomized-domains searchspace searchspace-state domain)

			(loop until (or (= (get-index searchindex) no-variables) (< (get-index searchindex) 0)) 
				do (let ((ruleids-at-index (get-ruleids-at-index2 rulespace (get-index searchindex)))
								 (heurruleids-at-index (get-ruleids-at-index2 heurrulespace (get-index searchindex))))
					(declare (type list ruleids-at-index heurruleids-at-index))
					(incf loopcounter)
					;(print (list 'index (get-index searchindex)))

				 (test-heur-rules heurrulevector heurruleids-at-index searchspace searchspace-state searchindex)

					(if ruleids-at-index 
						(let ((test-result (test-rules rulevector ruleids-at-index searchspace searchspace-state searchindex)))
								(if test-result
									(progn (backtrack searchspace-state searchindex test-result) (incf backtrackcounter)) ;backtrack
									(incf (get-index searchindex))))										  ;step forward
			
						;if there are no rules to check - increase the search index

						(when (not (step-forward-without-rules searchindex searchspace-state)) (return nil)))) 
				)
		;(if test-result
		;	(backtrack searchspace-state searchindex test-result)
		;	(incf (get-index searchindex)))



(print (list 'loopcounter loopcounter))
(print (list 'backtrackcounter backtrackcounter))
			;;;Print solution (or no solution)
			(if (= (get-index searchindex) no-variables) (print (extract-solution searchspace searchspace-state no-variables))(print 'NO_SOLUTION))

				;(print searchspace)(print searchspace-state)(print rulevector)(print rulespace)	
				;(print rulevector)
		))


(defun step-forward-without-rules (searchindex searchspace-state)
	(declare (type array searchspace-state))
		;1. Check that the search space still has at least one candidate left
		(if (>= (variablepointer searchspace-state (get-index searchindex))  (no-of-candidates searchspace-state (get-index searchindex))) 
			;2A. If not, backtrack one step
			(progn 	(decf (get-index searchindex)) 
							;2B. Check that backtracking did not step beyond the beginning of the sequence
							(when (< (get-index searchindex) 0) (return-from step-forward-without-rules nil)) ;;;; BACKTRACKED BEYON BEGINNING OF SEQ - NO SOLUTION
							;2C. If OK, update serchspace at the index - remove old candidate
							(incf (variablepointer searchspace-state (get-index searchindex)))
							;2D. Reset domain at the index that the engine backtracked from
							(setf (variablepointer searchspace-state (1+ (get-index searchindex))) 0))
			;3A. If there is a candidate left, step forward
			(progn (incf (get-index searchindex))
						 (return-from step-forward-without-rules T)))
	)

(defun test-rules (rulevector ruleids searchspace searchspace-state searchindex)
;This functions check all rules that apply at one index and call the fail function to backtrack. 
;Nil means no backtracking - the rule passed.
;The pointer in the search-state is updated in this function
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state))

	(when (>= (variablepointer searchspace-state (get-index searchindex))  (no-of-candidates searchspace-state (get-index searchindex))) 
		;;; Fail because the domain at the current index ran out of candidate
				(return-from test-rules '((1)))) ;backtrack one step
			    
				;The check-all-rules-at-index returns information on how to backtrack. Nil means no backtracking - the rules passed

				(the list	(check-all-rules-at-index ruleids rulevector searchspace searchspace-state searchindex))
		)


(defun check-all-rules-at-index (ruleids rulevector searchspace searchspace-state searchindex)
	;The function returns a list with lists of backtracking addresses from each candidate. Nil means that the rules passed.
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state))

	;loop through all candidates at one index
	(loop for candidate-idx from (variablepointer searchspace-state (get-index searchindex)) to (1- (no-of-candidates searchspace-state (get-index searchindex)))
				do (setf (variablepointer searchspace-state (get-index searchindex)) candidate-idx)
					collect (let ((one-candidate-backjumping-list
										(check-all-rules-on-one-candidate ruleids rulevector searchspace searchspace-state searchindex)))
									(if (apply-or one-candidate-backjumping-list)
											one-candidate-backjumping-list
											(return nil) ))))

;(defvar RL)

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
;This functions check all rules that apply at one index and call the fail function to backtrack. 
;Nil means no backtracking - the rule passed.
;The pointer in the search-state is updated in this function
	(declare (type list heurruleids))
	(declare (type array heurrulevector searchspace searchspace-state))

	(when (>= (variablepointer searchspace-state (get-index searchindex))  (no-of-candidates searchspace-state (get-index searchindex))) 
		;;; Fail because the domain at the current index ran out of candidate
				(return-from test-heur-rules nil) ) ;no candidates to check

	(when (not heurruleids) (return-from test-heur-rules nil)) ;no heuristic rules to check
	;no heuristic rules are checked, return 0 as weigth
	;The check-all-rules-at-index returns information on how to backtrack. Nil means no backtracking - the rules passed
	(let ((heuristic-weigths (check-all-heur-rules-at-index heurruleids heurrulevector searchspace searchspace-state searchindex))
				(remaining-domain (get-remaining-candidates searchspace searchspace-state (get-index searchindex))))
		(declare (type list heuristic-weigths remaining-domain))

		;sort remaining candidates at current index according to weights from heuristic rules
		(setf remaining-domain (sort-follow-order remaining-domain heuristic-weigths))

		;replace the remaining candidates at the current index in the domian with the sorted candidates
		;DO NOT TOUCH THE CANDIDATES THAT HAS FAILD - they will have to keep their position for correct backtracking
		(replace-remaining-candidates remaining-domain searchspace searchspace-state (get-index searchindex))

		))



(defun check-all-heur-rules-at-index (heurruleids heurrulevector searchspace searchspace-state searchindex)
	;The function returns a list with weights for all candidates.
	(declare (type list heurruleids))
	(declare (type array heurrulevector searchspace searchspace-state))

	;loop through all candidates at one index
	(loop for candidate-idx from (variablepointer searchspace-state (get-index searchindex)) to (1- (no-of-candidates searchspace-state (get-index searchindex)))
					collect (check-all-heur-rules-on-one-candidate heurruleids heurrulevector searchspace searchspace-state candidate-idx searchindex)
))




(defun check-all-heur-rules-on-one-candidate (heurruleids heurrulevector searchspace searchspace-state candidate-idx searchindex)
	;Return one a list of backjump addresses for rules. Nil indicates that a rule passed.
	(declare (type list heurruleids))
	(declare (type array heurrulevector searchspace searchspace-state))
	(declare (type fixnum candidate-idx))

	(when (not heurruleids) (return-from check-all-heur-rules-on-one-candidate 0)) ;if no heur rules to check, return 0
	;loop through all rules for one candidate
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
										  (the number (apply (get-rulefn heurrulevector heurruleid) i-vars-candidates))) ;calculate weight for rheuristic rule
										  )))


	


(defun check-all-rules-on-one-candidate (ruleids rulevector searchspace searchspace-state searchindex)
	;Return one a list of backjump addresses for rules. Nil indicates that a rule passed.
	(declare (type list ruleids))
	(declare (type array rulevector searchspace searchspace-state))

;	(setf RL (extract-solution searchspace searchspace-state (get-index searchindex)))

	;loop through all rules for one candidate
	(loop for ruleid of-type fixnum in ruleids
				collect (let (i-vars-candidates)
									(declare (type list i-vars-candidates))

									(setf i-vars-candidates (loop for i fixnum in (get-varidx-for-any-rule (get-rule rulevector ruleid) (get-index searchindex))																			
												collect  (get-current-candidate searchspace searchspace-state i)))
									     
									  ;;;;;;;THIS IS WHERE A RULE IS CHECKED
									  (if (apply (get-rulefn rulevector ruleid) i-vars-candidates)
									  	 nil ;nil means rule passed, i.e. no backjump is proposed
								  		(get-backjump rulevector ruleid)))
									  ))


(defmethod get-varidx-for-any-rule ((indexrule indexrule) index)
			  (declare (type fixnum index))
	;index is not used, it is only there to conform the method
	(i-vars indexrule))

(defmethod get-varidx-for-any-rule  ((wildcardrule wildcardrule) index)
		  (declare (type fixnum index))
	(let ((high-*-vars (apply 'max (*-vars wildcardrule) )))
	  (declare (type fixnum high-*-vars))
			(loop for i fixnum in (*-vars wildcardrule) 
						collect (- (+ index i) high-*-vars))))


(defmethod get-varidx-for-any-rule ((RL-rule RL-rule) index)
		  (declare (type fixnum index))
	;index is not used, it is only there to conform the method
	(loop for i from index downto (1-var RL-rule)
		collect i))




;;;;;;;;BACKTRACK 
(defun backtrack (searchspace-state searchindex test-result)
	(declare (type list test-result))
	;(print test-result)
	(let ((departure-index (get-index searchindex)))
		(declare (type fixnum departure-index))

          ;;;;; backjump-mode

	;step back index 
	(setf (get-index searchindex) (- (get-index searchindex) (analyze-backjump-from-test-result test-result)))
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


(defun analyze-backjump-from-test-result (test-result)
	;;;This function takes some decision on how to backjump. This might be something you want to adjust.
	;;;It differentiates if a rule fails alone or in combination with other rulez
	;;;BACKJUMP IF A RULE FAILS ALL CANDIDATES, OTHERWISE STEP BACK 
	(declare (type list test-result))

	(let ((backjump-proposals (remove 0 (loop for resultlist of-type list in   (matrix-trans test-result)
																	collect (if (apply-and resultlist) (car resultlist)
																							(if (remove nil resultlist) (- (car (remove nil resultlist))) 0) ;the if statement was added - CHECK 
																								)))))
		(declare (type list backjump-proposals))
			;(print (list 'backjump-proposals backjump-proposals))
	(if (not backjump-proposals) 1 ; if no proposed backtrack route is given (i.e. rules only include one variable), return standard 1 step for backtracking
				 (abs (apply 'max backjump-proposals)))))


(defun analyze-backjump-from-test-result2 (test-result)
	;;;This function takes some decision on how to backjump. This might be something you want to adjust.
	;;;It differentiates if a rule fails alone or in combination with other rulez
	;;;ALWAYS BACKJUMP WHEN SUGGESTED
	(declare (type list test-result))

	(let ((backjump-proposals (remove 0 (loop for resultlist of-type list in (matrix-trans test-result)
																	collect (if (apply-and resultlist) (car resultlist) 
																							(if (remove nil resultlist) (+ (car (remove nil resultlist))) 0) ;the if statement was added - CHECK 
																								)))))
		(declare (type list backjump-proposals))
			;(print (list 'backjump-proposals backjump-proposals))
	(if (not backjump-proposals) 1 ; if no proposed backtrack route is given (i.e. rules only include one variable), return standard 1 step for backtracking
				 (abs (apply 'max backjump-proposals)))))



;
; (defun analyze-backjump-from-test-result3 (test-result)
; 	;;;This is a dummy. It never backjumps, only steps back one step.
; 	(declare (type list test-result))

; 	(let ((backjump-proposals (remove 0 (loop for resultlist of-type list in (matrix-trans test-result)
; 																	collect (if (apply-and resultlist) 1
; 																							(if (remove nil resultlist) 1 1) ;the if statement was added - CHECK 
; 																								)))))
; 		(declare (type list backjump-proposals))
; 			;(print (list 'backjump-proposals backjump-proposals))
; 	(if (not backjump-proposals) 1 ; if no proposed backtrack route is given (i.e. rules only include one variable), return standard 1 step for backtracking
; 				 (abs (apply 'max backjump-proposals)))))


(defun analyze-backjump-from-test-result3 (test-result)
	;;;This is a dummy. Very clean code
	(declare (type list test-result))

	1)

;;this always jump the longest jump
;(defun analyze-backjump-from-test-result (test-result)
;	;;;This function takes some decision on how to backjump. This might be something you want to adjust.
;	(declare (type list test-result))
;	(abs (apply 'max
;	(loop for resultlist of-type list in (matrix-trans test-result)
;		collect (if (apply-and resultlist) (car resultlist) (+ (car (remove nil resultlist))))))))

;;this always jump the shortest jump
;(defun analyze-backjump-from-test-result (test-result)
;	;;;This function takes some decision on how to backjump. This might be something you want to adjust.
;	(declare (type list test-result))
;	(abs (apply 'min
;	(loop for resultlist of-type list in (matrix-trans test-result)
;		collect (if (apply-and resultlist) (car resultlist) (+ (car (remove nil resultlist))))))))


(defun extract-solution (searchspace searchspace-state no-variables)
	(loop for i from 0 to (1- no-variables)
		collect (get-current-candidate searchspace searchspace-state i)
	))

(defun extract-reverse-solution (searchspace searchspace-state no-variables)
	(loop for i from (1- no-variables) downto 0
		collect (get-current-candidate searchspace searchspace-state i)
	))




; ;;;;;; EXAMPLE ENGINE CALL
; ;(engine_v2 no-variables domain var-type rulelist heurrulelist)
; ;(engine 10 '(1 2 3 4 5) 'integer
; ;	(list (format-wildcardrule #'(lambda (x y) (= x y)) '(0 5)) (format-indexrule #'(lambda (x) (= x 2)) '(9))))
 (defvar *rulecounter* 0)

 (time (engine_v2 24 '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24)  'integer
 	(list 
 		(format-RL-rule #'(lambda (&rest x) (if (cdr x)   (not (member (car x) (cdr x))) t))  0 )
 		;(format-wildcardrule #'(lambda (x) (progn (print x) t)) '(0)) 
 	;(format-RL-rule #'(lambda (&rest x) (progn (print x)  t))  0 )
 	  (format-indexrule #'(lambda (x y) (= (- x y) -3)) '(3 10))
 	;(format-indexrule #'(lambda (y) (progn (incf *rulecounter*) (print *rulecounter*) t)) '(1))
 	;(format-wildcardrule #'(lambda (x y) (>  (- x y) 0)) '(0 2)) 
 	)
 	(list
 		;(format-heuristic-indexrule #'(lambda (x y) (- x y)) '(3 5))
 		;(format-heuristic-wildcardrule #'(lambda (y) (if (= y 6) 0 1)) '(0))
 		;(format-heuristic-wildcardrule #'(lambda (x) (- x))'(0))
 		)))

;;;;;;;;;;;;;;;    CODE ENDS HERE





;;;;;;;;;;;;;;;;

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



;(print (wildcard-wildcard-rule-indexes 4))
;(print (matrix-trans '((2 nil))))
;(print (analyze-backjump-from-test-result '((2 nil))))


;(engine 4 '(1 2 3) 'integer
;	(format-wildcard-wildcard-rule-indexes #'(lambda (x y) (progn (print (list x y))(/= x y))) 4))

;(engine 24 '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24) 'integer
;	(append (format-wildcard-wildcard-rule-indexes #'(lambda (x y) (/= x y)) 12) (list (format-indexrule #'(lambda (x) (= x 1)) '(11))
;		(format-wildcardrule #'(lambda (x y) (> (abs (- x y)) 3)) '(0 1)))))



#|
(defun sort-candidates-by-weights (weights candidate-list)
  "Sort the candidate list according to the list of weights. Each weight should correspond to 
a candidate (the two lists have the weights and the candidates in the same order)."
  (declare (type list weights candidate-list))
  (mapcar 'second
   (sort
    (mapcar 'list weights candidate-list)
    #'> :key #'first)
   ))
|#



	
	;(print (sort-follow-order '(10 2 3 4) '(4 3 2 1)))
