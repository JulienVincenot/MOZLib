;;;==============================================================================================
;;;                                JBS-CMI    2009   
;;;==============================================================================================

;;;       JBS-CMI for PWGL

;;; Copyright (c) 2009, Jacopo Baboni Schilingi.  All rights reserved.
;;; Copyright (c) 2007, Kilian Sprotte.  All rights reserved.

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
;===================================     Package    =============================================
;
(in-package :jbs-cmi)
;
;===================================   USEFUL DEVICES   ==========================================
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;================================================================================================
;================================  useful-devices menu   ========================================
;================================================================================================
;
; (define-menu utilities :in jbs-cmi)
; (in-menu utilities)
;
;;;==============================================================================================
;                                   DEPTH
;;;==============================================================================================
;
;
(defun depth (liste) ; ((liste (a (b (c))))
  "6.1 - DEPTH

This function outputs each element of a given list with the corresponding level of nesting. 
"
  ; :non-generic t
  ; :class cmi-box
  (cond ((null liste) nil)
        ((atom liste) (list (list liste 0)))
        (t (append (depth-1 (car liste) (1+ 0)) (depth-1 (cdr liste) 0)))))
;
;
;;;==============================================================================================
;                                 tree-extract
;;;==============================================================================================
;
(defun tree-extract (structure index) ; ((structure (1 (2 (3 (4 5 6))))) (index (1 1)))
  "6.2 - TREE-EXTRACT

This function is a sort a recursive nth.

In [structure] you put a list of lists. In [index] you define the nth of the nth. For instance if you put (1 1), that means that you want to extract the second (nth 1) of the second (nth1).
"
  ; :non-generic t
  ; :class cmi-box
  (if (null index)
      structure
    (let ((subtree (nth (first index) structure)))
      (if (numberp subtree) subtree (tree-extract subtree (rest index))))))
;
;
;
;;;==============================================================================================
;                                 member-in-sublist?
;;;==============================================================================================
;
(defun member-in-sublists? (item-or-items lists mode) ; ((item-or-items (b c)) (lists ((a b c d) (b c d e))) (mode every))
  "6.3 - MEMBER-IN-SUBLISTS?

This function is a sort of general member test. It outputs T or NIL.

In [item-or-items] you put the element you want to be checked as included or excluded. 

In [lists] you put a list where to check if the item set in [item-or-items] is found or not.

With the menu MODE you can choose between four different tests:
- with EVERY this function puts T if the element set in [item-or-items] is in all sub lists;
- with SOME or NOTEVERY this function puts T if the element set in [item-or-items] is in certain sub lists;
- with NOTANY this function puts T if the element set in [item-or-items] is NOT in any sub lists.


"
  ; :non-generic t
  ; :class cmi-box
  ; :menu (mode every some notevery notany)
  (let* ((items (if (listp item-or-items) item-or-items (list item-or-items)))
	 (predicate #'(lambda (list) (subsetp items list))))
    (ecase mode
      (every (every predicate lists))
      (some (some predicate lists))
      (notevery (notevery predicate lists))
      (notany (notany predicate lists)))))
;
;
;
;;;==============================================================================================
;                                 circular-lists-reading
;;;==============================================================================================
;
(defun circular-lists-reading (list-1 list-2) ; ((list-1 (a b c)) (list-2 (1 2 3 4 5 6 7 8 9)))
  "6.04 - CIRCULAR-LIST-READING

This function allows you to synchronize the length of two lists.

If the lists set in [list-1] and [list-2] have the same length, it outputs the list set in [list-1] 

If the length of [list-1] is smaller  than the length of [list-2], it reads [list-1] in a circular way till when the two lengths are equal.

If the length of [list-2] is smaller  than the length of [list-1], it reads [list-2] in a circular way till when the two lengths are equal.
"
  ; :non-generic t
  ; :class cmi-box
  (let ((ros nil))
    (cond ((< (length list-1) (length list-2))
           (dotimes (y (length list-2) (nreverse ros))
             (push (nth
                    (mod y (length list-1))
                    list-1) ros)))
          ((> (length list-1) (length list-2))
           (dotimes (y (length list-1) (nreverse ros))
             (push (nth
                    (mod y (length list-2))
                    list-2) ros)))
          ((= (length list-1) (length list-2))
           (dotimes (y (length list-2) (nreverse ros))
             (push (nth
                    (mod y (length list-1))
                    list-1) ros))))))

;
;;;==============================================================================================
;                                 first-n
;;;==============================================================================================
;
(defun first-n (list n) ; ((list (1 2 3)) (n 2))
  "n first elements of a list"
  ; :non-generic t
  ; :class cmi-box
  (subseq list 0 (min (length list) n)))
;
;;;==============================================================================================
;                                 last-n
;;;==============================================================================================
;
(defun last-n (list n) ; ((list (1 2 3)) (n 2))
  "n last elements of a list"
  ; :non-generic t
  ; :class cmi-box
  (subseq list (max 0 (- (length list) n))))
;
;;;==============================================================================================
;                                   complete-list
;;;==============================================================================================
;
(defun complete-list (list length) ; ((list (1 2 3)) (length 7))
  "6.06 - COMPLETE-LIST

This function looks if the length of the left [list] input is equal to the number put in the right one [lenght]. 

If the length smaller, the function will repeat the last element of the list till when the length is equal till the number set in the right input.
"
  ; :non-generic t
  ; :class cmi-box
  (if (= length (length list))
      list
    (pw::x-append list (mio-repeat (first (last list)) (- length (length list))))))
;
;;;==============================================================================================
;                                   index-subst
;;;==============================================================================================
;
(defun index-substitute (list indexes elements) ; ((list (a b c d e f g)) (indexes (2 4)) (elements (100 200)))
  "6.07 - INDEX-SUBSTITUTE

This function allows you to replace a list of elements giving the nth positions.

In [list] you put a list. 

In [indexes] you define where you want to make a substitution. The values here correspond to nth indexes. So 0 is the index if for the first element, 1 for the second, 2 for the third and so on.

In [elements] you put the elements that will be put in the given nth indexes set in [indexes]
"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil))
    (dotimes (x (length list) (nreverse ris))
      (push (if (find x indexes :test 'equalp)
                (pop elements)
              (nth x list)) ris))))
;
;;;==============================================================================================
;                                  arithm-ser-stop
;;;==============================================================================================
;
(defun arithm-ser-stop (start step stop) ; ((start 1) (step 10) (stop 3))
  "6.08 - ARITHMETIC-SER-STOP

This function creates an arithmetic series.

In [start] you set the starting point.

In [step] you set the step.

In [stop] you define how many step you want.
"
  ; :non-generic t
  ; :class cmi-box
  (let* ((steps (mio-repeat step (1- stop)))
         (ris nil)
         (mio-start start))
    (dolist (y steps (pw::x-append mio-start (nreverse ris)))
      (push (incf start y) ris))))
;
;;;==============================================================================================
;                                 gold-section-multiplication
;;;==============================================================================================
;
;
(defun gold-section-multiplication (number gr) ; ((number 312) (gr 1))
  "6.09 - GOLD-SECTION-MULTIPLICATION

This function creates a multiplication by the gold section value (0.618). It is a function that can be recalled recursively.

In [number] you define a number you want to divide by the gold section factor.

In [gr] you can define which level of the recursion you want. With 1 you call the function just one time; with 2 you apply the multiplication on the first value; with 3 you apply the multiplication on the second value that is the multiplication of the first one, and so on."

  ; :non-generic t
  ; :class cmi-box
  (if (= 1 gr) (gold-section number)
    (gold-section-multiplication (gold-section number) (- gr 1))))
;
;;;==============================================================================================
;                                for-max-coll
;;;==============================================================================================
;
(defun for-max-coll (list format?) ; ((list ((1 2 3) (a b c) (100 200 300))) (format? :to-listener))
  "6.10 - SEVERAL-FOR-MAX-COLL

FOR-MAX-COLL 

This function prepares a list like this one ((1 2 3) (a b c) (100 200 300)) in this format:

1, 1 2 3;
2, A B C;
3, 100 200 300;

ATTENTION: with the input FORMAT? you can choose either to print the result in the PWGL output [to-listener], or to create a new file through a dialog box [to-file].
"
  ; :non-generic t
  ; :class cmi-box
  ; :menu (format? (:to-listener "to-listener") (:to-file "to-file" ))
  (case format?
    (:to-listener (dotimes (x (length list))
                    (format t "~%~a," (1+ x))
                    (dolist (elt (pw::flat (nth x list)))
                      (format t " ~a" elt))
                    (format t ";")))
 (:to-file (with-open-file (myfile (choose-new-file-dialog)
                                      :direction :output
                                      :if-exists :supersede)
          (dotimes (x (length list))
                  (format myfile "~%~a," (1+ x))
                  (dolist (elt (pw::flat (nth x list)))
                    (format myfile " ~a" elt))
                  (format myfile ";"))))))
#|
;
;;;==============================================================================================
;                                   for-max-special-coll
;;;==============================================================================================
;
(defun for-max-special-coll ((list1 ((1 2 3) (a b c) (100 200 300))) (list2 ((5 6 7) (d e f) (11 22 33))) (format? :to-listener))
  "6.10 - SEVERAL-FOR-MAX-COLL

FOR-MAX-SPECIAL-COLL 

This function prepares two lists, this one ((1 2 3) (a b c) (100 200 300)) and this one ((5 6 7) (d e f) (11 22 33)), in the following format:

(1 2 3), (5 6 7);
(A B C), (D E F);
(100 200 300), (11 22 33);



ATTENTION: with the input FORMAT? you can choose either to print the result in the PWGL output [to-listener], or to create a new file through a dialog box [to-file].
"
  ; :non-generic t
  ; :class cmi-box
  ; :menu (format? (:to-listener "to-listener") (:to-file "to-file" ))
  (case format?
    (:to-listener (dotimes (x (length list1))
                    (format t "~%~a," (nth x list1))
                    (format t " ~a" (nth x list2))
                    (format t ";")))
    (:to-file (with-open-file (myfile (choose-new-file-dialog)
                                      :direction :output
                                      :if-exists :supersede)
                (dotimes (x (length list1))
                  (format myfile "~%~a," (nth x list1))
                  (format myfile " ~a" (nth x list2)))
                (format myfile ";")))))
;
;;;==============================================================================================
;                                   collect-name-and-index
;;;==============================================================================================
;
(defun for-max-collect-name-and-index ((list1 (start start start)) 
                                            (list2 (1 2 3)) (format? :to-listener))
  "6.10 - SEVERAL-FOR-MAX-COLL

FOR-MAX-COLLECT-NAME-AND-INDEX 

This function prepares one list like this one (start start start) in the following format:

START1;
START2;
START3;

ATTENTION: with the input FORMAT? [b] you can choose either to print the result in the PWGL output [to-listener], or to create a new file through a dialog box [to-file].
"
  ; :non-generic t
  ; :class cmi-box
  ; :menu (format? (:to-listener "to-listener") (:to-file "to-file" ))
  (case format?
    (:to-listener (dotimes (x (length list1))
                    (format t "~%~a" (nth x list1))
                    (format t "~a" (nth x list2))
                    (format t ";")))
    (:to-file (with-open-file (myfile (choose-new-file-dialog)
                                      :direction :output
                                      :if-exists :supersede)
                (dotimes (x (length list1))
                  (format myfile "~%~a," (nth x list1))
                  (format myfile " ~a" (nth x list2)))
                (format myfile ";")))))
|#
;
;;;==============================================================================================
;                                   append-name-and-index
;;;==============================================================================================
;
(defun append-name-and-index (list1 list2) ; ((list1 (:mp :mf :slur)) (list2 (1 2 3)))
  "6.11 - FOR-MAX-COLLECT-NAME-AND-INDEX

This function prepares one list like this one (:mp :mf :slur) in the following format:

(:MP1 :MF2 :SLUR3)

"
  ; :non-generic t
  ; :class cmi-box
  
 (iter
   (for x in list1)
   (for y in list2)
   (collect (intern (format nil "~A~D" x y) "KEYWORD"))))
    

;
;;;==============================================================================================
;                                 find-all-intervals
;;;==============================================================================================
;                           
(defun find-all-intervals (chord) ; (chord (60 62 64 65))
  "6.12 - FIND-ALL-INTERVALS

This function comes from B. FERNEYHOUGH old PatchWork Library.

It calculates all the melodic intervals of a given list of pitches.
"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil)
	(chord (pw::sort-list chord)))
    (dotimes (x (1- (length chord)) (nreverse ris))
      (push (rest (pw::g- (nthcdr x chord) (nth x chord))) ris))))
;
;;;==============================================================================================
;                                 get-index
;;;==============================================================================================
; 
(defun get-index (element list) ; ((element a) (list (a b c a a)))
  "6.12 - GET-INDEX

This function outputs an element (or a list) with the correspondent index inside another list
It returns the indexes of the element if the element is found inside a given list

"
  ; :non-generic t
  ; :class cmi-box
  
 

 (let ((ris nil))
   (dotimes (x (length list) (list element (nreverse ris)))
     (if (equalp (nth x list) element)
         (push x ris)))))

;
;;;==============================================================================================
;                                 get-index-if-positive
;;;==============================================================================================
; 
(defun get-index-if-positive (list) ; ((list (1 2 -1 1 -2)))
  "It returns the indexes of the element if the lement is positive"
  (let ((ris nil))
    (dotimes (x (length list) (nreverse ris))
      (if (> (nth x list) 0)
          (push x ris)))))


;
;;;==============================================================================================
;                                 identity-index
;;;==============================================================================================
; 
(defun identity-index (list-elmt) ; ((list-elmt ((a) (b c) (a) (b c) (d))))
  "6.13 - GET-INDEX

This function, for each element, outputs its identity index as in the contrast analysis of morphologie by Fred Voisin and Hervé Rivière

"
  ; :outputs 3
  ;; :non-generic t
  ;; :class cmi-box
  

  (let* ((ris nil)
         (ros nil)
         (list-elmt-reduced (remove-duplicates list-elmt :test 'equalp :from-end 't))
         (indexes (pw::arithm-ser 1 1 (length list-elmt-reduced)))
         (matrix-list-element (pw::mat-trans (list list-elmt-reduced indexes)))
         (identity (dolist (x list-elmt (nreverse ris))
                     (dolist (y matrix-list-element)
                       (if (equalp x (first y))
                           (push (second y) ris)))))
         (total-list-with-indexes (dotimes (x (length list-elmt) (nreverse ros))
                                    (push (list (nth x list-elmt)
                                                (nth x identity)) ros))))
                                               

    (values identity matrix-list-element total-list-with-indexes)))
   
;
;;;==============================================================================================
;                                 reconstitute-from-indexes
;;;==============================================================================================
;
(defun reconstitute-from-indexes (list-elmt indexes) ; ((list-elmt ((((F G H)) 1) ((F G H) 2) (F 3) (G 4) (H 5))) (indexes (1 2 2 5 4 3)))
  "6.14 - GET-INDEX

This function,takes two inputs. The first comes from the function identity-index whichi gives you a reduce structure ofa given list where for each element you have a corresponding index. This function takes new indexes (in indexes) and recontsruct a list
"
  ; :non-generic t
  ; :class cmi-box
  

  (let* ((ris nil)
         (recosntitution (dolist (x indexes (nreverse ris))
                           (dolist (y list-elmt)
                             (if (equalp x (second y))
                                 (push (first y) ris))))))
    recosntitution))
;
;;;==============================================================================================
;                                 COUNT POSITIVE
;;;==============================================================================================
;
(defun count-positive (list) ; (list (-1 -1 1 -1 1 1 1 -1 1))
  "6.14 - COUNT POSITIVE

This function count how many positive numbers are inside a list"
  ; :non-generic t
  ; :class cmi-box
  
  (let* ((ris nil)
         (recosntitution (dolist (x list (length (nreverse ris)))
                           (if (> x 0)
                               (push x ris)))))
    recosntitution))



;
;;;==============================================================================================
;                                 COUNT NEGATIVE
;;;==============================================================================================
;
(defun count-negative (list) ; ((list (-1 -1 1 -1 1 1 1 -1 1)))
  "6.14 - COUNT NEGATIVE

This function count how many positive numbers are inside a list"
  ; :non-generic t
  ; :class cmi-box
  
  (let* ((ris nil)
         (recosntitution (dolist (x list (length (nreverse ris)))
                           (if (< x 0)
                               (push x ris)))))
    recosntitution))
;
;;;==============================================================================================
;                                 GOING ON IN A LIST IF
;;;==============================================================================================
;
(defun going-on-in-a-list-if (list1 list2 condition?) ; ((list1 (a b c d e)) (list2 (-1 -1 1 -1 1 1 1 -1 1)) (condition? :positive))
  "6.14 - GOING ON IN A LIST IF POSITIVE or NEGATIVE

This function,takes two inputs: a list to be scanned and a list of positive and negative numbers. If you select positive, this function outputs list values only when there are corrseponding positive value. If you chose negative only for negative values.
  "The given intervals set in INTERVALS have be inside the solution." "
  ; :non-generic t
  ; :class cmi-box
  ; :menu (condition? (:positive "positive") (:negative "negative"))
  
  
  (case condition?    
    (:positive
     (let* ((ris nil)
            (recosntitution (dolist (x list2 (nreverse ris))
                              (if (> x 0)
                                  (push (pop list1) ris)
                                ))))
       recosntitution))
    (:negative
     (let* ((ris nil)
            (recosntitution (dolist (x list2 (nreverse ris))
                              (if (< x 0)
                                  (push (pop list1) ris)
                                ))))
       recosntitution))))
    

;
;;;==============================================================================================
;                                 case-symbol-substitute
;;;==============================================================================================
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     INSTALL MENU     ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; at the end
; (install-menu jbs-cmi)
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     FOR FRIENDS     ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
(defun for-special-case (list format?) ; ((list (1 2 3)) (format? :to-listener))
  "It prints out a list in the format of the coll object in Max/Msp. "
  ; :non-generic t
  ; :class cmi-box
  ; :menu (format? (:to-listener "to-listener") (:to-file "to-file" ))
  (case format?
    (:to-listener (dolist (elt list)
                    (format t "~a" elt)
                    (format t ";"))
     )
    (:to-file (with-open-file (myfile (choose-new-file-dialog)
                                      :direction :output
                                      :if-exists :supersede)
                (dotimes (x (length list))
                  (format myfile "~%~a," (1+ x))
                  (dolist (elt (pw::flat (nth x list)))
                    (format myfile " ~a" elt))
                  (format myfile "; "))))))


(defun going-on-in-a-list-ifthan-100 (list1 list2 condition?) ; ((list1 (a b c d e)) (list2 (-1 -1 1 -1 1 1 1 -1 1)) (condition? :positive))
  "6.14 - GOING ON IN A LIST IF POSITIVE TO BE FINISHED

This function,takes two inputs: a list to be scanned and a list of positive and negative numbers. If you select positive, this function outputs list values only when there are corrseponding positive value. If you chose negative only for negative values.
"The given intervals set in INTERVALS have be inside the solution." "
  ; :non-generic t
  ; :class cmi-box
  ; :menu (condition? (:positive "positive") (:negative "negative"))
  
  
  (case condition?    
    (:positive
     (let* ((ris nil)
            (recosntitution (dolist (x list2 (nreverse ris))
                              (if (> x 0)
                                  (push (pop list1) ris)
                                (push (list 100) ris)))))
       recosntitution))
    (:negative
     (let* ((ris nil)
            (recosntitution (dolist (x list2 (nreverse ris))
                              (if (< x 0)
                                  (push (pop list1) ris)
                                (push (list 100) ris)))))
       recosntitution))))