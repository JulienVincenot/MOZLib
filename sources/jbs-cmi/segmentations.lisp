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
;====================================    JBS-CMI   =============================================
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;==========================     GROUPING      ======================================
;
;================================================================================================
;==========================  In segmentations menu  =============================================
;================================================================================================
;
; (define-menu groups-segmentations :in jbs-cmi)
; (in-menu groups-segmentations)

; (define-menu groups :in groups-segmentations)
; (in-menu groups)
;
;;;==============================================================================================
;                                   GROUP-LIST
;;;==============================================================================================
;


(defun group-list (list groups  mode?) ; ((list (1 2 3 4)) (groups (3 4 5))  (mode? () :Profile-stop-circ-scal?-box))
  
  ; :menu (mode? (:stop "stop") (:circ "circ") (:scal "scale"))
  ; :non-generic t
  "5.1.1 - GROUP-LIST

This function can group a given list [list] into several groups whom lengths are specified in [groups].

With the menu [mode?] you can:
- stop - choose to finish the grouping action when the starting list arrives at its end;
- circ - choose to continue to read the list in a circular way till when all the sub-group have been completed;
- scale - choose to rescale proportionally the lengths of the sub-groups in order to fit exactly in the length of the original list.
"
  ; :non-generic t
  ; :class cmi-box
  (jbs-profile::group-list list groups mode?))
;


;;;==============================================================================================
;                                  group-equals
;;;==============================================================================================
;
(defun group-equals (list) ; (list (a b b b c c c c a a a b b b b d d d))
  "5.2 - GROUP-EQUALS

This function groups identical elements with consecutive identical elements.
"
  ; :non-generic t
  ; :class cmi-box
  (let* ((ris nil)
         (ros nil)
         (calcolo (pw::x-append (list (list 0 0)) (jbs-cmi::mio-smooth list)))
         (calcolone (dotimes (y (1- (length calcolo)) (remove nil (nreverse ros)))
                      (push (pw::posn-match 
                             (rest list)
                             (pw::arithm-ser (first (nth y calcolo))
                                             1
                                             (1- (first (nth (1+ y) calcolo)))
                                             ))
                            ros))))
    
    (if (equalp (first (first calcolone))
                (first list))
      (pw::x-append (list (pw::x-append (first list) (first calcolone)))
                    (rest calcolone))
      (pw::x-append (list (pw::x-append (first list) nil))
                    calcolone))))
;
;;;==============================================================================================
;                                 all-sub-groups
;;;==============================================================================================
;
(defun all-sub-groups (list) ; ((list (a b c d e f g))
  "5.3 - ALL-SUB-GROUPS

This function outputs all the possible sub groups of a given list.
"
  ; :non-generic t
  ; :class cmi-box
  (let ((lengths (list 1 (1- (length list)))))
    (all-given-sub-groups list lengths)))
;
;;;==============================================================================================
;                                 all-given-sub-groups
;;;==============================================================================================
;
(defun all-given-sub-groups (list1 n) ; ((list1 (1 2 3 4 5)) (n (2 5)))
  "5.1.4 - ALL-GIVEN-SUB-GROUPS

This function outputs all sub groups of a given list [list1]. The subgroups length is set in [n]. 
For instance: If you put in [n] the atom 3, you will get only subgroups of length 3; if you put the atom 5 only the subgroups of length 5.
But if you put a list like (2 4), you will get all the subgroups of length 2, 3 and 4.

"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil)
        (n (if (and (listp n)
                    (= 1 (length n)))
               (first n) n)))
    (cond ((equal n 'nil)
	   (loop for x from 2 to (floor (/ (length list1) 2))
	      do
	      (dotimes (y (+ (- (length list1) x) 1))
		(push (jbs-cmi::primo-passo
		       (nthcdr y list1)
		       x)
		      ris))))
	  ((or (integerp n) (and (listp n) (= 1 (length n))))
	   (dotimes (y (+ (- (length list1) n) 1))
	     (push (jbs-cmi::primo-passo
		    (nthcdr y list1)
		    n)
		   ris)))
	  ((and (listp n) (= 2 (length n)))
	   (loop for x from (car n) to (cadr n)
	      do
	      (dotimes (y (+ (- (length list1) x) 1))
		(push (jbs-cmi::primo-passo
		       (nthcdr y list1)
		       x)
		      ris))))
	  (t (format t " Invalid optional input") (abort)))
    (reverse ris)))
