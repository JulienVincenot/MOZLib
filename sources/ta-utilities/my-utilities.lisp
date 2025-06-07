(in-package :ta-utils)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; macros
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmacro | | (&rest l) 
  "Macro substituting \ for lambda.

* Examples:
;;; (mapcar (\ (x) (* x x)) '(1 2 3 4))
"
  (cons 'lambda l))

'| | 

;; https://stackoverflow.com/questions/11073250/tacit-programming-in-lisp
(defmacro -> (obj &rest forms)
  "Similar to the -> macro from clojure, but with a tweak: if there is
  a _ symbol somewhere in the form, the object is not added as the
  first argument to the form, but instead replaces the _ symbol.

* Examples:
;;; (-> '(1 2 3) reverse first)

;;; (-> '(1 2 3) first (* _ 2))
"
  (if forms
      (if (consp (car forms))
          (let* ((first-form (first forms))
                 (other-forms (rest forms))
                 (pos (position '_ first-form)))
            (if pos
                `(-> ,(append (subseq first-form 0 pos)
                              (list obj)
                              (subseq first-form (1+ pos)))
                     ,@other-forms)
                `(-> ,(list* (first first-form) obj (rest first-form))
                     ,@other-forms)))
          `(-> ,(list (car forms) obj)
               ,@(cdr forms)))
      obj))
#|
(-> "TEST"
    string-downcase
    reverse)

(-> "TEST"
    reverse
    (elt _ 1))
|#


(defun destruc (pat seq &optional (atom? #'atom) (n 0))
  "[Aux for dbind]"
  (if (null pat)
      nil
      (let ((rest (cond ((funcall atom? pat) pat)
                        ((eq (car pat) '&rest) (cadr pat))
                        ((eq (car pat) '&body) (cadr pat))
                        (t nil))))
       (if rest
           `((,rest (subseq ,seq ,n)))
           (let ((p (car pat))
                 (rec (destruc (cdr pat) seq atom? (1+ n))))
             (if (funcall atom? p)
                 (cons `(,p (elt ,seq ,n))
                       rec)
                 (let ((var (gensym)))
                   (cons (cons `(,var (elt ,seq ,n))
                               (destruc p var atom?))
                         rec))))))))

(defun dbind-ex (binds body)
  "[Aux for dbind]"
  (if (null binds)
      `(progn ,@body)
      `(let ,(mapcar #'(lambda (b)
                         (if (consp (car b))
                             (car b)
                             b))
                     binds)
        ,(dbind-ex (mapcan #'(lambda (b)
                               (if (consp (car b))
                                   (cdr b)))
                           binds)
                   body))))

;; From Graham's On Lisp, p. 232
(defmacro dbind (pat seq &body body)
  "Generalisation of `destructuring-bind' for any kind of sequence."
  (let ((gseq (gensym)))
    `(let ((,gseq ,seq))
       ,(dbind-ex (destruc pat gseq #'atom) body))))
#|
(dbind (a (b c) d) '( 1 #(2 3) 4)
  (list a b c d))
=> (1 2 3 4)

(dbind (a (b . c) &rest d) '(1 "fribble" 2 3 4) 
  (list a b c d))
=> (1 #\f "ribble" (2 3 4))
|#



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; constants
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Not very accurate, but likely good enough
;; Is the printing of the number or the actual number rounded>
;; 1.6180339887
(defconstant +golden-ratio+ (/ (+ 1 (sqrt 5)) 2))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; function utils
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; From clocc/port/sys.lisp, http://clocc.hg.sourceforge.net/hgweb/clocc/clocc/raw-file/tip/src/port/sys.lisp
;; See also https://stackoverflow.com/questions/15465138/find-functions-arity-in-common-lisp
(defun arglist (fn)
  "Return the signature of the function."
  #+allegro (excl:arglist fn)
  #+clisp (sys::arglist fn)
  #+(or cmu scl)
  (let ((f (coerce fn 'function)))
    (typecase f
      (STANDARD-GENERIC-FUNCTION (pcl:generic-function-lambda-list f))
      (EVAL:INTERPRETED-FUNCTION (eval:interpreted-function-arglist f))
      (FUNCTION (values (read-from-string (kernel:%function-arglist f))))))
  #+cormanlisp (ccl:function-lambda-list
                (typecase fn (symbol (fdefinition fn)) (t fn)))
  #+gcl (let ((fn (etypecase fn
                    (symbol fn)
                    (function (si:compiled-function-name fn)))))
          (get fn 'si:debug))
  #+lispworks (lw:function-lambda-list fn)
  #+lucid (lcl:arglist fn)
  #+sbcl (sb-introspect:function-lambda-list fn)
  #+ccl (ccl:arglist fn)
  #-(or allegro clisp cmu cormanlisp gcl lispworks lucid sbcl scl ccl)
  (error 'not-implemented :proc (list 'arglist fn)))
;; (arglist #'nth)
;; (arglist #'find-if)


;; https://stackoverflow.com/questions/15465138/find-functions-arity-in-common-lisp
(defun arity (fn)
  "Returns the number of required arguments expected by `fn`. Results in an error when called with functions expecting other then required/positional arguments."
  (let ((arglist (arglist fn)))
    (if (intersection arglist lambda-list-keywords)
        (error "~S lambda list ~S does not contain only required/positional arguments" fn arglist)
        (length arglist))))
;; (arity #'nth)
;; (arity #'find-if)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; list utils
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun last-element (inlist)
  (first (last inlist)))

(defun first-n (inlist &optional (number 1))
  (butlast inlist
           (- (length inlist) number)))

(defun ensure-list (x)
  "Ensures that x is a list. If not, a list is wrapped around."
  (if (listp x)
    x
    (list x)))

(defun nested-list? (x)
  "Return T if `x' is a list where the first element again is a list."
  (and (listp x) (listp (first x))))

(defun ensure-nested-list (x)
  "Ensures that x is a nested list. If not, one or two lists are wrapped around."
  (if (listp x)
      (if (listp (first x))
	  x
	  (list x))
    (list (list x))))

(defmethod subseq-before (limiter (proseq sequence))
  "Returns the subsequence before the limiter"
  (subseq proseq 0 (position limiter proseq)))

(defmethod subseq-after (limiter (proseq sequence))
  "Returns the subsequence after the limiter"
  (subseq proseq (1+ (position limiter proseq))))

(defun split-list (n inlist)
  "splits inlist in a list of n sublist of same length (last list may be longer)."
  (let* ((length (length inlist))
	 (sublength (floor length (- n 0))))	; except the last sublength
    (append
     (loop for i from 0 to (- n 2)
	   collect (let ((l (* i sublength)))
		     (subseq inlist l (+ l sublength))))
     (list (subseq inlist (* (1- n) sublength))))))

; (split-list 5 (loop for i from 1 to 10 collect i))
; -> ((1 2) (3 4) (5 6) (7 8) (9 10))
; (split-list 5 (loop for i from 1 to 11 collect i))
; -> ((1 2) (3 4) (5 6) (7 8) (9 10 11)) 


(defun subseqs (sequence positions &optional end)
  "Splits `sequence' into a list of subsequences split at `positions'. Each element in `positions' specifies a position at which a new sublist starts.

; (subseqs '(0 1 2 3 4 5 6) '(0 2 4))
=> ((0 1) (2 3) (4 5 6))

; (subseqs '(0 1 2 3 4 5 6) '(2 4 6) 5)
=> ((2 3) (4))

`positions' are implicitly sorted and positions beyond end are excluded.
"
  (let* ((updated-pos (sort (if end
			       (remove-if #'(lambda (x) (>= x end))
					  positions)
			       positions)
			    #'<))
	(full-pos (append updated-pos
			  (list (if end
				    end
				    (length sequence))))))
    (mapcar #'(lambda (start end)
		(subseq sequence start end))
	    (butlast full-pos)
	    (rest full-pos))
    ))


(defun flat (input)
  (labels ((flat-aux (in)
           (if (null in) nil
               (if (atom in) (list in)
                   (append (flat-aux (rest in)) (flat-aux (first in)))))))
    (reverse (flat-aux input))))

(defun one-level-flat (list)
  "Flattens upmost level of the given form.
Example: (one-level-flat '(((note) (note)) ((rest) (rest)) ((note))))
=> ((note) (note)  (rest) (rest)  (note))"
  (apply #'append list))

(defun inner-flat (list)
  "Flattens sublists.
Example: (inner-flat '(((note) (note)) ((rest) (rest)) ((note))))
=> ((note note)  (rest rest) (note))"
  (mapcar #'flat list))

(defun mat-trans (lists)
  "Matrix transformation.
   (mat-trans '((a1 a2 a3) (b1 b2 b3) (c1 c2 c3) ...))
   => ((a1 b1 c1 ...) (a2 b2 c2 ...) (a3 b3 c3 ...))"
  (apply #'mapcar #'(lambda (&rest all) all) 
	 lists))
; (mat-trans '((a1 a2 a3) (b1 b2 b3) (c1 c2 c3)))

; (mat-trans '(((a 1) (a 2) (a 3)) ((b 1) (b 2) (b 3)) ((c 1) (c 2) (c 3))))


(defun zip (&rest lists)
  "Zips/splices any number of lists together so that in the resulting list elements from different list are alternating.

  (zip '(a b c d e) '(0 1 2 3 4))
  ; => (A 0 B 1 C 2 D 3 E 4)"
  (apply #'mappend #'list lists))


;; from https://gist.github.com/capablemonkey/4133438ba7043af94691a2b54d997e8b#file-cartesian-lisp
(defun aux-cartesian-product (fn a b)
  (mapcan
   (lambda (item-from-a)
     (mapcar
      (lambda (item-from-b)
	(if (listp item-from-a) ; cartesian-product does not work on nested lists
            (append item-from-a (list item-from-b))
            (funcall fn item-from-a item-from-b)))
      b))
   a))
#|
(aux-cartesian-product #'list '(a b) '(1 2))
=> ((A 1) (A 2) (B 1) (B 2))
|#

(defun cartesian-product (fn &rest lists)
  "Note: does not work on nested lists. Use other nested data structures."
  (reduce (lambda (x y)
	    (aux-cartesian-product fn x y))
	  lists))
#|
(cartesian-product #'list '(a b) '(1 2) '(x y))
=> ((A 1 X) (A 1 Y) (A 2 X) (A 2 Y) (B 1 X) (B 1 Y) (B 2 X) (B 2 Y))

(cartesian-product #'list '(a b) '(1 2 3))
|#

  
(defun positions-if (predicate sequence &key key (start 0))
  "Like the Common Lisp function `position-if', but returns all positions in `sequence' that match `predicate'.

; (positions-if #'oddp '((1) (2) (3) (4)) :key #'car)
; => (0 2)"
  (labels ((aux (predicate sequence &key key (start 0) accum)
	     (let ((pos (position-if predicate sequence :start start :key key)))
	       (if pos
		   (aux predicate sequence :start (1+ pos) :key key :accum (cons pos accum))
		   (reverse accum)))))
    (aux predicate sequence :start start :key key)))
#|
(positions-if #'oddp '((1) (2) (3) (4)) :key #'car)
;; comparison
(position-if #'oddp '((1) (2) (3) (4)) :key #'car)
|#

(defun best-if (xs comparison &key (key #'identity))
  "Return the best of XS with respect to COMPARISON (binary Boolean function). In case of ties, the first best is returned."
  (let ((x1 (first xs)))
    (loop for x2 in (rest xs)
       when (funcall comparison (funcall key x2) (funcall key x1))
       do (setf x1 x2))
    x1))
#|
(best-if '(3 5 2 4 1 7 4) #'<)
(best-if '(3 5 2 4 1 7 4) #'>)
(best-if '(3 5 2 4 1 7 4) #'=)
(best-if '((3) (5) (2)) #'< :key #'first)
(best-if () #'< :key #'first)
;; with tie-break
(best-if '((3 1) (1 2) (4 3) (1 4) (2 5)) 
	 #'(lambda (x y) 
	     (let ((x1 (first x))
		   (y1 (first y)))
	       (cond ((< x1 y1) T)
		     ((= x1 y1)
		      ;; tie
		      (> (second x) (second y)))
		     (T NIL)))))
|#

;; (defun at-position (in-list factor offset)
;;   "Returns a list containing every factor-th elements of in-list starting at offset"
;;   (mapcar #'(lambda (i) (nth i in-list))
;;           (arithmeric-series factor offset
;; 			     (- (ceiling (/ (length in-list) factor))
;; 				(ceiling (/ offset factor))))))
(defun at-position (in-list factor offset)
  "Returns a list containing every factor-th elements of in-list starting at offset"
  (let ((xs (apply #'vector in-list)))
    (loop for pos from offset to (1- (length xs)) by factor
       collect (elt xs pos))))
; (at-position '(1 2 3 4 5 6 7 8 9 10) 3 0)
; (at-position '(1 2 3 4 5 6 7 8 9 10) 3 1)
; (at-position '(1 2 3 4 5 6 7 8 9 10 11 12) 3 1)
; (at-position '(1 2 3 4 5 6 7 8 9 10) 3 2)



(defun at-even-position (in-list)
  (at-position in-list 2 0))
; (at-even-position '(1 2 3 4 5 6 7 8))

(defun at-odd-position (in-list)
  (at-position in-list 2 1))
; (at-odd-position '(1 2 3 4 5 6 7 8))

(defun keyword-position (list)
  "Returns the position of the first keyword in list"
  (position (find-if #'keywordp list) list))

(defun before-keyword (inlist)
  "Returns sublist before the first keyword in list."
  (let ((pos (keyword-position inlist)))
    (if pos
	(first-n inlist pos)
      inlist)))

; (before-keyword '(1 2 3 :test 4))

(defun after-keyword (inlist)
  "Returns sublist after the first keyword in list including the keyword."
  (let ((pos (keyword-position inlist)))
    (if pos
	(last inlist (- (length inlist) pos))
      NIL)))

; (after-keyword '(1 2 3 :test1 4 :test2 5))

(defun properties (property-list)
  "Returns all properties of a property list"
  (at-even-position property-list))

(defun plist-values (property-list)
  "Returns all values of a property list"
  (at-odd-position property-list))

(defun remove-property (property property-list)
  "Removes a property and its value out of a property list"
  (let ((pos (position property property-list)))
    (if pos
      (append (subseq property-list 0 pos)
              (subseq property-list (+ pos 2)))
      property-list)))

; (remove-property :test '(:a 1 :test 2 :x 3))

(defun remove-properties (properties property-list)
  "Removes all properties and their values out of a property list"
  (reduce #'(lambda (list val)
	      (remove-property val list))
	  properties :initial-value property-list))

; (remove-properties '(:test1 :test2) '(:a 1 :test1 2 :x 3 :test2 4))


(defun remove-keyargs (to-remove key-args)
  (reduce #'(lambda (l p) (remove-property p l)) 
          to-remove :initial-value key-args))

(defun replace-element (item position list)
  "Replaces nondestructivly one element of a given list by an atom or a list.

Example:

(replace-element 'x 1 '(a b c d e))"
  (append (subseq list 0 position)
          (if (consp item) item (list item))
          (subseq list (1+ position) (length list))))


(defun update-property (plist property newvalue)
  "Replaces nondestructivly the value of property in the property list plist with newvalue. If the property is not already contained in plist then it is added at the end."
  (if (find property plist)
    (let ((pos (position property plist))) 
      (replace-element newvalue (1+ pos) plist))
    (append plist
            (list property newvalue))))

; (update-property '(:a 1 :b 2 :c 3) :b 5)
; (update-property '(:a 1 :b 2 :c 3) :x 42)

(defun update-properties (plist &rest properties-and-newvalues)
  "Replaces nondestructivly the values of properties in the property list plist with given new values. If a property is not already contained in plist then it is added at the end.

  Example:
  (update-properties '(:a 1 :b 2 :c 3) :b 5 :x 42)"
  (reduce #'(lambda (plist property-and-newvalue)
	      (update-property plist (first property-and-newvalue) (second property-and-newvalue)))
	  (plist->pairs properties-and-newvalues)
	  :initial-value plist))

;; based on https://github.com/fukamachi/assoc-utils/blob/master/src/assoc-utils.lisp
(defun plist->pairs (plist)
  (loop :for (key val) :on plist :by #'cddr
    :collect (list key val)))

; (plist->pairs '(:length 1/16 :pitch 60 :velocity 30))
; -> ((:LENGTH 1/16) (:PITCH 60) (:VELOCITY 30))

(defun pairs->plist (pairs)
  (one-level-flat pairs))

; (pairs->plist '((:LENGTH 1/16) (:PITCH 60) (:VELOCITY 30)))
; -> (:LENGTH 1/16 :PITCH 60 :VELOCITY 30)

;;; TODO: If fn expects two args, hand over key as 2nd arg.
(defun map-plist-vals (fn plist)
  "mapcar relative: maps fn over values in plist."
  (apply #'mappend #'(lambda (key val)
		       (list key (funcall fn val)))
         (mat-trans (plist->pairs plist))))

#|
(map-plist-vals #'(lambda (x) (* x 2)) '(:length 1/16 :pitch 60 :velocity 30))

(map-plist-vals #'(lambda (x) (append x x))
           '(:length (-1/20 1/20 1/20 1/20 1/20)
             :pitch (d4 e4 f4 g4)
             :velocity (pp)))
|#

(defun length=1 (inlist)
  (= (length inlist) 1))

(defun append-atoms (inlist &rest atoms)
  "takes a list and an arbitrary number of atoms and puts all those in one list"
  (append inlist atoms))

(defun mappend (func &rest inlists)
  "Apply func to each element of inlist and append the result."
  (apply #'append (apply #'mapcar func inlists)))

; (mappend #'list '(1 2 3) '(a b c))


(defun map-pairwise (fn xs)
  "Collects the result of applying the binary function gn on all pairwise combinations of elements in xs, i.e.,11 ((fn xs1 xs2) .. (fn xs1 xsN) (fn xs2 xs3) .. (fn xsN-1 xsN))."
  (if xs 
      (let ((x1 (first xs))
	    (xr (rest xs)))
	(append (mapcar #'(lambda (x2) (funcall fn x1 x2)) xr)
		(map-pairwise fn xr)))
    NIL))


;; Based on https://groups.google.com/forum/#!topic/comp.lang.lisp/xDaUVFDnp5w
(defun map-neighbours (func list &optional n)
  "Applying `func' to consecutive sublists of `list'. The number of arguments (must be required args) expected by func implicitly specifies the number of consecutive elements to which the function is applied. This can be overwritten by the optional `n'.

Example:

;;; (map-neighbours #'(lambda (x y) (list x y)) 
;;;                 '(1 2 3 4 5 6))
;;; => ((1 2) (2 3) (3 4) (4 5) (5 6))

Note: function does not work recursively: if a sublist is changed by func the next occurance of the processed value is not changed as well. For example, in the code above, if the number 2 would be 'changed' in the first sublist result, the unchanged 2 would still be an argument to the second call of `func'."
  (let* ((n2 (if n n (arity func))))
    (loop for l on list 
      when (>= (length l) n2)
      collect (apply func (subseq l 0 n2)))))

#|
(map-neighbours #'(lambda (x y) (list x y)) 
                '(1 2 3 4 5 6))
=> ((1 2) (2 3) (3 4) (4 5) (5 6))

(map-neighbours #'+ '(1 2 3 4 5 6)
                3)
=> (6 9 12 15)

Note: doing the same with loop

(loop
  for (key value) on '(1 2 3 4 5 6) by #'cddr
  when value
  collect (list key value))
=> ((1 2) (3 4) (5 6))

|#



(defun all-members? (items inlist &rest args)
  (every #'(lambda (item)
             (apply #'member item inlist args))
         items))

(defun last-eq? (inlist item)
  (eq (first (last inlist)) ; ai
      item))

(defun items-ordered-as? (items ordered-list)
  "Are the (possible less) elements in items in same order as elements in ordered-list"
  (apply #'<
         (mapcar #'(lambda (item) 
              (position item ordered-list))
          items)))

(defun find-recursively (item inlist &key (test #'eql))
  "Returns the first element of inlist matching item according test. Inlist is checked recursively (therefore function can not find a list item in inlist!)."
  (find-if #'(lambda (x)
               (funcall test x item))
           (flat inlist)))

 
(defun dx->x (numbers &optional (start 0))
  (labels ((aux (numbers result)
	     (if numbers
		 (aux (rest numbers)
		      (cons (+ (first numbers)
			       (first result))
			    result))
	       (reverse result))))
    (aux numbers (list start))))

; (dx->x '(1 2 1 1)) -> (0 1 3 4 5)

(defun x->dx (numbers)
  (labels ((aux (numbers result)
	     (let ((a (nth 0 numbers))
		   (b (nth 1 numbers)))
	       (if (and a b)
		   (aux (rest numbers)
			(cons (- b a)
			      result))
	       (reverse result)))))
    (aux numbers ())))

; (x->dx '(0 1 3 4 5)) -> (1 2 1 1)

;; from Common Music 2.12 by Rick Taube (though orig was a defun)
;; https://github.com/ormf/cm
(defmethod rescale ((value number) (oldmin number) (oldmax number) (newmin number) (newmax number))
  (+ (* (/ (- newmax newmin) (- oldmax oldmin)) (- value oldmin))
     newmin))
; (rescale 4 0 10 0 1)

(defmethod rescale ((values list) (oldmin number) (oldmax number) (newmin number) (newmax number))
  (loop for value in values
     collect (rescale value oldmin oldmax newmin newmax)))
; (rescale '(4 6 8) 0 10 0 1)

(defun scale-sum (xs sum)
  "Scales all values in xs (a list of numbers) so that their total is sum"
  (let ((total (reduce #'+ xs)))
    (loop for x in xs
       collect (* (/ x total) sum))))
; (scale-sum '(1/2 1/2 1/2) 1)
; (scale-sum '(10  10 10) 100)


; https://stackoverflow.com/questions/9444885/common-lisp-how-to-return-a-list-without-the-nth-element-of-a-given-list
;; (defun remove-nth (n list)
;;   "Return list with element at position n (int) removed."
;;   (declare
;;     (type (integer 0) n)
;;     (type list list))
;;   (if (or (zerop n) (null list))
;;     (cdr list)
;;     (cons (car list) (remove-nth (1- n) (cdr list)))))
;; https://stackoverflow.com/questions/4093845/is-there-a-common-lisp-macro-for-popping-the-nth-element-from-a-list
(defun remove-nth (list n)
  (remove-if (constantly t) list :start n :end (1+ n)))

(define-modify-macro remove-nth-f (n) remove-nth "Remove the nth element")

;; https://stackoverflow.com/questions/4093845/is-there-a-common-lisp-macro-for-popping-the-nth-element-from-a-list
(defmacro pop-nth (xs n)
  "Return the n-th element of xs and remove that element from xs."
  (let ((n-var (gensym)))
    `(let ((,n-var ,n))
       (prog1 (nth ,n-var ,xs)
         (remove-nth-f ,xs ,n-var)))))

;; https://stackoverflow.com/questions/4387570/in-common-lisp-how-can-i-insert-an-element-into-a-list-in-place#4388263
(defun insert-after (lst index newelt)
  "Returns lst with newelt inserted after the element at position index. It is not possible with this function to insert an element at the very beginning, but you can do that simply with cons."
  (push newelt (cdr (nthcdr index lst))) 
  lst)
;; (insert-after '(a c d) 0 'test)   => (A TEST C D)


(defun filter (test sequence &key from-end (start 0) end count key)
  "Return a copy of sequence with all elements for which test returns nil removed. This is a just a better named variant of the primitive remove-if-not."
  (remove-if-not test sequence :from-end from-end :start start :end end :count count :key key))


(defun remove-multiple (items sequence &key from-end test test-not (start 0)
				    end count key)
  "Same as REMOVE, but removes all ITEMS.

  Example:
  (remove-multiple '(1 3) '(0 1 2 3 4 5))
  => (0 2 4 5)"
  (reduce #'(lambda (seq item) (remove item seq :from-end from-end :test test :test-not test-not :start start
				       :end end :count count :key key))
	  items :initial-value sequence))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; math utils
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun between? (min value max)
  "Returns value when the value is inside the interval [min, max], NIL otherwise"
  (when (and (>= value min)
             (<= value max))
    value))

(defun arithmeric-series (factor offset length)
  (let (result)
    (reverse
     (dotimes (i length result)
       (push (+ (* i factor) offset)
             result)))))

; (arithmeric-series 2 0 7)

#|
(defun average (&rest numbers)
  (if (= (length numbers) 0)
    (error "Can not calculate the average of nothing") 
    (/ (apply #'+ numbers)
       (length numbers))))
|#

; https://stackoverflow.com/questions/33550663/average-using-rest-in-lisp
(defun average (&rest parameters)
  (if parameters  ; don't divide by 0 on empty list
      (/ (apply #'+ parameters) (length parameters))
      0))

; (average 1 2 3 4) 

;; https://rosettacode.org/wiki/Averages/Median#Common_Lisp
(defun select-nth (n list predicate)
  "Select nth element in list, ordered by predicate, modifying list."
  (do ((pivot (pop list))
       (ln 0) (left '())
       (rn 0) (right '()))
      ((endp list)
       (cond
        ((< n ln) (select-nth n left predicate))
        ((eql n ln) pivot)
        ((< n (+ ln rn 1)) (select-nth (- n ln 1) right predicate))
        (t (error "n out of range."))))
    (if (funcall predicate (first list) pivot)
      (psetf list (cdr list)
             (cdr list) left
             left list
             ln (1+ ln))
      (psetf list (cdr list)
             (cdr list) right
             right list
             rn (1+ rn)))))
(defun median (list predicate)
  (select-nth (floor (length list) 2) list predicate))

; (median '(1 2 3 4) #'>) 



(defun integrate (durations time)
  "Return the running sum of the durations, starting from time"
  (when durations
    (cons time
          (integrate (rest durations) (+ time (first durations))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Pitch class utilities
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod pitch->pc ((pitch integer))
  "Translate a pitch (MIDI note number) into a pitch class (integer), assuming 12-EDO."
  (mod pitch 12))

(defmethod pitch->pc ((pitches list))
  "Translate a list of pitches (MIDI note numbers) into corresponding pitch classes (integers), assuming 12-EDO."
  (mapcar #'pitch->pc pitches))
; (pitch->pc '(60 64 67))

(defun pc-transpose-to-0 (pc-set)
  "Transpose PC-SET such that first element is 0."
  (let ((first (first pc-set)))
    (loop for pc in pc-set
       collect (pitch->pc (- pc first)))))
; (pc-transpose-to-0 '(2 6 9))

;; Algorithm inspired by http://openmusictheory.com/normalOrder.html (and https://www.mta.ca/pc-set/pc-set_new/pages/page04/page04.html)
(defun pitches->pc-normal-form (pitches)
   "Translate a list of pitches (MIDI note numbers) into a PC set in normal form (represented by a list of integers).

NOTE: Somewhat simplified: in case of tie between not only outmost but also 2nd-output interval in terms for compactness, simply the first of tie is chosen. This could be fixed with recursive function, but I don't need that for my purposes.

NOTE: With sets of great intervallic regularity, the ordering that begins with the lowest number should be chosen, but again this function is simplified.
"
   (let* ((aux (remove-duplicates (pitch->pc pitches)))
	 (l (length aux)))
    (if (< l 2)
	aux
	(let* (;; Compiler note : "could not stack allocate..." -- why?
	       (pcs (sort aux #'<))
	       (intervals-between (pitch->pc (x->dx (append pcs (list (first pcs))))))
	       (max-interval (apply #'max intervals-between))
	       (max-interval-positions (loop for pos in (positions-if (lambda (x) (= x max-interval)) intervals-between)
					  ;; Position to the right...
					  collect (mod (1+ pos) l)))
	       (candidate-forms
		(loop for start-position in max-interval-positions
		   collect (if (= start-position 0)
			       pcs 
			       (append
				(subseq pcs start-position l)
				(subseq pcs 0 start-position)))))
	       ;; Wrap in list a candidate-form and PC interval between its first and but-last PC
	       (annotated-candidate-forms
		(loop for form in candidate-forms
		   collect (list form
				 (pitch->pc (- (nth (- l 2) form)
					       (nth 0 form)))))))
	  ;; (break)
	  ;; NOTE: Simplification: take 
	  (first ;; skip annotating interval again
	   (best-if annotated-candidate-forms (lambda (x y) (< (second x) (second y)))))
	  ))))
#|
(pitches->pc-normal-form '(2 14 14))
(pitches->pc-normal-form '(64 67 72))
(pitches->pc-normal-form '(64 67 72 76))
(pitches->pc-normal-form '(67 72 75))
(pitches->pc-normal-form '(62 67 71 74))
(pitches->pc-normal-form '(60 64 67 70))
;; Example with tied surrounding most compact interval, see https://www.mta.ca/pc-set/pc-set_new/pages/page04/page04.html
(pitches->pc-normal-form '(1 4 7 8 10))
; => (4 7 8 10 1) ; but (7 8 10 1 4) would even be more compact (at interval between first and third-last, see webpage above)
(pitches->pc-normal-form '(2 4 8 10)) ; any order would do here...
|#

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; further utils
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun convert-to-package (form from-package to-package)
  "converts the given form in the given package, i.e. if package is not the current package
it will add <package-name>:: in front of every symbol."
  (if (eq (find-package from-package) (find-package to-package))
    form
    (cond ((null form) nil)
          ((listp form)
           (loop for item in form 
                 collect  (convert-to-package item from-package to-package)))
          ((constantp form) form)
          ((symbolp form)
           (if (eq (symbol-package form) 
                   (find-package from-package))
             (intern (symbol-name form) to-package)    ; converts it to to-package
             form))                       ; pass it unchanged otherwise
          (T (error "Do not know how to handle ~A" form)))))

;;; we cant know beforehand which internal CMN symbols a user will use
;;; so this hairball insures that a cmn variable or function call gets
;;; evaled in the cmn package, regardless of what package the symbols
;;; are actually in. so we can type (meter 2 4) in any 
;;; package, and the form will be evaluated as if it were typed in 
;;; the cmn package.


(defun symbol-to-keyword (symbol)
  (intern (symbol-name symbol) :keyword))


;; TA: Should this not be simply a function?
(defmacro format-to-file (path format-string &rest format-args)
  "The given lisp expr will be saved to the given path."
  (let ((out-sym (gensym)))
    `(with-open-file (,out-sym ,path
                               :direction :output
                               :if-exists :supersede)
       (format ,out-sym ,format-string ,@format-args))))

;; https://riptutorial.com/common-lisp/example/19473/reading-and-writing-entire-files-to-and-from-strings
(defun read-file (infile)
  "Read an entire file into a new string and return it. The result is NIL if the file does not exists."
  (with-open-file (instream infile :direction :input :if-does-not-exist :error)
    (when instream 
      (let ((string (make-string (file-length instream))))
        (read-sequence string instream)
        string))))

(defun write-file (outfile string &key (action-if-exists :supersede))
  "Write a string to a file. `action-if-exists` specifies what to do if the file already exists."
  (check-type action-if-exists (member nil :error :new-version :rename :rename-and-delete 
				       :overwrite :append :supersede))
  (with-open-file (outstream outfile :direction :output :if-exists action-if-exists)
    (write-sequence string outstream)))



(defun recursive-apply (form)
  "Somewhat like eval, but no evaluation of symbols"
  (cond  
   ((atom form) form)
   ((eq (first form) 'quote)  (second form))
   ((consp form) 
    ;; call the first of an expr with its rest
    (let ((fun (first form)))
      (apply fun (mapcar #'(lambda(x)
                             (recursive-apply x))
                         (rest form)))))
   ;; !! cmu and SBCL compiler say: Note: Deleting unreachable code.
   (T (error "Unknown expr to evaluate! Calling my-eval with ~A" form))))

(defun save-lisp-expr (expr &optional (path
				       #-ccl (pathname "score.lisp")
				       ;; #-ccl (path "score.lisp")
				       #+ccl (ccl:choose-new-file-dialog)))
  "The given lisp expr will be saved to the given path."
  ;(print 'test)
  (format-to-file path "~:W" expr))

(defun concatenate-symbols (&rest args)
  "Takes an arbitrary number of symbols, strings or numbers and combines them to a single symbol" 
  ;; the optional arg package of intern is not used!
  (flet ((make-a-string (arg)
           (when (not (or (numberp arg)
                          (symbolp arg)
                          (stringp arg)))
             (error "concatenate-symbols can not handle ~A as an input argument" arg))
           (if (numberp arg)
                                (format NIL "~A" arg)
                                (string arg))))
    (intern (apply #'concatenate 'string (mapcar #'make-a-string args))
            :s&p2cmn)))

(defun alternate (func1 func2 list)
  "Calls func1 and func2 alternatively on the elements of list and collects the returning values in a list"
  (loop  for i below (length list)
         collect (if (evenp i)
                   (funcall func1 (nth i list))
                   (funcall func2 (nth i list)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; system
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; TODO: see shell defs below to learn how you could improve this def...
;;

#| ;; definition commented out to remove dependency to system port

(defun bash (cmd &key args (gui? nil) (init-file "~/.bash_profile"))
  "A portable implementation for calling the bash shell. Executes cmd with args and shows the output. If gui? is nil (the default), then the output is written to *standard-output*. Otherwise, the output is written into a special window (presently, this is only supported for LispWorks where a CAPI pane is opened). 
NB: this function does not return before the cmd is finished -- consider running it is its own thread (e.g. using port:make-process)."
  (let* ((out-stream (if gui?
                        #+lispworks (capi:collector-pane-stream 
                                     (capi:contain (make-instance 'capi:collector-pane 
                                                                  :title "Shell output")))
                        #-lispworks T
                      T))
	 ;; In contrast to SBCL on Linux, lispworks on MacOS does not load all bash init files (why?) -- so I do it by hand... 
         (my-command (format nil "\"~a~a~{ ~a~}\"" 
                             ;; init file
                             (if init-file 
                                 (format nil ". ~a; " init-file)
                               "")
                             ;; command
                             cmd args))
;        (my-command (format nil "\"~a~{ ~a~}\"" 
;                           ;; command
;                            cmd args))
        my-pipe)
    ;;
    ;; call programm
    ;;

;;     ;; first some old and unused stuff, kept here just in case...
;;
;;     ;; SBCL requires a workaround, because sb-ext:run-program (which
;;     ;; is called by port:pipe-input) expects a program which it can
;;     ;; find in the file system (e.g. no script is permitted). However,
;;     ;; I need to feed the shell the usual init files (which causes
;;     ;; my-command to be a small shell script). So, my-command is first
;;     ;; written to tmp-file-path, tmp-file-path is made executable and
;;     ;; then called.
;;     #+SBCL
;;     (let* ((i 1) (tmp-dir "/tmp/")
;; 	   ;; multiple calls from the same running Lisp result in
;; 	   ;; multiple independent server scripts, but when restarting
;; 	   ;; Lisp then these scripts are overwritten
;; 	   (tmp-file-path (format nil "~AStartOzServer-~A.sh" tmp-dir (incf i))))         
;;       (format out-stream ";; $ echo '~A' > ~A ~%" my-command tmp-file-path)
;;       (with-open-file (my-stream tmp-file-path
;; 				 :direction :output
;; 				 :if-exists :supersede)
;; 	(format my-stream "~A" my-command))
;;       ;; make tmp-file-path executable      
;;       (format out-stream ";; $ /bin/chmod +x ~A~%" tmp-file-path)
;;       (port:run-prog "/bin/chmod" :args (list "+x" tmp-file-path))
;;       (format out-stream ";; $ ~a~%" tmp-file-path)
;;       (setf my-pipe (port:pipe-input tmp-file-path)))
    
;;     #-SBCL ;; tested for LispWorks
;;     (progn 
;;       (format out-stream ";; $ ~a~%" my-command)
;;       (setf my-pipe (port:pipe-input my-command)))


    ;; bash -c reads all profile/rc files, but only on linux..
    ;; my-command can not read directly, because (i) I need to have the full environment and (ii) SBCL requires a program which it can find in the file system (e.g. no script is permitted in order to load init files). /bin/bash is such a program..
    (format out-stream ";; $ /bin/bash -c ~a~%" my-command)
    (setf my-pipe (port:pipe-input "/bin/bash" "-c" my-command))

    ;;
    ;; write program output
    ;;
    (loop
     (let ((line (read-line my-pipe nil nil)))
       (unless line (return))
       (format out-stream "~a~%" line)))
    ))

|#

; (bash "ls" :args (list "-l" "~"))
;; NB: the PATH is not properly printed (compare with output from env), why?
; (bash "echo" :args (list "$PATH"))
; (bash "env")



#+CMU
;; wildcard Unterstuetzung kann fuer /bin/sh mit Option -f ausgeschaltet werden
(defun shell-fn (string)
  "'Evaluates' string in /bin/sh and returns result as string"
  (unwind-protect 
      (let* ((process (extensions:run-program "/bin/sh" (list "-c" string)
					      :output :stream
					      :error :stream
					      :wait NIL))
	     (err (util::read-as-string (ext:process-error process)))
	     (out (util::read-as-string (ext:process-output process))))
	(ext:process-close process)
	(if (not (string= err ""))
	    (error err)
	  out))))
#+CMU
(defun shell (string &key (wait T) (output T))
  "'Evaluates' string in /bin/sh and outputs result on *standard-output*. Start a child process and does not wait until process is finished. Therefore output of process may be mixed in outputs of other programm..."
  (unwind-protect 
      (let* ((process  (ext:run-program "/bin/sh" (list "-c" string)
					:output output
					:wait wait)))
	(ext:process-close process)
	process)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; for documentation
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun apropos-function-documentation (my-string &optional (package *package*))
  "Lists all functions that contain `my-string' alongside their documentation in a list of pairs
  (<function-symbol> <doc-string>)

  Examples:
  ;;; (apropos-function-documentation \"list\")"
  (mapcar #'(lambda (x) (list x (documentation x 'function)))
          (remove-if-not #'fboundp (apropos-list my-string package))))

; (apropos-function-documentation "list")
; (apropos-function-documentation "map")



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; for debugging
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmacro mac (body)
  "A shorthand to display macroexpansion"
  `(pprint (macroexpand-1 ',body)))

(defvar *dbg-ids* NIL "Identifiers used by dbg")

;; was once named debug, but symbol debug is already defined in common-lisp (see opimize)
(defun dbg (id format-string &rest args)
  "Print debugging info if (DEBUG ID) has been specified"
  (when (member id *dbg-ids*)
    (fresh-line *debug-io*)
    (apply #'format *debug-io* format-string args)))

(defun start-debug (&rest ids) 
  "Start debug output on the given ids."
  (setf *dbg-ids* (union ids *dbg-ids*)))

(defun stop-debug (&rest ids) ; was once named undebug
  "Stop debug on ids. With no ids stop debugging altogether."
  (setf *dbg-ids* (if (null ids) NIL
                      (set-difference *dbg-ids* ids))))


#|
(defun test (x)
  (tu:dbg 'test "test")
  (list x x))

(tu::start-debug 'test)

(loop repeat 10
  collect (test 1))

(tu::stop-debug) 

|#
