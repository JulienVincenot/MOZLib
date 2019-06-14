(defpackage patch-work 
  (:use :common-lisp :iterate :sb-ext)
  (:nicknames :pw))




(defun get-all-symbols (&optional package)
  (let ((lst ())
        (package (find-package package)))
    (do-all-symbols (s lst)
      (when (fboundp s)
        (if package
            (when (eql (symbol-package s) package)
              (push s lst))
            (push s lst))))
    lst))


(in-package patch-work)
; (eval-when (:compile-toplevel :load-toplevel :execute)
 ; (require 'iterate))

(defun lst (&rest args) 
  "Return constructs and returns a list of its arguments.
  Because LIST won't work in Max..."
    args) ;; because list won't work in Max...

(defun pw-sample (list no-of-points)
    "NEW This function samples a list of coordinate pairs X and Y from a BPF
    such as '((0 0)(0.25 1)(0.5 0.5)(0.75 1)(1 0))
    and resamples it by a given amount of points. The function returns a list of Y values for each point.
 
   Its purpose is to mimick the behavior of pwgl-sample or om-sample from XY pairs
    provided by Max's function object via the listdump message."

    (let* ((xes (mapcar #'first list))
          (minx (pw::g-min xes))
          (maxx (pw::g-max xes)))
      (loop for i in (pw::interpolation minx maxx (floor no-of-points) 0)
        collect (pw::x-transfer list i))))

(defun pw-sample-xy (list no-of-points)
    "NEW This function samples a list of coordinate pairs X and Y from a BPF
    such as '((0 0)(0.25 1)(0.5 0.5)(0.75 1)(1 0))
    and resamples it by a given amount of points. The function returns a list of lists of XY pairs for each point.
 
   Its purpose is to mimick the behavior of pwgl-sample or om-sample from XY pairs
    provided by Max's function object via the listdump message."

    (let* ((xes (mapcar #'first list))
          (minx (pw::g-min xes))
          (maxx (pw::g-max xes)))
      (loop for i in (pw::interpolation minx maxx (floor no-of-points) 0)
        collect (list i (pw::x-transfer list i)))))





(defmacro while (form &body body)
  `(loop while ,form do (progn ,@body)))

(defun repeat-n  (self n) 
"Repeats <n> times the evaluation of <self> and collects the <n> results into a list.

Ex. (repeat-n (+ 1 1) 4) ==> (2 2 2 2)"
  (let (rep)
    (loop for i from 1 to n do
          (push self rep))
    (reverse rep)))


;;;;;; list! ;;;;;;

(defun list! (thing)
  "Returns a list containing <thing> or <thing> if it's already a list."
  (if (listp thing) thing (list thing)))



;;;;;; SORT-LIST ;;;;;;

(defun sort-list (list &optional (pred '<) (key nil))
  
  "This module sorts  a list. By default, the order of the sort is ascending
  If <test> is '< the order is ascending, '> indicates descending,
and '= keeps the order the same. One can also open a third input <key> for a
function. The function <key> evaluates each element of the list <lst> and the
result is then sorted according to the parameter <test>.
(sort-list '(3 13 15 17 9 10 16 3 6 7 1 12 6)) will return
 PWGL->(1 3 3 6 6 7 9 10 12 13 15 16 17),

(sort-list '(3 13 15 17 9 10 16 3 6 7 1 12 6)  '>)
 will return
PWGL->(17 16 15 13 12 10 9 7 6 6 3 3 1),

(sort-list '((13 13 4) ( 3 9 3) ( 16 16 1) (11 13 6) )   '<   'first)
will return
PWGL->((3 9 3) (11 13 6) (13 13 4) (16 16 1)), and

(sort-list '((13 13 4) ( 3 9 3) ( 16 16 1) (11 13 6) )   '<   'second)
will return
PWGL->((3 9 3) (13 13 4) (11 13 6) (16 16 1))"
  
  
  (sort list pred :key key))
        





;;;;;; included? ;;;;;

; (defun included? (lst1 lst2 &optional (test 'equal))
;   (every 'identity (mapcar #'(lambda (x) (member x lst2 :test test)) lst1)))

;-------UNION---------

(defun noRep-union (lists oper test key)
  (let ((the-union (list! (car lists))))
  (dolist (one-in (cdr lists))
      (setq the-union (funcall oper the-union (list!  one-in)  :test test :key key)))
  the-union))

(defmethod x-union ((l1? list) (l2? list) 
                     &optional (test 'equal) (key 'identity)
                     &rest lists)
 "Merges lists (<l1?> and <l2?> and possibly more) into a single list with no repetitions. 

<test> is a function or function name for a binary comparison.
<key> is a name or function name to apply to the elements before comparison.

Ex. (x-union '(1 2 3 4 5) '(4 5 6 7 8)) => (8 7 6 1 2 3 4 5)"
  (noRep-union  (list* l1? l2? (and lists (list! lists))) 'union test key))

;-------INTERSECTION---------

(defmethod x-intersect ((l1? list) (l2? list)
                         &optional (test 'equal) (key 'identity)
                         &rest list)
"Returns the intersection (i.e. common elements) from lists (<l1?> and <l2?> and possibly more) into a single list.

<test> is a function or function name for a binary comparison.
<key> is a name or function name to apply to the elements before comparison.

Ex. (x-intersect '(1 2 3 4 5) '(4 5 6 7 8)) => (4 5)"
  (nreverse (noRep-union (list* l1? l2? (and list (list! list))) 'intersection test key)))

;-------XOR---------

(defmethod x-xor ((l1? list) (l2? list)
                   &optional (test 'equal) (key 'identity)
                   &rest list) 
  "XOR's lists (<l1?> and <l2?> and possibly more) into a single list.
XOR keeps only the elements present in one list and not in the other one(s).

<test> is a function or function name for a binary comparison.
<key> is a name or function name to apply to the elements before comparison.

Ex. (x-xor '(1 2 3 4 5) '(4 5 6 7 8)) => (1 2 3 6 7 8)"
  (nreverse (noRep-union (list* l1? l2? (and list (list! list))) 'set-exclusive-or test key)))


;-------XDIFF---------

(defmethod x-diff ((l1? list) (l2? list)
                    &optional (test 'equal) (key 'identity)
                    &rest list)
"Returns the list of elements present in <l1?> but not in <l2?>.

<test> is a function or function name for a binary comparison.
<key> is a name or function name to apply to the elements before comparison.

Ex. (x-diff '(1 2 3 4 5) '(4 5 6 7 8)) => (1 2 3)"
  (nreverse (noRep-union (list* l1? l2? (and list (list! list))) 'set-difference test key)))

;------INCLUDED?------

(defmethod included? ((lst1 list) (lst2 list) &optional (test 'equal))
 "Tests if <lst1> is included in <lst2>.

<test> is a function or function name for a binary comparison.

Ex. (included? '(1 2 3 4 5) '(4 5 6 7 8)) => NIL
Ex. (included? '(5 6) '(4 5 6 7 8)) => T"
  (subsetp lst1 lst2 :test test))














;;;;;; x->dx ;;;;;; 

(defun x->dx (xs)
  "Returns the list of the intervals between the contiguous values of a list <xs>.
<xs> can also be a list of lists of values.
For example
(pw::x->dx '(0 4 5 9 6 2 3 3))
 will return (4 1 4 -3 -4 1 0)"
  (loop for x in xs
        for y in (rest xs)
        collect (- y x)))

;;;;;; dx->x ;;;;;; 

(defun dx->x (start dxs)
  "Constructs a list of numbers from <start> with the consecutives intervals  of
<dxs>.
<dxs> can also be a list of lists of intervals.
For example

(pw::dx->x  0  '(0 4 5 9 6 2 3 3))
will return  (0 0 4 9 18 24 26 29 32)

and
(pw::dx->x  8  '(0 4 5 9 6 2 3 3))
will return (8 8 12 17 26 32 34 37 40)"
  
  
    (cons start
	(loop for dx in dxs
	   collect (incf start dx))))



;-----------FLAT


(defmacro newl (lst elem) `(push ,elem ,lst))

(defmacro nextl (lst &optional symb)
  (if symb
    `(setq ,symb (pop ,lst))
    `(pop ,lst) ))

(defmacro vref (vect index) `(svref ,vect ,index))
(defmacro vset (vect index val) `(setf (svref ,vect ,index) ,val))


(defun rev-flat (lst)  
  (let ((l ()))
    (while lst
           (if (not (consp (car lst)))
             (newl l (nextl lst))
             (setq l (nconc (rev-flat (nextl lst)) l))))
    l ))


(defun lo-flat (list) 
  (cond ((atom list) list)
        ((atom (car list)) (cons (car list) (lo-flat (cdr list))))
        ((atom (caar list)) (apply 'append list))
        (t (cons (lo-flat (car list)) (lo-flat (cdr list))))))

(defmethod flat-low ((list list))
  "Flattens lowest level sublists. Ex:
'( ((1 2 3)  (4 5 6))  ((7 8 9) (10 11 12)) ) becomes:
((1 2 3 4 5 6) (7 8 9 10 11 12))"
  (lo-flat list))

(defmethod flat-once ((list list))
  "Flattens the first level of a list of lists.Ex:
'( ((1 2 3)  (4 5 6))  ((7 8 9) (10 11 12)) ) becomes:
((1 2 3) (4 5 6) (7 8 9) (10 11 12))"
  (if (consp (car list))
    (apply 'append list)  list))

(defmethod flat-one ((list list))
  (loop for item in list
        append (list! item)))

(defmethod n-flat-one ((list list) (level integer))
  (let ((rep list))
    (loop for i from 1 to level do
          (setf rep (flat-one rep)))
    rep))


(defmethod flat ((lst list) &optional (level nil)) 
 "Transforms a tree-list (i.e. a list of lists) into a flat list.
If <level> is 1 (resp n) remove 1 (resp. n) level(s) of list imbrication.
If <level> is NIL (default) remove all levels of imbrication, down to a purely flat list.

Ex. (flat '((a b) c ((d e) f)))  =>  (a b c d e f)
Ex. (flat '((a b) c ((d e) f)) 1)  =>  (a b c (d e) f)    [1 level of parenthesis]
"
  (cond
   ((null level) (nreverse (rev-flat lst)))
   ((= level 0) lst)
   ((and (integerp level) (plusp level))
    (n-flat-one lst level))
   (t lst)))

(defun arithm-ser (begin step end)
  "Returns a list of numbers starting from begin to end with increment step. For
example:    (pw::arithm-ser   0  1  12 )
returns: (0 1 2 3 4 5 6 7 8 9 10 11 12)"
  
  (if (plusp step)
      (loop for i from begin to end by step
	 for counter from 1 to #.most-positive-fixnum
	 collect i)
      (loop for i from begin downto end by (abs step)
	 for counter from 1 to #.most-positive-fixnum
	 collect i)))


(defmethod geometric-ser ((seed number) (factor number) (limit number)
                           &optional (nummax (expt 2 32)) (begin 0) (end (expt 2 32)))
 
  "Geometric series: starts from <seed> and returns a list with f(i) = factor * f(i-1)
<limit> is the limit of returned list list.

<begin> and <end> allow to delimit the series.
<nummax> allows to limit the number of elements.

Ex. (pw::geometric-ser 1 3 60) => (1 3 9 27)
Ex. (pw::geometric-ser 2 3 60) => (2 6 18 54)
" 
  (let ((test (if (< factor 1) #'< #'>)) res)
    (do  ((accum seed (* accum factor)) (index 0 (1+ index)))
         ((funcall test accum limit) (nreverse res))
      (when (> (length res) nummax) (return (nreverse res)))
      (when (> index end) (return (nreverse res)))
      (unless (< index begin) (push accum res)))))



(defmethod fibo-ser ((seed1 number) (seed2 number) (limit number)
                      &optional  (begin 0) (end MOST-POSITIVE-FIXNUM)) 
 "Fibonacci series: f(i) = f(i-1) + f(i-2)
<seed1> = f(0) the first element of the series
<seed1> = f(1) the second element of the series
<limit> is the limit of this list. 

<begin> and <end> can be used to limit the calculation of the series.

Ex. (pw::fibo-ser 0 1 10) => (0 1 1 2 3 5 8)
Ex. (pw::fibo-ser 1 3 10) => (1 3 4 7)"
  (labels ((compute-fibo (a b m n)
             (cond ((> m n) (values nil nil))
                   ((= m n) (values a b))
                   (t (compute-fibo b (+ a b) (1+ m) n)))))
    (let (res)
      (multiple-value-bind 
        (ac1 ac2) (compute-fibo seed1 seed2 0 begin) (list ac1 ac2)
        ;(if (< begin 2)
        (if (and ac1 (> limit ac1)) (push ac1 res) )
        (if (> limit ac2) (push ac2 res))
        (setf res (dotimes (k (- end begin 1) (nreverse res))
                    (multiple-value-bind (a b) (compute-fibo ac1 ac2 (+ begin k) (+ begin k 1))
                      (setq ac1 a ac2 b) (if (> limit b)
                                           ; (and (<= (length res) nummax) (> limit b))
                                           (push b  res) 
                                           (return (nreverse res))))) )
        ))))



;;;;; RANDOM  ;;;;;;


(defun permut-random (list)
  "Random permutation of LIST. Non-destructive."
  (flet ((vector-shuffle (vec)
	   (loop for ii downfrom (1- (length vec)) to 1
	      for jj = (random (1+ ii))
	      unless (= jj ii)
	      do (rotatef (aref vec ii) (aref vec jj))
	      finally (return vec))))
    (coerce (vector-shuffle (coerce list 'vector)) 'list)))

(defun nth-random (list)
  "Pick a random element of LIST."
  (nth (random (length list)) list))


(defun permut-circn (list &optional (nth 1))
  "Returns a circular permutation of <list> starting from its <nth> element.

Ex. (permut-circn '(a b c d e) 1) => (b c d e a)
Ex. (permut-circn '(a b c d e) 3) => (d e a b c)"
  (when list
    (let ((length (length list)) n-1thcdr)
      (setq nth (mod nth length))
      (if (zerop nth) list
          (prog1
            (cdr (nconc (setq n-1thcdr (nthcdr (1- nth) list)) list))
            (rplacd n-1thcdr ()))))))

(defun permut-circ (list &optional (nth 1))
 "Returns a circular permutation of <list> starting from its <nth> element.

Ex. (permut-circ '(a b c d e) 1) => (b c d e a)
Ex. (permut-circ '(a b c d e) 3) => (d e a b c)"
  (permut-circn (copy-list list) nth))




































;;;;;;;;;;;;;;;;; from OM sources ;;;;;;;;;;;;;;;;;;;




;OpenMusic
;
;Copyright (C) 1997, 1998, 1999, 2000 by IRCAM-Centre Georges Pompidou, Paris, France.
; 
;This program is free software; you can redistribute it and/or
;modify it under the terms of the GNU General Public License
;as published by the Free Software Foundation; either version 2
;of the License, or (at your option) any later version.
;
;See file LICENSE for further informations on licensing terms.
; 
;This program is distributed in the hope that it will be useful,
;but WITHOUT ANY WARRANTY; without even the implied warranty of
;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;GNU General Public License for more details.
;
;You should have received a copy of the GNU General Public License
;along with this program; if not, write to the Free Software
;Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
;
;Authors: Gerard Assayag and Augusto Agon

(defun round_0 (arg &optional div)
  (if (plusp arg)
  (truncate (+ (/ arg div) 0.5))
  (truncate (- (/ arg div) 0.5))))

(defun approx-decimals (x y nbdec)
  (let ((ndec 
         (if (> nbdec 0 ) (float (expt 10 nbdec)) (expt 10 nbdec))))
    (/ (round_0 (/ x y) (/ ndec)) ndec)))

(defun average (xs weights?)
  (let ((num 0) (den 0) ampl)
    (while xs
      (setq ampl (or (if (consp weights?) (nextl weights?) 1) 1))
      (incf num (* ampl (nextl xs)))
      (incf den ampl) )
    (/ num den) ))

(defun mulalea (n percent)
  (* n (+ 1  (om-random  (- percent) (float percent)) )))


(defmethod  tree-min ((self list) &optional (min MOST-POSITIVE-LONG-FLOAT))
  (if (null self)
    min
    (tree-min (rest self) (tree-min (first self) min))))

(defmethod  tree-min ((self number) &optional (min MOST-POSITIVE-LONG-FLOAT))
  (min self min))

(defmethod  tree-max ((self list) &optional (max MOST-NEGATIVE-LONG-FLOAT))
  (if (null self)
    max
    (tree-max (rest self) (tree-max (first self) max))))

(defmethod  tree-max ((self number) &optional (max MOST-NEGATIVE-LONG-FLOAT))
  (max self max))


;==================================
;APPROX_M
;==================================

(defmacro cassq (item list) `(cdr (assoc ,item ,list :test #'eq)))
;(defmacro cassq (item list) `(cdr (assq ,item ,list)))

(defvar *global-midi-approx* 2)
(setf *global-midi-approx* 2)

(defmethod approx-midi  ((midic t) approx &optional (ref-midic 0))
 "
Returns an approximation of <midic> (in midicents) to the nearest tempered division of the octave.
<approx> = 1 whole tones
<approx> = 2 semi tones
<approx> = 4 quarter tones
<approx> = 8 eight tones

Floating values are allowed for <approx>.
<ref-midic> is a midicent that is subtracted from <midic> before computation: the computation can then be carried on an interval rather than an absolute pitch."
  (if (<= approx 0)
    midic
    (pw::g/ (round (* (floor (+ (* (- (pw::g* midic 100) ref-midic) approx) 100) 200) 200) approx) 100)))

(defmethod approx-midi  ((self list) approx &optional (ref-midic 0))
  (if (<= approx 0)
    self
    (loop for item in self
          collect (approx-midi item approx ref-midic))))





;------------ADD-----------------
(defmethod om+ ((arg1 number) (arg2 number))  
 "Sum of two numbers or lists.

Ex. (om+ 2 3)  => 5
Ex. (om+ 2 '(3 4))  => (5 6)
Ex. (om+ '(1 2) '(3 4))  => (4 6)
" 
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

(defun g+ (arg1 arg2)
   "Sum of two numbers or lists.

Ex. (g+ 2 3)  => 5
Ex. (g+ 2 '(3 4))  => (5 6)
Ex. (g+ '(1 2) '(3 4))  => (4 6)
" 
  (om+ arg1 arg2))


;------------TIMES-----------------

(defmethod om* ((arg1 number) (arg2 number))  
"Product of two numbers or lists.

Ex. (om* 2 3)  => 6
Ex. (om* 2 '(3 4))  => (6 8)
Ex. (om* '(1 2) '(3 4))  => (3 8)
"
  (* arg1 arg2))

(defmethod om* ((arg1 number) (arg2 list))  
  (mapcar #'(lambda (input)
              (om* arg1 input)) arg2))

(defmethod om* ((arg1 list) (arg2 number))   
  (mapcar #'(lambda (input)
              (om*  input arg2)) arg1))

(defmethod om* ((arg1 list) (arg2 list))
  (mapcar #'(lambda (input1 input2)
              (om* input1 input2)) arg1 arg2))

(defun g* (arg1 arg2)
  "Product of two numbers or lists.

Ex. (g* 2 3)  => 6
Ex. (g* 2 '(3 4))  => (6 8)
Ex. (g* '(1 2) '(3 4))  => (3 8)
"
  (om* arg1 arg2))

;------------MINUS-----------------

(defmethod om- ((arg1 number) (arg2 number))  
  "Difference of two numbers or lists.

Ex. (om- 5 2)  => 3
Ex. (om- 5 '(2 4))  => (3 1)
Ex. (om- '(5 4) '2)  => (3 2)
Ex. (om- '(5 4) '(2 4))  => (3 0)
"
  (- arg1 arg2))

(defmethod om- ((arg1 number) (arg2 list))  
  (mapcar #'(lambda (input)
              (om- arg1 input)) arg2))

(defmethod om- ((arg1 list) (arg2 number))   
  (mapcar #'(lambda (input)
              (om- input arg2)) arg1))

(defmethod om- ((arg1 list) (arg2 list))
  (mapcar #'(lambda (input input2)
              (om- input input2)) arg1 arg2))

(defun g- (arg1 arg2)
  "Difference of two numbers or lists.

Ex. (g- 5 2)  => 3
Ex. (g- 5 '(2 4))  => (3 1)
Ex. (g- '(5 4) '2)  => (3 2)
Ex. (g- '(5 4) '(2 4))  => (3 0)
"
  (om- arg1 arg2))

;------------------------------------------------------------------------

(defmethod om/ ((arg1 number) (arg2 number)) 
   "Division of two  numbers or lists.

Ex. (om/ 8 2)  => 4
Ex. (om/ 8 '(2 4))  => (4 2)
Ex. (om/ '(8 5) '(2 4))  => (4 5/4)"
  (/ arg1 arg2))

(defmethod om/ ((arg1 number) (arg2 list))  
  (mapcar #'(lambda (input)
                 (om/ arg1 input)) arg2))

(defmethod om/ ((arg1 list) (arg2 number))   
  (mapcar #'(lambda (input)
              (om/  input arg2)) arg1))

(defmethod om/ ((arg1 list) (arg2 list))
  (mapcar #'(lambda (input input2)
              (om/  input input2)) arg1 arg2))

(defun g/ (arg1 arg2)
     "Division of two  numbers or lists.

Ex. (g/ 8 2)  => 4
Ex. (g/ 8 '(2 4))  => (4 2)
Ex. (g/ '(8 5) '(2 4))  => (4 5/4)"
  (om/ arg1 arg2))

;------------------------------------------------------------------------

(defmethod om^ ((a number) (b number)) 
 "Exponentiation of base a and exponent b.

Corresponds to the multiplication of <a> repeated <b> times.
Can be used on numbers or lists.

Ex. (om^ 2 3)  => 8
Ex. (om^ 2 '(3 4 5))  => (8 16 32)
Ex. (om^ '(2 3 4) 3)  => (8 27 64)
Ex. (om^ '(2 3 4) '(2 3 4))  => (4 27 256)
"
  (expt a b))

(defmethod om^ ((a number) (b list))  
  (mapcar #'(lambda (input)
                 (om^ a input)) b))

(defmethod om^ ((a list) (b number))   
  (mapcar #'(lambda (input)
              (om^ input b)) a))

(defmethod om^ ((a list) (b list))
  (mapcar #'(lambda (input1 input2)
              (om^  input1 input2)) a b))

(defun g-power (arg1 arg2)
  "Exponentiation of base a and exponent b.

Corresponds to the multiplication of <a> repeated <b> times.
Can be used on numbers or lists.

Ex. (g-power 2 3)  => 8
Ex. (g-power 2 '(3 4 5))  => (8 16 32)
Ex. (g-power '(2 3 4) 3)  => (8 27 64)
Ex. (g-power '(2 3 4) '(2 3 4))  => (4 27 256)
"
  (om^ arg1 arg2))

;------------------------------------------------------------------------

(defmethod om-e ((n number)) 
  "Exponential function.

This function can be applied on numbers or lists.

Ex. (om-e 4)  => 54.59815
Ex. (om-e '(3 4))  => (20.085537 54.59815)
"
  (exp n))


(defmethod om-e ((n list))   
  (mapcar #'(lambda (input)
              (om-e input)) n))

(defun g-exp (arg1)
  "Exponential function.

This function can be applied on numbers or lists.

Ex. (g-exp 4)  => 54.59815
Ex. (g-exp '(3 4))  => (20.085537 54.59815)
"
  (om-e arg1))

;------------------------------------------------------------------------

(defmethod om-log ((n number) &optional (base (exp 1)))
 "Logarithm function. 
(the logarithm of a number to the base is the power to which the base must be raised in order to produce the number)

The <base> argument is optional. By default, <base> is equal to the number 'e', so om-log computes the 'natural' logarithm of <n>.

This function can be applied to numbers or lists.

Ex. (om-log 3)  => 1.0986123
Ex. (om-log 3 10)  => 0.47712126
Ex. (om-log '(3 4))  => (1.0986123 1.3862944)
"
  (log n base))


(defmethod om-log ((n list)  &optional (base (exp 1)))
  (mapcar #'(lambda (input)
              (om-log input base)) n))

(defun g-log (arg1 &optional (base (exp 1)))
  "Logarithm function. 
(the logarithm of a number to the base is the power to which the base must be raised in order to produce the number)

The <base> argument is optional. By default, <base> is equal to the number 'e', so om-log computes the 'natural' logarithm of <n>.

This function can be applied to numbers or lists.

Ex. (g-log 3)  => 1.0986123
Ex. (g-log 3 10)  => 0.47712126
Ex. (g-log '(3 4))  => (1.0986123 1.3862944)
"
  
  (om-log arg1 base))

;------------------------------------------------------------------------

(defmethod om-round ((n number) &optional (decimals 0) (divisor 1))
  "Rounds a number or a list of numbers with a given number of decimals (default = 0, i.e. returns integer values) and a divisor.

This function can be applied to numbers or lists.

Ex. (om-round 4.3)  => 4
Ex. (om-round '(4.3 5.0 6.8))  => (4 5 7)
Ex. (om-round '(4.308 5.167 6.809) 2)  => (4.31 5.17 6.81)
Ex. (om-round '(4.308 5.167 6.809) 0 2)  => (2 3 3)
Ex. (om-round '(4.308 5.167 6.809) 1 2)  => (2.2 2.6 3.4)
"
  (approx-decimals n divisor decimals))


(defmethod om-round ((n list) &optional (decimals 0) (divisor 1))
  (mapcar #'(lambda (input)
              (om-round input decimals divisor)) n))

(defun g-round (number &optional (decimals 0) (divisor 1))
  "Rounds a number or a list of numbers with a given number of decimals (default = 0, i.e. returns integer values) and a divisor.

This function can be applied to numbers or lists.

Ex. (g-round 4.3)  => 4
Ex. (g-round '(4.3 5.0 6.8))  => (4 5 7)
Ex. (g-round '(4.308 5.167 6.809) 2)  => (4.31 5.17 6.81)
Ex. (g-round '(4.308 5.167 6.809) 0 2)  => (2 3 3)
Ex. (g-round '(4.308 5.167 6.809) 1 2)  => (2.2 2.6 3.4)
"
  
  
  (om-round number decimals divisor))

(defmethod om-floor (n)
  "OM version of floor. The argument can be number/bpf or list of any depth"
  (om// n 1))

(defun g-floor (n)
  "PW version of floor. The argument can be number/bpf or list of any depth"
  (om-floor n))

(defmethod om-ceiling (n)
  "OM version of ceiling. The argument can be number/bpf or list of any depth"
  (mapcar #'ceiling (list! n)))

(defun g-ceiling (n)
  "PW version of ceiling. The argument can be number/bpf or list of any depth"

  (om-ceiling n))


;------------------------------------------------------------------------

(defmethod mat-trans-with-nil ((matrix list))
 (let ((maxl (1- (loop for elt in matrix maximize (length elt))))
        result)
    (loop for i from 0 to maxl do
         (push (mapcar #'(lambda (list) (nth i list)) matrix) result))
    (nreverse result)))


(defmethod om//  ((n number) (divisor number))
   "Euclidean division of <n> and <divisor>. 
Yields an integer result and the rest of the division. 
When the divisor is 1, the operation is known as 'floor'.

<n> and <divisor> can be numbers or lists.

Ex. (om// 5.5 2)  =>  2 , 1.5
Ex. (om// 5.5 1)  =>  5 , 0.5
Ex. (om// '(5.5 6) 2)  =>  (2 3) , (1.5 0)
Ex. (om// 5.5 '(2 3))  =>  (2 1) , (1.5 2.5)
Ex. (om// '(5.5 6) '(2 3))  =>  (2 2) , (1.5 0)
"
  (floor n divisor))


(defmethod om// ((n number) (divisor list))  
  (values-list 
   (mat-trans-with-nil (mapcar #'(lambda (input)
                          (multiple-value-list (om// n input)))
                      divisor))))

(defmethod om// ((n list) (divisor number))
  (if (null n)
    (values nil nil)
    (values-list 
     (mat-trans-with-nil (mapcar #'(lambda (input)
                                    (multiple-value-list (om// input divisor)))
                                n)))))

(defmethod om// ((n list) (divisor list))  
  (values-list
   (mat-trans-with-nil 
    (mapcar #'(lambda (input1 input2)
                (multiple-value-list (om// input1 input2)))
            n divisor))))


(defun g-div (n divisor)
  "Euclidean division of <n> and <divisor>, it yields an integer result.
When the divisor is 1, the operation is known as 'floor'.

<n> and <divisor> can be numbers or lists.

Ex. (g-div 5.5 2)  =>  2
Ex. (g-div 5.5 1)  =>  5
Ex. (g-div '(5.5 6) 2)  =>  (2 3)
Ex. (g-div 5.5 '(2 3))  =>  (2 1)
Ex. (g-div '(5.5 6) '(2 3))  =>  (2 2)
"    
  (multiple-value-bind (div mod)
                       (om// n divisor)
    div))

(defun g-mod (n divisor)
  "Modulo or rest of the euclidean division of <n> and <divisor>.
  
<n> and <divisor> can be numbers or lists.

Ex. (g-mod 5.5 2)  =>  1.5
Ex. (g-mod 5.5 1)  =>  0.5
Ex. (g-mod '(5.5 6) 2)  =>  (1.5 0)
Ex. (g-mod 5.5 '(2 3))  =>  (1.5 2.5)
Ex. (g-mod '(5.5 6) '(2 3))  =>  (1.5 0)
"
  (multiple-value-bind (div mod)
                       (om// n divisor)
    mod))


;------------------------------------------------------------------------

(defmethod om-abs ((self number))
  "Absolute value.

This function can be applied to numbers or lists.

Ex. (om-abs 3)  => 3
Ex. (om-abs -3)  => 3
Ex. (om-abs '(3 -4 -1.5 6))  => (3 4 1.5 6)
"
  (abs  self ))


(defmethod om-abs ((self list))
  (mapcar #'(lambda (input)
              (om-abs input)) self))

(defun g-abs (list)
  "Absolute value.

This function can be applied to numbers or lists.

Ex. (g-abs 3)  => 3
Ex. (g-abs -3)  => 3
Ex. (g-abs '(3 -4 -1.5 6))  => (3 4 1.5 6)
"
  (om-abs list))


;------------------------------------------------------------------------

(defmethod om-min ((a number) (b number)) 
  "Minimum of two numbers.

This function can be applied to numbers or lists.

Ex. (om-min 3 4)  => 3
Ex. (om-min 3 '(1 2 3 4))  => (1 2 3 3)
Ex. (om-min '(4 3 2 1) '(1 2 3 4))  => (1 2 2 1)
"
  (min a b))

(defmethod om-min ((a number) (b list))  
  (mapcar #'(lambda (input)
                 (om-min a input)) b))

(defmethod om-min ((a list) (b number))   
  (mapcar #'(lambda (input)
              (om-min input b)) a))

(defmethod om-min ((a list) (b list))
  (mapcar #'(lambda (input1 input2)
              (om-min input1 input2)) a b))



(defmethod list-min ((self list))
  "Returns the minimum element in a list.

Ex. (list-min '(2 3 1 4))  => 1"
  (and (remove nil self) (list-min2 (remove nil self) MOST-POSITIVE-LONG-FLOAT)))


(defmethod list-min ((self t))
  self)


(defun list-min2 (l minimum)
  (if (null l)
    minimum
    (if (atom (first l))
      (list-min2 (rest l) (min minimum (first l)))
      (list-min2 (first l) (min minimum (list-min2 (rest l) minimum))))))

(defun g-min (list)
  "Returns the minimum element in a list.

Ex. (g-min '(2 3 1 4))  => 1"
  (list-min list))


;------------------------------------------------------------------------

(defmethod om-max ((a number) (b number)) 
  "Maximum of two numbers.

This function can be applied to numbers or lists.

Ex. (om-max 3 4)  => 4
Ex. (om-max 3 '(1 2 3 4))  => (3 3 3 4)
Ex. (om-max '(4 3 2 1) '(1 2 3 4))  => (4 3 3 4)"
  (max a b))

(defmethod om-max ((a number) (b list))  
  (mapcar #'(lambda (input)
                 (om-max a input)) b))

(defmethod om-max ((a list) (b number))   
  (mapcar #'(lambda (input)
              (om-max input b)) a))

(defmethod om-max ((a list) (b list))
  (mapcar #'(lambda (input1 input2)
              (om-max input1 input2)) a b))

(defmethod list-max ((self list) )
   "Returns the maximum element in a list.
Ex. (list-max '(2 4 1 3))  => 4"
  (and (remove nil self) (list-max2 (remove nil self) MOST-NEGATIVE-LONG-FLOAT)))

(defmethod list-max ((self t)) self)


(defun list-max2 (l minimum)
  (if (null l)
    minimum
    (if (atom (first l))
      (list-max2 (rest l) (max minimum (first l)))
      (list-max2 (first l) (max minimum (list-max2 (rest l) minimum))))))

(defun g-max (list)
  "Returns the maximum element in a list.
Ex. (g-max '(2 4 1 3))  => 4"
  (list-max list))

;------------------------------------------------------------------------

(defmethod om-mean ((self list) &optional (weights 1))
  "Arithmetic mean of numbers in a list. 

The optional input <weights> is a list of weights used to ponderate the successive elements in the list.

Ex. (om-mean '(1 2 3 4))  => 2.5
Ex. (om-mean '(1 2 3 4) '(3 2 1 1))  => 2.0
"
  (average self weights))

(defun g-average (list &optional (weights 1))
  "Arithmetic mean of numbers in a list. 

The optional input <weights> is a list of weights used to ponderate the successive elements in the list.

Ex. (g-average '(1 2 3 4))  => 2.5
Ex. (g-average '(1 2 3 4) '(3 2 1 1))  => 2.0
"
  (om-mean list weights))


;------------RANDOM-----------------

;;; COMPATIBILITY
(defmethod aleanum ((high number) (low number)) 
  (om-random high low))


(defun om-random-value (num)
  (if (= num 0) 0
  (if (< num 0)
    (- (random (- num)))
    (random num))))

(defmethod om-random ((low number) (high number))
 "Returns a random number between <low> and <high>."
  (if (zerop (- low high))
    (+ low high (- high))
    (let ((low-min (min low high)))
      (if (or (floatp  low) (floatp high))
        (+ (om-random-value (- (max low high) low-min)) low-min)
        (+ (om-random-value (- (1+ (max low high)) low-min)) low-min)))))

(defmethod om-random ((low number) (high list))
    (mapcar #'(lambda (input)
              (om-random low input)) high))

(defmethod om-random ((low list) (high number))
    (mapcar #'(lambda (input)
              (om-random  input high)) low))

(defmethod om-random ((low list) (high list))
    (mapcar #'(lambda (input1 input2)
              (om-random input1 input2)) low high))


(defun g-random (low high)
  "Returns a random number between <low> and <high>."
  (om-random low high))


;------------------------------------------------------------------------


(defmethod perturbation ((self number) (percent number))
 "Applies to <self> a random deviation bounded by the <percent> parameter, a value in [0 1]. 
<self> and <percent> can be numbers or lists."
  (mulalea self percent))


(defmethod perturbation ((self number) (num list)) 
  (mapcar #'(lambda (input)
                 (perturbation self input)) num))

(defmethod perturbation ((self list) (num number))   
  (mapcar #'(lambda (input)
              (perturbation  input num)) self))

(defmethod perturbation ((self list) (num list))
  (mapcar #'(lambda (input1 input2)
              (perturbation input1 input2)) self num))


;------------------------------------------------------------------------

(defmethod om-scale ((self number) (minout number) (maxout number) &optional (minin 0) (maxin 0))
 "Scales <self> (a number or list of numbers) considered to be in the interval [<minin> <maxin>] towards the interval [<minout> <maxout>].

If [<minin> <maxin>] not specified or equal to [0 0], it is bound to the min and the max of the list.

Ex. (om-scale 5 0 100 0 10)  => 50
Ex. (om-scale '(0 2 5) 0 100 0 10)  => (0 20 50)
Ex. (om-scale '(0 2 5) 0 100)  => (0 40 100)
 "
  (if (= maxin minin)
    minin
    (+ minout (/ (* (- self minin) (- maxout minout)) (- maxin minin)))))


(defmethod om-scale ((self list) (minout number) (maxout number) &optional (minin 0) (maxin 0))
    (let ((min minin) (max maxin))
      (when (= minin maxin) 
        (setf min (list-min self) max (list-max self))) 
      (when (= min max)
        (setf min 0 max (abs max)))
      (mapcar #'(lambda (item) (om-scale item minout maxout min max)) self)))

(defmethod om-scale ((self null) (minout number) (maxout number) &optional (minin 0) (maxin 0)) nil)

(defun g-scaling (vals? minout maxout &optional (minin 0) (maxin 0))
  "Scales <self> (a number or list of numbers) considered to be in the interval [<minin> <maxin>] towards the interval [<minout> <maxout>].

If [<minin> <maxin>] not specified or equal to [0 0], it is bound to the min and the max of the list.

Ex. (g-scaling 5 0 100 0 10)  => 50
Ex. (g-scaling '(0 2 5) 0 100 0 10)  => (0 20 50)
Ex. (g-scaling '(0 2 5) 0 100)  => (0 40 100)
 "
  (om-scale vals? minout maxout minin maxin))


;------------------------------------------------------------------------
;;
;;this comes directly from PW. makes some functions generic
;;
(defmethod less-tree-mapcar ((fun function) (arg1 number) (arg2 number) &optional deep)
  (funcall fun (list arg1)
           (if deep arg2 (list arg2))))
 
(defmethod less-tree-mapcar ((fun function) (arg1 cons) (arg2 number) &optional deep)
  (if (consp (first arg1))
    (cons (less-tree-mapcar fun (car arg1) arg2 deep)
          (less-tree-mapcar fun  (cdr arg1) arg2 deep))
    (funcall fun arg1 (if deep arg2 (list arg2)))))

(defmethod less-tree-mapcar ((fun function) (arg1 null) arg2 &optional deep)
  (declare (ignore arg1 arg2 deep)) nil)

(defmethod less-tree-mapcar ((fun function) (arg1 number) (arg2 cons) &optional deep)
  (if (consp (first arg2))
    (cons (less-tree-mapcar fun arg1 (car arg2) deep)
          (less-tree-mapcar fun  arg1 (cdr arg2) deep))
    (funcall fun (list arg1) (car arg2))))

(defmethod less-tree-mapcar ((fun function) arg1 (arg2 null) &optional deep)
  (declare (ignore arg1 arg2 deep)) nil)

(defmethod less-tree-mapcar ((fun function) (arg1 cons) (arg2 cons) &optional deep)
  (if (or deep (consp (first arg1)) (consp (first arg2)))
    (cons (less-tree-mapcar fun (car arg1) (car arg2) deep)
          (less-tree-mapcar fun  (cdr arg1) (cdr arg2) deep))
    (funcall fun arg1 arg2)))

(defun g-scaling/sum (list sum)
  "scales <list> (may be tree) so that its sum becomes <sum>. Trees must be
well-formed. The children of a node must be either all leaves or all
nonleaves. "
  (less-tree-mapcar #'(lambda (x y) (om* x (/ y (apply #'+ x)))) list sum t))

(defmethod om-scale/sum ((self list) (sum number))
 "Scales <self> so that the sum of its elements become <sum>
Ex. (om-scale/sum '(2 3 5) 30)  => (6 9 15) "
  (g-scaling/sum self sum))

(defmethod om-scale/sum ((self number) (sum number) )
  (g-scaling/sum self sum))



(defun om-scale/max (list max)
      "scales <list>  (may be tree) so that its max becomes <max>. Trees must be
well-formed: The children of a node must be either all leaves or all nonleaves."
    (pw::g* (pw::g/ list (g-max list)) max))

(defun g-scaling/max (list max)
      "scales <list>  (may be tree) so that its max becomes <max>. Trees must be
well-formed: The children of a node must be either all leaves or all nonleaves."
    (pw::g* (pw::g/ list (g-max list)) max))




;;;;-----------------Remove-dup
(defmethod remove-dup ((list list) (test symbol) (depth integer))
  "Removes duplicates elements from <list>.
If <depth> is more than 1 duplicates are removed from sublists of level <depth>.

Ex. (remove-dup '(1 2 3 2 2 4) '= 1) => (1 3 2 4)
Ex. (remove-dup '((1 2) (3 2 2) 4) '= 2) => ((1 2) (3 2) 4)
"
  (remove-dup list (symbol-function test) depth))


(defmethod remove-dup ((list list) (test function) (depth integer))
  (if (<= depth 1)
    (remove-duplicates list :test test)
    (mapcar #'(lambda (x) (remove-dup x test (1- depth))) list)))


(defmethod remove-dup ((list t) (test t) (depth integer)) list)



;------------------------------------------------------------------------
(defmethod reduce-tree ((self t) (function symbol) &optional (accum nil))
  "Applies the commutative binary <function> recursively throughout the list <self>.
(Applies to the first elements, then the result to the next one, and so forth until the list is exhausted.)

Function '+, for instance, makes reduce-tree computing the sum of all elements in the list.

Optional <accum> should be the neutral element for the <function> considered (i.e. initial result value).
If <accum> is nil, figures out what the neutral can be (works for +,*,min,max)."
  (reduce-tree self (symbol-function function) accum))


(defmethod reduce-tree ((self list) (function function) &optional (accum nil))
  (unless accum (setf accum (neutral-element function)))
  (if (null self)
    accum
    (reduce-tree (rest self) function (reduce-tree (first self) function accum))))

(defmethod  reduce-tree ((self number) (function function) &optional (accum nil))
  (funcall function self accum))


(defun neutral-element (function)
  (case (function-name function)
    (+ 0)
    (* 1)
    (min MOST-POSITIVE-LONG-FLOAT)
    (max MOST-NEGATIVE-LONG-FLOAT)
    (t 0)))



;; curve exp => 0 = lineaire
(defun number-interpolation (n1 n2 n curve)
  (+ n1 (* (- n2 n1) (expt n (exp curve)))))

(defun number-interpole-values (begin end samples curve)
  (if (<= samples 1)
      (list (number-interpolation begin end 0.5 curve))
    (let ((step (/ 1 (1- samples))))
      (loop for j from 0 to (1- samples) collect
            (number-interpolation begin end (* j step) (- curve))))))

(defmethod interpolation ((begin number) (end number) (samples integer) (curve number))
 "Interpolates 2 numbers or lists (from <begin> to <end>) through <samples> steps.

<curve> is an exponential factor interpolation (0 = linear).
" 
  (number-interpole-values begin end samples curve))

(defmethod interpolation ((begin number) (end list) (samples integer) (curve number))
  (mat-trans (mapcar #'(lambda (item)  (interpolation  begin item samples curve))
          end)))
          
(defmethod interpolation ((begin list) (end number) (samples integer) (curve number))
  (mat-trans (mapcar #'(lambda (item) (interpolation item end samples  curve))
          begin)))
          
(defmethod interpolation ((begin list) (end list) (samples integer) (curve number))
  (mat-trans (mapcar #'(lambda (item1 item2) (interpolation item1 item2 samples curve))
          begin end)))
          
;(defmethod! om::interpolation ((begin list) (end list) (samples number) (curves number))
;  (let ((int (abc-interpolation (list! begin) (list! end) samples
;                               (cond 
;                                ((consp curves) curves)
;                                ((numberp curves) (list curves))
;                                (t (error "bad curves:~S~%" curves)) )))
;       (format 1))
;    (if (eq format 2) (butlast (rest int)) int)))

;------------------------------------------------------------------------
;by M. Malt

(defmethod rang-p ((liste list) (elem number) &optional (test 'eq) (key nil)) 
  "Returns the position(s) of <elem> in <liste>.

<test> is a function or function name used to test if the elements of the list are equal to <elem>.
<key> is a function or function name that will be applied to elements before the test.

Ex. (rang-p '(0 1 2 3 4 3 2) 3)  =>  (3 5)
Ex. (rang-p '(0 1 2 3 4 3 2) 3 '<)  =>  (0 1 2 6)    [elements at positions 0, 1,2 and 6 are lower than 3]
"
  (let ((aux nil) (index 0))
    (mapcar #'(lambda (z) (progn (when (funcall test (if key (funcall key z) z) elem) (push index aux))
                                 (incf index))) 
            liste)
    (reverse aux)))


(defmethod rang-p ((liste list) (elem list) &optional (test 'eq) (key nil)) 
  (let ((aux nil) (index 0))
    (mapcar #'(lambda (z) (progn (when (funcall test (if key (funcall key z) z) elem) (push index aux))
                                 (incf index))) 
            liste)
    (reverse aux)))


  
;------------------------------------------------------------------------
; more list operators

; list-explode list-filter table-filter band-filter range-filter posn-match

(defmethod list-explode ((list list) (nlists integer))
  "Segments <list> into <nlist> sublists of (if possible) equal length.

Ex. (list-explode '(1 2 3 4 5 6 7 8 9) 2)  => ((1 2 3 4 5) (6 7 8 9))
Ex. (list-explode '(1 2 3 4 5 6 7 8 9) 5)  => ((1 2) (3 4) (5 6) (7 8) (9)).

If the number of divisions exceeds the number of elements in the list, the divisions will have one element each, and remaining divisions are repeat the last division value.

Ex. (list-explode '(1 2 3 4 5 6 7 8 9) 12)  => ((1) (2) (3) (4) (5) (6) (7) (8) (9) (9) (9) (9))
"
  (if (> nlists (length list))
    (setq list (append list (make-list (- nlists (length list))
                                       :initial-element (first (last list))))))
  (if (<= nlists 1) list
      (let* ((length (length list))
             (low (floor length nlists))
             (high (ceiling length nlists))
             (step (if (< (abs (- length (* (1- nlists) high))) (abs (-
                                                                      length (* nlists low))))
                     high  low))
             (rest (mod length nlists))
             (end (- length 1 rest))
             (ser (arithm-ser 0  1 (1- step)))
             res)
        (loop for i from 0 to end by step
          do (push (remove () (posn-match  list (om+  i ser))) res))
        (setq low (length (flat-once res)))
        (if (< low length) (setq res (cons (append (first res) (nthcdr low
                                                                       list)) (rest res))))
        (cond ((> (length res) nlists)
               (nreverse (cons (nconc (second res) (first res)) (nthcdr 2
                                                                        res))))
              ((< (length res) nlists)
               (when (= (length (first res)) 1)
                 (setq res (cons (nconc (second res) (first res)) (nthcdr 2
                                                                          res))))
               (nreverse (nconc (nreverse (list-explode (first res) (1+ (-
                                                                         nlists (length res)))))
                                (rest res))))
              (t (nreverse res))))))

(defmethod list-filter ((test symbol) (list list) (mode symbol))
 "Filters out  <list> using the predicate <test>.

<test> may be a function name (a symbol) or it may be a visual function or patch in 'lambda' mode. 

If <list> is a list of lists, the filter is applied recursively in the sub-lists.

<mode> 'reject' means reject elements that verify <test>. 
<mode>'pass' means retain only elements that verify <test>.

Ex. (list-filter 'numberp '(5 6 aaa bbb 8) 'pass)  => (5 6 8)
Ex. (list-filter 'numberp '(5 6 aaa bbb 8) 'reject)  => (aaa bbb)
 "
  
  (list-filter (symbol-function test) list mode))

(defmethod list-filter ((test function) (list list) (mode symbol))
  (if (eq mode 'reject)
    (do-filter list #'(lambda (x) (not (funcall test x))))
    (do-filter list test)))



(defmethod table-filter ((test symbol) (list list) (numcol integer) (mode symbol))
 "Filters out <list> (a list of lists) using the predicate <test>.

<test> may be a function name (a symbol) or it may be a visual function or patch in 'lambda' mode. 

The predicate <test> is applied to the element of rank <numcol> in every sublist in <list> and filters the whole sublists.

<numcol> counts from 0.

<mode> 'reject' means reject elements whose <numcol>th element verifies <test>. 
<mode>'pass' means retain only elements whose <numcol>th element verifies <test>.

Ex. (table-filter 'oddp '((1 2 3) (4 5 6) (7 8 9)) 1 'pass)  --> ((4 5 6))       [keeps lists which first element is odd]
Ex. (table-filter 'oddp '((1 2 3) (4 5 6) (7 8 9)) 1 'reject)  --> ((1 2 3) (7 8 9))     [rejects lists which first element is odd]
"
  
  (table-filter  (symbol-function test) list numcol mode))

(defmethod table-filter ((test function) (list list) (numcol integer) (mode symbol))
  (if (eq mode 'reject)
    (do-table-filter list #'(lambda (x) (not (funcall  test x))) numcol)
    (do-table-filter list  test numcol)))


(defmethod band-filter ((list list) (bounds list) (mode symbol))
  "Filters out <list> using <bounds>.
<bounds> is a pair or list of pairs (min-value max-value). 

If <list> is a list of lists, the filter is applied recursively in the sub-lists.

If <bounds> is a list of pairs, each pair is applied to each successive element in <list>

<mode> 'reject' means reject elements between the bounds 
<mode> 'pass' means retain only elements between the bounds
"
  (list-filter 
   #'(lambda (item)
       (some #'(lambda (bound) (and (>= item (first bound)) (<= item (second bound)))) bounds))
   list 
   mode))


(defmethod range-filter ((list list) (posn list) (mode symbol))
  "Select elements in <list> whose positions (couting from 0) in the list are defined by <posn>
<posn> is a list of pairs (min-pos max-pos) in increasing order with no everlap.

<mode> 'reject' means reject the selected elements. 
<mode> 'pass' means retain only the selected elements.

Ex. (range-filter '(10 11 12 13 14 15 16) '((0 1) (3 4)) 'pass)  => (10 11 13 14)
Ex. (range-filter '(10 11 12 13 14 15 16) '((0 1) (3 4)) 'reject) => (12 15 16)
"
  (loop for item in list
        for i from 0 
        with bound = (pop posn)
        when (and (eq mode 'reject) (null bound)) collect item
        when (and (eq mode 'pass) bound (>= i (first bound)) (<= i (second bound))) collect item
        when (and (eq mode 'reject) bound (or (< i (first bound)) (> i (second bound)))) collect item
        when (and bound (> i (second bound))) do (setf bound (pop posn))))



(defmethod posn-match ((list list) (positions list))
  "Constructs a new list by peeking elements in <list> at positions defined by <positions> (a list or tree of positions). 

<positions> supports the syntax of 'expand-lst'.

Ex. (posn-match '(10 20 30 40 50 60 70 80 90) '((0 1) 4 (6))) => ((10 20) 40 (60))
Ex. (posn-match '(10 20 30 40 50 60 70 80 90) '(3*(0) 3_6)) => (10 10 10 40 50 60 70)
"
  (do-posn-match list (expand-lst positions)))


(defmethod posn-match ((list list) (positions integer) )
  (nth positions list ))

(defmethod do-posn-match ((self list) (positions list))
  (cond 
   ((numberp positions) (nth positions self))
   ((listp positions)
    (loop for pos in positions
          collect (do-posn-match self pos)))))

(defmethod do-posn-match ((self list) (positions number))
   (nth positions self))
   


(defmethod do-filter ((self t) (test function))
  (if (funcall test self) self 'fail))

(defmethod do-filter ((self cons) (test function)) 
  (loop for item in self 
        for elt =  (do-filter item test)
        when (not (eq elt 'fail)) collect elt))

(defmethod do-table-filter ((list list) (test function) (numcol integer))
  (loop for sublist in list
        when (funcall test (nth numcol sublist))
        collect sublist))


;==========================================================================

;--------------------------------------------
;greats common divisor

(defmethod pgcd ((a rational) (b rational))
   "Find the greats common divisor bethween 2 rational."
   (let ((x (* (denominator a) (numerator b)))
         (y (* (denominator b) (numerator a)))
         (d (* (denominator a) (denominator b))))
     (/ (gcd x y) d)))

(defmethod pgcd ((a integer) (b integer))
   "Find the greats common divisor bethween 2 rational."
   (gcd a b))

(defmethod pgcd ((a number) (b number))
   "Find the greats common divisor bethween 2 rational."
   (pgcd (rational a) (rational b)))

































;OpenMusic
;
;Copyright (C) 1997, 1998, 1999, 2000 by IRCAM-Centre Georges Pompidou, Paris, France.
; 
;This program is free software; you can redistribute it and/or
;modify it under the terms of the GNU General Public License
;as published by the Free Software Foundation; either version 2
;of the License, or (at your option) any later version.
;
;See file LICENSE for further informations on licensing terms.
;
;This program is distributed in the hope that it will be useful,
;but WITHOUT ANY WARRANTY; without even the implied warranty of
;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;GNU General Public License for more details.
;
;You should have received a copy of the GNU General Public License
;along with this program; if not, write to the Free Software
;Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
;
;Authors: Gerard Assayag and Augusto Agon


(defmethod last-elem ((list list))
"Returns the last element of <list>

Ex. (last-elem '(1 2 3 4 5))  => 5
"
  :icon 235
  (first (last (list! list))))

(defmethod last-n ((list list) (n integer))
"Returns the <n> last elements of <list>

Ex. (last-n '(1 2 3 4 5) 3)  => (3 4 5)
"
  (last list n))


(defmethod first-n ((list list) (n integer))
"Returns the <n> first elements of <list>

Ex. (first-n '(1 2 3 4 5) 3)  => (1 2 3)
"
  (cond
   ((< (length list)  n) list )
   (t  (butlast list (- (length list) n)))))


(defmethod x-append ((l1? list) (l2? list) &rest lst?)
"Appends lists or atoms together to form a new list.

Ex. (x-append '(1 2 3) '(4 5)) => (1 2 3 4 5)
Ex. (x-append 1 '(4 5)) => (1 4 5)
Ex. (x-append '(1 2 3) 4) => (1 2 3 4)

This function also works with additional elements.

Ex. (x-append '(1 2 3) 4 '(5 6 7)) => (1 2 3 4 5 6 7)

"
  (apply 'append l1? l2? (mapcar #'list! lst?)))

(defmethod x-append ((l1? t) (l2? list) &rest lst?)
  (apply 'append (list l1?) l2? (mapcar #'list! lst?)))

(defmethod x-append ((l1? list) (l2? t) &rest lst?)
  (apply 'append l1? (list l2?) (mapcar #'list! lst?)))

(defmethod x-append ((l1? t) (l2? t) &rest lst?)
  (apply 'append (list l1?) (list l2?) (mapcar #'list! lst?)))


;-----------CREATE-LIST

(defmethod create-list ((count integer) (elem t))
  "Returns a list of length <count> filled with repetitions of element <elem>

Ex. (create-list 4 'a)  =>  (a a a a)"
  (make-list count :initial-element elem))

(defmethod mat-trans ((matrix list))
 "Matrix transposition. 
The matrix is represented by a list of rows. Each row is a list of items.
Rows and columns are interchanged.

Ex. (mat-tran '((1 2 3) (a b c) (4 5 6))  =>  ((1 a 4) (2 b 5) (3 c 6))"
  (let ((maxl (1- (loop for elt in matrix maximize (length elt))))
        result)
    (loop for i from 0 to maxl do
          (push ;;; (remove nil    ; (why this remove NIL here ??)
                       (mapcar #'(lambda (list) (nth i list)) matrix)
                ;;;  )
          result))
    (mapcar #'(lambda (x) (remove '() x)) (nreverse result))))

;----------------EXPAND LIST

(defvar *valid-expand-chars* '(#\* #\_))

(defun is-in (list chars)
  (let (res)
    (dolist (ch chars res)
      (if (setq res (member ch list :test #'char=)) (return res)))))


(defmethod expand-lst ((list list))
 "Expands a list following repetition patterns.

1. <number>* (x1 ...x2)
repeats the pattern x1...x2 <number> times.

2. <n>_<m>s<k>
appends an arithmetic series counting from <n> to <m> by step <k>.
s<k> can be omitted (k=1). 

Ex. (expand-lst (3* (2 4) 0_8))  =>  (2 4 2 4 2 4 0 1 2 3 4 5 6 7 8)
Ex. (2* (a z 2* (4 12) (1_5 )) 0_16s2)  =>  (a z 4 12 4 12 (1 2 3 4 5) a z 4 12 4 12 (1 2 3 4 5) 0 2 4 6 8 10 12 14 16)"

  (and list
       (let ((lists (list! list)) result)
         (while lists
                (let ((next-elem (pop lists)))
                  (cond 
                   ((symbolp next-elem)
                    (let* ((form (coerce (format () "~A" next-elem) 'list))
                           (from-char (is-in form *valid-expand-chars*))
                           (char-symb (car from-char))
                           (third (cdr from-char))
                           (int (butlast form (length from-char)))
                           up-to)
                      (cond 
                       ((and (not third) char-symb (char= #\* char-symb) int
                             (numberp (setq int (read-from-string (coerce int 'string)))))
                        (push (apply #'append
                                     (make-list int
                                                :initial-element 
                                                (expand-lst (pop lists))))
                              result))
                       ((and char-symb (char= #\_ char-symb) third
                             (numberp (setq int (read-from-string (coerce int 'string)))))
                        (if (setq from-char (member #\s  ;;;[CR, 14/01/99] #\S
                                                    third :test #'char=))
                          (progn (setq up-to (butlast third (length from-char))
                                       char-symb (car from-char) third (cdr from-char))
                                 (if (and char-symb 
                                          (char= #\s ;;;[CR, 14/01/99] #\S
                                                 char-symb)
                                          (or (null third)
                                              (numberp 
                                               (setq third (read-from-string (coerce third 'string)))))
                                          (numberp 
                                           (setq up-to (read-from-string (coerce up-to 'string)))))
                                   (push (arithm-ser int  (or third 1) up-to) result)
                                   (push (list next-elem) result)))
                          (progn
                            (setq up-to (read-from-string (coerce third 'string)))
                            (push (arithm-ser int 1 up-to) result))
                          ))
                       (t (push (list next-elem) result)))))
                   ((consp next-elem)
                    (push (list (expand-lst next-elem)) result))
                   (t (push (list next-elem) result)))))
         ;(apply #'append (nreverse result))  ;;; does not support long lists
         (loop for item in (nreverse result) append item))))




;;;-----------------GROUP-LIST



(defmethod group-list ((list list) (segmentation list) mode)
   "Segments a <list> in successives sublists which lengths are successive values of the list <segmentation>.
 <mode> indicates if <list> is to be read in a circular way.

Ex. (group-list '(1 2 3 4) '(1 3) 'linear)  => ((1) (2 3 4))
Ex. (group-list '(1 2 3 4) '(1 2 3) 'linear)  => ((1) (2 3) (4))
Ex. (group-list '(1 2 3 4) '(1 2 3) 'circular)  => ((1) (2 3) (4 1 2))
"
 
   (let ((list2 list) (res nil))
     (catch 'gl
      (loop for segment in segmentation
            while (or list2 (eq mode 'circular))
            do (push (loop for i from 1 to segment
                           when (null list2)
                           do (case mode
                                (linear (push sublist res) (throw 'gl 0))
                                (circular (setf list2 list)))
                           end
                           collect (pop list2) into sublist
                           finally (return sublist))
                              res))
     )
     (nreverse res)
     ))

(defmethod group-list ((list list) (segmentation number) mode)
    (group-list list (repeat-n segmentation (ceiling (length list) segmentation)) 'linear))


;;;;-----------------Remove-dup

(defmethod rem-dups ((list list) &optional (test 'eq) (depth 1))
 "Removes duplicates elements from <list>.
If <depth> is more than 1 duplicates are removed from sublists of level <depth>.

Ex. (rem-dups '(1 2 3 2 2 4) '= 1) => (1 3 2 4)
Ex. (rem-dups '((1 2) (3 2 2) 4) '= 2) => ((1 2) (3 2) 4)"
  (remove-dup list (symbol-function test) depth))


(defmethod rem-dups ((list list) &optional (test 'eq) (depth 1))
  "Removes duplicates elements from <list>.
If <depth> is more than 1 duplicates are removed from sublists of level <depth>.

Ex. (rem-dups '(1 2 3 2 2 4) '= 1) => (1 3 2 4)
Ex. (rem-dups '((1 2) (3 2 2) 4) '= 2) => ((1 2) (3 2) 4)"
  (if (<= depth 1)
    (remove-duplicates list :test test)
    (mapcar #'(lambda (x) (remove-dup x test (1- depth))) list)))


; (defmethod rem-dups ((list t) (test t) (depth integer)) list)

;;;-----------------LIST-MODULO

(defmethod list-modulo ((list list) (ncol integer))
   "Groups the elements of a list distant of a regular interval <ncol> and returns these groups as a list of lists. 

Ex. (list-modulo '(1 2 3 4 5 6 7 8 9) 2)  => ((1 3 5 7 9) (2 4 6 8))
Ex. (list-modulo '(1 2 3 4 5 6 7 8 9) 3)  => ((1 4 7) (2 5 8) (3 6 9))
"
  (when (and (> ncol 0) (< ncol (length list))) (list-part list ncol)))

#| 
((defun list-part (list ncol)  
  (let ((vector (make-array  ncol )) res)
    (while list 
      (for (i 0 1 (1- ncol))
        (and list (vset vector i (push (pop list) (vref vector i))))))
    (for (i 0 1 (1- ncol))
      (push (remove nil (nreverse (vref vector i))) res))
    (print res) ;;
    (nreverse res)))
|#

;; my list-part

(defun list-part (list ncol)  
    (let ((vector (make-list ncol :initial-element '()))) 
      (pw::while list 
        (loop for i from 0 to (1- ncol) by 1
               do (push (pop list) (nth i vector))))  
     (mapcar #'(lambda (x) (remove '() x)) (mapcar #'reverse vector))))

;;;-----------------INTERLOCK
(defmethod interlock ((lis1 list) (lis2 list) (plc1 list))
  "Inserts the successive elements of <lis2> in <lis1> before the elements of <lis1> of respective positions from <plc1>.

Ex. (interlock '(0 1 2 3 ) '(a b) '(1 3))  =>  (0 a 1 2 b 3)"
   (let ((aux) (pointeur 0))
     (dotimes (n (length lis1) (reverse aux))
       (when  (member n plc1)
         (progn ()
                (push (nth pointeur lis2) aux)
                (incf pointeur)))
       (push (nth n lis1) aux))))

;;;-----------------SUBS-POSN

(defmethod subs-posn ((lis1 list) posn val)
  "Substitutes the elements of <lis1> at position(s) <posn> (if they exist) with the corresponding elements in <val>.

Ex. (subs-posn '(0 1 2 3) 2 'a)  => (0 1 a 3)
Ex. (subs-posn '(0 1 2 3) '(1 3) '(a b))  => (0 a 2 b)
"
  (let ((copy (copy-list lis1)))
    (if (listp posn)
        (loop for item in posn
              for i = 0 then (+ i 1) do
              (setf (nth item copy) (if (listp val) (nth i val) val)))
      (setf (nth posn copy) val))
    copy))


;;; old
;;(setf posn (sort posn '<))
;;   (loop for elt in lis1
;;         for counter from 0
;;         if (and posn (= counter (first posn))) collect (pop val) and do 
;;         (pop posn) else collect elt)






;;;;;;;;;;;;;;;;;; PRIME NUMBERS ;;;;;;;;;;;;;;;;;;;;


;;;; PRIME-SER ;;;;;

(defun divisible-by-prime (number list)
"return true if divisible by an element in the list"
  (loop for i in list
       thereis (= (mod number i) 0)))

(defun prime-list-generator (current max-value prime-list)
"business end of p10"
  (if (= current max-value)
      prime-list
      (if (divisible-by-prime current prime-list)
    (prime-list-generator (+ current 1) max-value prime-list)
    (prime-list-generator (+ current 1) max-value (nconc prime-list (list current))))))

(defun prime-ser (max)
"Returns the set of prime-numbers ranging from 0 up to max"
  (append '(1) (prime-list-generator 2 max '())

))


;;;;;;;; PRIME? ;;;;

(defun forall-prime (L P)
   (if (null L) 
       T 
       (and (FUNCALL P (CAR L)) (forall-prime (CDR L) P) )
   )
)

(defun nums-for-prime (start stop)

       (setf L nil)
 
       (loop (when (> start stop) (return (reverse L)))

             (setf L (cons start L) )

             (incf start)
) 
)

(defun prime?(N)
"Tests if n is a prime number. n must be smaller than 99460729."
       (forall-prime (nums-for-prime 2 (floor (sqrt N)) )  

               #'(lambda (d) (not (= (MOD N d) 0)))
       )
)



;;;;; PRIME-FACTORS ;;;;;;

(defun factorize (number)
           "Returns the prime decomposition of  <number> in the form (... (prime exponent) ...)
Primes known to the system are the 1230 primes ranging from 1 to 9973. They are
in the global variable *prime-numbers*. You can change This variable by typing
(setf *prime-numbers* (epw::gen-prime <max>))
where <max is an upper bound."
  (let ((R))
            (do ((x number)(c 0)(i 2 (+ i 1))) 
                ((= x 1) (reverse (group-list R (create-list (length R) 2) 'linear)))
                 (setf c 0)
                 (if (equal (REM x i) 0)
                    (do () ((> (REM x i) 0))
                        (setf c (+ c 1))
                        (setf x (floor (/ x i)))
                    )
                 )
                 (if (> c 0) (and (setf R (cons c R)) (setf R (cons i R)))
                 )
            )   
          )            
)

(defun prime-factors (number)
  "Returns the prime decomposition of  <number> in the form (... (prime exponent) ...)
Primes known to the system are the 1230 primes ranging from 1 to 9973. They are
in the global variable *prime-numbers*. You can change This variable by typing
(setf *prime-numbers* (epw::gen-prime <max>))
where <max is an upper bound."
  (factorize number)
  ) 







;-------PRIME?---------
; (defvar *prime-numbers*)

; (setf *prime-numbers*
; #(1 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139
;   149 151 157 163 167 173 179 181 191 193 197 199 211 223 227 229 233 239 241 251 257 263 269 271 277 281 283
;   293 307 311 313 317 331 337 347 349 353 359 367 373 379 383 389 397 401 409 419 421 431 433 439 443 449 457
;   461 463 467 479 487 491 499 503 509 521 523 541 547 557 563 569 571 577 587 593 599 601 607 613 617 619 631
;   641 643 647 653 659 661 673 677 683 691 701 709 719 727 733 739 743 751 757 761 769 773 787 797 809 811 821
;   823 827 829 839 853 857 859 863 877 881 883 887 907 911 919 929 937 941 947 953 967 971 977 983 991 997 1009
;   1013 1019 1021 1031 1033 1039 1049 1051 1061 1063 1069 1087 1091 1093 1097 1103 1109 1117 1123 1129 1151 1153
;   1163 1171 1181 1187 1193 1201 1213 1217 1223 1229 1231 1237 1249 1259 1277 1279 1283 1289 1291 1297 1301 1303
;   1307 1319 1321 1327 1361 1367 1373 1381 1399 1409 1423 1427 1429 1433 1439 1447 1451 1453 1459 1471 1481 1483
;   1487 1489 1493 1499 1511 1523 1531 1543 1549 1553 1559 1567 1571 1579 1583 1597 1601 1607 1609 1613 1619 1621
;   1627 1637 1657 1663 1667 1669 1693 1697 1699 1709 1721 1723 1733 1741 1747 1753 1759 1777 1783 1787 1789 1801
;   1811 1823 1831 1847 1861 1867 1871 1873 1877 1879 1889 1901 1907 1913 1931 1933 1949 1951 1973 1979 1987 1993
;   1997 1999 2003 2011 2017 2027 2029 2039 2053 2063 2069 2081 2083 2087 2089 2099 2111 2113 2129 2131 2137 2141
;   2143 2153 2161 2179 2203 2207 2213 2221 2237 2239 2243 2251 2267 2269 2273 2281 2287 2293 2297 2309 2311 2333
;   2339 2341 2347 2351 2357 2371 2377 2381 2383 2389 2393 2399 2411 2417 2423 2437 2441 2447 2459 2467 2473 2477
;   2503 2521 2531 2539 2543 2549 2551 2557 2579 2591 2593 2609 2617 2621 2633 2647 2657 2659 2663 2671 2677 2683
;   2687 2689 2693 2699 2707 2711 2713 2719 2729 2731 2741 2749 2753 2767 2777 2789 2791 2797 2801 2803 2819 2833
;   2837 2843 2851 2857 2861 2879 2887 2897 2903 2909 2917 2927 2939 2953 2957 2963 2969 2971 2999 3001 3011 3019
;   3023 3037 3041 3049 3061 3067 3079 3083 3089 3109 3119 3121 3137 3163 3167 3169 3181 3187 3191 3203 3209 3217
;   3221 3229 3251 3253 3257 3259 3271 3299 3301 3307 3313 3319 3323 3329 3331 3343 3347 3359 3361 3371 3373 3389
;   3391 3407 3413 3433 3449 3457 3461 3463 3467 3469 3491 3499 3511 3517 3527 3529 3533 3539 3541 3547 3557 3559
;   3571 3581 3583 3593 3607 3613 3617 3623 3631 3637 3643 3659 3671 3673 3677 3691 3697 3701 3709 3719 3727 3733
;   3739 3761 3767 3769 3779 3793 3797 3803 3821 3823 3833 3847 3851 3853 3863 3877 3881 3889 3907 3911 3917 3919
;   3923 3929 3931 3943 3947 3967 3989 4001 4003 4007 4013 4019 4021 4027 4049 4051 4057 4073 4079 4091 4093 4099
;   4111 4127 4129 4133 4139 4153 4157 4159 4177 4201 4211 4217 4219 4229 4231 4241 4243 4253 4259 4261 4271 4273
;   4283 4289 4297 4327 4337 4339 4349 4357 4363 4373 4391 4397 4409 4421 4423 4441 4447 4451 4457 4463 4481 4483
;   4493 4507 4513 4517 4519 4523 4547 4549 4561 4567 4583 4591 4597 4603 4621 4637 4639 4643 4649 4651 4657 4663
;   4673 4679 4691 4703 4721 4723 4729 4733 4751 4759 4783 4787 4789 4793 4799 4801 4813 4817 4831 4861 4871 4877
;   4889 4903 4909 4919 4931 4933 4937 4943 4951 4957 4967 4969 4973 4987 4993 4999 5003 5009 5011 5021 5023 5039
;   5051 5059 5077 5081 5087 5099 5101 5107 5113 5119 5147 5153 5167 5171 5179 5189 5197 5209 5227 5231 5233 5237
;   5261 5273 5279 5281 5297 5303 5309 5323 5333 5347 5351 5381 5387 5393 5399 5407 5413 5417 5419 5431 5437 5441
;   5443 5449 5471 5477 5479 5483 5501 5503 5507 5519 5521 5527 5531 5557 5563 5569 5573 5581 5591 5623 5639 5641
;   5647 5651 5653 5657 5659 5669 5683 5689 5693 5701 5711 5717 5737 5741 5743 5749 5779 5783 5791 5801 5807 5813
;   5821 5827 5839 5843 5849 5851 5857 5861 5867 5869 5879 5881 5897 5903 5923 5927 5939 5953 5981 5987 6007 6011
;   6029 6037 6043 6047 6053 6067 6073 6079 6089 6091 6101 6113 6121 6131 6133 6143 6151 6163 6173 6197 6199 6203
;   6211 6217 6221 6229 6247 6257 6263 6269 6271 6277 6287 6299 6301 6311 6317 6323 6329 6337 6343 6353 6359 6361
;   6367 6373 6379 6389 6397 6421 6427 6449 6451 6469 6473 6481 6491 6521 6529 6547 6551 6553 6563 6569 6571 6577
;   6581 6599 6607 6619 6637 6653 6659 6661 6673 6679 6689 6691 6701 6703 6709 6719 6733 6737 6761 6763 6779 6781
;   6791 6793 6803 6823 6827 6829 6833 6841 6857 6863 6869 6871 6883 6899 6907 6911 6917 6947 6949 6959 6961 6967
;   6971 6977 6983 6991 6997 7001 7013 7019 7027 7039 7043 7057 7069 7079 7103 7109 7121 7127 7129 7151 7159 7177
;   7187 7193 7207 7211 7213 7219 7229 7237 7243 7247 7253 7283 7297 7307 7309 7321 7331 7333 7349 7351 7369 7393
;   7411 7417 7433 7451 7457 7459 7477 7481 7487 7489 7499 7507 7517 7523 7529 7537 7541 7547 7549 7559 7561 7573
;   7577 7583 7589 7591 7603 7607 7621 7639 7643 7649 7669 7673 7681 7687 7691 7699 7703 7717 7723 7727 7741 7753
;   7757 7759 7789 7793 7817 7823 7829 7841 7853 7867 7873 7877 7879 7883 7901 7907 7919 7927 7933 7937 7949 7951
;   7963 7993 8009 8011 8017 8039 8053 8059 8069 8081 8087 8089 8093 8101 8111 8117 8123 8147 8161 8167 8171 8179
;   8191 8209 8219 8221 8231 8233 8237 8243 8263 8269 8273 8287 8291 8293 8297 8311 8317 8329 8353 8363 8369 8377
;   8387 8389 8419 8423 8429 8431 8443 8447 8461 8467 8501 8513 8521 8527 8537 8539 8543 8563 8573 8581 8597 8599
;   8609 8623 8627 8629 8641 8647 8663 8669 8677 8681 8689 8693 8699 8707 8713 8719 8731 8737 8741 8747 8753 8761
;   8779 8783 8803 8807 8819 8821 8831 8837 8839 8849 8861 8863 8867 8887 8893 8923 8929 8933 8941 8951 8963 8969
;   8971 8999 9001 9007 9011 9013 9029 9041 9043 9049 9059 9067 9091 9103 9109 9127 9133 9137 9151 9157 9161 9173
;   9181 9187 9199 9203 9209 9221 9227 9239 9241 9257 9277 9281 9283 9293 9311 9319 9323 9337 9341 9343 9349 9371
;   9377 9391 9397 9403 9413 9419 9421 9431 9433 9437 9439 9461 9463 9467 9473 9479 9491 9497 9511 9521 9533 9539
;   9547 9551 9587 9601 9613 9619 9623 9629 9631 9643 9649 9661 9677 9679 9689 9697 9719 9721 9733 9739 9743 9749
;   9767 9769 9781 9787 9791 9803 9811 9817 9829 9833 9839 9851 9857 9859 9871 9883 9887 9901 9907 9923 9929 9931
;   9941 9949 9967 9973))


;------------------------------------------------------------------------

; (defun prime-facts (x)
;   (let ((ip 1) (r) (n 0))
;     (loop while (and (> x 1) 
;                      (<= (* (aref *prime-numbers* ip) 
;                             (aref *prime-numbers* ip))
;                          x)) do
;       (when (= 0 (mod x (aref *prime-numbers* ip)))
;         (setq n 1)
;         (loop while (= 0 
;                        (progn (setq x (/ x (aref *prime-numbers* ip))) 
;                               (mod x (aref *prime-numbers* ip)))) do
;               (incf n))
;         (push  (list (aref *prime-numbers* ip) n) r))
;       (incf ip))
;     (when (/= x 1)   (push  (list x 1) r))
;     (or (reverse r) (list (list 1 1)))))


; (defmethod factorize ((number number)) 
;   "Returns the prime decomposition of <number> in the form ((prime1 exponent1) (prime2 exponent2) ...)
; Primes known to the system are the 1230 primes ranging from 1 to 9973.

; Ex. (factorize 100) => ((2 2) (5 2))     [100 = 2^2 * 5^2]"
;   (prime-facts number))








; (save-lisp-and-die "/Volumes/Data/Desktop/pw+iter.core")





(defun posn-order (list funct)
"This module returns a list of positions of <list> ordered according to <funct>"
  (let* ((order (pw::arithm-ser 0 1 (- (length list) 1)))
         (lists (pw::mat-trans (list list order)))
        )
(mapcar #'second (sort lists funct :key #'first))))





(defun g-scaling/percent (l1? l2?)
  "Divides by 100 the product of <l1?> and <l2?>.
 Both arguments can be numbers or lists of any depth"
  (g/ (g* l1? l2?) 100))


(defun g-alea (list percent)
  "Add a uniform random function to the list <list> of some depth according to a
percentage <percent> indicated."
  
  (let ((ns (mapcar #'float (g-scaling/percent list percent))))
      (g-random (g- list ns) (g+ list ns))
  
  ))








