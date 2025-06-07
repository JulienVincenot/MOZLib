;;;       JBS-CONSTRAINTS for PWGL

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



(in-package :jbs-constraints)
;============================
;===============================   Package =========================
;
(defmacro mode-switch (&body body)
  `(ecase mode?
     (:true/false (cons :true/false ,(second (first body))))
     (:heuristic (cons :heuristic ,(second (second body))))))

(defmacro absolute-switch (&body body)
  `(ecase absolute?
     (:absolute ,(second (first body)))
     (:up/down ,(second (second body)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;       FOR        FRIENDS      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun not-higher-interval-rule (limit sign? mode? weight)
  "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.
If you chose '+', it means that this function does not allow interval higher than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval higher than the one entered in 'limit' only for negatif interval.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
 ; ;   :non-generic t
 ; ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
 ; ;   :menu (sign? (1 "+") (2 "-") (3 "absolute"))
 ; ;  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
      (1
       (case sign?
         (1 
          `(* ?1
              ?2
              (omcs::?if
               (if (>= (- ?2 ?1) 0)
                   (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (2 
          `(* ?1
              ?2
              (omcs::?if
               (if (<= (- ?2 ?1) 0)
                   (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (3 
          `(* ?1
              ?2
              (omcs::?if
               (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))))))))
      (2
       (case sign?
         (1 
          `(* ?1
              ?2
              (omcs::?if
               (if (>= (- ?2 ?1) 0)
                   (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (2 
          `(* ?1
              ?2
              (omcs::?if
               (if (<= (- ?2 ?1) 0)
                   (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (3 
          `(* ?1
              ?2
              (omcs::?if
              (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))))
         
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))





(defun not-lower-interval-rule (limit sign? mode? weight)
  "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.
If you chose '+', it means that this function does not allow interval lower than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval lower than the one entered in 'limit' only for negatif interval.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;   :menu (sign? (1 "+") (2 "-") (3 "absolute"))
;  ;  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
      (1
       (case sign?
         (1 
          `(* ?1
              ?2
              (omcs::?if
               (if (> (- ?2 ?1) 0)
                   (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (2 
          `(* ?1
              ?2
              (omcs::?if
               (if (< (- ?2 ?1) 0)
                   (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (3 
          `(* ?1
              ?2
              (omcs::?if
               (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))))))))
      (2
       (case sign?
         (1 
          `(* ?1
              ?2
              (omcs::?if
               (if (> (- ?2 ?1) 0)
                   (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (2 
          `(* ?1
              ?2
              (omcs::?if
               (if (< (- ?2 ?1) 0)
                   (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (3 
          `(* ?1
              ?2
              (omcs::?if
              (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

#|
|#








;(define-menu jbs-constraints :print-name "JBS-Constraints")
;(in-menu jbs-constraints)
;(define-menu pmc-rules :in jbs-constraints)
;(define-menu score-pmc-rules :in jbs-constraints)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;========================== GENERIC RULES ===============================
;
;(define-menu generic-rules :in pmc-rules)
;(in-menu generic-rules)
;=====================================

(defun no-repetition-rule (mode? weight)
  "This rule dos not allow any repetition.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let ((ris nil))
    (push weight ris)
    (mode-switch
     (1
      `(* ?1
	  (omcs::?if
	   (not (member ?1 (rest omcs::rl) :test 'equalp)))))
     (2
      `(* ?1
	  (omcs::?if
	   (if (not (member ?1 (rest omcs::rl) :test 'equalp))
	       ',(first (nreverse ris))
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun no-absolute-repetition-rule (mode? weight)
  "It does not allow any repetition in abslute mode inside a solution.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let ((ris nil))
    (push weight ris)
    (mode-switch
     (1
      `(* ?1
	  (omcs::?if
	   (not (member (pw::g-abs ?1) 
			(pw::g-abs (rest omcs::rl))
			:test 'equalp)))))
     (2
      `(* ?1
	  (omcs::?if
	   (if (not (member (pw::g-abs ?1)
			    (pw::g-abs (rest omcs::rl))
			    :test 'equalp))
	       ',(first (nreverse ris))
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun no-local-repetition-rule (mode? weight)
  "This rule dos not allow any repetition.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let ((ris nil))
    (push weight ris)
    (mode-switch
     (1 `(* ?1 ?2 (omcs::?if (not (equalp ?1 ?2)))))
     (2
      `(* ?1
	  ?2
	  (omcs::?if
	   (if (not (equalp ?1 ?2)) ',(first (nreverse ris)) 0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun no-spaced-repetition-rule (candidates
                                       mode?
                                       weight)
  "This function does not allow any repetition for an element and another. The distance between the two elements is indicated with the numbers put in 'candidates'. For example if you put (1 4) it means that each element has to be different from the fourth after itself. If you put (1 7) that means that an element has to be different from the seventh after itself.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible.
"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let* ((ris nil)
	 (candidati
	  (make-?1-from-to 1 (pw::list-max candidates)))
	 (ros nil)
	 (rus nil)
	 (primo (first candidati))
	 (ultimo (first (last candidati))))
    (push primo ris)
    (push ultimo ros)
    (mode-switch
      (1 `(* ,@candidati (omcs::?if (not (equalp ,primo ,ultimo)))))
      (2
       `(* ,@candidati
           (omcs::?if (if (not (equalp ,primo ,ultimo)) ,weight 0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun not-modulo-x-repetition-rule (modulo mode? weight)
  "This rule does not allow any candidate having the same modulo given in modulo.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 (omcs::?if (not (equalp (mod ?1 ,modulo) 0)))))
   (2 `(* ?1 (omcs::?if (if (not (equalp (mod ?1 ,modulo) 0)) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))
 

(defun modulo-x-repetition-rule (modulo mode? weight)
  "This rule allows any candidate having the same modulo given in modulo.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible.
N.B. USEFULL IN QUANTIFICATION OF DURATIONS."
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 (omcs::?if (equalp (mod ?1 ,modulo) 0))))
   (2 `(* ?1 (omcs::?if (if (equalp (mod ?1 ,modulo) 0) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))





(defun not-modulo-x-local-repetition-rule (modulo mode? weight)
  "This rule does not allow any candidate having the same local modulo given in modulo.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
N.B. USEFULL IN QUANTIFICATION OF DURATIONS."
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 ?2 (omcs::?if (not (equalp (mod ?1 ,modulo) (mod ?2 ,modulo))))))
   (2 `(* ?1 ?2 (omcs::?if (if (not (equalp (mod ?1 ,modulo) (mod ?2 ,modulo))) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))







(defun not-rpt-elmts-in-lists-rule (mode? weight)
  "This rule does not allow any element of one list to be repeated in the following
list.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 ?2 (omcs::?if (not (find-all-in-lists ?1 (list ?2))))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (not (find-all-in-lists ?1 (list ?2))) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun not-consecutive-number-rule (mode? weight)
  "This rule does not allow numeric candidate to be followed by its consecutive. It means that if candidates are:
1 2 3 4 5 there will not be 1 follow by 2, but by 3, or 4 or 5.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 ?2 (omcs::?if (not (equalp (- ?2 ?1) 1)))))
   (2
    `(* ?1 ?2 (omcs::?if (if (not (equalp (- ?2 ?1) 1)) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun not-consecutive-ascending-rule (how-many
                                            mode?
                                           weight)
  "This rule does not allow more ascending value than as indicate in how-many.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let* ((ris nil)
	 (how-many (1+ how-many))
	 (candidates (make-?1-from-to  1 how-many))
	 (creo-i-simboli
          (genero-lista-segno-maggiore (mapcar 'reverse (scom candidates 2)))))
    (push creo-i-simboli ris)
    (mode-switch
      (1
       `(* ,@candidates
           (omcs::?if (not (and ,.(first (nreverse ris)))))))
      (2
       `(* ,@candidates
           (omcs::?if
            (if (not (and ,.(first (nreverse ris)))) ,weight 0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun not-consecutive-descending-rule (how-many
						  mode?
						  weight)
  "This rule does not allow more descending value than as indicate in how-many.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let* ((ris nil)
	 (how-many (1+ how-many))
	 (candidates (make-?1-from-to 1 how-many))
	 (creo-i-simboli
	  (genero-lista-segno-minore (mapcar 'reverse (scom candidates 2)))))
    (push creo-i-simboli ris)
    (mode-switch
     (1
      `(* ,@candidates
	  (omcs::?if (not (and ,.(first (nreverse ris)))))))
     (2
      `(* ,@candidates
	  (omcs::?if
	   (if (not (and ,.(first (nreverse ris)))) ,weight 0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun not-consecutive-equal-rule (how-many mode? weight)
  "This rule does not allow more equal values than as indicate in how-many.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let* ((ris nil)
	 (how-many (1+ how-many))
	 (candidates (make-?1-from-to 1 how-many))
	 (creo-i-simboli
	  (genero-lista-segno-uguale (mapcar 'reverse (scom candidates 2)))))
    (push creo-i-simboli ris)
    (mode-switch
     (1
      `(* ,@candidates
	  (omcs::?if (not (and ,.(first (nreverse ris)))))))
     (2
      `(* ,@candidates
	  (omcs::?if
	   (if (not (and ,.(first (nreverse ris)))) ,weight 0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))




(defun not-repeated-element-sub-group-rule (sub-group-length
                                                  mode?
                                                  weight)
  "This rule does not allow any repeated element into a given sub-group. The input
sub-group-length indicates the length of the sub-group.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let* ((candidates (make-?1-from-to 1 sub-group-length))
	 (rest-candidates (rest candidates)))
    (mode-switch
      (1
       `(* ,@candidates
           (omcs::?if
            (and (not (member omcs::?1
                              (list ,@rest-candidates)
                              :test 'equalp))
                 (if (= omcs::len (omcs::cur-slen))
                     (trova-ripetizioni
                      (morphologie::ptrn-reson omcs::l ,sub-group-length))
                   t)))))
      (2
       `(* ,@candidates
           (omcs::?if
            (if (and (not (member omcs::?1 (list ,@rest-candidates) :test 'equalp))
                     (if (= omcs::len (omcs::cur-slen))
                         (trova-ripetizioni
                          (morphologie::ptrn-reson omcs::l ,sub-group-length))
                       t))
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))









(defun not-repeated-list-sub-group-rule (sub-group-length
						   mode?
						  weight)
  "This rule does not allow any repeated list into a given sub-group. The input
sub-group-length indicates the length of the sub-group.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let* ((candidates (make-?1-from-to 1 sub-group-length))
	 (rest-candidates (rest candidates)))
    (mode-switch
     (1
      `(* ,@candidates
	  (omcs::?if
	   (not (list-member-list omcs::?1
				  (list ,@rest-candidates))))))
     (2
      `(* ,@candidates
	  (omcs::?if
	   (if (not (list-member-list omcs::?1
				      (list ,@rest-candidates)))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun item-sub-group-member-rule (sub-group-length
                                   item-index
                                   allowed
                                   mode?
                                   weight)
  "Item indicated with 'item index' will be a member of 'allowed' elements in each sub group of length
 'sub-group-length'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let ((ris nil) (rus nil) (ros nil))
    (push (pw::g-round sub-group-length) ris)
    (push (pw::g-round item-index) rus)
    (push allowed ros)
    (mode-switch
     (1
      `(* omcs::?1
	  (omcs::?if
	   (if (map-group-pos? omcs::l ',(first (nreverse ris))
			       ',(first (nreverse rus)))
	       (member omcs::?1 ',(first (nreverse ros)) :test 'equalp)
	       t))))
     (2
      `(* omcs::?1
	  (omcs::?if
	   (if (map-group-pos? omcs::l ',(first (nreverse ris))
			       ',(first (nreverse rus)))
	       (if (member omcs::?1 ',(first (nreverse ros)) :test 'equalp) ,weight 0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun allowed-chain-rule (element following mode?
				     weight)
  "This rule obliges a given element,
to be followed by those elements eneterd in following.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(omcs::?if
	 (if (equalp ?1 ,element) (member ?2 ',following :test 'equalp) t))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (if (equalp ?1 ,element) (member ?2 ',following :test 'equalp) t) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))




(defun not-allowed-chain-rule (element following mode?
				     weight)
  "This rule obliges a given element,
NOT to be followed by those elements eneterd in following.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(omcs::?if
	 (if (equalp ?1 ,element) (not (member ?2 ',following :test 'equalp)) t))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (if (equalp ?1 ,element) (not (member ?2 ',following :test 'equalp)) t) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun length-sub-group-rule (lengths 
                              mode? 
                              weight)
  "This rule obliges the sub solutions to have a length accordingly to the list put in 'lengths'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let ((ris nil)
        (ros nil)
        (mia-curva lengths))
    (push mia-curva ris)
    (push weight ros)
    (mode-switch
      (1
       `(* omcs::?1
           (omcs::?if
            (equalp (length omcs::?1)
                    (nth (1- omcs::len)
                         ',(pw::flat-once (nreverse ris)))))))
      (2
       `(* omcs::?1
           (omcs::?if
            (if (equalp (length omcs::?1)
                        (nth (1- omcs::len)
                             ',(pw::flat-once (nreverse ris))))
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun not-consecutive-equal-length-rule (mode? weight)
  "The length of two consecutive groups has not to be equal.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 ?2 (omcs::?if (not (= (length ?1) (length ?2))))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (not (= (length ?1) (length ?2))) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun not-length-repetition-rule (mode? weight)
  "No repetition of sub group equal length.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	(omcs::?if
	 (not (member (length ?1)
		      (mapcar #'(lambda (x) (length x))
			      (rest omcs::rl)) :test 'equalp)))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (not (member (length ?1)
			  (mapcar #'(lambda (x) (length x))
				  (rest omcs::rl)) :test 'equalp))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun index-rule (index value mode? weight)
  "This rule obliges the value (indicated as index) of the solution to be the value indicated in 'value'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let ((ris nil) (ros nil))
    (push index ris)
    (push (pw::list! value) ros)
    (if (listp (first (pw::list! value)))
	(mode-switch
	 (1
	  `(,.(nreverse ris)
	      (omcs::?if
	       (find ,.(nreverse (copy-list ris))
		     ',.(nreverse ros) :test 'equalp))))
	 (2
	  `( ,.(nreverse ris)
	      (omcs::?if
	       (if (find ,.(nreverse (copy-list ris))
			 ',.(nreverse ros) :test 'equalp)
		   ,weight
		   0))))
	 (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))
	(mode-switch
	 (1
	  `( ,.(nreverse ris)
	      (omcs::?if
	       (member ,.(nreverse (copy-list ris)) ',.(nreverse ros) :test 'equalp) )))
	 (2
	  `( ,.(nreverse ris)
	      (omcs::?if
	       (if (member ,.(nreverse (copy-list ris)) ',.(nreverse ros) :test 'equalp)
		   ,weight
		   0))))
	 (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))))


(defun not-index-rule (index value mode? weight)
  "This rule obliges the value (indicated as index) of the solution NOT to be the value indicated in 'value'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let ((ris nil) (ros nil))
    (push index ris)
    (push (pw::list! value) ros)
    (if (listp (first (pw::list! value)))
	(mode-switch
	 (1
	  `(* ,.(nreverse ris)
	      (omcs::?if
	       (not (find ,.(nreverse (copy-list ris))
			  ',.(nreverse ros)
			  :test
			  'equalp)))))
	 (2
	  `(* ,.(nreverse ris)
	      (omcs::?if
	       (if (not (find ,.(nreverse (copy-list ris))
			      ',.(nreverse ros)
			      :test
			      'equalp))
		   ,weight
		   0))))
	 (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))
	(mode-switch
	 (1
	  `(* ,.(nreverse ris)
	      (omcs::?if
	       (not (member ,.(nreverse (copy-list ris)) ',.(nreverse ros)  :test 'equalp) ))))
	 (2
	  `(* ,.(nreverse ris)
	      (omcs::?if
	       (if (not (member ,.(nreverse (copy-list ris)) ',.(nreverse ros) :test 'equalp) )
		   ,weight
		   0))))
	 (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))))


(defun index-higher-rule (index value mode? weight)
  "This rule obliges the value (indicated as index) of the solution to be higher than the value indicated in 'value'..
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let ((ris nil) (ros nil))
    (push index ris)
    (push (pw::list! value) ros)
    (mode-switch
     (1
      `(* ,.(nreverse ris)
	  (omcs::?if
	   (> ,.(nreverse (copy-list ris)) ,.(first (nreverse ros))))))
     (2
      `(* ,.(nreverse ris)
	  (omcs::?if
	   (if (> ,.(nreverse (copy-list ris)) ,.(first (nreverse ros)))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun index-lower-rule (index value mode? weight)
  "This rule obliges the value (indicated as index) of the solution to be lower than the value indicated in 'value'..
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (let ((ris nil) (ros nil))
    (push index ris)
    (push (pw::list! value) ros)
    (mode-switch
     (1
      `(* ,.(nreverse ris)
	  (omcs::?if
	   (< ,.(nreverse (copy-list ris)) ,.(first (nreverse ros))))))
     (2
      `(* ,.(nreverse ris)
	  (omcs::?if
	   (if (< ,.(nreverse (copy-list ris)) ,.(first (nreverse ros)))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun index-length-rule (index length mode? weight)
  "This rule obliges the value (indicated as index) of the solution to have the length put in 'length'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1 `(* ,index (omcs::?if (= (length ,index) ,length))))
   (2
    `(* ,index
	(omcs::?if (if (= (length ,index) ,length) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun index-nth-rule (index nth? what? mode?
				 weight)
  "This rule obliges the nth (indicate from 0 to n) of the index (indicated
with i1, i2, i3...) to be the value put in what?.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1 `(* ,index (omcs::?if (equalp (nth ,(pw::g-round nth?) ,index) ,what?))))
   (2
    `(* ,index
	(omcs::?if
	 (if (equalp (nth ,(pw::g-round nth?) ,index) ,what?) ,weight 10))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun index-applied-sum-rule (index
					 sum
					 mode?
					 weight)
  "This rule obliges the value (indicated as index) of the solution to have elements that summed
together they give back the number put in sum.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1 `(* ,index (omcs::?if (= (apply '+ (pw::g-abs ,index)) ,sum))))
   (2
    `(* ,index
	(omcs::?if
	 (if (= (apply '+ (pw::g-abs ,index)) ,sum) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun member-rule (list mode? weight)
  "This rule obliges any element of the solution to belong to the elements indicated in 'domain'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1
    (if (listp (first list))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (omcs::?if (list-member-list ?1 ',.(nreverse ros)))))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1 (omcs::?if (member ?1 ',.(nreverse ros) :test 'equalp ) )))))
   (2
    (if (listp (first list))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (omcs::?if
	       (if (list-member-list ?1 ',.(nreverse ros)) ,weight 0))))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (omcs::?if
	       (if (member ?1 ',.(nreverse ros) :test 'equalp  ) ,weight 0))))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun not-member-rule (list mode? weight)
  "This rule obliges any element of the solution not to belong to the elements indicated in 'domain'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1
    (if (listp (first list))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (omcs::?if
	       (not (list-member-list ?1 ',.(nreverse ros))))))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1 (omcs::?if (not (member ?1 ',.(nreverse ros) :test 'equalp) ))))))
   (2
    (if (listp (first list))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (omcs::?if
	       (if (not (list-member-list ?1 ',.(nreverse ros))) ,weight 0))))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (omcs::?if
	       (if (not (member ?1 ',.(nreverse ros) :test 'equalp )   ) ,weight 0))))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun not-higher-than-rule (limit mode? weight)
  "This rule obliges any element of the solution not to belong to the elements indicated in 'domain'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
;  ;   :non-generic t
;  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 (omcs::?if (not (> ?1 ,limit)))))
   (2 `(* ?1 (omcs::?if (if (not (> ?1 ,limit)) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun not-lower-than-rule (limit mode? weight)
  "This rule obliges any element of the solution not to belong to the elements indicated in 'domain'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 (omcs::?if (not (< ?1 ,limit)))))
   (2 `(* ?1 (omcs::?if (if (not (< ?1 ,limit)) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun count-common-elements-rule (how-many mode? weight)
  "This rule obliges sub lists to have the number of common elements put in 'how-many.
ATTENTION : This rule works with a list of lists.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push how-many ris)
    (mode-switch
     (1
      `(* ?1
	  ?2
	  (omcs::?if
	   (equalp (count-element-first-list-in-second ?1 ?2)
		   ,(first (nreverse ris))))))
     (2
      `(* ?1
	  ?2
	  (omcs::?if
	   (if (equalp (count-element-first-list-in-second ?1 ?2)
		       ,(first (nreverse ris)))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun count-any-element-rule (how-many mode? weight)
  "This rule obligesa solution to have any element repeated many times as indicated in 'how-many.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push how-many ris)
    (mode-switch
     (1
      `(* ?1
	  (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (count-exactly-any-element omcs::l
					  ,(first (nreverse ris)))
	       t))))
     (2
      `(* ?1
	  ?2
	  (omcs::?if
	   (if (if (= omcs::len (omcs::cur-slen))
		   (count-exactly-any-element omcs::l
					      ,(first (nreverse ris)))
		   t)
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



(defun count-this-element-rule (element how-many mode? weight)
  "This rule obligesa solution to have any element repeated many times as indicated in 'how-many.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push how-many ris)
    (mode-switch
     (1
      `(* ?1
	  (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (count-this-element ,element omcs::l
					  ,how-many)
	       t))))
     (2
      `(* ?1
	  ?2
	  (omcs::?if
	   (if (if (= omcs::len (omcs::cur-slen))
		   (count-this-element ,element omcs::l
					      ,how-many)
		   t)
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;=======================  INTERVAL RULES================================
;
;
;(define-menu interval-rules :in pmc-rules)
;(in-menu interval-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(defun no-interval-local-repetition-rule (absolute?
                                               mode? weight)
  "This rule does not allowed any local repetition of intervals.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (absolute? :absolute :up/down)
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
    (1
     (absolute-switch
       (1 
        `(* ?1
            ?2
            ?3
            (omcs::?if
             (not (= (abs (- ?2 ?1))
                     (abs (- ?3 ?2)))))))
       (2 
        `(* ?1
            ?2
            ?3
            (omcs::?if
             (not (= (- ?2 ?1)
                     (- ?3 ?2))))))))
    (2
     (absolute-switch
       (1
        `(* ?1
            ?2
            ?3
            (omcs::?if
             (if (not (= (abs (- ?2 ?1))
                         (abs (- ?3 ?2)))) ,weight 0))))
       (2 
        `(* ?1
            ?2
            ?3
            (omcs::?if
             (if (not (= (- ?2 ?1)
                         (- ?3 ?2))) ,weight 0))))))))




(defun no-interval-repetition-rule (absolute? mode? weight)
  "This rule does not allow any repetition of intervals.
If the menu 'absolute?' is 'absolute, that means that intervals are
intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  ;   :menu (absolute? :absolute :up/down)
  (mode-switch
   (1
    (absolute-switch
      (1
       `(* omcs::?1 omcs::?2 (omcs::?IF (not (member (abs (- omcs::?2 omcs::?1)) (rest (pw::g-abs (pw::x->dx omcs::rl))) :test 'equalp)))))
      (2
       `(* omcs::?1 omcs::?2 (omcs::?IF (not (member (- omcs::?2 omcs::?1) (rest (pw::x->dx omcs::rl)) :test 'equalp))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?)))
   (2
    (absolute-switch
      (1
       `(* omcs::?1 omcs::?2 (omcs::?IF (if (not (member (abs (- omcs::?2 omcs::?1)) (rest (pw::g-abs (pw::x->dx omcs::rl))) :test 'equalp)) ,weight 0))))
      (2
       `(* omcs::?1 omcs::?2 (omcs::?IF (if (not (member (- omcs::?2 omcs::?1) (rest (pw::x->dx omcs::rl)) :test 'equalp)) ,weight 0))))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun no-locally-repeated-given-interval-rule (interval
							  absolute?
							  mode?
							  weight)
  "This rule obliges a solution not to have a given 'interval' locally repeated.
It is a sort of no-local-repetition but limited to the given interval.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (absolute? :absolute :up/down)
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    (absolute-switch
      (1
       `(* ?1
	   ?2
	   ?3
	   (omcs::?if
	    (if (= (abs (- ?2 ?1)) ,interval)
		(not (= (abs (- ?3 ?2)) ,interval))
		t))))
      (2
       `(* ?1
	   ?2
	   ?3
	   (omcs::?if
	    (if (= (- ?2 ?1) ,interval) (not (= (- ?2 ?1) ,interval)) t))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
   (2
    (absolute-switch
      (1
       `(* ?1
	   ?2
	   ?3
	   (omcs::?if
	    (if (if (= (abs (- ?2 ?1)) ,interval)
		    (not (= (abs (- ?3 ?2)) ,interval))
		    t)
		,weight))))
      (2
       `(* ?1
	   ?2
	   ?3
	   (omcs::?if
	    (if (if (= (- ?2 ?1) ,interval) (not (= (- ?2 ?1) ,interval)) t)
		,weight))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))






(defun allowed-intervals-rule (intervals
					 absolute?
					 mode?
					 weight)
  "This rule allows only the intervals indicated in 'intervals'.
If the menu 'absolute?' is 'absolute,
that means that intervals are intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (absolute? :absolute :up/down)
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push intervals ris)
    (mode-switch
     (1
      (absolute-switch
	(1
	 `(* ?1
	     ?2
	     (omcs::?if
	      (member (abs (- ?2 ?1)) ',(pw::g-abs (first (nreverse ris))) :test 'equalp)  )  ))
	(2
	 `(* ?1
	     ?2
	     (omcs::?if
	      (member (- ?2 ?1) ',(first (nreverse ris)) :test 'equalp )   )))
	(otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
     (2
      (absolute-switch
	(1
	 `(* ?1
	     ?2
	     (omcs::?if
	      (if (member (abs (- ?2 ?1)) ',(pw::g-abs (first (nreverse ris)))  :test 'equalp )
		  ,weight
		  0))))
	(2
	 `(* ?1
	     ?2
	     (omcs::?if
	      (if (member (- ?2 ?1) ',(first (nreverse ris)) :test 'equalp ) ,weight 0))))
	(otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun not-allowed-intervals-rule (intervals
                                        absolute?
                                        mode?
                                        weight)
  "This rule does not allow the intervals indicated in 'intervals'.
If the menu 'absolute?' is 'absolute,
that means that intervals are intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (absolute? :absolute :up/down)
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push intervals ris)
    (mode-switch
      (1
       (absolute-switch
         (1
          `(* ?1
              ?2
              (omcs::?if
               (not (member (abs (- ?2 ?1))
                            ',(pw::g-abs (first (nreverse ris)))  :test 'equalp)  ))))
         (2
          `(* ?1
              ?2
              (omcs::?if
               (not (member (- ?2 ?1) ',(first (nreverse ris)) :test 'equalp)  )  )))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (2
       (absolute-switch
         (1
          `(* ?1
              ?2
              (omcs::?if
               (if (not (member (abs (- ?2 ?1))
                                ',(pw::g-abs (first (nreverse ris))) :test 'equalp)  )
                   ,weight
                 0))))
         (2
          `(* ?1
              ?2
              (omcs::?if
               (if (not (member (- ?2 ?1) ',(first (nreverse ris))    :test 'equalp)  )
                   ,weight
                 0))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))




(defun allowed-distant-intervals-rule (candidates
                                            intervals
                                            absolute?
                                            mode?
                                            weight)
  "This rule allows a sequence of intervals to be equals within a given distance. The allowed intervals are put in INTERVALS.
The distance has to be described giving the first and the last note to CANDIDATES. 
For instance, if in candidates you put 1 and 3 it means that in a sequence each the interval between the first and the third note has to be a member of INTERVALS. 
ATTENTION : in the mode true/false, the rule is perfectly applied. In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (absolute? :absolute :up/down)
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((variables (jbs-constraints::make-?1 candidates))
        (list-variables (jbs-constraints::make-?1 (pw::arithm-ser (first candidates)
                                                                  1
                                                                  (second candidates)))))
    (mode-switch
      (1
       (absolute-switch
         (1
          `(* ,@list-variables
              (omcs::?if
               (member (abs (- (second (list ,@variables)) (first (list ,@variables))))
                       ',(pw::g-abs intervals)  :test 'equalp))))
         (2
          `(* ,@list-variables
              (omcs::?if
               (member (- (second (list ,@variables)) (first (list ,@variables)))
                       ',(pw::g-abs intervals)  :test 'equalp))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (2
     (absolute-switch
       (1
        `(* ,@list-variables
            (omcs::?if
             (if (member (abs (- (second (list ,@variables)) (first (list ,@variables))))
                         ',(pw::g-abs intervals) :test 'equalp ) ,weight 0))))
       (2
        `(* ,@list-variables
            (omcs::?if
             (if (member (- (second (list ,@variables)) (first (list ,@variables)))
                         ',(pw::g-abs intervals)  :test 'equalp ) ,weight 0))))
       (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))




(defun no-consecutive-equal-intervals-rule (how-many absolute? mode? weight)
  "This rule does not allow any repetition of intervals for a length put in 'how-many'.
If the menu 'absolute?' is 'absolute, that means that intervals are
intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  ;   :menu (absolute? :absolute :up/down)
  (mode-switch
   (1
    (absolute-switch
      (1
       (let* ((ris nil)
	      (candidates (make-?1-from-to 1 how-many))
	      (creo-i-simboli
	       (genero-lista-differenza-e-uguale
		(mapcar 'reverse
			(scom
			 (genero-abs
			  (genero-lista-differenza-uguale
			   (mapcar 'reverse
				   (scom
				    (make-?1-from-to 1
						     how-many)
				    2))))
			 2)))))
	 (push creo-i-simboli ris)
	 `(* ,@candidates
	     (omcs::?if (not (and ,.(first (nreverse ris))))))))
      (2
       (let* ((ris nil)
	      (candidates (make-?1-from-to 1 how-many))
	      (creo-i-simboli
	       (genero-lista-differenza-e-uguale
		(mapcar 'reverse
			(scom
			 (genero-lista-differenza-uguale
			  (mapcar 'reverse
				  (scom
				   (make-?1-from-to 1 how-many)
				   2)))
			 2)))))
	 (push creo-i-simboli ris)
	 `(* ,@candidates
	     (omcs::?if (not (and ,.(first (nreverse ris))))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
   (2
    (absolute-switch
      (1
       (let* ((ris nil)
	      (candidates (make-?1-from-to 1 how-many))
	      (creo-i-simboli
	       (genero-lista-differenza-e-uguale
		(mapcar 'reverse
			(scom
			 (genero-abs
			  (genero-lista-differenza-uguale
			   (mapcar 'reverse
				   (scom
				    (make-?1-from-to 1
						     how-many)
				    2))))
			 2)))))
	 (push creo-i-simboli ris)
	 `(* ,@candidates
	     (omcs::?if
	      (if (not (and ,.(first (nreverse ris)))) ,weight 0)))))
      (2
       (let* ((ris nil)
	      (candidates (make-?1-from-to 1 how-many))
	      (creo-i-simboli
	       (genero-lista-differenza-e-uguale
		(mapcar 'reverse
			(scom
			 (genero-lista-differenza-uguale
			  (mapcar 'reverse
				  (scom
				   (make-?1-from-to 1 how-many)
				   2)))
			 2)))))
	 (push creo-i-simboli ris)
	 `(* ,@candidates
	     (omcs::?if
	      (if (not (and ,.(first (nreverse ris)))) ,weight 0)))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun obliged-interval-chain-rule (interval
                                         int-list
                                         absolute?
                                         mode?
                                         weight)
  "This rule obliges an interval to be followed by those put in int-list.
If the menu 'absolute?' is 'absolute, that means that intervals are
intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;   :class pmc-box
  ;   :menu (absolute? :absolute :up/down)
  (mode-switch
    (1
     (absolute-switch
       (1
        `(* ?1 ?2 ?3
              (omcs::?if (if (= (abs (- ?2 ?1)) ,interval) (member (abs (- ?3 ?2)) ',int-list  :test 'equalp) t))))
       (2
        `(* ?1 ?2 ?3
              (omcs::?if (if (= (- ?2 ?1) ,interval) (member (- ?3 ?2) ',int-list  :test 'equalp) t))))
       (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (2
     (absolute-switch
       (1
        `(* ?1 ?2 ?3
              (omcs::?if (if (if (= (abs (- ?2 ?1)) ,interval) (member (abs (- ?3 ?2)) ',int-list :test 'equalp) t) ,weight 0))))
       (2
        `(* ?1 ?2 ?3
              (omcs::?if (if (if (= (- ?2 ?1) ,interval) (member (- ?3 ?2) ',int-list  :test 'equalp) t) ,weight 0))))
       (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))





(defun not-obliged-interval-chain-rule (interval int-list absolute? mode? weight)
  "This rule obliges an interval NOT to be followed by those put in int-list.
If the menu 'absolute?' is 'absolute, that means that intervals are
intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  ;   :menu (absolute? :absolute :up/down)
  (mode-switch
    (1
     (absolute-switch
       (1
        `(* ?1 ?2 ?3
            (omcs::?if (if (= (abs (- ?2 ?1)) ,interval) (not (member (abs (- ?3 ?2)) ',int-list :test 'equalp  )) t))))
       (2
        `(* ?1 ?2 ?3
            (omcs::?if (if (= (- ?2 ?1) ,interval) (not (member (abs (- ?3 ?2)) ',int-list :test 'equalp)) t))))
       (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (2
     (absolute-switch
       (1
        `(* ?1 ?2 ?3
            (omcs::?if (if (if (= (abs (- ?2 ?1)) ,interval) (not (member (abs (- ?3 ?2)) ',int-list :test 'equalp)) t) ,weight 0))))
       (2
        `(* ?1 ?2 ?3
            (omcs::?if (if (if (= (- ?2 ?1) ,interval) (not (member (abs (- ?3 ?2)) ',int-list :test 'equalp)) t) ,weight 0))))
       (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))










(defun repeat-interval-rule (interval which? times
                                  mode? weight)
  "This rule obliges a solution to have a given interval repeated many times as indicated in time. The interval is considered ins the absolute mode. If the menu which? is set on <, it means that the given interval has to be repeated a number of time inferior to the one put in times. If the menu which? is set on =, it means that the given interval has to be repeated a number of time equal to the one put in times.
If the menu which? is set on >, it means that the given interval has to be repeated a number of times bigger than the one put in times.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (which? (1 "<") (2 "=") (3 ">"))
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil)
	 (ros nil)
	 (rus nil)
	 (quale-segno
	  (case which?
	    (1 '<)
	    (2 '=)
	    (3 '>)
	    (otherwise (error "Got ~s, was expecting one of 1, 2, 3." which?))))
	 (segno (first (metti-segno quale-segno))))
    (push interval ris)
    (push times ros)
    (push segno rus)
    (mode-switch
      (1
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (,(first (nreverse rus))
		 (count ',(first (nreverse ris)) (pw::g-abs (pw::x->dx omcs::l)) :test 'equalp)
		 ',(first (nreverse ros)))
              t))))
      (2
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (if (,(first (nreverse rus))
		     (count ',(first (nreverse ris))
			    (pw::g-abs (pw::x->dx omcs::l)) :test 'equalp)
		     ',(first (nreverse ros)))
                    ,weight
                  0)
              t))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))





(defun repeat-resulting-interval-rule (resulting-interval
						 which?
						 times
						 mode?
						 weight)
  "This rule obliges a solution to have a given resulting-interval repeated many times as indicated in time. A resulting interval is an interval between a note with any possible other notes. In this sense, look at the function find-all-intervals (that you can call using the package jbs-constraints::find-all-intervals). This function gives all the interval between all notes of a sequence. So a resulting interval is an interval that is the result of the function find-all-intervals.

If the menu which? is set on <, it means that the given interval has to be repeated a number of time inferior to the one put in times. If the menu which? is set on =, it means that the given interval has to be repeated a number of time equal to the one put in times.
If the menu which? is set on >, it means that the given interval has to be repeated a number of times bigger than the one put in times.

ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (which? (1 "<") (2 "=") (3 ">"))
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil)
	 (ros nil)
	 (rus nil)
	 (quale-segno
	  (case which?
	    (1 '<)
	    (2 '=)
	    (3 '>)
	    (otherwise (error "Got ~s, was expecting one of 1, 2, 3." which?))))
	 (segno (first (metti-segno quale-segno))))
    (push resulting-interval ris)
    (push (pw::g-round times) ros)
    (push segno rus)
    (mode-switch
     (1
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (,(first (nreverse rus))
		 (count ',(first (nreverse ris))
			(pw::flat (find-all-intervals omcs::l)) :test 'equalp)
		 ',(first (nreverse ros)))
	       t))))
     (2
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (,(first (nreverse rus))
		     (count ',(first (nreverse ris))
			    (pw::flat (find-all-intervals omcs::l)) :test 'equalp)
		     ',(first (nreverse ros)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


; (defun index-interval-rule (index
;                                  allowed absolute?
;                                  mode? weight)
;   "This rule obliges a given interval indicated with 'index' to be a member of a list
; of possible intervals indicated in 'allowed'. If the menu 'absolute?' is 'absolute,
; that means that intervals are intented in absolute mode. If this menu is 'up/down', that means that
; the intervals are divided into ascending and descending.
; ATTENTION : in the mode true/false, the rule is perfectly applied.
; In the mode heuristic, the rule is applied as much as possible"
;   ;   :non-generic t
;   ;   :menu (absolute? :absolute :up/down)
;   ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;   ;  :class pmc-box
;   (let* ((ris nil)
; 	 (candidati (make-?1-from-to 1 (+ index 2)))
; 	 (indice
; 	  (nth index
; 	       (genero-lista-differenza-uguale
; 		(mapcar 'reverse
; 			(scom (make-?1-from-to 1 (+ index 2))
; 			      2)))))
; 	 (ros nil))
;     (push indice ris)
;     (push allowed ros)
;     (mode-switch
;       (1
;        (absolute-switch
;          (1
;           `(* ,@candidati
;               (omcs::?if
;                (member (abs ,(first (nreverse ris))) ',(first (nreverse ros)) :test 'equalp)   )))
;          (2
;           `(* ,@candidati
;               (omcs::?if
;                (member ,(first (nreverse ris)) ',(first (nreverse ros)) :test 'equalp ))))
;          (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
;       (2
;        (absolute-switch
;          (1
;           `(* ,@candidati
;               (omcs::?if
;                (if (member (abs ,(first (nreverse ris)))
;                            ',(first (nreverse ros))  :test 'equalp)
;                    ,weight
;                  0))))
;          (2
;           `(* ,@candidati
;               (omcs::?if
;                (if (member ,(first (nreverse ris)) ',(first (nreverse ros))  :test 'equalp)
;                    ,weight
;                  0))))
;          (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
;       (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



;;;;;;;;; FIX JV June 2022

(defun index-interval-rule (index
                            allowed absolute?
                            mode? weight)
  "This rule obliges a given interval indicated with 'index' to be a member of a list
of possible intervals indicated in 'allowed'. If the menu 'absolute?' is 'absolute,
that means that intervals are intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (absolute? :absolute :up/down)
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil)
          (candidati (make-i1-from-to index (+ index 1)))
          (ros nil))
    ;(push indice ris)
    (push allowed ros)


    (mode-switch
      (1
       (absolute-switch
         (1
          `(,@candidati
              (omcs::?if
               (member (abs (- ,(make-i1 (+ index 1)) ,(make-i1 index))) ',(first (nreverse ros))))))
         (2
          `(,@candidati
              (omcs::?if
               (member (- ,(make-i1 (+ index 1)) ,(make-i1 index)) ',(first (nreverse ros))))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (2
       (absolute-switch
         (1
          `(,@candidati
              (omcs::?if
               (if (member (abs (- ,(make-i1 (+ index 1)) ,(make-i1 index)))
                           ',(first (nreverse ros)))
                   ,weight
                 0))))
         (2
          `(,@candidati
              (omcs::?if
               (if (member (- ,(make-i1 (+ index 1)) ,(make-i1 index)) ',(first (nreverse ros)))
                   ,weight
                 0))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))


    ))














; (defun not-index-interval-rule (index
;                                 allowed absolute?
;                                 mode? weight)
;   "This rule obliges a given interval indicated with 'index' NOT to be a member of a list
; of possible intervals indicated in 'allowed'. If the menu 'absolute?' is 'absolute,
; that means that intervals are intented in absolute mode. If this menu is 'up/down', that means that
; the intervals are divided into ascending and descending.
; ATTENTION : in the mode true/false, the rule is perfectly applied.
; In the mode heuristic, the rule is applied as much as possible"
;   ;   :non-generic t
;   ;   :menu (absolute? :absolute :up/down)
;   ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
;   ;  :class pmc-box
;   (let* ((ris nil)
; 	 (candidati (make-?1-from-to 1 (+ index 2)))
; 	 (indice
; 	  (nth index
; 	       (genero-lista-differenza-uguale
; 		(mapcar 'reverse
; 			(scom (make-?1-from-to 1 (+ index 2))
; 			      2)))))
; 	 (ros nil))
;     (push indice ris)
;     (push allowed ros)
;     (mode-switch
;       (1
;        (absolute-switch
;          (1
;           `(* ,@candidati
;               (omcs::?if
;                (not (member (abs ,(first (nreverse ris))) ',(first (nreverse ros)) :test 'equalp)  ))))
;          (2
;           `(* ,@candidati
;               (omcs::?if
;                (not (member ,(first (nreverse ris)) ',(first (nreverse ros))   :test 'equalp)  ))))
;          (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
;       (2
;        (absolute-switch
;          (1
;           `(* ,@candidati
;               (omcs::?if
;                (if (not (member (abs ,(first (nreverse ris)))
;                            ',(first (nreverse ros))  :test 'equalp) )
;                    ,weight
;                  0))))
;          (2
;           `(* ,@candidati
;               (omcs::?if
;                (if (not (member ,(first (nreverse ris)) ',(first (nreverse ros)) :test 'equalp)  )
;                    ,weight
;                  0))))
;          (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
;       (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))




;;;;;;;; FIX JV June 2022

(defun not-index-interval-rule (index
                                allowed absolute?
                                mode? weight)
  "This rule obliges a given interval indicated with 'index' NOT to be a member of a list
of possible intervals indicated in 'allowed'. If the menu 'absolute?' is 'absolute,
that means that intervals are intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (absolute? :absolute :up/down)
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil)
   (candidati (make-i1-from-to index (+ index 1)))
   
   (ros nil))
    ;(push indice ris)
    (push allowed ros)
    (mode-switch
      (1
       (absolute-switch
         (1
          `(,@candidati
              (omcs::?if
               (not (member (abs (- ,(make-i1 (+ index 1)) ,(make-i1 index)) ) ',(first (nreverse ros)))))))
         (2
          `(,@candidati
              (omcs::?if
               (not (member (- ,(make-i1 (+ index 1)) ,(make-i1 index)) ',(first (nreverse ros)))))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (2
       (absolute-switch
         (1
          `(,@candidati
              (omcs::?if
               (if (not (member (abs (- ,(make-i1 (+ index 1)) ,(make-i1 index)))
                           ',(first (nreverse ros))))
                   ,weight
                 0))))
         (2
          `(,@candidati
              (omcs::?if
               (if (not (member (- ,(make-i1 (+ index 1)) ,(make-i1 index)) ',(first (nreverse ros))))
                   ,weight
                 0))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))




    ))











#|

(defun old-not-higher-interval-rule ((limit 6) mode? weight)
  "This function does not allow interval higher than the one entered in 'limit'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
     (1
      `(* ?1
	  ?2
	  (omcs::?if
	   (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))))))
     (2
      `(* ?1
	  ?2
	  (omcs::?if
	   (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



|#
(defun not-bigger-interval-rule (limit sign? mode? weight)
  "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.
If you chose '+', it means that this function does not allow interval higher than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval higher than the one entered in 'limit' only for negatif interval.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;   :menu (sign? (1 "+") (2 "-") (3 "absolute"))
  ;  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
      (1
       (case sign?
         (1 
          `(* ?1
              ?2
              (omcs::?if
               (if (>= (- ?2 ?1) 0)
                   (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (2 
          `(* ?1
              ?2
              (omcs::?if
               (if (<= (- ?2 ?1) 0)
                   (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (3 
          `(* ?1
              ?2
              (omcs::?if
               (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))))))))
      (2
       (case sign?
         (1 
          `(* ?1
              ?2
              (omcs::?if
               (if (>= (- ?2 ?1) 0)
                   (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (2 
          `(* ?1
              ?2
              (omcs::?if
               (if (<= (- ?2 ?1) 0)
                   (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (3 
          `(* ?1
              ?2
              (omcs::?if
              (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))))
         
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

#|
(defun old-not-lower-interval-rule ((limit 600) mode? weight)
  "This function does not allow interval lower than the one entered in 'limit'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
     (1
      `(* ?1
	  ?2
	  (omcs::?if
	   (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))))))
     (2
      `(* ?1
	  ?2
	  (omcs::?if
	   (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



|#

(defun not-smaller-interval-rule (limit sign? mode? weight)
  "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.
If you chose '+', it means that this function does not allow interval lower than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval lower than the one entered in 'limit' only for negatif interval.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;   :menu (sign? (1 "+") (2 "-") (3 "absolute"))
  ;  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
      (1
       (case sign?
         (1 
          `(* ?1
              ?2
              (omcs::?if
               (if (> (- ?2 ?1) 0)
                   (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (2 
          `(* ?1
              ?2
              (omcs::?if
               (if (< (- ?2 ?1) 0)
                   (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (3 
          `(* ?1
              ?2
              (omcs::?if
               (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))))))))
      (2
       (case sign?
         (1 
          `(* ?1
              ?2
              (omcs::?if
               (if (> (- ?2 ?1) 0)
                   (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (2 
          `(* ?1
              ?2
              (omcs::?if
               (if (< (- ?2 ?1) 0)
                   (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (3 
          `(* ?1
              ?2
              (omcs::?if
              (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun resulting-interval-rule (interval mode? weight)
  "A resulting interval is an interval between a note of a sequence with any possible other notes of the same sequence. In this sense, look at the function find-all-intervals (that you can call using the package jbs-constraints::find-all-intervals). This function gives all the interval between all notes of a sequence. So a resulting interval is an interval that is the result of the function find-all-intervals.
Resulting-interval-rule [1] obliges the solution to have, among all the intervals among all eh notes of the sequence, the defined interval. 
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push interval ris)
    (mode-switch
     (1
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (member ',(first (nreverse ris))
		       (pw::flat
			(pw::g-abs (find-all-intervals omcs::l))) :test 'equalp)
	       t))))
     (2
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (member ',(first (nreverse ris))
			   (pw::flat
			    (pw::g-abs
			     (find-all-intervals omcs::l))) :test 'equalp)
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun no-resulting-interval-rule (interval
                                        mode?
                                        weight)
  "This rule does not allow the existence of the given 'interval' even as the result
of the verticality of all the elements of a solution.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push interval ris)
    (mode-switch
      (1
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (not (member ',(first (nreverse ris))
                             (pw::flat
                              (pw::g-abs
                               (find-all-intervals omcs::l)))  :test 'equalp) )
              t))))
      (2
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (if (not (member ',(first (nreverse ris))
                                 (pw::x->dx
                                  (sort (copy-list omcs::l) #'<)) :test 'equalp ) )
                    ,weight
                  0)
              t))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun jump-resolution-rule (interval
                                  resolution
                                  mode?
                                  weight)
  "If an interval is higher than the value put in interval, the next interval as to go in the opposite direction and it has to be smaller than the value put in resolution."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
    (1
     `(* omcs::?1 omcs::?2 omcs::?3 (omcs::?if
                                  (let ((omcs::int1 (- omcs::?2 omcs::?1)) 
                                        (omcs::int2 (- omcs::?3 omcs::?2)))
                                    (if (< (abs omcs::int1) ,interval) T 
                                      (and (< (abs omcs::int2) ,resolution) 
                                           (not (= (signum omcs::int1) (signum omcs::int2)))))))))
    (2
     `(* omcs::?1 omcs::?2 omcs::?3 (omcs::?if
                                  (let ((omcs::int1 (- omcs::?2 omcs::?1)) 
                                        (omcs::int2 (- omcs::?3 omcs::?2)))
                                    (if (if (< (abs omcs::int1) ,interval) T 
                                          (and (< (abs omcs::int2) ,resolution) 
                                               (not (= (signum omcs::int1) (signum omcs::int2)))))
                                        ,weight
                                      0)
                                    t))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun do-reach-that-interval-rule (how-many
                                         interval
                                         mode?
                                         weight)
  "Does reach a given interval in how-many notes"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  
  ;(setf calcola (list (jbs-constraints::make-?1 how-many)
  ;                    (jbs-constraints::make-?1 1)))
  
  (let* ((calcola (list (jbs-constraints::make-?1 (pw::g-round how-many))
                      (jbs-constraints::make-?1 1)))
         (ris nil)
         (candidates (make-?1-from-to  1 how-many))
         (creo-i-simboli 
          (jbs-constraints::genero-lista-segno-meno (mapcar 'reverse (scom candidates 2))))
         (creo-signum (jbs-constraints::genero-signum (mapcar 'list creo-i-simboli))))
    (push creo-signum ris)
    (mode-switch
      (1
       `(* ,@(jbs-constraints::make-?1 (pw::arithm-ser 1 1 how-many))
           (omcs::?if
            (and (= ,.(first (nreverse ris)))
                 (= (abs (- ,@calcola)) ,interval)))))
    (2
     `(* ,@(jbs-constraints::make-?1 (pw::arithm-ser 1 1 how-many))
         (omcs::?if
          (if (and (= ,.(first (nreverse ris)))
                   (= (abs (- ,@calcola)) ,interval))
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun do-not-reach-that-interval-rule (how-many
                                             interval
                                             mode?
                                             weight)
  "Does not reach a given interval in how-many notes"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
 
  ;(setf calcola (list (jbs-constraints::make-?1 how-many)
  ;                    (jbs-constraints::make-?1 1)))
  
  (let* ((calcola (list (jbs-constraints::make-?1 (pw::g-round how-many))
                      (jbs-constraints::make-?1 1)))
         (ris nil)
         (candidates (make-?1-from-to  1 how-many))
         (creo-i-simboli 
          (jbs-constraints::genero-lista-segno-meno (mapcar 'reverse (scom candidates 2))))
         (creo-signum (jbs-constraints::genero-signum (mapcar 'list creo-i-simboli))))
    (push creo-signum ris)
    (mode-switch
      (1
       `(* ,@(jbs-constraints::make-?1 (pw::arithm-ser 1 1 how-many))
           (omcs::?if
            (not (and (= ,.(first (nreverse ris)))
                      (>= (abs (- ,@calcola)) ,interval))))))
      (2
       `(* ,@(jbs-constraints::make-?1 (pw::arithm-ser 1 1 how-many))
           (omcs::?if
            (if (not (and (= ,.(first (nreverse ris)))
                          (>= (abs (- ,@calcola)) ,interval)))
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



(defun apply-interval-sum-rule (sum mode? weight)
  "This rule outputs a solution having the the sum of all intervals equal to the value put in sum.
First it makes the x->dx of all intervals and then it applies '+ to all.
ATTENTION : in the mode true/false, does NOT work: because of SLEN"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
    (1
     `(* (omcs::?if
          (if (= omcs::len (omcs::cur-slen))
              (= ,sum (apply '+ (pw::g-abs (pw::x->dx omcs::l))))
            t))))
    (2
     `(* (omcs::?if
          (if (if (= omcs::len (omcs::cur-slen))
                  (= ,sum (apply '+ (pw::g-abs (pw::x->dx omcs::l))))
                t)
              ,weight
            0)
          t)))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun apply-interval-global-sum-rule (sum mode? weight)
  "This rule outputs a solution having the the sum of all intervals equal to the value put in sum.
First it makes the x->dx of all intervals and then it applies '+ to all.
ATTENTION : in the mode true/false, does NOT work: because of SLEN"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
    (1
     `(* (omcs::?if
          (if (= omcs::len (omcs::cur-slen))
              (= ,sum (apply '+ (pw::flat (find-all-intervals (pw::sort-list omcs::l)))))
            t))))
    (2
     `(* (omcs::?if
          (if (if (= omcs::len (omcs::cur-slen))
                  (= ,sum (apply '+ (pw::g-abs (pw::x->dx omcs::l))))
                t)
              ,weight
            0)
          t)))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun not-complementary-interval-rule (interval mode? weight)
  "This rule does not allow the existence of a given interval as the product of two consecutive
intervals.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	(omcs::?if
	 (not (member (abs (- ?1 ,interval)) omcs::l :test 'equalp) ))))
   (2
    `(* ?1
	(omcs::?if
	 (if (not (member (abs (- ?1 ,interval)) omcs::l :test 'equalp ) ) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun interval-structure-rule (interval-structure
					  mode?
					  weight)
  "This rule obliges elements to have the given 'interval-structure'.
N.B. BE CAREFULL: the number of intervals put in 'interval-stricture' has to be
one element less than the number of candidates you put in the search space!.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil)
	 (candidati
	  (make-?1-from-to 1 (1+ (length interval-structure))))
	 (ros nil))
    (push interval-structure ris)
    (push candidati ros)
    (mode-switch
     (1
      `(* ,@candidati
	  (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (eq-ints? ',(first (nreverse ris)) ,.(first (nreverse ros)))
	       t))))
     (2
      `(* ,@candidati
	  (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (eq-ints? ',(first (nreverse ris)) ,.(first (nreverse ros)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun not-interval-structure-rule (interval-structure
					      mode?
					      weight)
  "This rule obliges elements not to have the given 'interval-structure'.
N.B. BE CAREFULL: the number of intervals put in 'interval-stricture' has to be
one element less than the number of candidates you put in the search space!.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil)
	 (candidati
	  (make-?1-from-to 1 (1+ (length interval-structure))))
	 (ros nil))
    (push interval-structure ris)
    (push candidati ros)
    (mode-switch
     (1
      `(* ,@candidati
	  (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (not (eq-ints? ',(first (nreverse ris))
			      ,.(first (nreverse ros))))
	       t))))
     (2
      `(* ,@candidati
	  (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (not (eq-ints? ',(first (nreverse ris))
				  ,.(first (nreverse ros))))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;
(defun count-positive-intervals-rule (number mode? weight)
  "The solution must have a number of positive intrevals as indicatd in number.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule DOES NOT WORK because of Slen..."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push number ris)
    (mode-switch
      (1
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (= (count-positif (pw::x->dx omcs::l)) ',(first (nreverse ris)))
              t))))
      (2
       `(* (omcs::?if
            (if (if (= omcs::len (omcs::cur-slen))
                    (= (count-positif (pw::x->dx omcs::l)) ',(first (nreverse ris)))
                  t)
                ,weight
              0)
            t)))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

;
;
;
(defun count-negative-intervals-rule (number mode? weight)
  "The solution must have a number of negative intrevals as indicatd in number.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule DOES NOT WORK because of Slen..."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push number ris)
    (mode-switch
      (1
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (= (count-negatif (pw::x->dx omcs::l)) ',(first (nreverse ris)))
              t))))
      (2
       `(* (omcs::?if
            (if (if (= omcs::len (omcs::cur-slen))
                    (= (count-negatif (pw::x->dx omcs::l)) ',(first (nreverse ris)))
                  t)
                ,weight
              0)
            t)))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))









;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;=======================    PITCH RULES ================================
;
;
;(define-menu pitch-rules :in pmc-rules)
;(in-menu pitch-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(defun allowed-pitch-rule (pitch mode? weight)
  "Only the pitches indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push pitch ris)
    (mode-switch
     (1
      `(* ?1
	  (omcs::?if
	   (member (first (my-mod (list ?1)))
		   (my-mod ',(first (nreverse ris))) :test 'equalp)  )))
     (2
      `(* ?1
	  (omcs::?if
	   (if (member (first (my-mod (list ?1)))
		       (my-mod ',(first (nreverse ris)))  :test 'equalp)
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

(defun not-allowed-pitch-rule (pitch
					 mode?
					 weight)
  "Only the pitches indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push pitch ris)
    (mode-switch
     (1
      `(* ?1
	  (omcs::?if
	   (not (member (first (my-mod (list ?1)))
			(my-mod ',(first (nreverse ris)))  :test 'equalp) ))))
     (2
      `(* ?1
	  (omcs::?if
	   (if (not (member (first (my-mod (list ?1)))
			    (my-mod ',(first (nreverse ris)))  :test 'equalp)  )
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun allowed-polarized-pitch-rule (pitch
                                          mode?
                                          weight)
  "Only the pitches indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((modulos (pw::g-mod pitch 12)))
    (mode-switch
     (1
      `(* ?1
	  (omcs::?if (if (member (mod ?1 12) ',modulos :test 'equalp)
                        (member ?1 ',pitch :test 'equalp)
                      t))))
     (2
      `(* ?1
	  (omcs::?if
	   (if (if (member (mod ?1 12) ',modulos :test 'equalp)
                        (member ?1 ',pitch :test 'equalp)
                      t)
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


;
;
;
(defun allowed-pitch-structure-rule (pitch
                                          mode?
                                          weight)
  "Only the pitches indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil)
        (pitch (pw::sc+off pitch)))
    (push pitch ris)
    (mode-switch
      (1
       `(* ?1
           (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (equalp (pw::sc+off omcs::l)
                        ',(first (nreverse ris))) t))))
      (2
       `(* ?1
           (omcs::?if
            (if (if (= omcs::len (omcs::cur-slen))
                    (equalp (pw::sc+off omcs::l)
                            ',(first (nreverse ris))) t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;
(defun allowed-pitch-class-rule (pitch
                                          mode?
                                          weight)
  "Only the class (for instance minor triad) indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil)
        (pitch (pw::sc-name pitch)))
    (push pitch ris)
    (mode-switch
      (1
       `(* ?1
           (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (equalp (pw::sc-name omcs::l)
                        ',(first (nreverse ris))) t))))
      (2
       `(* ?1
           (omcs::?if
            (if (if (= omcs::len (omcs::cur-slen))
                    (equalp (pw::sc-name omcs::l)
                            ',(first (nreverse ris))) t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;
(defun allowed-pitch-class-sub-list-rule (pitch
                                               mode?
                                               weight)
  "This function outputs a solution having only the class (for instance minor triad) indicated in 
'pitch' will be allowed in any octave including also other notes. That means that is I'm looking
for a minor triad in a 5 notes chord, the solution will look if a minor triad exists inside the 5 notes chord.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil)
        (class (pw::sc-name pitch)))
    (push class ris)
    (mode-switch
      (1
       `(* ?1
           (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (find ',(first (nreverse ris))
                      (mapcar #'(lambda (x) (pw::sc-name x)) (jbs-constraints::scom omcs::l (length ',pitch)))
                      :test 'equalp)
              t))))
      (2
       `(* ?1
           (omcs::?if
            (if (if (= omcs::len (omcs::cur-slen))
                    (find ',(first (nreverse ris))
                          (mapcar #'(lambda (x) (pw::sc-name x)) (jbs-constraints::scom omcs::l (length ',pitch)))
                          :test 'equalp)
                  t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;

;
;
;
(defun not-allowed-pitch-structure-rule (pitch
                                              mode?
                                              weight)
  "Only the pitches indicated in 'pitch' will be allowed in any octave and in any position.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil)
        (pitch (pw::sc+off pitch)))
    (push pitch ris)
    (mode-switch
      (1
       `(* ?1
           (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (not (equalp (pw::sc+off omcs::l)
                        ',(first (nreverse ris)))) t))))
      (2
       `(* ?1
           (omcs::?if
            (if (if (= omcs::len (omcs::cur-slen))
                (not (equalp (pw::sc+off omcs::l)
                        ',(first (nreverse ris)))) t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;
(defun not-allowed-pitch-class-rule (pitch
                                          mode?
                                          weight)
  "Only the class (for instance a minor triad) indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil)
        (pitch (pw::sc-name pitch)))
    (push pitch ris)
    (mode-switch
      (1
       `(* ?1
           (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (not (equalp (pw::sc-name omcs::l)
                             ',(first (nreverse ris)))) t))))
      (2
       `(* ?1
           (omcs::?if
            (if (if (= omcs::len (omcs::cur-slen))
                    (not (equalp (pw::sc-name omcs::l)
                                 ',(first (nreverse ris)))) t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun not-allowed-pitch-class-sub-list-rule (pitch
                                                   mode?
                                                   weight)
  "This function outputs a solution having only the class (for instance minor triad) indicated in 
'pitch' will NOT be allowed in any octave including also other notes. That means that is I'm looking
for NOT HAVING a minor triad in a 5 notes chord, the solution will look if a minor triad exists inside the 5 notes chord.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil)
        (class (pw::sc-name pitch)))
    (push class ris)
    (mode-switch
      (1
       `(* ?1
           (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (not (find ',(first (nreverse ris))
                           (mapcar #'(lambda (x) (pw::sc-name x)) (jbs-constraints::scom omcs::l (length ',pitch)))
                           :test 'equalp))
              t))))
      (2
       `(* ?1
           (omcs::?if
            (if (if (= omcs::len (omcs::cur-slen))
                    (not (find ',(first (nreverse ris))
                               (mapcar #'(lambda (x) (pw::sc-name x)) (jbs-constraints::scom omcs::l (length ',pitch)))
                               :test 'equalp))
                  t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun index-pitch-rule (index pitch mode?
				   weight)
  "For the give index (i1, i2, i3...) only the pitches indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ,index
	(omcs::?if
	 (member (first (my-mod (list ,index))) (my-mod ',pitch)  :test 'equalp)  )))
   (2
    `(* ,index
	(omcs::?if
	 (if (member (first (my-mod (list ,index))) (my-mod ',pitch) :test 'equalp)
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun not-index-pitch-rule (index pitch mode?
				       weight)
  "For the give index (i1, i2, i3...) only the pitches indicated in 'pitch' will NOT be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ,index
	(omcs::?if
	 (not (member (first (my-mod (list ,index))) (my-mod ',pitch)  :test 'equalp)  ))))
   (2
    `(* ,index
	(omcs::?if
	 (if (not (member (first (my-mod (list ,index))) (my-mod ',pitch)  :test 'equalp) )
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))





(defun any-note-repeated-rule (times
					 which?
					 mode?
					 weight)
  "Any notes has to be repeated (in modulo too) a less, exactly or more times as indicated in 'times'.
N.B. BE CAREFULL: the menu which? defines less, equal or more.
If <, the calculation is quite fast.
If =, be sure to have a 'pari' number of candidates in the esarch space.
If >, the calculation can be very slow.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (which? (1 "<") (2 "=") (3 ">"))
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ros nil))
    (push times ros)
    (mode-switch
     (1
      (case which?
	(1
	 `(* ?1
	     (omcs::?if
	      (<= (count (mod ?1 12) (my-mod omcs::rl))
		  ,(first (nreverse ros))))))
	(2
	 `(* (omcs::?if
	      (if (= omcs::len (omcs::cur-slen))
		  (count-exactly-any-element (my-mod omcs::l)
					     ,(first (nreverse ros)))
		  t))))
	(3
	 `(* (omcs::?if
	      (if (= omcs::len (omcs::cur-slen))
		  (count-exactly-for-bigger-element (my-mod omcs::l)
						    ,(first (nreverse ros)))
		  t))))
	(otherwise (error "Got ~s, was expecting one of 1, 2, 3." which?))))
     (2
      (case which?
	(1
	 `(* ?1
	     (omcs::?if
	      (if (<= (count (mod ?1 12) (my-mod omcs::rl))
		      ,(first (nreverse ros)))
		  ,weight
		  0))))
	(2
	 `(* (omcs::?if
	      (if (= omcs::len (omcs::cur-slen))
		  (if (count-exactly-any-element (my-mod omcs::l)
						 ,(first (nreverse ros)))
		      ,weight
		      0)
		  t))))
	(3
	 `(* (omcs::?if
	      (if (= omcs::len (omcs::cur-slen))
		  (if (count-exactly-for-bigger-element
		       (my-mod omcs::l) ,(first (nreverse ros)))
		      ,weight
		      0)
		  t))))
	(otherwise (error "Got ~s, was expecting one of 1, 2, 3." which?))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun count-this-note-rule (note how-many mode? weight)
  "This rule obliges a solution to have the given note repeated many times as indicated in 'how-many inthe exact octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
    (mode-switch
     (1
      `(* ?1
	  (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (count-this-element ,note omcs::l
					  ,how-many)
	       t))))
     (2
      `(* ?1
	  ?2
	  (omcs::?if
	   (if (if (= omcs::len (omcs::cur-slen))
		   (count-this-element ,note omcs::l
					      ,how-many)
		   t)
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))



(defun count-this-modulo-rule (note how-many mode? weight)
  "This rule obliges a solution to have a given note repeated many times as indicated in 'how-many, in any possible octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
    (1
     `(* ?1
         (omcs::?if
          (if (= omcs::len (omcs::cur-slen))
              (count-this-element (mod ,note 12) (pw::g-mod omcs::l 12)
                                  ,how-many)
            t))))
    (2
     `(* ?1
         ?2
         (omcs::?if
          (if (if (= omcs::len (omcs::cur-slen))
                  (count-this-element (mod ,note 12) (pw::g-mod omcs::l 12)
                                      ,how-many)
                t)
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))




(defun not-repeated-modulo12-sub-group-rule (sub-group-length
						       mode?
						       weight)
  "There are no modulo 12 repetition inside each sub group indicated with 'sub-group-length'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((candidates (make-?1-from-to 1 sub-group-length))
	 (rest-candidates (rest candidates))
	 (lungo? sub-group-length))
    (mode-switch
     (1
      `(* ,@candidates
	  (omcs::?if
	   (and (not (member (first (my-mod (list omcs::?1)))
			     (my-mod (list ,@rest-candidates)) :test 'equalp) )
		(if (= omcs::len (omcs::cur-slen))
		    (trova-ripetizioni
		     (morphologie::ptrn-reson (my-mod omcs::l) ,lungo?))
		    t)))))
     (2
      `(* ,@candidates
	  (omcs::?if
	   (if (not (member (first (my-mod (list omcs::?1)))
			    (my-mod (list ,@rest-candidates))  :test 'equalp)  )
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun not-modulo12-repetition-rule (mode? weight)
  "This rule allows only solution without any repetition in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	(omcs::?if
	 (not (member (mod ?1 12)
		      (mapcar #'(lambda (x) (mod x 12))
			      (rest omcs::rl))  :test 'equalp)  ))))
   (2
    `(* ?1
	(omcs::?if
	 (if (not (member (mod ?1 12)
			  (mapcar #'(lambda (x) (mod x 12))
				  (rest omcs::rl)) :test 'equalp )  )
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))






(defun not-modulo12-local-repetition-rule (mode? weight)
  "This rule allows only solution without any LOCAL repetition in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
    (1
     `(* ?1 ?2
         (omcs::?if
          (/= (mod ?1 12) (mod ?2 12)))))
    (2
     `(* ?1 ?2
         (omcs::?if
          (if (/= (mod ?1 12) (mod ?2 12))
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))









(defun mk-profile-pitch-rule (curve-min
                                   curve-max
                                   steps
                                   profile
                                   approx
                                   mode?
                                   weight)
  "This rule asks the engine to put out a solution identical to the one put in profile.
As you understand, this rule is usefull only as heuristic!
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil)
	(ros nil)
	(mia-curva
	 (pw::approx-midi (pw::g-scaling (pw::pw-sample profile steps) curve-min curve-max) approx)))
    (push mia-curva ris)
    (push weight ros)
    (mode-switch
      (1
       `(* ?1
           (omcs::?if
            (equalp ?1
                    (nth (1- omcs::len)
                         ',(pw::flat-once (nreverse ris)))))))
      (2
       `(* ?1
           (omcs::?if
            (- ,(first (nreverse ros))
               (abs (- ?1
                       (nth (1- omcs::len)
                            ',(pw::flat-once (nreverse ris)))))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun mk-profile-pitch-modulo-rule (pitches
					       mode?
					       weight)
  "This rule asks the engine to put out a solution of pitches having the same modulo 12 of the given profile.
It is a OTTAVIATORE.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil) (moduli (my-mod pitches)))
    (push moduli ris)
    (mode-switch
     (1
      `(* ?1
	  (omcs::?if
	   (equalp (mod ?1 12)
		   (nth (1- omcs::len)
			',(pw::flat-once (nreverse ris)))))))
     (2
      `(* ?1
	  (omcs::?if
	   (if (equalp (mod ?1 12)
		       (nth (1- omcs::len)
			    ',(pw::flat-once (nreverse ris))))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;======================== SHAPING RULES ================================
;
;
;(define-menu shaping-rules :in pmc-rules)
;(in-menu shaping-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(defun ascending-rule (mode? weight)
  "This rule obliges all the value to be ascending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* (omcs::?if
	 (apply '<= omcs::l))))
   (2
    `(* (omcs::?if
	 (if (apply '<= omcs::l)
		 ,weight
		 0)
	     )))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun ascending-without-repetition-rule (mode? weight)
  "This rule obliges all the value to be ascending without any repetition.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 (omcs::?if (apply #'< omcs::l))))
   (2
    `(* ?1
	(omcs::?if (if (apply #'< omcs::l) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun ascending-sub-group-no-repet-rule (nth-?
						    mode?
						    weight)
  "This rule obliges the nth (put in nth-?) values of a list of lists to be ascending without any repetition.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	(omcs::?if
	 (apply #'<
		(mapcar #'(lambda (x) (nth (pw::g-round ,nth-?) x)) omcs::l)))))
   (2
    `(* ?1
	(omcs::?if
	 (if (apply #'<
		    (mapcar #'(lambda (x) (nth (pw::g-round ,nth-?) x)) omcs::l))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun ascending-sub-group-with-repet-rule (nth-?
						      mode?
						      weight)
  "This rule obliges the nth (put in nth-?) values of a list of lists to be ascending with repetitions.
ATTENTION : The Heuristic implementation can not work."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* (omcs::?if
	 (if (= omcs::len (omcs::cur-slen))
	     (equalp (sort (copy-list (mapcar #'(lambda (x) (nth (pw::g-round ,nth-?) x))
					      omcs::l))
			   #'<)
		     (mapcar #'(lambda (x) (nth (pw::g-round ,nth-?) x)) omcs::l))
	     t))))
   (2 nil)
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun descending-rule (mode? weight)
  "This rule obliges all the value to be descending
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
    (1
     `(* (omcs::?if
          (apply '>= omcs::l))))
    (2
     `(* (omcs::?if
          (if (apply '>= omcs::l)
              ,weight
            0)
          )))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun descending-without-repetition-rule (mode? weight)
  "This rule obliges all the value to be descending without any repetition.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 (omcs::?if (apply #'> omcs::l))))
   (2
    `(* ?1
	(omcs::?if (if (apply #'> omcs::l) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun descending-sub-group-no-repet-rule (nth-?
						     mode?
						     weight)
  "This rule obliges the nth (put in nth-?) values of a list of lists to be descending without any repetition.
ATTENTION : THE HEURISTIC MODE IT IS NOT WORKING"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	(omcs::?if
	 (apply #'>
		(mapcar #'(lambda (x) (nth (pw::g-round ,nth-?) x)) omcs::l)))))
   (2
    `(* ?1
	(omcs::?if
	 (if (apply #'>
		    (mapcar #'(lambda (x) (nth (pw::g-round ,nth-?) x)) omcs::l))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun descending-sub-group-with-repet-rule (nth-?
						       mode?
						       weight)
  "This rule obliges the nth (put in nth-?) values of a list of lists to be descending with repetitions.
ATTENTION : The Heuristic implementation can not work."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* (omcs::?if
	 (if (= omcs::len (omcs::cur-slen))
	     (equalp (reverse (sort (copy-list (mapcar
						#'(lambda (x) (nth (pw::g-round ,nth-?) x))
						omcs::l))
				    #'<))
		     (mapcar #'(lambda (x) (nth (pw::g-round ,nth-?) x)) omcs::l))
	     t))))
   (2 nil)
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun mk-fix-profile-rule (profile mode?
                                 weight)
  "This rule asks the engine to put out a solution identical to the one put in profile.
As you understand, this rule is usefull only as heuristic!
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil) (ros nil))
    (push profile ris)
    (push weight ros)
    (mode-switch
      (1
       `(* ?1
           (omcs::?if
            (equalp ?1
                    (nth (1- omcs::len)
                         ',(pw::flat-once (nreverse ris)))))))
      (2
       `(* ?1
           (omcs::?if
            (- ,(first (nreverse ros))
               (abs (- ?1
                       (nth (1- omcs::len)
                            ',(pw::flat-once (nreverse ris)))))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun mk-profile-rule (curve-min curve-max steps
                             profile decimals
                             mode? weight)
  "This rule asks the engine to put out a solution identical to the one put in profile.
As you understand, this rule is usefull only as heuristic!
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil)
	(ros nil)
	(mia-curva
	 (pw::g-round (pw::g-scaling (pw::pw-sample profile steps) curve-min curve-max) decimals)))
    (push mia-curva ris)
    (push weight ros)
    (mode-switch
      (1
       `(* ?1
           (omcs::?if
            (equalp ?1
                    (nth (1- omcs::len)
                         ',(pw::flat-once (nreverse ris)))))))
      (2
       `(* ?1
           (omcs::?if
            (- ,(first (nreverse ros))
               (abs (- ?1
                       (nth (1- omcs::len)
                            ',(pw::flat-once (nreverse ris)))))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun sub-group-mk-profile-rule (curve-min
                                       curve-max
                                       nth-?
                                       steps
                                       profile
                                       mode?
                                       weight)
  "This rule asks the engine to put out a solution in which for
each sub-groups the nth (put in nth-?) has to be identical to the one put in profile.
As you understand, this rule is usefull only as heuristic!ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil)
	(ros nil)
	(mia-curva
	 (pw::g-round (pw::g-scaling (pw::pw-sample profile steps) curve-min curve-max))))
    (push mia-curva ris)
    (mode-switch
      (1
       `(* ?1
           (omcs::?if
            (equalp (nth ,(floor nth-?) ?1)
                    (nth (1- omcs::len)
                         ',(pw::flat-once (nreverse ris)))))))
      (2
       `(* ?1
           (omcs::?if
            (- ,weight
               (abs (- (nth ,(floor nth-?) ?1)
                       (nth (1- omcs::len)
                            ',(pw::flat-once (nreverse ris)))))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun direct-analysis-rule (analysis mode?
                                  weight)
  "This rule asks the engine to put out a solution identical to the one put in profile.
As you understand, this rule is usefull only as heuristic!
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push analysis ris)
    (mode-switch
      (1
       `(* ?1
           ?2
           (omcs::?if
            (equalp (nth (- omcs::len 2) ',(pw::flat-once (nreverse ris)))
                (signum (- ?2 ?1))))))
      (2
       `(* ?1
           ?2
           (omcs::?if
            (if (equalp (nth (- omcs::len 2)
                         ',(pw::flat-once (nreverse ris)))
                    (signum (- ?2 ?1)))
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun energy-profile-rule (energy-profile
                                 mode? weight)
  "
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil) (ros nil) (calcolo (morphologie::contrasts-lev.1 energy-profile)))
    (push calcolo ris)
    (mode-switch
      (1
       `(* (omcs::?if
            (if (equalp (MORPHOLOGIE::CONTRASTS-LEV.1 omcs::l) (jbs-cmi::first-n (MORPHOLOGIE::CONTRASTS-LEV.1 ',energy-profile) omcs::len)) T))))
      (2
       `(* (omcs::?if
            (if (if (equalp (MORPHOLOGIE::CONTRASTS-LEV.1 omcs::l) (jbs-cmi::first-n (MORPHOLOGIE::CONTRASTS-LEV.1 ',energy-profile) omcs::len)) T) 0 1))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun energy-profile-range-rule (energy-profile
                                       range
                                       mode? weight)
  "
This rule is deprecated, do not try to use it.
(I just keep it in MOZ to maintain indexes in the JBSrules module !...)

ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible

"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
      (1
       `(* (omcs::?if
            (if (not (find nil (mapcar #'(lambda (x y) (print (<= (- y ,range) x (+ y ,range))))
                        (MORPHOLOGIE::CONTRASTS-LEV.1 omcs::l) (jbs-cmi::first-n (MORPHOLOGIE::CONTRASTS-LEV.1 ',energy-profile) omcs::len)))) T))))
      (2
       `(* (omcs::?if
            (if (if (equalp (MORPHOLOGIE::CONTRASTS-LEV.1 omcs::l) (jbs-cmi::first-n (MORPHOLOGIE::CONTRASTS-LEV.1 ',energy-profile) omcs::len)) T) 0 1))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;======================== PATTERN RULES ================================
;
;
;(define-menu pattern-rules :in pmc-rules)
;(in-menu pattern-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(defun ptrn-find-rule (ptrn-length repeat-ptrn which?
				 mode? weight)
  "This rule looks for solutions having patterns with a giveen length of element
put in ptrn-length. In repeated-ptrn you have to put how many time do you
want the pattern to be repeated.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ; :menu (which? (1 "<") (2 "<=") (3 "=") (4 "=>") (5 ">"))
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil)
	 (ros nil)
	 (rus nil)
	 (quale-segno
	  (case which?
	    (1 '<)
	    (2 '<=)
	    (3 '=)
	    (4 '>=)
	    (5 '>)
	    (otherwise
	     (error "Got ~s, was expecting one of 1, 2, 3, 4, 5." which?))))
	 (segno (first (metti-segno quale-segno))))
    (push ptrn-length ris)
    (push repeat-ptrn ros)
    (push segno rus)
    (mode-switch
     (1
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (,(first (nreverse rus))
		 (length (morphologie::ptrn-find omcs::l
						 ',(pw::g-round (first (nreverse ris)))))
		 ',(first (nreverse ros)))
	       t))))
     (2
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (,(first (nreverse rus))
		     (length (morphologie::ptrn-find omcs::l
						     ',(pw::g-round (first (nreverse ris)))))
		     ',(first (nreverse ros)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;

(defun not-ptrn-find-rule (ptrn-length repeat-ptrn mode?
				     weight)
  "This rule looks for solutions NOT having patterns with a giveen length of element
put in ptrn-length. In repeated-ptrn you have to put how many time do you
want the pattern to be repeated.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil) (ros nil))
    (push ptrn-length ris)
    (push repeat-ptrn ros)
    (mode-switch
     (1
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (not (= (length (morphologie::ptrn-find omcs::l
						       ',(pw::g-round (first (nreverse ris)))))
		       ',(first (nreverse ros))))
	       t))))
     (2
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (not (= (length (morphologie::ptrn-find omcs::l
							   ',(pw::g-round (first (nreverse ris)))))
			   ',(first (nreverse ros))))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;
(defun find-this-ptrn-n-times-rule (pattern
                                         repeat-ptrn
                                         mode?
                                         weight)
  "This rule looks for solutions having patterns with a giveen length of element
put in ptrn-length. In repeated-ptrn you have to put how many time do you
want the pattern to be repeated.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil) (ros nil))
    (push pattern ris)
    (push repeat-ptrn ros)
    (mode-switch
     (1
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (= (count-pattern ',(first (nreverse ris)) omcs::l)
		  ,(first (nreverse ros)))
	       t))))
     (2
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (= (count-pattern ',(first (nreverse ris)) omcs::l)
		  ,(first (nreverse ros)))
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



(defun no-shape-pattern-lcl-repetition-rule (ptrn-length
                                                  
                                                   mode?
                                                   weight)
  "This rule does not allow two consecutive patterns described in the direct-analysis format. 
  In Italiano : questa regola non ammette due pattern consecutivi la cui descrizione è basata 
  sul direct analysis di morphologie: chiama Filippo se non ti ricordi..."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((candidati (jbs-constraints::make-?1 (pw::arithm-ser 1 1 (* 2 (pw::g-round ptrn-length)))))
         (first-candidate (jbs-cmi::first-n candidati (pw::g-round ptrn-length)))
         (last-candidate (jbs-cmi::last-n candidati (pw::g-round ptrn-length))))
    (mode-switch
      (1
       
       `(* ,@candidati (omcs::?if (not (equalp (morph::direct-analysis (list ,@first-candidate)) (morph::direct-analysis (list ,@last-candidate))))))

       )
      (2
       `(* (omcs::?if
            )))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))




(defun more-first-repeated-than-second-rule (element-1
                                                  element-2
                                                  mode?
                                                  weight)
  "This rule asks the engine to have a solution with the first element repeated
more times than the second.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil) (ros nil))
    (push element-1 ris)
    (push element-2 ros)
    (mode-switch
      (1
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (> (count ',(first (nreverse ris)) omcs::l :test 'equalp)
                   (count ',(first (nreverse ros)) omcs::l :test 'equalp))
              t))))
      (2
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (if (> (count ',(first (nreverse ris)) omcs::l :test 'equalp)
                       (count ',(first (nreverse ros)) omcs::l :test 'equalp))
                    ,weight
                  0)
              t))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun repeated-pattern-rule (pattern
                                   times
                                   which?
                                   absolute?
                                   mode?
                                   weight)
  "This rule is for pattern repetitions. In 'pattern you put what you want to be repeated.
In 'times you put how many times you want teh pattern to be repeated. In 'which? you can chose among
'< it that means less times, '= that means an exact number of times and '> that means more times.
In 'absolute? you can chose if you are looking for positive elements (absolute) or not.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ; :menu (which? < = >)
  ; :menu (absolute? :up/down :absolute)
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil)
	 (ros nil)
	 (rus nil)
	 (quale-segno which?)
	 (segno (first (metti-segno quale-segno))))
    (push pattern ris)
    (push times ros)
    (push segno rus)
    (mode-switch
      (1
       (absolute-switch
         (1
          (if (listp pattern)
              `(* (omcs::?if
                   (if (= omcs::len (omcs::cur-slen))
                       (,(first (nreverse rus))
			(count ',(first (nreverse ris))
			       (pw::g-abs omcs::l)
			       :test
			       'equalp)
			,.(nreverse ros))
                     t)))
            `(* (omcs::?if
                 (if (= omcs::len (omcs::cur-slen))
                     (,(first (nreverse rus))
                      (count ,.(nreverse ris) (pw::g-abs omcs::l) :test 'equalp)
                      ,.(nreverse ros))
                   t)))))
         (2
          (if (listp pattern)
              `(* (omcs::?if
                   (if (= omcs::len (omcs::cur-slen))
                       (,(first (nreverse rus))
			(count ',(first (nreverse ris))
			       omcs::l
			       :test
			       'equalp)
			,.(nreverse ros))
                     t)))
            `(* (omcs::?if
                 (if (= omcs::len (omcs::cur-slen))
                     (,(first (nreverse rus))
                      (count ,.(nreverse ris)
                             omcs::l
                             :test
                             'equalp)
                      ,.(nreverse ros))
                   t)))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (2
       (absolute-switch
         (1
          (if (listp pattern)
              `(* (omcs::?if
                   (if (= omcs::len (omcs::cur-slen))
                       (if (,(first (nreverse rus))
			    (count ',(first (nreverse ris))
				   omcs::l
				   :test
				   'equalp)
			    ,.(nreverse ros))
                           ,weight
                         0)
                     t)))
            `(* (omcs::?if
                 (if (= omcs::len (omcs::cur-slen))
                     (if (,(first (nreverse rus))
                          (count ,.(nreverse ris)
                                 omcs::l
                                 :test
                                 'equalp)
                          ,.(nreverse ros))
                         ,weight
                       0)
                   t)))))
         (2
          (if (listp pattern)
              `(* (omcs::?if
                   (if (= omcs::len (omcs::cur-slen))
                       (if (,(first (nreverse rus))
			    (count ',(first (nreverse ris))
				   (pw::g-abs omcs::l)
				   :test
				   'equalp)
			    ,.(nreverse ros))
                           ,weight
                         0)
                     t)))
            `(* (omcs::?if
                 (if (= omcs::len (omcs::cur-slen))
                     (if (,(first (nreverse rus))
                          (count ,.(nreverse ris)
                                 (pw::g-abs omcs::l)
                                 :test
                                 'equalp)
                          ,.(nreverse ros))
                         ,weight
                       0)
                   t)))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun always-more-little-included-rule (mode? weight)
  "When one element (as list of lists) is bigger than a second so the more little has to be included
in the bigger.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(omcs::?if
	 (if (< (length ?1) (length ?2))
	     (subsetp ?1 ?2 :test #'equal)
	     (subsetp ?2 ?1 :test #'equal)))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (if (< (length ?1) (length ?2))
		 (subsetp ?1 ?2 :test #'equal)
		 (subsetp ?2 ?1 :test #'equal))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;======================== DISTANCE RULES ================================
;
;
; (define-menu distance-rules :in pmc-rules)
; (in-menu distance-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; JV-COMPONENTS tools ;;;;;;;;;

(defun reduce-structure-with-round (structure)

(let ((g-scaling/min (mapcar #'float (pw::g/ structure (pw::g-min structure)))))

(mapcar #'(lambda (x) (if (< (pw::g-mod x 1) 0.5) (pw::g-floor x) (pw::g-ceiling x))) g-scaling/min)

))

(defun reduce-structure (structure)

(let ((g-scaling/min (mapcar #'float (pw::g/ structure (pw::g-min structure)))))

g-scaling/min

))

(defun dist-euclid-p (a b tresh)
  (if (> tresh (morphologie::euclidian-d a b)) t nil))


(defun close-p (a b tresh)
  (>= tresh (morphologie::distance a b 1 1 2)))

(defun resemblance-rule (structure thresh
                           mode?)
  "This is a morphological rule. It asks to the engine those solutions who have a distance
- given in 'distance - with the 'pattern.
ATTENTION : works only in   true/false mode, there is probably a bug in reduce-structure-with-round which is used in the heuristic version."

(jbs-constraints::mode-switch
  (1
   `(* (omcs::?if (if (jbs-constraints::close-p  omcs::l (jbs-cmi::first-n ',structure omcs::len) ',thresh) T))))

  (2
   `(* (omcs::?if
        (if (close-p (jbs-constraints::reduce-structure-with-round omcs::l) (jbs-constraints::reduce-structure-with-round (jbs-cmi::first-n ',structure omcs::len)) ',thresh) T))))
  (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defun distance-rule (pattern distance which?
                           mode? weight)
  "This is a morphological rule. It asks to the engine those solutions who have a distance
- given in 'distance - with the 'pattern. In which? you can chose if you want an equal distance '=,
a more little distance '< or a bigger distance '>.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (which? < = >)
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let* ((ris nil)
	 (ros nil)
	 (rus nil)
	 (quale-segno which?)
	   ;(otherwise (error "Got ~s, was expecting one of 1, 2, 3." which?))))
	 (segno (first (metti-segno quale-segno))))
    (push pattern ris)
    (push distance ros)
    (push segno rus)
    (mode-switch
      (1
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (,(first (nreverse rus))
		 (morphologie::distance omcs::l ',(first (nreverse ris)) 1
					1 1)
		 ',(first (nreverse ros)))
              t))))
      (2
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (if (,(first (nreverse rus))
		     (morphologie::distance omcs::l
					    ',(first (nreverse ris)) 1 1 1)
		     ',(first (nreverse ros)))
                    ,weight
                  0)
              t))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;====================== STRUCTURE RULES ================================
;
;
;(define-menu structure-rules :in pmc-rules)
;(in-menu structure-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(defun mk-symbol-structure-rule (structure
					   mode?
					   weight)
  "This rule obliges the solution to be as indicated in structure.
You understand that this rule has meaning only as heuristic.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil) (ros nil))
    (push structure ris)
    (push weight ros)
    (mode-switch
     (1
      `(* ?1
	  (omcs::?if
	   (equalp ?1
		   (nth (1- omcs::len)
			',(pw::flat-once (nreverse ris)))))))
     (2
      `(* ?1
	  (omcs::?if
	   (if (equalp ?1
		       (nth (1- omcs::len)
			    ',(pw::flat-once (nreverse ris))))
	       ,.(nreverse ros)
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun find-apply-global-sum-rule (sum mode? weight)
  "This rule finds out the candidates that summed together they give as a risult the same value
put in sum.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push sum ris)
    (mode-switch
     (1
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (= (apply '+ omcs::l) ',(first (nreverse ris)))
	       t))))
     (2
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (= (apply '+ omcs::l) ',(first (nreverse ris)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

(defun find-apply-global-absolute-sum-rule (sum mode? weight)
  "This rule finds out the candidates that summed together (in an absolute mode) they give as a risult the same value
put in sum.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push sum ris)
    (mode-switch
     (1
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (= (apply '+ (pw::g-abs omcs::l)) ',(first (nreverse ris)))
	       t))))
     (2
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (= (apply '+ (pw::g-abs omcs::l)) ',(first (nreverse ris)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun find-apply-approx-sum-rule (sum
                                        approx
                                        mode?
                                        weight)
  "This rule finds out the candidates that summed together they give as a risult the same value
put in sum.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil) (rus nil))
    (push sum ris)
    (push approx rus)
    (mode-switch
      (1
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (<= (- ,(first (nreverse ris)) ,(first (nreverse rus)))
                    (apply '+ omcs::l)
                    (+ ,(first (nreverse ris)) ,(first (nreverse rus))))
              t))))
      (2 `(* (omcs::?if
              (if (if (= omcs::len (omcs::cur-slen))
                      (<= (- ,(first (nreverse ris)) ,(first (nreverse rus)))
                          (apply '+ omcs::l)
                          (+ ,(first (nreverse ris)) ,(first (nreverse rus))))
                    t)
                  ,weight
                0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun find-apply-approx-absolute-sum-rule (sum
                                                 approx
                                                 mode?
                                                 weight)
  "This rule finds out the candidates that summed together (in the absoulte mode) they give as a risult the same value
put in sum.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil) (rus nil))
    (push sum ris)
    (push approx rus)
    (mode-switch
      (1
       `(* (omcs::?if
            (if (= omcs::len (omcs::cur-slen))
                (<= (- ,(first (nreverse ris)) ,(first (nreverse rus)))
                    (apply '+ (pw::g-abs omcs::l))
                    (+ ,(first (nreverse ris)) ,(first (nreverse rus))))
              t))))
      (2 `(* (omcs::?if
              (if (if (= omcs::len (omcs::cur-slen))
                      (<= (- ,(first (nreverse ris)) ,(first (nreverse rus)))
                          (apply '+ (pw::g-abs omcs::l))
                          (+ ,(first (nreverse ris)) ,(first (nreverse rus))))
                    t)
                  ,weight
                0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



(defun length-sub-group-applied-sum-rule (length?
                                               mode?
                                               weight)
  "This rule obliges each sub list of the solution ti have an applied sum equal to length?.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
    (1
     `(* ?1
         (omcs::?if
          (equalp (apply '+ (pw::g-abs ?1)) ,length?))))
    (2
     `(* ?1
         (omcs::?if
          (if (equalp (apply '+ (pw::g-abs ?1)) ,length?)
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun structured-order-sum-rule (candidates
					    order
					    sum
					    mode?
					    weight)
  "In candidates you put in sconstraints symbol the candidates you are looking for (ex. ?1 ?2 ?3).
Then in order you put a list of indexes that has to be applied to a posn-match for the candidates
/////(ex. (0 1 0 2 2 2 2 0 1)). Then in sum you put the value that the 3 candidates you haveindicated, summmed together
in the given order.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ,@candidates
	(omcs::?if
	 (= (apply '+ (pw::posn-match (list ,@(copy-list candidates)) ',order))
	    ,sum))))
   (2
    `(* ,@candidates
	(omcs::?if
	 (if (= (apply '+
		       (pw::posn-match (list ,@(copy-list candidates)) ',order))
		,sum)
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun count-positive-rule (number mode? weight)
  "The solution must have a number of positive valure as indicatd in number.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push number ris)
    (mode-switch
     (1
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (= (count-positif omcs::l) ',(first (nreverse ris)))
	       t))))
     (2
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (= (count-positif omcs::l)
		      ',(first (nreverse ris)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun count-negative-rule (number mode? weight)
  "The solution must have a number of negative valure as indicatd in number.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push number ris)
    (mode-switch
     (1
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (= (count-negatif omcs::l) ',(first (nreverse ris)))
	       t))))
     (2
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (= (count-negatif omcs::l)
		      ',(first (nreverse ris)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(defun no-consecutive-rests-rule (mode? weight)
  "Two negative values can not be consecutive.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(omcs::?if
	 (if (< ?1 1) (not (equalp (signum ?1) (signum ?2))) t))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (if (< ?1 1) (not (equalp (signum ?1) (signum ?2))) t)
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun no-consecutive-pulses-rule (mode? weight)
  "Two positive values can not be consecutive.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(omcs::?if
	 (if (>= ?1 1) (not (equalp (signum ?1) (signum ?2))) t))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (if (>= ?1 1) (not (equalp (signum ?1) (signum ?2))) t)
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))





(defun alternating-positive-negative-rule (mode? weight)
  "This rule obliges positive number to be alternated with negative numbers.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(omcs::?if
	 (if (> (signum ?1) 0) (< (signum ?2) 0) (> (signum ?2) 0)))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (if (> (signum ?1) 0) (< (signum ?2) 0) (> (signum ?2) 0))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun alternating-+/-first-elmt-rule (mode? weight)
  "This rule ceates a result of sub lists in which the fisrt element is, in an alterning way, before positive
then negative an so on.
ATTENTION : this rule works with list of lists.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(omcs::?if
	 (if (> (signum (first ?1)) 0)
	     (< (signum (first ?2)) 0)
	     (> (signum (first ?2)) 0)))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (if (> (signum (first ?1)) 0)
		 (< (signum (first ?2)) 0)
		 (> (signum (first ?2)) 0))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun alternating-+/-last-elmt-rule (mode? weight)
  "This rule ceates a result of sub lists in which the last element is, in an alterning way, before positive
then negative an so on.
ATTENTION : this rule works with list of lists.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(omcs::?if
	 (if (> (signum (first (last ?1))) 0)
	     (< (signum (first (last ?2))) 0)
	     (> (signum (first (last ?2))) 0)))))
   (2
    `(* ?1
	?2
	(omcs::?if
	 (if (if (> (signum (first (last ?1))) 0)
		 (< (signum (first (last ?2))) 0)
		 (> (signum (first (last ?2))) 0))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


#|

(defun structure-identity-rule ((contrast-analys (1 2 3 2 1 2 2 4))
					  mode?
					  weight)
  "This rule gives t if the first level of the contrast analysis - see morphologie 3.0 - is equal
to the list put in 'contrast-analys.
ATTENTION : it is very slow.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (let ((ris nil))
    (push contrast-analys ris)
    (mode-switch
     (1
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (equalp (morph::contrasts-lev.1 omcs::l)
		       ',(first (nreverse ris)))
	       t))))
     (2
      `(* (omcs::?if
	   (if (= omcs::len (omcs::cur-slen))
	       (if (equalp (morph::contrasts-lev.1 omcs::l)
			   ',(first (nreverse ris)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

|#
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;====================== STRUCTURE RULES ================================
;
;
;(define-menu matrix-rules :in pmc-rules)
;(in-menu matrix-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(defun mk-latin-matrix-rule (mode? weight)
  "This rule create a latin matrix like following :
     1 3 2 4
     2 1 4 3
     3 4 1 2
     4 2 3 1

ATTENTION : It works with list of lists.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
   (1 `(* ?1 (omcs::?if (not (hhh ?1 (rest omcs::rl))))))
   (2
    `(* ?1
	(omcs::?if
	 (if (not (hhh ?1 (rest omcs::rl))) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(defun chain-common-element-lists-rule (chain-length?
                                            mode?
                                            weight)
  "This rule chains lists of lists following the criteria of adaptating figure: see CMI thoery.
You have two lists of lists: in chain-lenngth?, the length of the last part of the corrent list (and automatically the length of the first part of the forword one.
ATTENTION : IN THE HEURISTIC MODE IT DOES NOT WORK. WHY???"
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
    (1
     `(* ?1
         ?2
         (omcs::?if
          (equalp (jbs-cmi::last-n ?1 ,(pw::g-round chain-length?))
                      (jbs-cmi::first-n ?2 ,(pw::g-round chain-length?))))))
    (2
     `(* ?1
         ?2
         (omcs::?if
          (if (equalp (jbs-cmi::last-n ?1 ,(pw::g-round chain-length?))
                      (jbs-cmi::first-n ?2 ,(pw::g-round chain-length?)))
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))



(defun chain-more-little-included-common-lists-rule (first-n? last-n?
                                                          mode?
                                                          weight)
  "This rule chains lists of lists following the criteria of adaptating figure: see CMI thoery.
You have two lists of lists: in chain-lenngth?, the length of the last part of the corrent list (and automatically the length of the first part of the forword one.
ATTENTION : IN THE HEURISTIC MODE IT DOES NOT WORK. WHY??? ———— IS IT FIXED NOW?..."
  ;   :non-generic t
  ;   :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  ;  :class pmc-box
  (mode-switch
    (1
     `(* ?1
         ?2
         (omcs::?if
          (if (> ,first-n? ,last-n?)
              (pw::included? (jbs-cmi::last-n ?1 ,(pw::g-round last-n?))
                             (jbs-cmi::first-n ?2 ,(pw::g-round first-n?)))
            (pw::included? (jbs-cmi::first-n ?2 ,(pw::g-round first-n?))
                           (jbs-cmi::last-n ?1 ,(pw::g-round last-n?))))
          )))
    (2
     `(* ?1
         ?2
         (omcs::?if
          (if (if (> ,first-n? ,last-n?)
              (pw::included? (jbs-cmi::last-n ?1 ,(pw::g-round last-n?))
                             (jbs-cmi::first-n ?2 ,(pw::g-round first-n?)))
            (pw::included? (jbs-cmi::first-n ?2 ,(pw::g-round first-n?))
                           (jbs-cmi::last-n ?1 ,(pw::g-round last-n?))))
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))




  