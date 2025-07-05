;;; arch-tag: 131EC98D-461B-42CB-8CC0-E710DE879660

;;; Copyright (c) 2007, Kilian Sprotte. All rights reserved.

;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:

;;;   * Redistributions of source code must retain the above copyright
;;;     notice, this list of conditions and the following disclaimer.

;;;   * Redistributions in binary form must reproduce the above
;;;     copyright notice, this list of conditions and the following
;;;     disclaimer in the documentation and/or other materials
;;;     provided with the distribution.

;;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS' AND ANY EXPRESSED
;;; OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
;;; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;;; DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
;;; GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
;;; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
;;; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
;;; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

(in-package :smc)

;; TODO we could check if `l' or `rl' is used
;; and only provide for those datastructures in this case

#+debug
(eval-when (:load-toplevel)
  (warn "SMC compiled in debug mode"))

#+nil(deftype search-var-vector () 'simple-vector)
(deftype search-var-vector () '(simple-array fixnum (*)))

;;; TODO maybe it is strange to use this variable
;;; but maybe do this for pos-var and others too
;;; and avoid passing them aroung as function args
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defvar *heuristic-value-var* 'heuristic-value))

(defun maptree (fn tree)
  (cond
    ((null tree) nil)
    ((atom tree) (funcall fn tree))
    (t (cons (maptree fn (car tree))
             (maptree fn (cdr tree))))))

(defun setp (list &key (test #'eql) (key #'identity))
  (= (length list)
     (length (remove-duplicates list :test test :key key))))

(defun ascending-p (list)
  (iter
    (for elt in list)
    (for pelt previous elt)
    (when pelt
      (always (< pelt elt)))))

(defun intern-smc (symbol)
  (intern (symbol-name symbol) #.(find-package "SMC")))

(defun integer-string-p (string &key start)
  (let ((start (if start start 0))
        (end (length string)))
    (when (> end start)
      (iter
        (for i from start below end)
        (unless (member (char string i)
                        '(#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9))
          (leave nil))
        (finally (return t))))))

(defun index-arg-p (symbol)
  (and (symbolp symbol) (char= (char (symbol-name symbol) 0) #\I) (integer-string-p (symbol-name symbol) :start 1)))

(defun relative-arg-p (symbol)
  (and (symbolp symbol) (char= (char (symbol-name symbol) 0) #\?) (integer-string-p (symbol-name symbol) :start 1)))

(defun arg-p (symbol)
  (or (index-arg-p symbol) (relative-arg-p symbol)))

(defun arg-index (symbol)
  (parse-integer (symbol-name symbol) :start 1))

(defun make-v-arg (index)
  (intern (format nil "V~A" index)))

(defun parse-pmc-rule (rule)
  (let ((head (iter
                (for token = (car rule))
                (while (and token (atom token)))
                (collect token)
                (pop rule))))
    (values (mapcar #'intern-smc head)
            (maptree #'(lambda (obj)
                         (cond
                           ((arg-p obj)
                            (intern-smc obj))
                           ((and (symbolp obj)
                                 (or (equal (symbol-name obj) "CUR-SLEN")
                                     (equal (symbol-name obj) "CUR-INDEX")))
                            (intern-smc 'cur-slen))
                           ((and (symbolp obj)
                                 (equal (symbol-name obj) "LEN"))
                            '(cur-slen))
                           ((and (symbolp obj)
                                 (equal (symbol-name obj) "L"))
                            '(cdr l))   ; because of the :start symbol
                           ((and (symbolp obj)
                                 (equal (symbol-name obj) "RL"))
                            'rl)
                           (t obj)))
                     (let ((?if-form (pop rule)))
                       (if (null (cddr ?if-form))
                           (second ?if-form)
                           (cons 'progn (cdr ?if-form)))))
            (pop rule))))

(defun validate-rule-head (head)
  (and (or (and (eql '* (car head))
                (every #'relative-arg-p (cdr head)))
           (every #'index-arg-p head))
       (setp head)
       (ascending-p (mapcar #'arg-index (remove-if-not #'arg-p head)))))

(defun head2rule-type (head)
  ;; relies on a already validate-rule-head rule
  (if (eql '* (car head))
      :relative
      :index))

(defun head2solution-min-length (head)
  (arg-index (car (last head))))

;; (defun head2rule-argnum (head)
;;   (count-if #'arg-p head))

(defun head2args (head)
  (remove-if-not #'arg-p head))

(defstruct (rule (:copier nil)
                 (:predicate nil))
  head body doc
  type                                  ; :relative or :index
  ;; argnum
  solution-min-length)

(defun make-rule-from-pmc (rule)
  (multiple-value-bind (head body doc)
      (parse-pmc-rule rule)
    (unless (validate-rule-head head)
      (error "Sorry, don't know how to deal with rule head ~S." head))
    (let ((rule-type (head2rule-type head)))
      (make-rule :head head :body body :doc doc
                 :type rule-type
                 ;; :argnum (head2rule-argnum head)
                 :solution-min-length (head2solution-min-length head)))))

(defun unparse-rule (rule)
  `(,@(rule-head rule) (?if ,(rule-body rule)) ,@(when (rule-doc rule) (list (rule-doc rule)))))

(defun wrap-body-fail (body)
  `(unless ,body (fail)))

(defun wrap-body-incf (body)
  `(incf #.*heuristic-value-var* ,body))

(defun wrap-index-check (body pos pos-var)
  `(when (= ,pos-var ,pos) ,body))

(defun rule-arg-indices-for-pos (rule pos)
  (let ((offset (ecase (rule-type rule)
                  (:relative (- pos (rule-solution-min-length rule)))
                  (:index 0))))
    (iter (for elt in (rule-head rule))
          (when (arg-p elt)
            (collect (+ offset (arg-index elt)))))))

(defun wrap-rule (rule pos pos-var heuristic-rules)
  (let* ((body (rule-body rule))
         (head (rule-head rule))
         (v-args (mapcar #'make-v-arg (rule-arg-indices-for-pos rule pos)))
         (rule-args (head2args head)))
    (setq body (maptree #'(lambda (obj)
                            (cond
                              ((symbolp obj)
                               (let ((pos (position obj rule-args)))
                                 (if pos
                                     (nth pos v-args)
                                     obj)))
                              (t obj)))
                        body))
    (ecase (rule-type rule)
      (:relative (if heuristic-rules
                     (values (wrap-body-incf body) v-args)
                     (values (wrap-body-fail body) v-args)))
      (:index (values (wrap-index-check
                       (if heuristic-rules (wrap-body-incf body) (wrap-body-fail body))
                       (1- (rule-solution-min-length rule)) pos-var) v-args)))))

(defun wrap-v-bindings (v-vars vector forms &optional offset)
  (check-type vector symbol)
  `(let (,.(iter
             (for v in v-vars)
             (for i = (1- (arg-index v)))
             (if offset
                 (progn
                   (assert (and (eql '- (first offset))
                                (eql 'i (second offset))
                                (numberp (third offset))))
                   (let ((to-be-added-to-i (- i (third offset))))
                     (collect (if (zerop to-be-added-to-i)
                                  `(,v (aref ,vector i))
                                  `(,v (aref ,vector
                                             #+nil(+ ,i ,offset) ; this was the initial simplest version
                                             (+ i ,(- i (third offset)))))))))
                 (collect `(,v (aref ,vector ,i))))))
     ,@forms))

(defun make-rule-checks (rules pos-var vector-var &key heuristic-rules)
  (check-type pos-var symbol)
  ;; TODO find a better name for this
  (flet ((process-rules (rules pos)
           (iter
             top
             (for r in rules)
             (for (values wrapped-rule v-vars) = (wrap-rule r pos pos-var heuristic-rules))
             (collect wrapped-rule into first)
             (iter
               (for v-var in v-vars)
               (in top (adjoining v-var into second)))
             (finally (return-from top (values first second))))))
    (when rules
      (let ((lengths (sort (delete-duplicates (mapcar #'rule-solution-min-length rules)) #'<)))
        `(block nil
           (tagbody
              (when (< ,pos-var ,(1- (first lengths)))
                (return nil))
              ,.(iter
                  (for m in lengths)
                  (for l in (cdr lengths))
                  (for l-1 = (1- l))
                  (for m-1 = (1- m))
                  (for rs = (remove l-1 rules :test #'< :key #'rule-solution-min-length))
                  (setq rs (remove-if #'(lambda (r) (and (eql :index (rule-type r))
                                                         (< (rule-solution-min-length r) m)))
                                      rs))
                  (for (values wrapped-rules v-vars) = (process-rules rs m))
                  (for after-sym = (gensym))
                  (collect `(unless (< ,pos-var ,l-1) (go ,after-sym)))
                  (collect (wrap-v-bindings v-vars vector-var wrapped-rules `(- ,pos-var ,m-1)))
                  (collect '(return nil))
                  (collect after-sym))
              ,(let* ((pos (car (last lengths)))
                      (rules (remove-if #'(lambda (r) (and (eql :index (rule-type r))
                                                           (< (rule-solution-min-length r) pos)))
                                        rules)))
                     (multiple-value-bind (wrapped-rules v-vars)
                         (process-rules rules pos)
                       (wrap-v-bindings v-vars vector-var wrapped-rules `(- ,pos-var ,(1- pos)))))))))))


(define-box make-true-false-function (rules)
  :non-generic t
  :export nil
  (compile
   nil
   `(lambda (i v l rl)
      (declare (optimize (speed 3) (safety 0) (debug 0) (space 0) (compilation-speed 0))
               #+sbcl(sb-ext:muffle-conditions sb-ext:compiler-note)
               (fixnum i)
               (search-var-vector v)
               (ignorable l rl))
      ,(make-rule-checks (mapcar #'make-rule-from-pmc rules) 'i 'v))))

(define-box make-heuristic-function (heuristic-rules)
  :non-generic t
  :export nil
  (compile
   nil
   `(lambda (i v l rl)
      (declare (optimize (speed 3) (safety 0) (debug 0) (space 0) (compilation-speed 0))
               #+sbcl(sb-ext:muffle-conditions sb-ext:compiler-note)
               (fixnum i)
               (search-var-vector v)
               (ignorable l rl))
      (let ((#.*heuristic-value-var* 0))
        ,(make-rule-checks (mapcar #'make-rule-from-pmc heuristic-rules)
                           'i 'v :heuristic-rules t)
        #.*heuristic-value-var*))))

(defmacro cur-slen ()
  '(1+ i))

(defun vector-shuffle (vector)
  (declare #-debug(optimize (speed 3) (safety 0) (debug 0) (compilation-speed 0))
           (search-var-vector vector))
  (iter
    (for i from (1- (length vector)) downto 1)
    ;; on sbcl random would like to have a (unsigned-byte 22) as arg
    (for j = (random (1+ i)))
    (declare (fixnum i j))
    (unless (= j i)
      (rotatef (aref vector i) (aref vector j)))
    (finally (return vector))))

(defvar *domain*)
(defvar *domain-vector*)
(defvar *domain-heuristic-hash*)
(declaim (type search-var-vector *domain-vector*))

(defun copy-search-var-vector (vector)
  (declare #-debug (optimize (speed 3) (safety 0) (debug 0))
           (search-var-vector vector))
  (let ((copy (make-sequence 'search-var-vector (length vector))))
    (dotimes (i (length vector) copy)
      (setf (aref copy i) (aref vector i)))))

(defmacro with-domain-environment ((domain) &body body)
  (check-type domain symbol)
  `(let* ((*domain* ,domain)
          (*domain-vector* (coerce ,domain 'search-var-vector))
          (*domain-heuristic-hash* (make-hash-table :test #'eql :size (length *domain-vector*))))
     ,@body))

(defmacro heuristic-fn-result (x)
  `(gethash ,x *domain-heuristic-hash*))

(cl:defun heuristify-domain (random heuristic-fn
                             i v l rl)
  (declare #-debug (optimize (speed 3) (safety 0) (debug 0) (compilation-speed 0))
           (search-var-vector v))
  (if random
      (setq *domain-vector* (vector-shuffle *domain-vector*))
      (iter
        (for c in *domain*)
        (for j index-of-vector *domain-vector*)
        (declare (fixnum j))
        (setf (aref *domain-vector* j) c)))
  (when heuristic-fn
    (locally (declare (function heuristic-fn))
      (setf (aref v i) (aref *domain-vector* 0))
      (when (funcall heuristic-fn i v l rl)
        (iter
          (for j below (length *domain-vector*))
          (declare (fixnum j))
          (for c = (aref *domain-vector* j))
          (setf (aref v i) c)
          (setf (heuristic-fn-result c) (funcall heuristic-fn i v l rl)))
        (setq *domain-vector* (stable-sort *domain-vector* #'> :key #'(lambda (c) (heuristic-fn-result c)))))))
  ;; TODO leave this a vector and change a-member-of
  ;; (but think about different heuristics...)
  (coerce *domain-vector* 'list))

(eval-when (:compile-toplevel :load-toplevel :execute) (screamer::declare-nondeterministic 'a-member-of-vector))

(cl:defun a-member-of-vector (vector)
  (declare (ignore vector))
  (screamer::screamer-error
   "A-MEMBER-OF-VECTOR is a nondeterministic function. As such, it must be called~%~
   only from a nondeterministic context."))

(cl:defun a-member-of-vector-nondeterministic (continuation vector)
  (declare #-debug (optimize (speed 3) (safety 0) (debug 0) (compilation-speed 0))
           (function continuation)
           (search-var-vector vector))
  (let ((n (1- (length vector))))
    (unless (zerop n)
      (screamer::choice-point-external
       (dotimes (i n)
         (declare (fixnum i))
         (screamer::choice-point-internal (funcall continuation (aref vector i)))))
      (funcall continuation (aref vector n)))))

(defun one-solution (domain var-num predicate-fn heuristic-fn solution-p random)
  (declare #-debug (optimize (speed 3) (safety 0) (debug 0) (compilation-speed 0))
           (function predicate-fn)
           ((or null function) solution-p)
           (fixnum var-num))
  ;; RL-DUMMY-HEAD serves here there role
  ;; of providing a constant head for the RL list
  ;; its introduction made it possible to move
  ;; the big (local ...) form below (funcall predicate-fn ...)
  (with-domain-environment (domain)
    (iter
      (with i = 0)
      (with v = (make-sequence 'search-var-vector var-num :initial-element 0))
      (with l = (cons :start nil))
      (with ltail = l)
      (with rl = nil)
      (with rl-dummy-head = (cons :unknown nil))
      (with solution-p* = (if solution-p solution-p (constantly nil)))
      ;; (declare ((integer 0 ,(1- var-num)) i))
      (declare (fixnum i) (function solution-p*))
      (for c = (a-member-of
                (heuristify-domain random heuristic-fn
                                   ;; for heuristic-fn
                                   i v l rl-dummy-head)))
      ;; update the vector - this is easy (global)...
      (setf (aref v i) c)
      (setf (cdr rl-dummy-head) rl)
      (funcall predicate-fn i v l rl-dummy-head)
      (local
        (let ((cell (cons c nil)))
          (setf (cdr ltail) cell)
          (setf ltail cell))
        (push c rl))
      (local (incf i))
      (until (or (= i var-num) (funcall solution-p* i v (cdr l) rl)))
      (finally (return #+nil
                       ;; TODO maybe clean this up - or make it an option
                       ;; first version: if VAR-NUM limit is reached
                       ;; but no solution is found (because SOLUTION-P
                       ;; is not happy), simply return NIL
                       (when (or (not solution-p)
                                 (funcall solution-p i (cdr l) rl))
                         (iter
                           (for j from 0 below i)
                           (declare (fixnum j))
                           (collect (aref v j))))
                       ;; second version: SOLUTION-P strict at end
                       (progn
                         (when solution-p
                           (unless (funcall solution-p i v (cdr l) rl)
                             (fail)))
                         (iter
                           (for j from 0 below i)
                           (declare (fixnum j))
                           (collect (aref v j)))))))))

(defun search-one (domain var-num predicate-fn heuristic-fn solution-p random)
  (one-value
   (one-solution domain var-num predicate-fn heuristic-fn solution-p random) nil))

(defun search-all (domain var-num predicate-fn heuristic-fn solution-p random)
  (all-values
    (one-solution domain var-num predicate-fn heuristic-fn solution-p random)))

(defun search-n (n domain var-num predicate-fn heuristic-fn solution-p random)
  (n-values (n)
    (one-solution domain var-num predicate-fn heuristic-fn solution-p random)))

#+nil
(pprint
 (make-rule-checks
  (list (make-rule-from-pmc
         '(* ?1 ?2(common-lisp-user::?if (not (equalp ?1 ?2)))))
        (make-rule-from-pmc
         '(* ?1 ?2 ?3 (common-lisp-user::?if (not (equalp ?1 (+ ?2 ?3))))))
        (make-rule-from-pmc
         '(* ?1 ?2 ?3 ?4 (common-lisp-user::?if (not (equalp ?1 (+ ?2 ?3 ?4)))))))
  'i 'v))