;
;;;==============================================================================================
;                                 grouping-on-given-element
;;;==============================================================================================
;
#|
(defun grouping-including-given-element ((list (a b c a b c d e a b c d e f a a a z a)) (element a))
  "This function is the LISP sort makes groups each time it finds the given element"
  ; :non-generic t
  ; :class cmi-box
  (let* ((ris nil)
         (ros nil)
         (rus nil)
         (indexes (dotimes (x (length list) (nreverse ris))
                    (if (equalp (nth x list) element)
                        (push (list x) ris)
                      (push x ris))))
         (print indexes)
         (pre-segmentation (dotimes (x (length indexes) (nreverse ros))
                             (if (listp (nth x indexes))
                                 (push (setf value x) ros)
                               nil)))
         (almost-segmented (dotimes (y (1- (length pre-segmentation)) (nreverse rus))
                             (push (butlast (pw::arithm-ser (nth y pre-segmentation)
                                                   1
                                                   (nth (1+ y) pre-segmentation))) rus))))
    
    (pw::posn-match list almost-segmented)))
|#   

(defun grouping-including-given-element (list element) ; ((list (a b c a b c d e a b c d e f a a a z a)) (element a))
  "5.1.5 - GROUPING-INCLUDING-GIVEN-ELEMENT
This function groups a given list [list] creating new subgroups containing the given element set in [element]. That means that all subgroups will start with the element set in [list]. 

ATTENTION: if the list does not start with the element set in [element], the first subgroup will not contain this element.
"
  ; :non-generic t
  ; :class cmi-box
  (jbs-cmi::group-list list (jbs-cmi::segmenta-su-element2 list element) :stop))
;
;;;==============================================================================================
;                                 grouping-excluding-given-element
;;;==============================================================================================
;                           
(defun grouping-excluding-given-element (list element) ; ((list (a b c a b c d e a b c d e f a a a z a)) (element a))
  "5.1.6 - GROUPING-EXLUDING-GIVEN-ELEMENT
This function groups a given list [list] creating new subgroups: the given element set in [element] will be put into a separate list, and the other elements in other lists. 

"
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil))
    (dolist (y (grouping-including-given-element list element) (remove nil (pw::flat-once (nreverse ris))))
      (push (if (pw::included? (pw::list! element) y)
                (list 
                 (list (first y))
                 (rest y))
              (list y)) ris))))
;
;;;==============================================================================================
;                                 all-groups-by-all-elements
;;;==============================================================================================
;  
(defun all-groups-by-all-elements (list included?) ; ((list (a b c a b c d e z q z a a)) (included? :included?-box))
  "5.1.7 - ALL-GROUPS-BY-ALL-ELEMENTS

This function creates all sub lists accordingly to all elements of the given list [list]. With the menu INCLUDED? you can choose with YES to include the element of the segmentation inside each sub list; with NO! you can choose to exclude the element of the segmentation and to put into a separate sub list.
"
  ; :menu (included? (:yes ":yes") (:no! ":no!"))  
  ; :non-generic t
  ; :class cmi-box
  (let ((ris nil)
        (smoothed-list (jbs-cmi::smooth list)))
    (dolist (y smoothed-list (nreverse ris))
      (if (equalp included? :yes)
          (push (grouping-including-given-element list y) ris)
        (push (grouping-excluding-given-element list y) ris)))))

;
;;;==============================================================================================
;                                    MIXING LIST GROUPS
;;;==============================================================================================
;
(defun chaining-groups (elements groups last-elmts) ; ((elements (1 2 3 4 5 6 7 8 9)) (groups (3 4 5)) (last-elmts (2 2 2)))
  "5.1.8 - CHAINING-GROUPS

This function creates chained sub groups. In [elements] you put the list you want to chain. In [groups] you define the length of the subgroups.

In [last-elemts] you put how many last elements have to be in common between a group and its follower. For instance if you put (1 1 1) between the first group and the second there will be 1 common last element; the same between the second and the third; and the same too between the third and the fourth. But if you put (1 4 2), that means that between the first and the second group there will be 1 last common element; between the second and the third there will be 4 last common elements; between the third and the fourth there will be 2 last common elements.
"
  ; :non-generic t
  ; :class cmi-box
  (let  ((ris nil)
         (ros nil)
         (last-elmts (pw::dx->x 0 (jbs-cmi::circular-lists-reading last-elmts groups)))
         (passi-da-sottrarre (pw::dx->x 0 groups)))
    (dotimes (x (length groups) (nreverse ris))
      (push (jbs-cmi::first-n (jbs-cmi::last-n 
                                      elements 
                                      (+ (- (length elements) (nth x passi-da-sottrarre)) (nth x last-elmts)))                  
                                     (nth x groups)) 
            ris))))
      
