;;;==============================================================================================
;;;                                JBS - CMI    2009    
;;;==============================================================================================
;

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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;=================================      MATRIX      ======================================
;
;================================================================================================
;=======================================  In matrix  menu =======================================
;================================================================================================
;
;================================================================================================
;=============================   Numeric comment menu   =========================================
;================================================================================================
;
; ; (define-menu matrix :in jbs-cmi)
; ; (in-menu matrix)
; ; (define-menu numeric-comment :in matrix)
; ; (in-menu numeric-comment)
;
;;;==============================================================================================
;                                    NUMERIC COMMENT
;;;==============================================================================================
;
(defun numeric-comment (list gr) ; ((list (1)) (gr 1))
  "3.1.1 - NUMERIC-COMMENT

(Also know as Look-and-say sequence by John Horton Conway)

This function reproduces the Look-and-say sequence as shown.

Put 1 in [list] and choose which level of recursion you want to use with [gr].

To generate a member of the sequence from the previous member, 
read off the digits of the previous member, counting the number of digits in groups of the same digit. 

For example:

1 is read off as 'one 1' or 11.
11 is read off as 'two 1's' or 21.
21 is read off as 'one 2, then one 1' or 1211.
1211 is read off as 'one 1, then one 2, then two 1' or 111221.
111221 is read off as 'three 1, then two 2, then one 1' or 312211.

"
 ; ; :non-generic t
 ; ; :class cmi-box
  (if (= gr 1)
      (jbs-cmi::contone list)
    (numeric-comment (pw::flat (jbs-cmi::contone list))
                     (- gr 1))))
;
;;;==============================================================================================
;                                    NUMERIC COMMENT SORT
;;;==============================================================================================
;
(defun numeric-comment-sort (list gr); ((list (1 2 3))  (gr 1))
                                
  "3.1.2 - NUMERIC-COMMENT-SORT

This is a variation of the Look-and-say sequence by John Horton Conway.

Put 1 in [list] and choose which level of recursion you want to use with [gr].

To generate a member of the sequence from the previous member, read off the digits of the previous member, counting the number of digits in groups of the same digit., BUT STARTING ALWAYS FROM THE SUM OF MORE LITTLE NUMBER TO THE BIGGER ONE.

1 is read off as 'one 1' or 11.
11 is read off as 'two 1's' or 21.
NOW SEE THE DIFFERENCE 
21 is read off STARTING FROM THE MORE LITTLE NUMBER THAT IS 1
SO: as ' one 1' then one 2' or 1112.
THEN AGAIN SARTING FROM THE MORE LITTLE:
1112 is read off as 'three 1, then one 2' or 3112.
THEN AGAIN SARTING FROM THE MORE LITTLE:
3112 is read off as 'two 1, then one 2, then one 3' or 211213.
THEN AGAIN SARTING FROM THE MORE LITTLE:
211213 is read off as 'three 1, then two 2, then two 3' or 312213.
And so on.

A special property:
After a while all sequences become the comment of themselves.
Try to make the comment of this one: 2 1 3 2 2 3 1 4.
"
 ; ; :non-generic t
 ; ; :class cmi-box
  (if (= gr 1)
      (num-comment-sort-3 list)
    (numeric-comment-sort (pw::flat (num-comment-sort-3 list))
                          (- gr 1))))
