(in-package :pmc)

;; ===============================================
;; ===============================================

;;; PWConstraints by Mikael Laurson (c), 1995

;; ===============================================
;; ===============================================
;; ===============================================

;; ===============================================
;;  compile rules to graph
;; ===============================================


(defun arithm-ser (a b &optional (step 1))
  (do ((i a (+ i step))
       (result nil))
      ((> i b) (nreverse result))
    (push i result)))

(defun posn-match (list positions)
  (cond
    ((numberp positions) (nth positions list))
    ((listp positions)
     (loop for pos in positions
	  collect (posn-match list pos)))))

;;; //////////////////////////////


(defun rule-head (rule)
  (let (head)
    (loop while (atom (car rule)) do (push (pop rule) head))
    (nreverse head)))

(defun rule-body (rule)
  (if (stringp (car (last rule)))
      (second (car (last rule 2)))
      (second (car (last rule)))))
;; (rule-body '(i1 i2  (?if (member (list i1 i2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;; (rule-body '(i1 i2  (?if (member (list i1 i2) '((Cordovans dress-grey) (sneakers demins))))))

(defun rule-doc (rule)
  (if (stringp (car (last rule)))
      (car (last rule))
      ""))

;; (rule-doc '(i1 i2  (?if (member (list i1 i2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;; (rule-doc '(i1 i2  (?if (member (list i1 i2) '((Cordovans dress-grey) (sneakers demins))))))

;; ====================================================
;;  index rules
(defun index-rule? (rule-head)
  (unless (numberp (car rule-head))
    (member #\I rule-head :key #'(lambda (ind) (first (coerce  (string ind) 'list))))))
;; (index-rule? '(i1 i2 i3))
;; (index-rule? '(* ?1 ?2))

(defun variable-rule? (rule-head)
  (unless (numberp (car rule-head))
    (member #\? rule-head :key #'(lambda (ind) (first (coerce  (string ind) 'list))))))
;; (variable-rule? '(i1 i2 i3))
;; (variable-rule? '(* ?1 ?2))

(defun get-indexes (index-rule-head)
  (mapcar #'(lambda (ind)
	      (1- (read-from-string (coerce (rest (coerce  (string ind) 'list)) 'string))))
	  index-rule-head))
;; (get-indexes '(i1 i2 i3 i9 i89))

;;  `((0 1 (,#'(lambda (a b) (and (setp (list a b))(member (sc-name (list a b)) 2s))))))
(defun mk-index-rule-arcs (rule)
  (let* ((rule-head (rule-head rule))
	 (indexes (get-indexes rule-head))
	 (fn (compile () `(lambda ,rule-head ,(rule-doc rule) ,(rule-body rule)))))
    `(,.indexes ,fn)))

;; (mk-index-rule-arcs  '(i1 i2  (?if (member (list i1 i2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;; (mk-index-rule-arcs  '(i1 i2 i14 i19  (?if (member (list i1 i2 i14 i19) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;; (mk-index-rule-arcs  '(i1 i2 i6  (?if (member (list i1 i2 i6) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))

;; ====================================================
;;  wildcard rules
;; ====================================================
(defun 1st-*-rule? (rule-head) (eq '* (first rule-head)))
;; (1st-*-rule? '(i1 i2 i3))
;; (1st-*-rule? '(* ?1 ?2))

(defun middle-*-rule? (rule-head) (find '* (butlast (rest rule-head))))	; find wild card, but not in car nor as the last
;; (middle-*-rule? '(?1 ?2 * ?3 ?4))

(defun last-*-rule? (rule-head) (eq '* (car (last rule-head))))
;; (last-*-rule? '(?1 ?2 ?7 *))

;; ===== anonymous variables ==========================
;;  remove all ?s from index-list
;;  remove all ?s from lambda + body
;; ====================================================
(defun remove-?-from-inds (rule-head inds)
  (let (res)
    (loop while (and rule-head inds)
	 do (progn
	      (unless (eq '? (car rule-head))
		(push (car inds) res))
	      (pop rule-head) (pop inds)))
    (nreverse res)))

;; (remove-?-from-inds '(?1 ?2 ? ? ?4 ?5 ?) '(0 1 2 3 4 5 6))
;; ====================================================
;; ====================================================

(defun mk-wildcard-rule-arcs (no-of-variables rule)
  (let* ((rule-head- (remove '* (rule-head rule)))
	 (fn (compile () `(lambda  ,(remove '? rule-head-) ,(rule-doc rule) ,(rule-body rule))))
	 res)
    (loop for i from 0 to (- no-of-variables (length rule-head-))
	 do (push `(,@(remove-?-from-inds rule-head- (arithm-ser i 1 (+ i (1- (length rule-head-)))))
		      ,fn) res))
    (nreverse res)))

;; (mk-wildcard-rule-arcs 4 '(* ?1 ?2  (?if (member (list ?1 ?2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;; (mk-wildcard-rule-arcs 6 '(* ?1 ?2 ?3 (?if (member (list ?1 ?2 ?3) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))

;; (mk-wildcard-rule-arcs 12 '(* ?1 ? ? ?2  (?if (member (list ?1 ?2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;; (mk-wildcard-rule-arcs 12 '(* ?1 ? ?2 ?  (?if (member (list ?1 ?2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))


(defun count-vars-before-*  (rule-head &optional (cnt 0))
  (if (1st-*-rule? rule-head)
      cnt
      (count-vars-before-* (rest rule-head) (1+ cnt))))

;; (count-vars-before-* '(?1 ?2 ?7 ?8 * ?3))

(defun count-vars-after-*  (rule-head)
  (1- (length (member '* rule-head))))

;; (count-vars-after-* '(?1 ?2 ?7 ?8 * ?3 ?4))

(defun mk-wildcard-rule-arcs2 (no-of-variables rule)
  (let* ((rule-head (rule-head rule))
	 (indexes-before-* (arithm-ser 0 1 (1- (count-vars-before-* rule-head))))
	 (indexes-before-len (length indexes-before-*))
	 (indexes-after-len (count-vars-after-* rule-head))
	 (rule-head-* (remove '* (rule-head rule)))
	 (rule-head-after-* (cdr (member '* (rule-head rule))))
	 (fn  (compile () `(lambda ,(remove '? rule-head-*) ,(rule-doc rule) ,(rule-body rule))))
	 res)
    (loop for i from indexes-before-len to (- no-of-variables indexes-after-len)
	 do (push `(,@(remove-?-from-inds rule-head-* indexes-before-*)
		      ,@(remove-?-from-inds rule-head-after-* (arithm-ser i 1 (+ i (1- indexes-after-len))))
		      ,fn) res))
    (nreverse res)))

;; (mk-wildcard-rule-arcs2 6 '(?1 ?2 * ?3 (?if (member (list ?1 ?2 ?3) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;; (mk-wildcard-rule-arcs2 18 '(?1 * ?2 ?3 ?4 (?if (member (list ?1 ?2 ?3 ?4) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;; (mk-wildcard-rule-arcs2 12 '(?1 ? ?2 * ? ?3 (?if (member (list ?1 ?2 ?3) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;; (mk-wildcard-rule-arcs2 12 '(?1 ? ?2 ? * ? ?3 ? ?4 (?if (member (list ?1 ?2 ?3 ?4) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))

(defun mk-wildcard-rule-arcs3 (rule)
  (let* ((rule-head- (remove '* (rule-head rule)))
	 (indexes-len (length rule-head-))
	 (fn (compile () `(lambda ,(remove '? rule-head-) ,(rule-doc rule) ,(rule-body rule)))))
    (list `(,@(remove-?-from-inds rule-head- (arithm-ser 0 1 (1- indexes-len)))
	      ,fn))))

;; (mk-wildcard-rule-arcs3 '(?1 ?2 ?3 (?if (member (list ?1 ?2 ?3) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;; (mk-wildcard-rule-arcs3 '(?1 ?2 ?3 ?4 * (?if (member (list ?1 ?2 ?3 ?4) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))

;; (mk-wildcard-rule-arcs3  '(? ?1 ? ?3 ? ?5 (?if (member (list ?1  ?3 ?5) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))

;; ====================================================
(defun collect-index-rule-arcs (rules)
  (let (res)
    (dolist (rule rules)
      (when (index-rule? (rule-head rule))
	(push (mk-index-rule-arcs  rule) res)))
    (nreverse res)))

(defun collect-wildcard-rule-arcs (no-of-variables rules)
  (let (res)
    (dolist (rule rules)
      (cond ((1st-*-rule? (rule-head rule))
	     (push (mk-wildcard-rule-arcs no-of-variables rule) res))
	    ((middle-*-rule? (rule-head rule))
	     (push (mk-wildcard-rule-arcs2 no-of-variables rule) res))
	    ((or (last-*-rule? (rule-head rule)) (variable-rule? (rule-head rule)))
	     (push (mk-wildcard-rule-arcs3 rule) res))))
    (apply #'append (nreverse res))))

(defun collect-fwd-rule-arcs (rules) ;; ready-made rules only for graph
  (let (res)
    (dolist (rule rules)
      (when (not (or (member '* (rule-head rule))
		     (variable-rule? (rule-head rule))
		     (index-rule? (rule-head rule))))
	(push rule res)))
    (nreverse res)))

;; (index-rule? (rule-head '(0 1 '#(lambda (?1 ?2) (/= (mod ?1 12) (mod ?2 12))))))
;; (1st-*-rule? (rule-head '(0 1 '#(lambda (?1 ?2) (/= (mod ?1 12) (mod ?2 12))))))

(defun convert-rules-to-arcs (s-variables rules)
  (let ((arc-rules (append (collect-index-rule-arcs rules)
			   (collect-wildcard-rule-arcs (length s-variables) rules)
			   (collect-fwd-rule-arcs rules)))
	fn indexes rev-indexes curr-item)
    ;(print arc-rules)
    (dolist (arc-rule arc-rules)
      (setq fn (eval (first (last arc-rule))))
      (setq indexes (butlast arc-rule))
      (setq rev-indexes (reverse indexes))
      (let ((arc (mk-arc  fn  (posn-match s-variables (butlast indexes 2)) ; except two last indexes
			  (nth (first rev-indexes) s-variables))))
	(setq curr-item (nth (second rev-indexes) s-variables))
	(setf (arcs curr-item) (push arc (arcs curr-item)))))))

;; ====================================================
;; ====================================================
;;   special cases for rules like
;;  (* ?1 (?if (not (member (mod ?1 12) (rest rl) :key #'(lambda (n) (mod n 12))))) "no pc dups")

(defun complete-bin-conn-graph (no-of-s-variables fn)
  (let (res)
    (loop for i from 0 to (- no-of-s-variables 2)
	 do (loop for j from (+ i 1) to (1- no-of-s-variables)
		 do (push  `(,i ,j ',fn) res)))
    (nreverse res)))
;; (complete-bin-conn-graph 12 #'(lambda (?1 ?2) (/= (mod ?1 12) (mod ?2 12))))

(defun complete-tri-conn-graph (no-of-s-variables fn)
  (let (res)
    (loop for i from 0 to (- no-of-s-variables 2)
	 do (loop for j from (+ i 1) to (1- no-of-s-variables)
		 do (loop for z from (+ j 1) to (1- no-of-s-variables)
			 do (push  `(,i ,j ,z ',fn) res))))
    (nreverse res)))

;; (complete-tri-conn-graph 4 #'(lambda (?1 ?2 ?3) (/= (mod ?1 12) (mod ?2 12) (mod ?3 12))))

(defun mk-adj-pair-index-rules (len fn)
  (let (res ind-pair)
    (loop for start from 1 to (- len 2)
	 do (progn
	      (setq ind-pair (list start (1+ start)))
	      (loop for i from 0 to (- (first ind-pair) 2)
		   do (push `(,@(append (list i (+ i 1)) ind-pair) ',fn) res))))
    (nreverse res)))
;; (mk-adj-pair-index-rules 12 #'(lambda (?1 ?2 ?3 ?4) (/= (mod (- ?2 ?1) 12) (mod (- ?4 ?3) 12))))


;; ===============================================
;;            score
;; ===============================================
#|
;; (defun convert-score-rules-to-arcs (rules)
;;   (time
;;    (dolist (staff-items (read-key *part-collection* :part-s-variables-ls-ls))
;;      (let ((arc-rules (append (collect-index-rule-arcs rules)
;;                            (collect-wildcard-rule-arcs (length staff-items) rules)
;;                            (collect-fwd-rule-arcs rules)))
;;         fn indexes rev-indexes curr-item)
;;       ;(print arc-rules)
;;        (dolist (arc-rule arc-rules)
;;       (setq fn (eval (first (last arc-rule))))
;;       (setq indexes (butlast arc-rule))
;;       (setq rev-indexes (reverse indexes))
;;       (let ((arc (mk-arc  fn  (posn-match staff-items indexes) ; prev-s-variables has also the current!!
;;                           (nth (first rev-indexes) staff-items))))
;;         (setq curr-item (nth (second rev-indexes) staff-items))
;;         (setf (arcs curr-item) (push arc (arcs curr-item)))))))))
|#

(defun convert-score-rules-to-arcs (rules)
  (let* ((staff-items-ls (read-key *part-collection* :part-s-variables-ls-ls))
	 (max-len (apply #'max (mapcar #'length staff-items-ls)))
	 (arc-rules (append (collect-index-rule-arcs rules)
			    (collect-wildcard-rule-arcs max-len rules)
			    (collect-fwd-rule-arcs rules)))
	 fn indexes rev-indexes curr-item curr-len)
    (dolist (staff-items staff-items-ls)
      ;(print arc-rules)
      (setq curr-len (length staff-items))
      (dolist (arc-rule arc-rules)
	(setq fn (eval (first (last arc-rule))))
	(setq indexes (butlast arc-rule))
	(when (>= (1- curr-len) (car (last indexes)))
	  (setq rev-indexes (reverse indexes))
	  (let ((arc (mk-arc  fn  (posn-match staff-items indexes) ; prev-s-variables has also the current!!
			      (nth (first rev-indexes) staff-items))))
	    (setq curr-item (nth (second rev-indexes) staff-items))
	    (setf (arcs curr-item) (push arc (arcs curr-item)))))))))


;; ===============================================
(defun mk-imitation-graph (ref-staff start-index end-index  imit-staff  imit-start-index imit-int)
  (let* ((staff-items (read-key *part-collection* :part-s-variables-ls-ls))
	 (ref-items (nth (1- ref-staff) staff-items))
	 (imit-items (nth (1- imit-staff) staff-items))
	 (fn (compile ()
		      `(lambda (sv1 sv2)
			 ,(if (listp imit-int)
			      `(member (- (m sv2) (m sv1)) ',imit-int)
			      `(= (- (m sv2) (m sv1)) ,imit-int)))))
	 (imit-index-diff (- imit-start-index start-index))
	 ref-item imit-item)
    (loop for ind from (1- start-index) to (1- end-index)
	 do (progn (setq ref-item (nth ind ref-items))
		   (setq imit-item (nth (+ imit-index-diff ind) imit-items))
		   (let ((arc (mk-arc  fn   (list ref-item imit-item) ; prev-s-variables has also the current!!
				       imit-item)))
		     (setf (arcs ref-item) (push arc (arcs ref-item)))))))
  nil)

;; (mk-imitation-graph 1 1 4  2 1 -12)
;; ==========================================================