#|
;
;;;==============================================================================================
;                                 sort-list-<-first
;;;==============================================================================================
;                           
(defun sort-list-<-first ((list ((1 uno) (5 cinque) (2 due) (3 tre) (4 quattro))))
  "This function is the LISP sort"
  ; :non-generic t
  ; :class cmi-box
  ()
  (ccl::sort list '< :key 'first))
|#
;
;================================================================================================
;==========================  In segmentations menu  =============================================
;================================================================================================
;
; (define-menu segmentations :in groups-segmentations)
; (in-menu segmentations)
;
;;;==============================================================================================
;                                maximum-segmnetation
;;;==============================================================================================
;  
(defun  maximum-segmentation (list) ;  ((list (1 2 3 2 3 4 1 2 3 4 5 4))
 "From PAolo Aralla MusicTopology
5.2.1 - MAXIMUM-MINIMUM-SEGMENTATIONS

(To better understand this function, please look also in mathematics, maxima and minima, known collectively as extrema.)

The function MAXIMUM-SEGMNTATION creates a segmentation based on the primitive forms of a given list of numbers.
ATTENTION: this function works only with numbers (not with symbols).
It creates a separate group of lists segmented before and after a point of maximum.
"
  ; :non-generic t
  ; :class cmi-box
 (let* ((risultato1 nil)
         (risultato2 nil)
         (morfo (min-flex-max1 list))
         (picchi-up (dolist (y morfo (pw::x-append 0 
                                                   (nreverse risultato1) 
                                                   (length list)))
                      (if (equalp (second y) '"max")
                        (push (first y) risultato1)))))
    
    (dotimes (x (- (length picchi-up) 1)
                (pw::posn-match list (nreverse risultato2)))
                (push  (pw::arithm-ser (nth x picchi-up)
                                       1
                                       (- (nth (+ 1 x) picchi-up) 1)
                                       ) risultato2))))
;
;;;==============================================================================================
;                               minimum-segmnetation
;;;==============================================================================================
;  
(defun  minimum-segmentation (list) ; (list (1 2 3 2 3 4 1 2 3 4 5 4))
  "From PAolo Aralla MusicTopology

5.2.1 - MAXIMUM-MINIMUM-SEGMENTATIONS

(To better understand this function, please look also in mathematics, maxima and minima, known collectively as extrema.)

The function MINIMUM-SEGMNTATION creates a segmentation based on the primitive forms of a given list of numbers.
ATTENTION: this function works only with numbers.
It creates a separate group of lists segmented before and after a point of minimum.
"
   ; :non-generic t
  ; :class cmi-box
  (let* ((risultato1 nil)
         (risultato2 nil)
         (morfo (min-flex-max1 list))
         (picchi-up (dolist (y morfo (pw::x-append 0 
                                                   (nreverse risultato1) 
                                                   (length list)))
                      (if (equalp (second y) '"min")
                          (push (first y) risultato1)))))
    
    (dotimes (x (- (length picchi-up) 1)
                (pw::posn-match list (nreverse risultato2)))
      (push  (pw::arithm-ser (nth x picchi-up)
                             1
                             (- (nth (+ 1 x) picchi-up) 1)
                             ) risultato2))))
;
;;;==============================================================================================
;                                on-new-segmentation
;;;==============================================================================================
;      
(defun on-new-segmentation (list) ; (list (a b c d a b c d e g f))
  "From PAolo Aralla MusicTopology

5.2.2 - ON-NEW-OLD-SEGMENTATIONS

(These two functions refer to the morphology theory developed by Paolo Aralla.)

The ON-NEW-SEGMENTATION  creates a group on each NEW incoming element. To create this segmentation, it creates a group excluding the NEW element and another group including it.


"
   ; :non-generic t
  ; :class cmi-box
  (let* ((risultato1 nil)
         (risultato2 nil)
         (morfo (min-flex-max1 (morph::contrasts-lev.1 list)))
         (picchi-up (dolist (y morfo (pw::x-append 0 
                                                   (nreverse risultato1) 
                                                   (length list)))
                      (if (equalp (second y) '"max")
                          (push (first y) risultato1)))))
    (dotimes (x (- (length picchi-up) 1)
                (pw::posn-match list (nreverse risultato2)))
      (push  (pw::arithm-ser (nth x picchi-up)
                             1                                       
                             (- (nth (+ 1 x) picchi-up) 1)
                             ) risultato2))))
;
;;;==============================================================================================
;                                on-old-segmentation
;;;==============================================================================================
;      
(defun on-old-segmentation (list) ; (list (a b c d a b c d e g f))
  "From PAolo Aralla MusicTopology

5.2.2 - ON-NEW-OLD-SEGMENTATIONS

(These two functions refer to the morphology theory developed by Paolo Aralla.)


The ON-OLD-SEGMENTATION creates a group on each OLD element appearing in the given list.


"
   ; :non-generic t
  ; :class cmi-box
  (let* ((risultato1 nil)
         (risultato2 nil)
         (morfo (min-flex-max1 (morph::contrasts-lev.1 list)))
         (picchi-up (dolist (y morfo (pw::x-append 0 
                                                   (nreverse risultato1) 
                                                   (length list)))
                      (if (equalp (second y) '"min")
                          (push (first y) risultato1)))))
    (dotimes (x (- (length picchi-up) 1)
                (pw::posn-match list (nreverse risultato2)))
      (push  (pw::arithm-ser (nth x picchi-up)
                             1                                       
                             (- (nth (+ 1 x) picchi-up) 1)
                             ) risultato2))))
;
;;;==============================================================================================
;                                on-new-new/old/analysis-segmnetation
;;;==============================================================================================
; 
(defun  on-new/new-old/analysis-segmentation (list) ; (list (a b c d a b c d e g f))
  "From PAolo Aralla MusicTopology

5.2.3 - ON-NEW-OR-OLD-NEW/OLD-ANALYSIS-SEGMENTATIONS

(These two functions refer to the morphology theory developed by Paolo Aralla.)

The ON-NEW/NEW-OLD-ANALYSIS-SEGMENTATION creates a new group on each NEW element coming out of the NEW-OLD-ANALYSIS iof the given list.

"
  ; :non-generic t
  ; :class cmi-box
  (let* ((risultato1 nil)
         (risultato2 nil)
         (morfo (min-flex-max1 (morph::new-old-analysis list)))
         (picchi-up (dolist (y morfo (pw::x-append 0 
                                                   (nreverse risultato1) 
                                                   (length list)))
                      (if (equalp (second y) '"max")
                          (push (first y) risultato1)))))
    
    (dotimes (x (- (length picchi-up) 1)
                (pw::posn-match list (nreverse risultato2)))
      (push  (pw::arithm-ser (nth x picchi-up)
                             1
                             (- (nth (+ 1 x) picchi-up) 1)
                             ) risultato2))))
;
;;;==============================================================================================
;                                on-old-new/old/analysis-segmnetation
;;;==============================================================================================
; 
(defun  on-old/new-old/analysis-segmentation (list) ; (list (a b c d a b c d e g f))
  "From PAolo Aralla MusicTopology

5.2.3 - ON-NEW-OR-OLD-NEW/OLD-ANALYSIS-SEGMENTATIONS

(These two functions refer to the morphology theory developed by Paolo Aralla.)


The ON-OLD/NEW-OLD-ANALYSIS-SEGMENTATION creates a new group on each OLD element coming out of the NEW-OLD-ANALYSIS of the given list.
"
  ; :non-generic t
  ; :class cmi-box
  (let* ((risultato1 nil)
         (risultato2 nil)
         (morfo (min-flex-max1 (morph::new-old-analysis list)))
         (picchi-up (dolist (y morfo (pw::x-append 0 
                                                   (nreverse risultato1) 
                                                   (length list)))
                      (if (equalp (second y) '"min")
                          (push (first y) risultato1)))))
    
    (dotimes (x (- (length picchi-up) 1)
                (pw::posn-match list (nreverse risultato2)))
      (push  (pw::arithm-ser (nth x picchi-up)
                             1
                             (- (nth (+ 1 x) picchi-up) 1)
                             ) risultato2))))