;
;================================================================================================
;=============================   Numeric comment menu   =========================================
;================================================================================================
;
; ; (define-menu moving :in matrix)
; ; (in-menu moving)
;
;;;==============================================================================================
;                                         all-to-one
;;;==============================================================================================
;
(defun all-to-one (list) ; (list (10 5 3))
  "3.2.1 - ALL-TO-ONE
(This is an old B. Ferneyhough function)

This function creates a linear interpolation between a list of numbers set in [list] and the number 1. When a number of the given list reaches 1, then it disappears.

I you put (10 7 5 2) as starting list. The result will be.

---> 10 7 5 2
---> 9 6 4 1
---> 8 5 3
---> 7 4 2
---> 6 3 1
---> 5 2
---> 4 1
---> 3
---> 2
---> 1

"
  ; :non-generic t
  ; :class cmi-box
  (let* ((ros nil)
         (calcolo (dolist (y list (pw::mat-trans (nreverse ros)))
                    (push  
                     (pw::arithm-ser y -1 0) ros))))
    (remove nil (mapcar #' (lambda (x) (print (remove 0 x))) calcolo))))
;
;;;==============================================================================================
;                                         all-to-one
;;;==============================================================================================
;
(defun all-to-x (list x) ; ((list (10 5 3)) (x 21))
  "3.2.2 - ALL-TO-X

This function creates a linear interpolation between a list of numbers set in [list] and the number set in [x]. When a number of the given list reaches the value set in [x], then it disappears.

I you put (20 7 1) as starting list. The result will be.

---> 20 7 1
---> 19 8 2
---> 18 9 3
---> 17 10 4
---> 16 5
---> 15 6
---> 14 7
---> 13 8
---> 12 9
---> 11 10
---> 10

"
  ; :non-generic t
  ; :class cmi-box
  (let* ((ros nil)
         (calcolo (dolist (y list (pw::mat-trans (nreverse ros)))
                    (push  
                     (if (> y x)
                         (pw::arithm-ser  y -1 x)
                       (pw::arithm-ser  y 1 x)) ros))))
    calcolo))
;
;
;================================================================================================
;==============================   Reading Matrix menu   =========================================
;================================================================================================
;
; (define-menu reading-matrix :in matrix)
; (in-menu reading-matrix)
;
;;;==============================================================================================
;                                 right-down-diagonal-reading-matrix
;;;==============================================================================================
;
(defun right-down-diagonal-reading-matrix (list) ; (list) ; (list ((1 11 111) (2 22 222) (3 33 333)))
  "It reads the matrix through its diagonal, starting to the first element of the first line
to the last element of the last line.

Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:
---> 1
---> 22
---> 333
"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil))
    (dotimes (x (length list) (mapcar 'list (nreverse ris)))
      (push (nth x (nth x list)) ris))))
;
;;;==============================================================================================
;                                   left-up-diagonal-reading-matrix
;;;==============================================================================================
;
(defun left-up-diagonal-reading-matrix (list) ; ((list ((1 11 111) (2 22 222) (3 33 333)))
  "It reads the matrix through its diagonal, starting to the first element of the first line
to the last element of the last line.

Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:
---> 333
---> 22
---> 1

"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil))
    (dotimes (x (length list) (reverse (mapcar 'list (nreverse ris))))
      (push (nth x (nth x list)) ris))))
;
;;;==============================================================================================
;                                 right-up-diagonal-reading-matrix
;;;==============================================================================================
;
(defun right-up-diagonal-reading-matrix (list) ; ((list ((1 11 111) (2 22 222) (3 33 333)))
  "It reads the matrix through its diagonal, starting to the last element of the first line
to the first element of the last line.
Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:
---> 3
---> 22
---> 111

"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil))
    (dotimes (x (length list) (mapcar 'list (nreverse ris)))
      (push (nth x (nth x (reverse list))) ris))))
;
;;;==============================================================================================
;                                   left-down-diagonal-reading-matrix
;;;==============================================================================================
;
(defun left-down-diagonal-reading-matrix (list) ; (list ((1 11 111) (2 22 222) (3 33 333)))
  "It reads the matrix through its diagonal, starting to the last element of the first line
to the first element of the last line.
Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:
---> 111
---> 22
---> 3


"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil))
    (dotimes (x (length list) (reverse (mapcar 'list (nreverse ris))))
      (push (nth x (nth x (reverse list))) ris))))
;
;;;==============================================================================================
;                                 down-right-reading-matrix
;;;==============================================================================================
;
;
(defun down-left-down-reading-matrix (list) ; (list ((1 11 111) (2 22 222) (3 33 333)))
  "It gives back the matrix reading in a diagonal way, going down from left to rigth while
going down through the matrix.

Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:
---> 1
---> 11 2
---> 111 22 3
---> 222 33
---> 333

"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil)
        (calcolo (calcola-indici (length list))))
    (dolist (y calcolo (nreverse ris))
      (push (quasi-inter-diagonal-reading list (reverse y)) ris))))
;
;;;==============================================================================================
;                                  up-right-up-reading-matrix
;;;==============================================================================================
;
(defun up-right-up-reading-matrix (list) ; (list ((1 11 111) (2 22 222) (3 33 333)))
  "It gives back the matrix reading in a diagonal way, going up from right to left while
going down through the matrix.

Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:

---> 333
---> 33 222
---> 3 22 111
---> 2 11
---> 1

"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil)
        (calcolo (reverse (calcola-indici (length list)))))
    (dolist (y calcolo (nreverse ris))
      (push (quasi-inter-diagonal-reading list y) ris))))
;
;;;==============================================================================================
;                                  up-left-down-reading-matrix
;;;==============================================================================================
;
(defun up-left-down-reading-matrix (list) ; (list ((1 11 111) (2 22 222) (3 33 333)))
  "It gives back the matrix reading in a diagonal way, going up from right to left while
going down through the matrix.

Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:

---> 333
---> 222 33
---> 111 22 3
---> 11 2
---> 1
"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil)
        (calcolo (reverse (calcola-indici (length list)))))
    (dolist (y calcolo (nreverse ris))
      (push (reverse (quasi-inter-diagonal-reading list y)) ris))))
;
;;;==============================================================================================
;                                  down-right-up-reading-matrix
;;;==============================================================================================
;
(defun down-right-up-reading-matrix (list) ; (list ((1 11 111) (2 22 222) (3 33 333)))
  "It gives back the matrix reading in a diagonal way, going down from left to rigth while
going down through the matrix.

Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:

---> 1
---> 2 11
---> 3 22 111
---> 33 222
---> 333
"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil)
        (calcolo (reverse (calcola-indici (length list)))))
    (dolist (y calcolo (reverse (nreverse ris)))
      (push (reverse (quasi-inter-diagonal-reading list (reverse y))) ris))))
;
;;;==============================================================================================
;                                 order-reading-matrix
;;;==============================================================================================
;
(defun order-reading-matrix (list) ; (list ((1 11 111) (2 22 222) (3 33 333)))
  "Probably quite a stupid function: it just gives back the matrix in the same order
(list of lists) as it is. It's usefull in order to compare with the other functions
that read the matrix.

Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:

---> 1 11 111
---> 2 22 222
---> 3 33 333
"
  ; :non-generic t
  ; :class cmi-box
  list)
;
;;;==============================================================================================
;                                reverse-reading-matrix
;;;==============================================================================================
;
(defun reverse-reading-matrix (list) ; (list ((1 11 111) (2 22 222) (3 33 333)))
  "It gives back the last line up to the first, keeping the same order of elements, inside each 
lines.

Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:

---> 3 33 333
---> 2 22 222
---> 1 11 111

"
  ; :non-generic t
  ; :class cmi-box
  (reverse list))
;
;;;==============================================================================================
;                              reversed-order-reading-matrix
;;;==============================================================================================
;
(defun reversed-order-reading-matrix (list) ; (list ((1 11 111) (2 22 222) (3 33 333)))
  "It gives back the first line down to the last, reversing the order of elements, inside each 
lines.

Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:

---> 111 11 1
---> 222 22 2
---> 333 33 3
"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil))
    (dolist (y list (nreverse ris))
      (push (reverse y) ris))))
;
;;;==============================================================================================
;                                 reversed-order-reverse-reading-matrix
;;;==============================================================================================
;
(defun reversed-order-reverse-reading-matrix (list) ; (list ((1 11 111) (2 22 222) (3 33 333)))
  "It gives back the last line up to the first, reversing the order of elements, inside each 
lines.

Here is a very simple matrix:

BEGIN-OF-MATRIX
0  1  2  3
_______________________
1, 1 11 111
_______________________
2, 2 22 222
_______________________
3, 3 33 333
_______________________
END-OF-MATRIX

Here is the result:

---> 333 33 3
---> 222 22 2
---> 111 11 1
"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil))
    (dolist (y (reverse list) (nreverse ris))
      (push (reverse y) ris))))
;
;
;
;================================================================================================
;=============================   Printing Matrix menu   =========================================
;================================================================================================
;
; (define-menu printing-lists-&-matrix :in matrix)
; (in-menu printing-lists-&-matrix)
;
;;;==============================================================================================
;                                   PRINT MATRIX
;;;==============================================================================================
;

;
;;;==============================================================================================
;                                   PRINT LISTS
;;;==============================================================================================
;
(defun print-lists (list) ; ((list ((1 11) (2 22) (3 33))))
  "It prints out in the listener in a more readable way."
  ; :non-generic t
  ; :class cmi-box
  (dotimes (x (length list))
    (format t "~%~a" '--->)
    (dolist (elt (nth x list))
      (format t " ~a" elt))
    (format t "~%")
    ))




(defun print-matrix (list) ; (list list)
  "It prints in the listener in a matrix redeable format."
  ; :non-generic t
  ; :class cmi-box
  (format t "~a" 'begin-of-matrix)
  (format t "~%")
  (jbs-cmi::print-colonne list)
  
  
  (dotimes (x (length list))
    (format t "~%~a," (1+ x))
    (dolist (elt (nth x list))
      (format t " ~a" elt))
    (format t "~%")
    (format t "~a" '_______________________)
    
    )
  (format t "~%~a" 'end-of-matrix))


