;;;==============================================================================================
;;;                                JBS-CMI    2009 
;;;==============================================================================================
;
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
;====================================    JBS-CMI   =============================================
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;==========================      SPECIAL COMBINATIONS      ======================================
;
;================================================================================================
;==========================  In special combinations menu  ======================================
;================================================================================================
;
; (define-menu special-combinations :in jbs-cmi)
; (in-menu special-combinations)
; (define-menu all-possibilities :in special-combinations)
; (in-menu all-possibilities)
;
;;;==============================================================================================
;                            ALL COMBINATIONS
;;;==============================================================================================
;
(defun all-combinations (vals n) ; ((vals (1 2 3 4)) (n 3))
 "4.1.1 - ALL-COMBINATIONS

From old PatchWork: it creates all combinations of the given list in vals with a length set in n.
"
 ; :non-generic t
  ; :class cmi-box
  (let ((n (1- n)))
    (jbs-combx vals n)))
;
;;;==============================================================================================
;                            ALL PERMUTATIONS
;;;==============================================================================================
;
(defun all-permutations (list) ; ((list (1 2 3))
  "4.1.2 - ALL-PERMUTATIONS

From old PatchWork: it creates all permutations of the given list.
"
  ; :non-generic t
  ; :class cmi-box
  
  ;; If the input is nil, there is only one permutation:
  ;; nil itself
  (if (null list)
    '(())
    ;; Otherwise, take an element, e, out of the bag.
    ;; Generate all permutations of the remaining elements,
    ;; And add e to the front of each of these.
    ;; Do this for all possible e to generate all permutations.
    (mapcan #'(lambda (e)
                (mapcar #'(lambda (p) (cons e p))
                        (all-permutations
                         (remove e list :count 1 :test #'eq))))
            list)))

;
;;;==============================================================================================
;                                   ALL ROTATIONS
;;;==============================================================================================
;
(defun all-rotations (list) ; ((list (1 2 3 4))
  "4.1.3 - ALL-ROTATIONS

It gives all the circular permutations of a given list."

  ; :non-generic t
  ; :class cmi-box
  (let ((risul nil))
    (dotimes (x (length list) (nreverse risul))
      (push (pw::permut-circ list x) risul))))
;================================================================================================
;==========================  In circular menu  ======================================
;================================================================================================
;
; (define-menu circular :in special-combinations)
; (in-menu circular)
;
;;;==============================================================================================
;                                 circ-down-pitch
;;;==============================================================================================
;
(defun circ-down-pitch (list) ; (list (60 67 65 63 61 64))
  "4.2.1 - CIRC-DOWN-PITCH

This function concerns pitches.

It creates all circular permutations of a given list of pitches.
The specificity of this function is that the each circular permutation is transposed on a LOWER octave from the beginning one. 
"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil))
    (dotimes (x (length list) (nreverse ris))
      (push (if (= x 0)
                list
              (pw::om- (pw::x-append 
                       (butlast (pw::permut-circ list x))
                       (- (first (last (pw::permut-circ list x))) 12)) 
                      (* x 12))) ris))))
;
;;;==============================================================================================
;                               circ-up-pitch
;;;==============================================================================================
;
(defun circ-up-pitch (list) ; (list (60 67 65 63 61 64))
  "4.2.2 - CIRC-UP-PITCH

This function concerns pitches.

It creates all circular permutations of a given list of pitches.
The specificity of this function is that the each circular permutation is transposed on a UPPER octave from the beginning one. 
"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil))
    (dotimes (x (length list) (nreverse ris))
      (push (if (= x 0)
                list
              (pw::om+ (pw::x-append 
                       (butlast (pw::permut-circ list x))
                       (+ (first (last (pw::permut-circ list x))) 12)) 
                      (* x 12))) ris))))
;
;;;==============================================================================================
;                             groups-circular-repetition
;;;==============================================================================================
;


#|

(defun circular-groups ((pulses (1 1 1 1)) 
                             (fix-values? :fix-val?)
                             (repeat-values 1)
                             (rests (-2 -2)) 
                             (fix-rests? :fix-rest?)
                             (repeat-rests 1)) 
  "This function creates the circular permutation between two groups : pulses and rests.
In pulses you put in a sub lists format the groups of pulses you want to permutate. In the rests input 
the rest values too. With the menu 'fix-values? you can decide if you want to keep the values in the 
order you have put or if you want the circular permutation. In the menu 'fix-rests? the same concerning the rests.
If both cases, this function create an alternating result giving firs a group of pulses and then a group
of rests, following the indication put in the two menus. The inputs repeat-values or repeat-rests work only
if you use not make the permutation mode. In this case it repeats the element(alwyas in an alternating way) 
with a number of repetitions put in repeat-values or repeat-rests. It correspons to the italian : fasce di scorrimento."
  ; :non-generic t
  ; :class cmi-box
  ; menu (fix-values? (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (fix-rests? (:fix-rest? "fix-rest?") (:permut-rest? "permut-rest?"))
  (pw::flat (pw::mat-trans (append (list 
                                    (cond ((equalp fix-values? :fix-val?)
                                           (pw::flat-once (let ((ris nil) (n repeat-values))
                                                            (my-repeat n
                                                              (push pulses ris))
                                                            (nreverse ris))))
                                          ((equalp fix-values? :permut-val?)
                                           (pw::flat-once (cir pulses)))))
                                   (list 
                                    (cond ((equalp fix-rests? :fix-rest?)
                                           (pw::flat-once (let ((ris nil) (n repeat-rests))
                                                            (my-repeat n
                                                              (push rests ris))
                                                            (nreverse ris))))
                                          ((equalp fix-rests? :permut-rest?)
                                           (pw::flat-once (cir rests)))))))))

|#
(defun circular-groups10 (list1 group1
                          list2 group2
                          list3 group3
                          list4 group4
                          list5 group5
                          list6 group6
                          list7 group7
                          list8 group8
                          list9 group9
                          list10 group10
                          global-permut?)

;((list1 (1 2 3 4)) (group1 :fix-val?)
;  (list2 (-1 -2 -3 -4 -5)) (group2 :fix-val?)
;  (list3 (100 200 300)) (group3 :fix-val?)
;  (list4 nil) (group4 :fix-val?)
;  (list5 nil) (group5 :fix-val?)
;  (list6 nil) (group6 :fix-val?)
;  (list7 nil) (group7 :fix-val?)
;  (list8 nil) (group8 :fix-val?)
;  (list9 nil) (group9 :fix-val?)
;  (list10 nil) (group10 :fix-val?)
;  (global-permut? :fix-val?))

  "4.2.3 - CIRCULAR-GROUPS10 

This function creates the circular permutation between at maximum 10 groups.

In the ten lists (list1, list2, list3, etc. list10) you can define the different elements. If the corresponding menus (group1, group2, group3, etc. group10) are set on FIX-VAL?, it means that the group will be repeated several time. If it set on PERMUT-VAL?, that means that the group will have all its circular permutations. 

As the lists can have different lengths (as it is in this example), the number of repetitions of a group (if the corresponding menu is FIX-VAL?) depends on the longest list of all the groups.

The same is for the circular permutations. The number of circular permutations of a given group is repeated in order to get the length of the longest group treatment. 

If the menu GLOBAL-PERMUT? is set on FIX-VAL?, that means that the treatment of each list stays in the exact order following the numeration of the lists. 

If the menu GLOBAL-PERMUT?  is set on PERMUT)VAL?, that means that all the treatments of all the lists are permutated in a circular way.
"
  ; :non-generic t
  ; :class cmi-box
  ; menu (group1 (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (group2 (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (group3 (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (group4 (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (group5 (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (group6 (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (group7 (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (group8 (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (group9 (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (group10 (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  ; menu (global-permut? (:fix-val? "fix-val?") (:permut-val? "permut-val?"))
  
  (let* ((biggest-length (pw::list-max (mapcar #'(lambda (x) (length x))
                                               (list list1 list2 list3 list4 list5
                                                     list6 list7 list8 list9 list10))))
         
         (list-of-1 (mio-repeat 1 biggest-length))

         (caloclo1 (if (equalp group1 :permut-val?)
                       (when list1
                         (if (= (length list1) biggest-length)
                             (cir list1)
                           (circular-lists-reading (cir list1) list-of-1)))
                     (mio-repeat list1 biggest-length)))
         (caloclo2 (if (equalp group2 :permut-val?)
                       (when list2
                         (if (= (length list2) biggest-length)
                             (cir list2)
                           (circular-lists-reading (cir list2) list-of-1)))
                     (mio-repeat list2 biggest-length)))
        
         (caloclo3 (if (equalp group3 :permut-val?)
                       (when list3
                         (if (= (length list3) biggest-length)
                             (cir list3)
                           (circular-lists-reading (cir list3) list-of-1)))
                     (mio-repeat list3 biggest-length)))
         (caloclo4 (if (equalp group4 :permut-val?)
                       (when list4
                         (if (= (length list4) biggest-length)
                             (cir list4)
                           (circular-lists-reading (cir list4) list-of-1)))
                     (mio-repeat list4 biggest-length)))
         (caloclo5 (if (equalp group5 :permut-val?)
                       (when list5
                         (if (= (length list5) biggest-length)
                             (cir list5)
                           (circular-lists-reading (cir list5) list-of-1)))
                     (mio-repeat list5 biggest-length)))
         (caloclo6 (if (equalp group6 :permut-val?)
                       (when list6
                         (if (= (length list6) biggest-length)
                             (cir list6)
                           (circular-lists-reading (cir list6) list-of-1)))
                     (mio-repeat list6 biggest-length)))
         (caloclo7 (if (equalp group7 :permut-val?)
                       (when list7
                         (if (= (length list7) biggest-length)
                             (cir list7)
                           (circular-lists-reading (cir list7) list-of-1)))
                     (mio-repeat list7 biggest-length)))
         (caloclo8 (if (equalp group8 :permut-val?)
                       (when list8
                         (if (= (length list8) biggest-length)
                             (cir list8)
                           (circular-lists-reading (cir list8) list-of-1)))
                     (mio-repeat list8 biggest-length)))
         (caloclo9 (if (equalp group9 :permut-val?)
                       (when list9
                         (if (= (length list9) biggest-length)
                             (cir list9)
                           (circular-lists-reading (cir list9) list-of-1)))
                     (mio-repeat list9 biggest-length)))
         (caloclo10 (if (equalp group10 :permut-val?)
                        (when list10
                          (if (= (length list10) biggest-length)
                              (cir list10)
                            (circular-lists-reading (cir list10) list-of-1)))
                      (mio-repeat list10 biggest-length))))
    (if (equalp global-permut? :permut-val?)
        (cir (pw::flat-once (pw::mat-trans (list caloclo1 caloclo2 caloclo3 caloclo4 caloclo5 caloclo6 caloclo7
                                                 caloclo8 caloclo9 caloclo10))))
      (pw::mat-trans (list caloclo1 caloclo2 caloclo3 caloclo4 caloclo5 caloclo6 caloclo7
                           caloclo8 caloclo9 caloclo10)))))





;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
