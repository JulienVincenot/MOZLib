(defpackage omcs
  (:use :common-lisp :pw :iterate :sb-ext)) ; 

(in-package cl)

(defsetf nthcdr (n lst) (new-val) 
   `(setf (cdr (nthcdr (1- ,n) ,lst)) ,new-val))

(in-package omcs)





;;;;;;;;;;;;
;;;Re-defined OM functions
;;;;;;;;;;;;;

;(om::arithm-ser i 1 (+ i (1- (length rule-head-))))

(defun arithm-ser (begin end step)

  (if (plusp step)
    (loop for i from begin to end by step
          for counter from 1 to 100000
          collect i)
    (loop for i from begin downto end by (abs step)
          for counter from 1 to 100000
          collect i)))

;(om::posn-match s-variables (butlast indexes 2))

(defmethod posn-match ((list list) (positions list))
   (do-posn-match list (expand-lst positions)))


(defmethod posn-match ((list list) (positions integer))
  (nth positions list ))

(defmethod do-posn-match ((self list) (positions list))
  (cond 
   ((numberp positions) (nth positions self))
   ((listp positions)
    (loop for pos in positions
          collect (do-posn-match self pos)))))

(defmethod do-posn-match ((self list) (positions number))
   (nth positions self))



;(om::list! setnames)
(defun list!   (thing) (if (listp thing) thing (list thing)))

;(om::flat +inds)

(defmethod flat-one ((list list))
  (loop for item in list
        append (list! item)))

(defmethod n-flat-one ((list list) (level integer))
  (let ((rep list))
    (loop for i from 1 to level do
          (setf rep (flat-one rep)))
    rep))


(defmethod flat ((lst list) &optional (level nil)) 
  
  (cond
   ((null level) (nreverse (rev-flat lst)))
   ((= level 0) lst)
   ((and (integerp level) (plusp level))
    (n-flat-one lst level))
   (t lst)))



;(om::om+ start l)

(defmethod om+ ((arg1 number) (arg2 number))  
  (+ arg1 arg2))


(defmethod om+ ((arg1 number) (arg2 list))  
  (mapcar #'(lambda (input)
              (om+ arg1 input)) arg2))

(defmethod om+ ((arg1 list) (arg2 number))   
  (mapcar #'(lambda (input)
              (om+  input arg2)) arg1))

(defmethod om+ ((arg1 list) (arg2 list))
  (mapcar #'(lambda (input1 input2)
              (om+ input1 input2)) arg1 arg2))


;(om::x->dx l1)
(defmethod x->dx ((self list))

  (loop for x in self
        for y in (rest self)
        collect (- y x)) )
;om::permut-random

(defmethod npermut-random ((list list))
   (let ((result ()) 
           (length (length list)) 
           (list (copy-list list)))
    (nconc list list)
    (loop for i from 0 to length do
              (setq list (nthcdr (om-random-value length) list)
            result (rplacd (prog1 (cdr list) (rplacd list (cddr list))) result)
            length (1- length)))
    result))


(defmethod permut-random ((list list))

  (if (or (null list) (= (length list) 1)) list
      (npermut-random (copy-list list))))

(defun om-random-value (num)
  (if (= num 0) 0
  (if (< num 0)
    (- (random (- num)))
    (random num))))






;===============================================
;     global variables
;===============================================
(defparameter *constraint-diagnostics* nil)
(defparameter *current-SE* ())
(defparameter *staff-collection* ())
(defparameter *part-collection* ())
(defparameter *measure-lines* ())
(defparameter *search-order* :from-bass)
;(defparameter pw::*current-score-PMC-RTM-window* ())

;===============================================



 
;(import '(?if l rl len) :omcs)

;===============================================
;===============================================

;;; PWConstraints by Mikael Laurson (c), 1995

;===============================================
;===============================================

;===============================================

 
;========================================================
;constraint-diagnostics
;========================================================

;by default diagnostics is nil
;(setf *constraint-diagnostics* t)
;(setf *constraint-diagnostics* nil)

(defun read-diagnostics (fns)
  (when *constraint-diagnostics* 
    (let ((index 0) 
          res)
      (dolist (fn fns)
        (when (> (read-key fn :stats) 0)
          (push (list (incf index) 
                      (documentation fn 'function) (read-key fn :stats))
                res)))
      (mapc #'print (sort res #'> :key #'third))))
  (values))

(defun write-diagnostics (fn)
  (when *constraint-diagnostics* 
    (let* ((stats (read-key fn :stats))
           (cnt (1+ stats))
           (print-cnt 50))
      ;(print (list (documentation fn 'function) cnt))
      (write-key fn :stats cnt)
      (when (= (mod cnt print-cnt) 0) 
        (print (list (documentation fn 'function) cnt))))))

(defun start-diagnostics (fns)
  (when *constraint-diagnostics*
    (dolist (fn fns)
      (write-key fn :stats 0))))



;===============================================
 


(defun make-ls-ls (list) 
 (if list
  (if (atom (car list)) (list list) list)
  ()))

(defun make-length-ls-ls (lst)
  (let ((sort-ls (sort (copy-list lst) #'< :Key #'length))
        temp res)
  (push (pop sort-ls) temp)
  (loop while sort-ls
    do (loop while (= (length (car sort-ls)) (length (car temp)))
      do (push (pop sort-ls) temp))
    (push (nreverse temp) res)
    (setq temp (list (pop sort-ls))))
  (when (car temp) (push (nreverse temp) res))
  (nreverse res)))     

;(make-length-ls-ls '((1 2 3) (4 5 6 7 8) (4 5 6 7 8) (1 2 3) (4 5 6 7)))

;===============================================
; prop-item
;===============================================
(defgeneric  write-key (place key data) (:documentation "write data to place with key"))
(defgeneric  read-key (place key) (:documentation "read data from place with key"))

(defclass key-item ()
  ((prop-list :initform (gensym) :initarg :prop-list :accessor prop-list)))

(defmethod write-key ((self key-item) key data)
  (setf (get (prop-list self) key) data))

(defmethod read-key ((self key-item) key)
  (get (prop-list self) key))

;  for functions 
(defmethod write-key ((self symbol) key data)
  (setf (get self key) data))

(defmethod read-key ((self symbol) key)
  (get self key))

;  for hash-tables 
(defmethod write-key ((self hash-table) key data)
  (setf (gethash key self) data))

(defmethod read-key ((self hash-table) key)
  (gethash key self))

(defun write-defaults (fn &rest key-data-pairs)
  (let (key data)
    (loop while key-data-pairs
          do (progn (setq key (pop key-data-pairs)) 
                    (setq data (pop key-data-pairs)) 
                    (write-key (function-name fn) key data)))
    fn))

;=================================================
; for PW-chord
;=================================================
;(defmethod make-chord-hash ((self pw::C-chord))
;  (setf (pw::extra self)(make-hash-table :test #'equal))) ;??? to deal with strings

;(defmethod write-key ((self pw::C-chord) key data)
;  (unless (pw::extra self) (make-chord-hash self))
;  (write-key (pw::extra self) key data))

;(defmethod read-key ((self pw::C-chord) key)
;  (read-key (pw::extra self) key))

;(defmethod clear-keys ((self pw::C-chord))
;  (clrhash  (pw::extra self)))

; and PW-note
;(defmethod make-note-hash ((self pw::C-note))
;  (setf (pw::extra self)(make-hash-table :test #'equal))) ;??? to deal with strings

;(defmethod write-key ((self pw::C-note) key data)
;  (unless (pw::extra self) (make-note-hash self))
;  (write-key (pw::extra self) key data))

;(defmethod read-key ((self pw::C-note) key)
;  (read-key (pw::extra self) key))

;(defmethod clear-keys ((self pw::C-note))
;  (clrhash  (pw::extra self)))

;===============================================
; linked-list
;===============================================

(defclass linked-list-item ()
  ((prev-item :initform nil :accessor prev-item)
   (next-item :initform nil :accessor next-item)))

(defmethod n-prev-items ((self linked-list-item) count)
  (let (res (prev-item self) (index 0))
    (loop while (and (setq prev-item (prev-item prev-item)) (> count index))
          do (progn (push prev-item res)
                    (incf index)))
    (nreverse res)))

(defmethod n-next-items ((self linked-list-item) count)
  (let (res (next-item self) (index 0))
    (loop while (and (setq next-item (next-item next-item)) (> count index))
          do (progn (push next-item res)
                    (incf index)))
    (nreverse res)))

(defmethod all-prev-items ((self linked-list-item))
  (let (res (prev-item self))
    (loop while (setq prev-item (prev-item prev-item))
          do (push prev-item res))
    (nreverse res)))

(defmethod all-next-items ((self linked-list-item))
  (let (res (next-item self))
    (loop while (setq next-item (next-item next-item))
          do (push next-item res))
    (nreverse res)))

(defmethod all-prev-items+self-rev ((self linked-list-item))
  (let ((res (list self)) (prev-item self))
    (loop while (setq prev-item (prev-item prev-item))
          do (push prev-item res))
    res))

;=================================================
(defun mk-linked-item () 
  (make-instance 'linked-list-item))

(defun link-list (l)
  (let (prev item)
    (loop while (setq item (pop l))
          do (progn (setf (prev-item item) prev)
                    (setf (next-item item) (car l))
                    (setq prev item)))))

#|
(defclass  test-item (linked-list-item)
  ((data :initarg :data :accessor data)))

(defparameter w nil)
(link-list (setf w (let (res) (dotimes (i 30) (push (make-instance 'test-item :data i) res)) (nreverse res))))

(mapcar #'data (n-next-items (nth 10 w) 10))
(mapcar #'data (n-prev-items (nth 10 w) 10))
(mapcar #'data (all-next-items (nth 10 w)))
(mapcar #'data (all-prev-items (nth 10 w)))
|#



;===============================================

;===============================================
; compile rules to graph
;===============================================
(defun rule-head (rule)
  (let (head)
    (loop while (atom (car rule)) do (push (pop rule) head))
    (nreverse head)))
 
(defun rule-body (rule)
  (if (stringp (car (last rule)))
    (second (car (last rule 2)))
    (second (car (last rule)))))
;(rule-body '(i1 i2  (?if (member (list i1 i2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;(rule-body '(i1 i2  (?if (member (list i1 i2) '((Cordovans dress-grey) (sneakers demins))))))

(defun rule-doc (rule)
  (if (stringp (car (last rule)))
    (car (last rule))
    ""))

;(rule-doc '(i1 i2  (?if (member (list i1 i2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;(rule-doc '(i1 i2  (?if (member (list i1 i2) '((Cordovans dress-grey) (sneakers demins))))))

;====================================================
; index rules
(defun index-rule? (rule-head)
  (unless (numberp (car rule-head))
    (member #\I rule-head :key #'(lambda (ind) (first (coerce  (string ind) 'list))))))
;(index-rule? '(i1 i2 i3)) 
;(index-rule? '(* ?1 ?2)) 

(defun variable-rule? (rule-head)
  (unless (numberp (car rule-head))
    (member #\? rule-head :key #'(lambda (ind) (first (coerce  (string ind) 'list))))))
;(variable-rule? '(i1 i2 i3)) 
;(variable-rule? '(* ?1 ?2)) 

(defun get-indexes (index-rule-head)
  (mapcar #'(lambda (ind) 
     (1- (read-from-string (coerce (rest (coerce  (string ind) 'list)) 'string)))) 
     index-rule-head))
;(get-indexes '(i1 i2 i3 i9 i89))

; `((0 1 (,#'(lambda (a b) (and (setp (list a b))(member (sc-name (list a b)) 2s))))))
(defun mk-index-rule-arcs (rule)
  (let* ((rule-head (rule-head rule))
         (indexes (get-indexes rule-head))
         (fn (compile () `(lambda ,rule-head ,(rule-doc rule) ,(rule-body rule)))))
    `(,.indexes ,fn))) 

;(mk-index-rule-arcs  '(i1 i2  (?if (member (list i1 i2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;(mk-index-rule-arcs  '(i1 i2 i14 i19  (?if (member (list i1 i2 i14 i19) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;(mk-index-rule-arcs  '(i1 i2 i6  (?if (member (list i1 i2 i6) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))

;====================================================
; wildcard rules
;====================================================
(defun 1st-*-rule? (rule-head) (eq '* (first rule-head)))
;(1st-*-rule? '(i1 i2 i3)) 
;(1st-*-rule? '(* ?1 ?2)) 

(defun middle-*-rule? (rule-head) (find '* (butlast (rest rule-head)))) ; find wild card, but not in car nor as the last
;(middle-*-rule? '(?1 ?2 * ?3 ?4)) 

(defun last-*-rule? (rule-head) (eq '* (car (last rule-head))))
;(last-*-rule? '(?1 ?2 ?7 *)) 

;===== anonymous variables ==========================
; remove all ?s from index-list
; remove all ?s from lambda + body
;====================================================
(defun remove-?-from-inds (rule-head inds) 
  (let (res)
    (loop while (and rule-head inds)
          do (progn 
               (unless (eq '? (car rule-head))
                 (push (car inds) res))
               (pop rule-head) (pop inds)))
    (nreverse res)))

;(remove-?-from-inds '(?1 ?2 ? ? ?4 ?5 ?) '(0 1 2 3 4 5 6))
;====================================================
;====================================================

(defun mk-wildcard-rule-arcs (no-of-variables rule)
  (let* ((rule-head- (remove '* (rule-head rule)))
         (fn (compile () `(lambda  ,(remove '? rule-head-) ,(rule-doc rule) ,(rule-body rule))))
         res)
    (loop for i from 0 to (- no-of-variables (length rule-head-))
          do (push `(,@(remove-?-from-inds rule-head- (arithm-ser i 1 (+ i (1- (length rule-head-))))) 
                     ,fn) res))
   (nreverse res)))

;(mk-wildcard-rule-arcs 4 '(* ?1 ?2  (?if (member (list ?1 ?2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;(mk-wildcard-rule-arcs 6 '(* ?1 ?2 ?3 (?if (member (list ?1 ?2 ?3) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))

;(mk-wildcard-rule-arcs 12 '(* ?1 ? ? ?2  (?if (member (list ?1 ?2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;(mk-wildcard-rule-arcs 12 '(* ?1 ? ?2 ?  (?if (member (list ?1 ?2) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))


(defun count-vars-before-*  (rule-head &optional (cnt 0))
  (if (1st-*-rule? rule-head)
     cnt
     (count-vars-before-* (rest rule-head) (1+ cnt))))

;(count-vars-before-* '(?1 ?2 ?7 ?8 * ?3))

(defun count-vars-after-*  (rule-head)
  (1- (length (member '* rule-head))))

;(count-vars-after-* '(?1 ?2 ?7 ?8 * ?3 ?4))

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

;(mk-wildcard-rule-arcs2 6 '(?1 ?2 * ?3 (?if (member (list ?1 ?2 ?3) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;(mk-wildcard-rule-arcs2 18 '(?1 * ?2 ?3 ?4 (?if (member (list ?1 ?2 ?3 ?4) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;(mk-wildcard-rule-arcs2 12 '(?1 ? ?2 * ? ?3 (?if (member (list ?1 ?2 ?3) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;(mk-wildcard-rule-arcs2 12 '(?1 ? ?2 ? * ? ?3 ? ?4 (?if (member (list ?1 ?2 ?3 ?4) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))

(defun mk-wildcard-rule-arcs3 (rule)
  (let* ((rule-head- (remove '* (rule-head rule)))
         (indexes-len (length rule-head-))
         (fn (compile () `(lambda ,(remove '? rule-head-) ,(rule-doc rule) ,(rule-body rule)))))
    (list `(,@(remove-?-from-inds rule-head- (arithm-ser 0 1 (1- indexes-len)))
             ,fn))))

;(mk-wildcard-rule-arcs3 '(?1 ?2 ?3 (?if (member (list ?1 ?2 ?3) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))
;(mk-wildcard-rule-arcs3 '(?1 ?2 ?3 ?4 * (?if (member (list ?1 ?2 ?3 ?4) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))

;(mk-wildcard-rule-arcs3  '(? ?1 ? ?3 ? ?5 (?if (member (list ?1  ?3 ?5) '((Cordovans dress-grey) (sneakers demins)))) "shoes-slacks"))

;====================================================
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

;(index-rule? (rule-head '(0 1 '#(lambda (?1 ?2) (/= (mod ?1 12) (mod ?2 12))))))
;(1st-*-rule? (rule-head '(0 1 '#(lambda (?1 ?2) (/= (mod ?1 12) (mod ?2 12))))))

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

;====================================================
;====================================================
;  special cases for rules like
; (* ?1 (?if (not (member (mod ?1 12) (rest rl) :key #'(lambda (n) (mod n 12))))) "no pc dups")

(defun complete-bin-conn-graph (no-of-s-variables fn)
  (let (res)
    (loop for i from 0 to (- no-of-s-variables 2)
          do (loop for j from (+ i 1) to (1- no-of-s-variables)
                   do (push  `(,i ,j ',fn) res)))
    (nreverse res)))
;(complete-bin-conn-graph 12 #'(lambda (?1 ?2) (/= (mod ?1 12) (mod ?2 12)))) 

(defun complete-tri-conn-graph (no-of-s-variables fn)
  (let (res)
    (loop for i from 0 to (- no-of-s-variables 2)
          do (loop for j from (+ i 1) to (1- no-of-s-variables)
                   do (loop for z from (+ j 1) to (1- no-of-s-variables)
                            do (push  `(,i ,j ,z ',fn) res))))
    (nreverse res)))

;(complete-tri-conn-graph 4 #'(lambda (?1 ?2 ?3) (/= (mod ?1 12) (mod ?2 12) (mod ?3 12)))) 

(defun mk-adj-pair-index-rules (len fn)
  (let (res ind-pair)
    (loop for start from 1 to (- len 2)
          do (progn
               (setq ind-pair (list start (1+ start)))  
               (loop for i from 0 to (- (first ind-pair) 2)
                     do (push `(,@(append (list i (+ i 1)) ind-pair) ',fn) res))))
    (nreverse res)))
;(mk-adj-pair-index-rules 12 #'(lambda (?1 ?2 ?3 ?4) (/= (mod (- ?2 ?1) 12) (mod (- ?4 ?3) 12))))


;===============================================
;           score
;===============================================
#|
(defun convert-score-rules-to-arcs (rules)
 (time
  (dolist (staff-items (read-key *part-collection* :part-s-variables-ls-ls)) 
    (let ((arc-rules (append (collect-index-rule-arcs rules) 
                             (collect-wildcard-rule-arcs (length staff-items) rules)
                             (collect-fwd-rule-arcs rules)))
          fn indexes rev-indexes curr-item)
      ;(print arc-rules)
      (dolist (arc-rule arc-rules)
        (setq fn (eval (first (last arc-rule))))
        (setq indexes (butlast arc-rule))
        (setq rev-indexes (reverse indexes))
        (let ((arc (mk-arc  fn  (om::posn-match staff-items indexes) ; prev-s-variables has also the current!! 
                            (nth (first rev-indexes) staff-items))))
          (setq curr-item (nth (second rev-indexes) staff-items))
          (setf (arcs curr-item) (push arc (arcs curr-item)))))))))
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


;===============================================
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

;(mk-imitation-graph 1 1 4  2 1 -12)
;==========================================================



;;;;;;;





;added from PatchWork by Orjan
(defun cirlist (elem)
  "makes a circular list out of elem"
  (setq elem (list elem))
  (rplacd elem elem))
 
;===============================================
;  User search-engine functions
;===============================================
(defun engine () 
  "returns the current search-engine" *current-SE*)

(defun cur-index () 
  "returns the current search-index (counted from 1)" 
  (1+ (variable-pos *current-SE*)))

(defun cur-slen () 
  "returns the number of search-variables of the current search-engine" 
  (length (search-variables *current-SE*)))



;===============================================
;  User search-variable macros and functions
;===============================================
(defmacro m (s-variable) 
 "returns the value (m for midi) of s-variable"
  `(value ,s-variable))

(defmacro v (s-variable) 
 "returns the value of s-variable"
  `(value ,s-variable))

(defmacro nindex (s-variable) 
 "returns the note index (given by score-sort) of s-variable 
 (starting from 0)"
  `(read-key ,s-variable :note-index)) 
; old
(defmacro  index (s-variable) 
 "returns the note index (given by score-sort) of s-variable 
 (starting from 0)"
  `(read-key ,s-variable :note-index)) 

;===============================================
;  General Lisp functions
;===============================================
(defun setp (list  &key (test #'eq) (key #'identity))
"returns true if list is a set"
   (= (length (remove-duplicates list :test test :key key)) 
      (length list)))

;(setp '(24 35 58 60) :key #'(lambda (n) (mod n 12)))

(defun window-list (list win)
"returns a subsequence of list starting from the first item.
The length of the subsequence is given by win. If win is :all
or if win is greater than the length of list then the complete
list is returned,  "
  (if (eq win :all)
    list
    (subseq list 0 (min win (length list)))))

(defun inds->vals (inds ls)
"translates a list of indices (inds) to actual values found in ls"
  (mapcar #'(lambda (ind) (nth ind ls)) inds))

(defun eq-ints? (ints &rest midis) 
"returns true if midis (a list of midi-values) forms
the interval succession given by ints,
where ints can be an interval or a list of intervals or a list of lists of intervals,
midis can be either single midi-values or a list of midi-values"
   (when (atom ints) (setq ints (list ints))) 
   (if (atom (car ints)) 
       (equal ints (mapcar #'- (cdr midis) midis))
       (member (mapcar #'- (cdr midis) midis) ints :test #'equal)))

;(eq-ints? '(4 3) 60 64 67)
;(eq-ints? '((3 4) (4 3)) 60 64 67)

; from Norvig
(defun find-all (item sequence &rest keyword-args
                 &key (test #'eql) test-not &allow-other-keys)
  "find all those elements of sequence that match item,
  according to the keywords.  Doesn't alter sequence."
  (if test-not
      (apply #'remove item sequence 
             :test-not (complement test-not) keyword-args)
      (apply #'remove item sequence
             :test (complement test) keyword-args)))

;(find-all 6 '(6 5 4 7 6 -6) :key #'(lambda (a) (abs a)))

(defun find-all-if (test l)
"returns all items in l that satisfy <test>"
  (let (res)
    (while l
      (when (funcall test (first l)) (push (first l) res))
      (pop l))
    (nreverse res)))

;(find-all-if  #'plusp '(4 -3 5 6 -1 -2 3 4))

;; imbricate
(defun imb-group2 (lst len imb-count)
  (let ((res)(temp))
    (while lst
           (unless (< (length lst) len)
             (setq temp (subseq lst 0 len))
             (push temp res))
           (repeat imb-count (pop lst)))
    (nreverse res)))

(defun imbricate (lowcard highcard step list)
"returns a list of subsequences of list using lowcard and highcard 
to define the range of the subsequence lengths; step indicates how many 
items we proceed in list before starting with the next subsequence."  
  (let ((res))
    (for (omcs::i lowcard 1 highcard)
      (push (imb-group2 list omcs::i step) res))
    (apply #'append (nreverse res))))

(defun group (list group-lens)
"groups list into subsequnces, where group-lens indicates
the length of each sublist. group-lens can be a number or a list of numbers.
If list is not exhausted by group-lens, the last value of 
 group-lens will be used as a constant until list has been exhausted."
  (let ((res)(temp-res)(gr-len))
    (when (numberp group-lens) (setq group-lens (cirlist  group-lens)))
    (while list
      (when group-lens (setq gr-len (pop group-lens)))
      (repeat gr-len
        (when (car list)
          (push (car list) temp-res))
        (pop list))
      (push (nreverse temp-res) res)
      (setq temp-res ()))
     (nreverse res)))

;(group '(6 7 8 9 0) '(2 3))

(defmacro sort< (l) 
"sorts l in ascending order (non-destructive)"
  `(sort (copy-list ,l) #'<))

;===============================================
;  PCS
;===============================================
; in SC-names.lisp: SC-name, SC+off, card, all-subs
(defun eq-set (setnames &rest notes) 
"setnames can be SC or list of SC's, notes can be midis or a list of midis"
  (setq setnames (list! setnames)) 
  (when (listp (car notes)) (setq notes (car notes))) 
  (member (SC-name-from-points notes)  setnames))

(defun eq-SC? (set-classes &rest midis) 
"checks whether the SC identity of midis (a list of midi-values) is found
in set-classes (a list of SC-names).
set-classes can be a single SC or list of SCs, midis individual midi-values
or a list of midis."
  (setq set-classes (list! set-classes)) 
  (when (listp (car midis)) (setq midis (car midis))) 
  (member (SC-name-from-points midis)  set-classes))
;(eq-SC? '(3-11a 3-11b) 60 64 67))
;(eq-SC? '(3-11a 3-11b) '(60 64 67))
;===============================================
;  Groupings
;===============================================
(defun map-group-pos? (l size pos)
"l is first grouped into subsequences of equal
length (given by size). map-group-pos?
returns true if the last item of the last subsequence is
at the position given by pos (the position is counted from 1)
within the last subsequence. This function is useful if a rule wants
to check if the last item of a partial solution is at a given position
where the partial solution is been split into subsequences of equal length.
For instance, if we split the list (1 2 3 1 2 3 1) into subsequences 
of length 3 and check whether the last item of the last subsequence 
is at position 1, we call:
(map-group-pos? '(1 2 3 1 2 3 1) 3 1)
which returns true as the last item (1) is at the 1st position of the last subsequence." 
  (let ((mod (mod (length l) size)))
    (if (= mod 0) 
      (= pos size)
      (= mod pos))))

;(map-group-pos? '(1) 2 1) 
;(map-group-pos? '(1) 2 2) 
;(map-group-pos? '(1 2 3 1 2 3 1) 3 1)
;(map-group-pos? '(1 2 3 4 5 1 2 3 4 5 1 2) 5 2)

;===============================================
; Chains
;===============================================
(defun group-to-chain (l card)
  (let (res)
    ;(for (i 0 (/ card 2) (length l))
    (loop for i from 0 to (length l) by (/ card 2)
          do (if (< (length l) (+ i card))
               (progn (when  (and (/= (mod (length l) card) 0)  
                                  (if (= (length l) (/ card 2)) t (/= (mod (length l) card) (/ card 2)))
                                  ) 
                        (push (subseq l i (length l)) res))
                      (return))
               (push (subseq l i (+ i card)) res)))
    res))

;(group-to-chain (om::arithm-ser 1 1 19) 6)
;(group-to-chain (om::arithm-ser 1 1 6) 4)

(defun check-chain? (l card SC-names) 
"checks whether l (imbricated with a step size card/2) is a chain consisting 
of SCs (given by SC-names).
No SC with the same transposition duplicate should be found in the chain.
This function is used by the 'Chains' example"
 (let ((chain (group-to-chain l card)) first SC-name) 
  (and 
   (member (setq SC-name (SC-name (setq first (first chain)))) SC-names)
   (= (length first) (card SC-name))
   (if (= (length first) card) 
      (not (member first (rest chain)  :test #'(lambda (a b)  (= (length (intersection a b)) card))))
      t))))

;(check-chain? '(1 2 3 4 5 9) 6 (all-subs '(6-1 6-2b)))
;(check-chain? '(0 1 2 3 4 5 6 7 8  9 8 1 0 1 2 3 5 4) 6 (all-subs '(6-1 6-2b)))

(defun mk-chain-index-rules (indexes SCs)
"returns a list of index-rules for the 'Chains' example"
  (when (atom (car SCs)) (setq SCs (make-list (length indexes) :initial-element SCs)))
  (let (res inds SCl)
    (dolist (indexl indexes)
      (setq SCl (pop SCs))
      (setq inds (mapcar #'(lambda (n) (read-from-string (concatenate 'string "i" (format () "~A" n)))) indexl))
      (push `(,@inds (?if (eq-SC? ',SCl ,@inds))) res))
    (nreverse res)))

;(mk-chain-index-rules '((1 2 5 6) (4 7 8 10)) '((4-2a) (4-z15a 4-z15b 4-16a 4-16b)))
;(mk-chain-index-rules '((1 2 5 6) (4 7 8 10)) '(4-16b))
               
(defun transp-+12 (+inds -inds start l)
  (setq +inds (remove-duplicates (flat +inds)))
  (setq -inds (remove-duplicates (flat -inds)))
  (let (res)
    (setq l (om+ start l)) ;;originally om::om+
    (for (i 1 1 (length l))
      (cond ((member i +inds) (push (+ (nth (1- i) l) 12) res))
            ((member i -inds) (push (- (nth (1- i) l) 12) res))
            (t (push (nth (1- i) l) res))))
    (nreverse res)))

;(transp-+12 '((6 7 10 11) (11 14 15 16) (18 19 21 22)) '(8 9 12 13) 60 '(9 3 8 1 2 0 6 11 5 10 7 4 9 8 3 1 2 6 7 8 11 1 0 2) )

;===============================================
;  Contours
;===============================================
(defun contour (chord)
  (let ((ref (sort (remove-duplicates chord) #'<)))
     (mapcar #'(lambda (n) (position n ref)) chord)))

(defun inv-contour (contour)
  (mapcar #'- (cirlist (apply #'max contour)) contour))

;(inv-contour '(0 1 2 3 4))
;(inv-contour '(3 2 1 2 0))

(defun tol-equal (l1 l2 tol)
"like equal but tol specifies in how many places the two list can differ
the lists have to of equal size"
  (let ((tol-cnt 0) (fl t))
    (while (and l1 l2 fl)
      (when (not (eq (pop l1) (pop l2)))
        (incf tol-cnt)
        (if (> tol-cnt tol) (setq fl nil))))
  fl))

;(time (repeat 100000 (tol-equal '(0 1 2 3 4) '(0 1 2 2 4) 1)))
;(time (repeat 100000 (equal '(0 1 2 3 4) '(0 1 2 2 5))))

(defun s-contours (contour data &optional reduce-overlaps (tol 0))
"returns a list of indexes (a list with low and high) where the data containes the contour
overlaps of idexes can be avoided by setting reduce-overlaps to t " 
  (let (res)
    (for (i 0 1 (1- (length data)))
      (when (and (>= (length data) (length contour))
                 (tol-equal (contour (subseq data 0  (length contour))) contour tol))
        (if (and res reduce-overlaps)
          (when (not (< (first (car res)) i (second (car res))))
            (push (list i (+ i (1- (length contour)))) res))
          (push (list i (+ i (1- (length contour)))) res)))                   
      (pop data))
    (nreverse res)))

(defun eq-subcontour? (ref-cont sub-cont &optional (tol 0))
"returns a flag if the sub-cont is a subcontour of ref-cont"
  (if (= (length sub-cont) 1)
    t
    (if (= (length ref-cont) (length sub-cont))
      (tol-equal ref-cont sub-cont tol)
      (let ((new-ref-cont (contour (subseq ref-cont 0 (length sub-cont)))))
        (tol-equal new-ref-cont sub-cont tol)))))

;(eq-subcontour? '(3 4 3 0 1 2) '(0 1 0))
;(eq-subcontour? '(3 4 3 0 1 2) '(1 2 1 0))
;(eq-subcontour? '(3 4 2 0 1) '(3 4 2 0 1))

;===============================================
;  Statistics
;===============================================
(defun count-stats (lst) 
"calculates the frequency distribution of lst and
returns the result as count-item pairs. The result is
sorted in descending order according to the count information
(i.e. the items that are found most often are found first in the 
result list)."
  (let (res
        (testfn (cond ((stringp (car lst)) #'string=)
                      ((atom (car lst)) #'eq)
                      ((listp (car lst)) #'equal)))) 
    (while lst
       (push (list
                (count (car lst) lst :test testfn)
                (car lst))
             res)
       (setq lst (remove (car lst) lst :test testfn)))
   (sort res '> :key #'car)))
   
;(count-stats '(3-1 4-2a 6-1 3-2a 3-1 3-1 6-z6))


(defun check-stats? (item count stats &optional (tolerance 0))
"checks that item's count (given by count) does not exceed item's count found in stats,
where stats is a list of count-item pairs: ((count1 item1) (count2 item2) ... (countN itemN)).
The difference (- count tolerance) should be less or equal than the respective count found 
in stats. 
See the 'Automatic Rules and Statistical Distribution' example." 
  (let ((cnt+int (if (atom item) 
                   (find item stats :key #'second) 
                   (find item stats :key #'second :test #'equal))))
     (when cnt+int (<= (- count tolerance) (first cnt+int)))))

#|
(check-stats? '3-1 
              (count '3-1  '(3-3b 3-4a 3-5b 3-5a 3-4b 3-2a 3-1 3-8a 3-11b 3-1 3-3a 3-8a))
'((7 3-3b) (1 3-1) (5 3-5b) (4 3-3a)
                          (3 3-10) (3 3-2a) (3 3-2b) (3 3-4b)
                          (2 3-4a)(2 3-5a) (1 3-12) (1 3-7b)
                          (1 3-8a) (1 3-11b) (1 3-9)))
|#

(defun check-rel-stats? (item rel-count l &optional (tolerance 0))
"l -> ((rel-count1 item1) (rel-count2 item2) ... (rel-countN itemN)). 
The sum of counts should be 1.
Item is included in l. (- rel-count tolerance) should be less than the respective count
found in l"  
  (check-stats? item rel-count l tolerance))
  
(defun SC-distribution (card l)
"gives all SC-names found in l when l is grouped 
into subsequences starting from each successive item. 
The length of each subsequence is given by card.
See the 'Automatic Rules and Statistical Distribution' example."   
 (mapcar #'(lambda (l1) (SC-name l1)) (imbricate card card 1 l)))

(defun interval-distribution (card l)
"gives all interval successions found in l 
when l is grouped into subsequences starting from each successive item. 
The length of each subsequence is given by card.
See the 'Automatic Rules and Statistical Distribution' example."   
  (mapcar #'(lambda (l1) (x->dx l1)) (imbricate card card 1 l)))

(defun +-distribution (card l)
"gives the '+-'  movements of l 
when l is grouped into subsequences starting from each successive item. 
The length of each subsequence is given by card.
See the 'Automatic Rules and Statistical Distribution' example."   
  (let ((deltas (x->dx l)))
    (imbricate card card 1  
         (substitute-if '+ #'(lambda (n) (if (numberp n) (plusp n) nil)) 
                        (substitute-if '- #'minusp deltas)))))

;===============================================
(defun atleast-check (l tot-len cur-len atleast-cnt atleast-item &optional (test #'eq))
  (let ((cur-atleast-cnt (- cur-len (- tot-len atleast-cnt))))
    (>= (count atleast-item l :test test) cur-atleast-cnt)))

;(atleast-check '(60 67 78 78) 5 4 3 60)

(defun atleast-cnt-check (l total-len atleast-cnt-item-lst &optional (test #'eq))
"checks whether l fulfills the 'at-least property'. 
See the 'Atleast property' example."
  (when (atom (car atleast-cnt-item-lst)) 
    (setq atleast-cnt-item-lst (list atleast-cnt-item-lst)))
  (let ((cur-len (length l)) (fl t))
    (while (and atleast-cnt-item-lst fl) 
      (setq fl (atleast-check l total-len cur-len
                              (first (car atleast-cnt-item-lst))
                              (second (car atleast-cnt-item-lst))
                              test))
      (pop atleast-cnt-item-lst))
    fl))

;(atleast-cnt-check '(60 67 78 78) 5 '(5 3))

;===============================================
;  Splitter
;===============================================
(defun sp-partnum (partnum-data) 
"returns the partnum part of partnum-data pair.
See the 'Splitter' example." 
       (first partnum-data))

(defun data (partnum-data) 
"returns the data part of partnum-data pair.
See the 'Splitter' example." 
       (second partnum-data))

(defun mod-len (l card)
  (let ((mod-len (mod (length l) card)))
      (if (= mod-len 0) card  mod-len)))

(defun data-group-of-part (partnum-data-lists group-len partnum)
"partnum-data-lists is a list of partnum-data pairs, group-len indicates the length of 
subgroups and partnum is the part number of the current part. 
First, data-group-of-part collects all partnum-data pairs that belong to 
the current part to a list (the current part is given by partnum). 
Then this list is grouped into sublists. The length of the sublists is given by group-len.
data-group-of-part returns the data items of the first sublist.
See the 'Splitter' example."
  (let (res)
    (while partnum-data-lists
      (when (= (sp-partnum (car partnum-data-lists)) partnum)
        (push (data (car partnum-data-lists)) res))
      (pop partnum-data-lists)) 
    (setq res (nreverse res))
    (subseq res 0 (mod-len res group-len))))

;===============================================
;  Simple melodic reduction
;===============================================
(defun mel-pitch (l) (second l))
(defun mel-time (l) (first l))

(defun reduce-mel-simple (mel)
  (when (atom (car mel)) 
    (setq mel (mapcar #'list (arithm-ser 0 1 (1- (length mel))) mel))) 
  (let (res 1st 2nd 3rd)
    (push (pop mel) res)               ;;;;; first note
    (while (cdr mel)            
      (setq 1st (mel-pitch (car res)) 2nd (mel-pitch (first mel)) 3rd (mel-pitch (second mel)))
      (if (or (<= 1st 2nd 3rd)
              (>= 1st 2nd 3rd))
         (pop mel)
         (push (pop mel) res)))
    (push (pop mel) res)               ;;;;; last note
    (nreverse res)))

(defun reduce-mel (mel)
"returns a list of lists of time-midi value pairs defining 
the reduced melodic line of mel, mel can be a list
of midi-values or a list of lists where each sublist consists of time-midi value pairs. 
See the 'Syyssonetti' example."
  (reduce-mel-simple mel))

; leave away begin or end 
(defun group-partial-arcs (l)
  (let (res first-skyl last-skyl)
    (when (> (mel-pitch (first l)) (mel-pitch (second l)))
      (setq first-skyl (car l))
      (setq l (cdr l)))
    (when (> (mel-pitch (first (last l))) (mel-pitch (first (last l 2))))
      (setq last-skyl (first (last l))))
    (while l
      (when (>= (length l) 3)
        (push (subseq l 0 3) res))
      (pop l) (pop l))
    (values (nreverse res) first-skyl last-skyl)))
 
;(group-partial-arcs '((0 71) (6 53) (10 80) (13 52) (15 83) (16 54) (17 84) (19 50) (20 72)))

(defun part-arc-lens (mel) 
"returns the partial arc lengths of mel.
See the 'Syyssonetti' example." 
  (mapcar #'(lambda (l) (- (first (first (last l))) (first (first l)))) 
          (group-partial-arcs 
           (reduce-mel
            (mapcar #'list (arithm-ser 0 1 (1- (length mel)))  mel))) ))

(defun skyline (mel) 
"returns the skyline of mel.
See the 'Syyssonetti' example." 
 (mapcar #'(lambda (l) (second (second l)))
  (group-partial-arcs 
   (reduce-mel 
    (mapcar #'list (arithm-ser 0 1 (1- (length mel)))  mel)))))

;===============================================
;  Misc
;===============================================
(defun make-note-ranges (start ints card)
"returns a reduced search-space for chords of size card
and with the adjacent-interval structure given by ints.
start gives the pitch of the first note as a midi-value. 
See the 'Constraining Chords' example."
  (let ((res (list (list start)))
         temp)
    (dotimes (i(1- card))
      (setq temp ())
      (dolist (pitch (car res))
        (push (mapcar #'+ (cirlist pitch) ints) temp)) 
      (setq temp (remove-duplicates (flat temp)))
     (push (remove-duplicates (flat temp)) res))
  (nreverse res)))

;(make-note-ranges 36 '(5 6) 12)

(defun count-adjacent-items (list &optional (test #'=))
"counts the number of adjacent equal items found at the beginning of list. 
The equality can be defined by giving an optional test function."  
 (let ((cnt 0) (prev (car list)))
    (while (and list (funcall test prev (pop list)))
      (incf cnt))
     cnt))

;(count-adjacent-items '(2 2 3))
;(count-adjacent-items '(2 2 3 3 3))

;================================
; special functions with rl
(defun unique-int? (int rl &key (key #'identity))
"checks if int is unique (not found in rl).
rl is a reversed list of midi-values!
This function is optimised for partial solutions in reversed order (rl)."
 (let ((fl t))
  (while (and fl (cdr rl))
    (when (= int (funcall key (- (first rl) (second rl))))
       (setq fl nil))
    (pop rl))
 fl))
;(time (repeat 5000 (unique-int? 6 '(7 2 5 7 0 4 6 1 8) :key #'(lambda (n) (mod n 12)))))

(defun unique-ints? (ints rl &key (key #'identity))
"checks if ints are unique (not found in rl).
rl is a reversed list of midi-values!
This function is optimised for partial solutions in reversed order (rl)."
  (let ((fl t) fl2 ints-c rl-c)
    (setq ints (reverse ints))
    (while (and fl (nth (length ints) rl))
      (setq ints-c ints)
      (setq rl-c rl)
      (setq fl2 t)
      (while (and fl ints-c fl2)
        ;(print (list (first ints-c) (- (first rl-c) (second rl-c))))
        (setq fl2 (= (first ints-c) (funcall key (- (first rl-c) (second rl-c)))))
        (pop ints-c) (pop rl-c))
      (when fl2
        (setq fl nil))
      (pop rl))
    fl))
;(unique-ints? '(6 7) (reverse '(4 6 0 6 13)))
;(unique-ints? '(-7 -5) (reverse '(13 6 1 5)))
;(unique-ints? '(7 -5) (reverse '(13 6 1 5)))
;(time (repeat 50000 (unique-rl-ints? '(6 7) '(13 6 0 6 4))))


;============================================
(defun unique-cell1? (x list &optional (cnt most-positive-fixnum) (key #'identity))
"checks whether x is not found in list, list in reversed order!
This function is optimised for partial solutions in reversed order (rl)."
 (let ((fl t))
   (while (and fl list (> cnt 0))
     (when (= (funcall key (first list)) x)
        (setq fl nil))
     (pop list)
     (decf cnt))
    fl))

;(unique-cell1? 69 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 4)
;(time (repeat 10000 (unique-cell1? 69 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 5)))   
;(subseq (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 0 5)

#|
(defun unique-cell2? (x y list &optional (cnt most-positive-fixnum))
"checks whether the succession x y is not found in list, list in reversed order,
also x and y have to be in reversed order!
This function is optimised for partial solutions in reversed order (rl)."
 (let ((fl t))
   (while (and fl (cdr list) (> cnt 1))
     (when (and (= (first list) x) (= (second list) y))
        (setq fl nil))
     (pop list)
     (decf cnt))
    fl))

;(unique-cell2? 69 51 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 8)   
;(unique-cell2? 69 51 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 9)   
;(subseq (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 0 9)
|#

(defun unique-cell2? (x y list &aux list1); list2)
  "checks whether the succession x y is not found in list, list in reversed order,
also x and y have to be in reversed order!
This function is optimised for partial solutions in reversed order (rl)."  
  (cond ((null list) t)
        ((not (setq list1 (member x list))) t)
        ((eq (second list1) y) nil)
        (t (unique-cell2? x y (cdr list1)))))

;(unique-cell2? 69 51 (window-list (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 8))   
;(unique-cell2? 69 51 (window-list (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 9))   

(defun unique-cell3? (x y z list &optional (cnt most-positive-fixnum))
"checks whether the succession x y z is not found in list, list in reversed order,
also x, y and z have to be in reversed order!
This function is optimised for partial solutions in reversed order (rl)."
 (let ((fl t))
   (while (and fl (cddr list) (> cnt 2))
     (when (and (= (first list) x) (= (second list) y) (= (third list) z))
        (setq fl nil))
     (pop list)
     (decf cnt))
    fl))

;(unique-cell3? 69 51 70 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 9)   
;(unique-cell3? 69 51 70 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 10)   
;(subseq (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 0 10)


#|
(mapcar #'(lambda (n) (read-from-string (first n))) (ccl::list-definitions (front-window)))))
|#

 
;===============================================
;; PM syntax: 
;===============================================
;   ?1         = variable
;   ?          = anonymous-variable
;   *          = wild card
;   i1         = index-variable (counting from 1) 
;===============================================
;; Lisp-code part: 
;===============================================

;   (?if ...)  = Lisp expression (test)

;===============================================
;   Reserved variables
;===============================================
;   l           = partial solution
;   rl          = reversed partial solution
;   len         = length of the partial solution
;===============================================
;===============================================
(defun variable-p (x)
  (and (symbolp x) (eq (char (symbol-name x) 0) #\?)))

(defun anon-variable-p (x) (eq x '?))

(defun index-variable-p (x)
  (and (symbolp x) (eq (char (symbol-name x) 0) #\I)))
;(index-variable-p 'i1)

(defun wild-p (x)
  (and (symbolp x) (eq (char (symbol-name x) 0) #\*)))

(defun constant-p (x) (numberp x))

;===============================================
(defun omcs::make-anon-fn (fn)
  (eval `(defun ,(gensym) ,.(rest fn))))

(defun compile-pattern-matching-rule (rule)
; (assert (string= (package-name  *package*) "COMMON-LISP-USER") ()
;   "*** The current package should be COMMON-LISP-USER ! ***" ())
  (let ((doc (find-if #'stringp rule))) ;; should be last item in rule
    (setq rule (remove-if #'stringp  rule))
    (let* ((plain-pat (remove '?if rule :key #'(lambda (n) (when (listp n) (first n)))))
           (variable-count (count-if #'(lambda (n) (or (numberp n) (variable-p n) (anon-variable-p n))) rule))
           (variable-count-c variable-count)
           (expr (second (find '?if rule :key #'(lambda (n) (when (listp n) (first n))))))
           let-res constant-res index-res wild-flag index-variable-indexes)

      (loop for i from 0 to (1- (length plain-pat))
            do (cond
                ((wild-p (nth i plain-pat))
                 (setq wild-flag t)) 
                ((anon-variable-p (nth i plain-pat))
                 (decf variable-count))
                ((variable-p (nth i plain-pat))
                 (if (not wild-flag)
                   (push `(,(nth i plain-pat) (nth ,i l)) let-res)
                   (push `(,(nth i plain-pat) (nth ,(1- variable-count) rl)) let-res))
                 (decf variable-count))
                ((constant-p (nth i plain-pat))
                 (if (not wild-flag)
                   (push `(= ,(nth i plain-pat) (nth ,i l)) constant-res)
                   (push `(= ,(nth i plain-pat) (nth ,(1- variable-count) rl)) constant-res))
                 (decf variable-count))
                ((index-variable-p (nth i plain-pat))
                 (push (1- (read-from-string (remove "I" (remove "i" (format nil "~A" (nth i plain-pat)) :test #'string=) :test #'string=))) index-variable-indexes) 
                 (push `(,(nth i plain-pat) (nth ,(1- (read-from-string (remove "I" (remove "i" (format nil "~A" (nth i plain-pat)) :test #'string=) :test #'string=))) l)) let-res)
                 (push `,(nth i plain-pat) index-res))
                (t (error (format nil "unknown item =  ~A" (nth i plain-pat))))))
      (setq let-res (nreverse let-res)  constant-res (nreverse constant-res) index-res (nreverse index-res))
      `(lambda (l rl len) ,(if doc doc "") 
          l rl ;; to avoid "Unused lexical variable ?1" message
          (if ,(if (not index-variable-indexes)
                 `(< len ,variable-count-c)
                 `(not (= len ,(1+ (apply #'max index-variable-indexes))))) 
            t
            (when (and ,.constant-res)
              (let (,@let-res)
                ,@(mapcar #'first let-res)  ;; to avoid "Unused lexical variable ?1" message
                (when (and ,@index-res)
                  ,(if expr expr t)))))))))

#|
;(compile-pattern-matching-rule '(* ?1 ?2 (?if (member (- ?2 ?1) '(1 -1 2 -2))) "is interval betw ?1 and ?2 member of (1 -1 2 -2)"))
;(compile-pattern-matching-rule '(* ?1 ?2 i1 i2 (?if (or (member (- i2 i1) '(5 7)) (member (- ?2 ?1) '(1 -1 2 -2))))))
;(compile-pattern-matching-rule '(?1 ?2 ?3 ?4 ? ?5 ? ?6 ? * (?if (not (intersection (list ?1 ?2 ?3 ?4 ?5 ?6) '(0 1 2))))))
;(compile-pattern-matching-rule '(?  ?  ?  ?  0 ?  2 ?  1 * ))
;(compile-pattern-matching-rule '(i1 i3 i7))
;(compile-pattern-matching-rule '(i1 i3 i7 * ?1)) ; ??
;(compile-pattern-matching-rule '(* ?1 (?if (/= ?1 1))))
;(compile-pattern-matching-rule '(* ?1 (?if (not (member ?1 (rest rl))))))
;(compile-pattern-matching-rule '(* i78 (?if (not (member i78 (rest rl))))))

(funcall 
 (make-anon-fn (compile-pattern-matching-rule '(* ?1 (?if (if (= (mod (length l) 2) 1) (member ?1 '(68 67)) t))))) 
   '(67 -55 68) (reverse '(67 -55 68)))

(funcall (make-anon-fn (compile-pattern-matching-rule '(i7 i9 i11 (?if (eq-SC? '(3-1 3-2a 3-2b 3-5a 3-5b) i7 i9 i11)))))
 '(1 2 3 4 5 6 1 8 0 10 2) (reverse '(1 2 3 4 5 6 1 8 0 10 2)) 11)

(mk-PMC-fn '(* ?1 ?2 (?if (< ?1 ?2))))
|#






#|
(mapcar #'(lambda (n) (read-from-string (first n))) (ccl::list-definitions (front-window)))

(defun mk-PMC-fn (l)
  (let ((old-package *package*) 
        fn str)
    (ccl::set-package omcs)
    (setq str (find-if  #'stringp l))
    (when str (setq l (butlast l))) 
    ;(setq l (read-from-string (format () "~A" l)))
    ;(setq l (read-from-string (format () "~S" l)))
    (setq l (read-from-string (prin1-to-string l)))
    (when str (setq l (append l (list str))))
    ;(print (list 'l l))
    (setq fn (make-anon-fn
              (compile-pattern-matching-rule
               l)))
    (ccl::set-package old-package)
    fn))
|#

(defun mk-PMC-fn (l) ;; check !!
  (make-anon-fn (compile-pattern-matching-rule l)))


(defun remove-package-expression (rules) 
  (remove '(in-package omcs) 
          (remove '(in-package :omcs) rules :test #'equal)
          :test #'equal))

(defun mk-PMC-fns (rules) 
  (mapcar #'mk-PMC-fn (remove-package-expression rules)))
;===============================================
(in-package omcs)
;===============================================

;===============================================
;          search-engine
;===============================================
(defclass search-engine (key-item)
  ((search-variables :initform () :initarg :search-variables :accessor search-variables) 
   (search-variables-list :initform () :initarg :search-variables-list :accessor search-variables-list)
   (variable-pos :initform 0 :initarg :variable-pos :accessor variable-pos) 
   (rules :initform nil :initarg :rules :accessor rules)
   (heuristic-rules :initform nil :initarg :heuristic-rules :accessor heuristic-rules)
   (all-sols :initform nil :accessor all-sols)
   (print-fl :initform nil :initarg :print-fl :accessor print-fl)
   (sols-mode :initform :once :initarg :sols-mode :accessor sols-mode)))

 
;========================
; misc
;========================
(defmethod get-current-variable ((self search-engine))
  (svref (search-variables self) (variable-pos self)))

(defmethod succeed-case? ((self search-engine))
  (= (variable-pos self)(length (search-variables self))))

(defmethod fail-case? ((self search-engine))
  (= (variable-pos self) -1))

(defmethod step-forwards ((self search-engine))
  (incf (variable-pos self)))

(defmethod step-forwards :after ((self search-engine))
  (when (print-fl self)
    (progn (princ (variable-pos self)) (princ " "))))  

(defmethod step-backwards ((self search-engine))
  (decf (variable-pos self)))

(defmethod set-start-position ((self search-engine))
  (setf (variable-pos self) 0))

;========================
; forward-checking
;========================
(defmethod update-domains ((self search-engine) search-variable)
  (dolist (arc (arcs search-variable))
    (setf (domain (next-s-variable arc)) (domain-copy (next-s-variable arc)))))

(defmethod prune-last-arc-domain ((self search-engine) variable candidate)
  (let (next-domain-temp)
    (dolist (arc (arcs variable))
        (let* ((fn (fn arc))
               (tail (list ()))
               (sols (nconc (mapcar #'(lambda (i) (value i)) (prev-s-variables arc)) 
                            (list candidate) tail))
               (next-variable-domain (domain (next-s-variable arc))) next)
          (setq next-domain-temp nil) 
          (loop while next-variable-domain
                do (progn (setq next (pop next-variable-domain))
                          (setf (first tail) next) 
                          (when (apply #'funcall fn sols)  
                            (push next next-domain-temp))))
          (setf (domain (next-s-variable arc)) (nreverse next-domain-temp))))))

(defmethod forward-check ((self search-engine) variable candidates)
  (let ((arcs (arcs variable))  fl arcs-c arc res)
    (if arcs
      (progn
        ;(print (mapcar #'(lambda (arc) (prev-s-variables arc)) arcs))
        (dolist (candidate candidates)
          (setq arcs-c arcs)
          (setq fl t)
          (loop while (and fl arcs-c)
                do (progn (setq fl nil) ;; each arc has to be true
                          (setq arc (pop arcs-c))
                          (let* ((fn (fn arc))
                                 (tail (list ()))
                                 (sols (nconc (mapcar #'(lambda (i) (value i)) (prev-s-variables arc)) 
                                              (list candidate) tail))
                                 (next-variable-domain  (domain (next-s-variable arc))) next)
                            (loop while (and (null fl) next-variable-domain)
                                  do (progn (setq next (pop next-variable-domain))
                                         (setf (first tail) next) 
                                         (when (apply #'funcall fn sols) ; at least one value is supported
                                           (setq fl t)))))))
          (when fl (push candidate res)))
        (nreverse res))
      candidates)))

;========================
;   heuristic rules
;========================
; if a rule gives a numeric value (i.e. it is applied) then candidates are
; sorted so that the candidate(s) that has (have) the highest score is  (are) found first!
(defmethod apply-heuristic-rules ((self search-engine) variable candidates)
 (if (heuristic-rules self)
  (let* ((prev-sols-rev (read-key variable :rev-sols-list))
         (prev-sols (read-key variable :sols-list))
         (ith (read-key variable :write-pos)) 
         (end-sols-list (read-key variable :end-sols-list)) 
         (index (read-key variable :note-index))
         (fns (heuristic-rules self))
         (len (cur-index)) 
         score score+cand-pairs heuristic-rules-applied? res)
    (setf (nthcdr (1+ index)  prev-sols) nil)
    ;(print (list 'prev (butlast prev-sols) candidates))
    (dolist (candidate candidates)
      (setf (first ith) (car candidates))
      (setf (first prev-sols-rev) candidate)
      (setq score 0)
      (dolist (fn fns)
        (setq res (funcall fn prev-sols prev-sols-rev len))
        (when (numberp res) 
          (setq heuristic-rules-applied? t)
          (incf score res)))  
      (push (list score candidate) score+cand-pairs))
    (setq candidates (if heuristic-rules-applied?
                       (mapcar #'second (sort score+cand-pairs #'> :key #'first))
                       candidates))
    ;(setf (first ith) (car candidates))
    ;(setf (first prev-sols-rev) (car candidates))
    (setf (nthcdr (1+ index)  prev-sols) end-sols-list)
    candidates)
  candidates))

;========================
; apply-rules
;========================
(defmethod apply-rules-loop ((self search-engine) variable)
  (let* ((prev-sols-rev (read-key variable :rev-sols-list))
         (prev-sols (read-key variable :sols-list))
         (ith (read-key variable :write-pos)) 
         (end-sols-list (read-key variable :end-sols-list)) 
         (index (read-key variable :note-index))
         (candidates (domain variable))
         (fns (rules self))
         (len (cur-index)) 
         temp)
    (setf (nthcdr (1+ index) prev-sols) nil)
    (dolist (fn fns)
      (setq temp nil)
      (loop while candidates
            do (progn (setf (first ith) (car candidates))
                      (setf (first prev-sols-rev) (car candidates))
                      (when (funcall fn prev-sols prev-sols-rev len) ;; 3 args len !!  
                        (push (car candidates) temp))
                      (pop candidates)))
      (unless temp
        (write-diagnostics fn)
        (return nil))
      (setq candidates (nreverse temp)))
    (when candidates 
        (setf (first ith) (car candidates))
        (setf (first prev-sols-rev) (car candidates)))
    
    (setf (nthcdr (1+ index)  prev-sols) end-sols-list) ;;;;;;;;;;;;;;
    
    ; (if end-sols-list
    ;   (setf (nthcdr (1+ index)  prev-sols) end-sols-list)
    ;   t
    ;   )
    ;   (print "toto")

    ;(print (if candidates candidates '(0)))
    candidates
    ))

(defmethod write-value-to-partial-sols-list ((self search-engine) s-variable candidate)
  (setf (first (read-key s-variable :write-pos)) candidate)
  (setf (first (read-key s-variable :rev-sols-list)) candidate))

(defmethod apply-rules ((self search-engine) search-variable)
  (let (candidates)
    (when (setq candidates (apply-rules-loop self search-variable))
      (setq candidates 
             (apply-heuristic-rules self search-variable
                                    (forward-check self search-variable candidates)))
      (when candidates (prune-last-arc-domain self search-variable (first candidates)))             
      (if (and candidates (listp candidates))
        (progn 
          (update-values search-variable candidates)
          (write-value-to-partial-sols-list self search-variable (first candidates))
          t)
        nil))))

;========================
; forward,backtrack,succeed 
;========================
(defmethod forward ((self search-engine))
  (if (succeed-case? self)
    (succeed self)
    (let* ((search-variable (get-current-variable self))
           (value (value search-variable)))
      (if value ;; only from backtrack 
        (progn (prune-last-arc-domain self search-variable value) 
               (step-forwards self) (forward self))
        (if (apply-rules self search-variable)
          (progn (step-forwards self) (forward self))
          (progn (set-init-state search-variable) (step-backwards self) (backtrack self)))))))
 
(defmethod backtrack ((self search-engine))
  (if (fail-case? self)
    (fail self)
    (let ((search-variable (get-current-variable self)))
      (update-domains self search-variable) 
      (if (set-new-forward-state search-variable)
        (forward self)
        (progn (set-init-state search-variable) (step-backwards self) (backtrack self))))))

(defmethod succeed ((self search-engine))
  (let ((res (mapcar #'value (search-variables-list self))))
    (push res (all-sols self))
    (if (or (eq (sols-mode self) :once) 
            (and (numberp (sols-mode self)) 
                 (= (length (all-sols self)) (sols-mode self)))) 
      res
      (progn
        (step-backwards self)
        (update-domains self (get-current-variable self))
        (backtrack self)))))

(defmethod fail ((self search-engine)) :fail)
      
(defmethod start ((self search-engine))
  (setf (all-sols self) nil)
  (mapc  #'set-init-state (search-variables-list self))
  (when (print-fl self);  (and (print-fl self) *constraint-diagnostics*)
    (format t "Number of search-variables = ~A" (length (search-variables  self))) 
    (terpri))
  (set-start-position self)
  (forward self))

;=======================================================
;     optimize - avoid consing with l and rl
;=======================================================
(defun optimize-search-lists (s-variables)
  (let*  ((rev-items (reverse s-variables))
          (orig-list (make-list (length s-variables))) 
          (rev-list (make-list (length s-variables))) 
          (rev-items-c rev-items)) 
    ;(for (i 1 1 (length s-variables))
    (loop for i from 1 to (length s-variables)
          do (progn
               (write-key (nth (1- i) s-variables) :sols-list orig-list) 
               (write-key (nth (1- i) s-variables) :write-pos (nthcdr (1- i) orig-list)) ;; (setf (first write-pos ..)
               (write-key (nth (1- i) s-variables) :end-sols-list (nthcdr i orig-list))))
    ;(for (i 0 1 (1- (length rev-items)))
    (loop for i from 0 to (1- (length rev-items))
      do (write-key (pop rev-items-c) :rev-sols-list (nthcdr i rev-list)))))

;=======================================================
;    make-search-engine
;=======================================================
(defun make-search-engine (search-space rules 
                            &key (fwc-rules ()) (heuristic-rules ()) (sols-mode :once) 
                            (class 'search-engine) (print-fl ()))
  (let ((engine
         (make-instance class
           :search-variables (apply #'vector (mapcar #'make-search-variable search-space))
           :rules rules  
           :heuristic-rules heuristic-rules  
           :sols-mode sols-mode
           :print-fl print-fl)))
    (setf *current-SE* engine)
    (setf (search-variables-list engine) (coerce (search-variables engine) 'list))
    ;(link-list (search-variables-list engine))  
    (when fwc-rules (convert-rules-to-arcs (search-variables-list engine) fwc-rules))
    (dolist (variable (search-variables-list engine))
      (write-key variable :note-index (position variable (search-variables-list engine))))  
    (optimize-search-lists (search-variables-list engine)) ;; !!
    engine))

;=======================================================================
; User search-engine functions
;=======================================================================
(defun PMC (search-space rules 
                    &key (fwc-rules ()) (heuristic-rules ()) (sols-mode :once) (rnd? nil)
                    (print-fl nil) (class 'search-engine))
  
"PMC is the basic tool for constraint-based programming in PatchWork and PWGL.
The search-space is typically given as a list of lists of numbers, but it
can also consist of any Lisp objects such symbols, objects, strings, etc.
PMC accepts three types of rules : true/false rules, heuristic rules and forward-checking rules.

There are also several optional inputs : 'rnd?' indicates whether the
search-space will be randomly ordered or not, and the number of results is given in
'sols-mode'."  
  
  (unless (listp (car rules)) (setq rules (list rules))) 
  (let* ((engine (make-search-engine       
                  (if rnd?  (mapcar #'permut-random search-space) search-space)
                  (mk-PMC-fns rules) 
                  :fwc-rules fwc-rules
                  :heuristic-rules (mk-PMC-fns heuristic-rules) 
                  :sols-mode sols-mode :class class :print-fl print-fl)))
    (start-diagnostics (rules engine))
    (start engine)
    (when *constraint-diagnostics* ;;(and *constraint-diagnostics*print-fl)  
         (terpri) (format t "Rule diagnostics:") (read-diagnostics (rules engine)))
    (all-sols engine)))



;===============================================
;          arc
;===============================================
(defclass arc ()
  ((fn :initarg :fn :accessor fn)
   (prev-s-variables :initarg :prev-s-variables :accessor prev-s-variables)
   (next-s-variable :initarg :next-s-variable :accessor next-s-variable)))

(defun mk-arc (fn prev-s-variables next-s-variable)
  (make-instance 'arc :fn fn :prev-s-variables prev-s-variables 
                 :next-s-variable next-s-variable))

 
;===============================================
;          search-variable
;===============================================
(defclass search-variable (key-item linked-list-item)
  ((domain :initform () :initarg :domain :accessor domain) 
   (domain-copy :initform () :initarg :domain-copy :accessor domain-copy) 
   (arcs :initform () :initarg :arcs :accessor arcs) ;;
   (value :initform () :initarg :value :accessor value)
   (other-values :initform () :initarg :other-values :accessor other-values)))

(defmethod update-values ((self search-variable) values)
  (setf (value self) (first values))
  (setf (other-values self) (rest values)))

(defmethod set-init-state ((self search-variable))
  (setf (value self) ())
  (setf (other-values self) ())) 

(defmethod set-new-forward-state- ((self search-variable))
  (if (other-values self)
    (progn 
      (setf (value self) (first (other-values self)))
      (setf (other-values self) (rest (other-values self)))
      t)
    (progn 
      (set-init-state self)
      nil)))

(defmethod set-new-forward-state ((self search-variable))
  (let ((fl (set-new-forward-state- self))
        (val (value self)))
    (setf (first (read-key self :write-pos)) val)
    (setf (first (read-key self :rev-sols-list)) val)
    fl))

(defmethod all-prev-sols ((self search-variable))
  (let ((prev-item self)
        res)
    (loop while (setq prev-item (prev-item prev-item))
          do (push (value prev-item) res))
    (nreverse res)))

(defmethod all-next-sols ((self search-variable))
  (let ((next-item self)
        res)
    (loop while (setq next-item (next-item next-item))
          do (push (value next-item) res))
    (nreverse res)))

;===============================================
(defun make-search-variable (domain)
  (make-instance 'search-variable :domain domain :domain-copy domain))
