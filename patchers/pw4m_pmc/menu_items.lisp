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

(define-box not-higher-interval-rule ((limit 6) (sign? :+/-) (mode? :true/false) (weight 1))
  "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.
If you chose '+', it means that this function does not allow interval higher than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval higher than the one entered in 'limit' only for negatif interval.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :menu (sign? (1 "+") (2 "-") (3 "absolute"))
  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
      (1
       (case sign?
         (1 
          `(* ?1
              ?2
              (ccl::?if
               (if (>= (- ?2 ?1) 0)
                   (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (2 
          `(* ?1
              ?2
              (ccl::?if
               (if (<= (- ?2 ?1) 0)
                   (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (3 
          `(* ?1
              ?2
              (ccl::?if
               (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))))))))
      (2
       (case sign?
         (1 
          `(* ?1
              ?2
              (ccl::?if
               (if (>= (- ?2 ?1) 0)
                   (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (2 
          `(* ?1
              ?2
              (ccl::?if
               (if (<= (- ?2 ?1) 0)
                   (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (3 
          `(* ?1
              ?2
              (ccl::?if
              (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))))
         
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))





(define-box not-lower-interval-rule ((limit 6) (sign? :+/-) (mode? :true/false) (weight 1))
  "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.
If you chose '+', it means that this function does not allow interval lower than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval lower than the one entered in 'limit' only for negatif interval.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :menu (sign? (1 "+") (2 "-") (3 "absolute"))
  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
      (1
       (case sign?
         (1 
          `(* ?1
              ?2
              (ccl::?if
               (if (> (- ?2 ?1) 0)
                   (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (2 
          `(* ?1
              ?2
              (ccl::?if
               (if (< (- ?2 ?1) 0)
                   (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (3 
          `(* ?1
              ?2
              (ccl::?if
               (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))))))))
      (2
       (case sign?
         (1 
          `(* ?1
              ?2
              (ccl::?if
               (if (> (- ?2 ?1) 0)
                   (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (2 
          `(* ?1
              ?2
              (ccl::?if
               (if (< (- ?2 ?1) 0)
                   (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (3 
          `(* ?1
              ?2
              (ccl::?if
              (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

#|
|#








(define-menu jbs-constraints :print-name "JBS-Constraints")
(in-menu jbs-constraints)
(define-menu pmc-rules :in jbs-constraints)
(define-menu score-pmc-rules :in jbs-constraints)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;========================== GENERIC RULES ===============================
;
(define-menu generic-rules :in pmc-rules)
(in-menu generic-rules)
;=====================================
(define-box no-repetition-rule ((mode? :true/false) (weight 1))
  "This rule dos not allow any repetition.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push weight ris)
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if
	   (not (member ?1 (rest ccl::rl) :test 'equalp)))))
     (2
      `(* ?1
	  (ccl::?if
	   (if (not (member ?1 (rest ccl::rl) :test 'equalp))
	       ',(first (nreverse ris))
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box no-absolute-repetition-rule ((mode? :true/false) (weight 1))
  "It does not allow any repetition in abslute mode inside a solution.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push weight ris)
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if
	   (not (member (pw::g-abs ?1)
			(pw::g-abs (rest ccl::rl))
			:test
			'equalp)))))
     (2
      `(* ?1
	  (ccl::?if
	   (if (not (member (pw::g-abs ?1)
			    (pw::g-abs (rest ccl::rl))
			    :test
			    'equalp))
	       ',(first (nreverse ris))
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box no-local-repetition-rule ((mode? :true/false) (weight 1))
  "This rule dos not allow any repetition.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push weight ris)
    (mode-switch
     (1 `(* ?1 ?2 (ccl::?if (not (equalp ?1 ?2)))))
     (2
      `(* ?1
	  ?2
	  (ccl::?if
	   (if (not (equalp ?1 ?2)) ',(first (nreverse ris)) 0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box no-spaced-repetition-rule ((candidates (1 3))
                                       (mode? :true/false)
                                       (weight 1))
  "This function does not allow any repetition for an element and another. The distance between the two elements is indicated with the numbers put in 'candidates'. For example if you put (1 4) it means that each element has to be different from the fourth after itself. If you put (1 7) that means that an element has to be different from the seventh after itself.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible.
"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
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
      (1 `(* ,@candidati (ccl::?if (not (equalp ,primo ,ultimo)))))
      (2
       `(* ,@candidati
           (ccl::?if (if (not (equalp ,primo ,ultimo)) ,weight 0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box not-modulo-x-repetition-rule ((modulo 12) (mode? :true/false) (weight 1))
  "This rule does not allow any candidate having the same modulo given in modulo.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 (ccl::?if (not (equalp (mod ?1 ,modulo) 0)))))
   (2 `(* ?1 (ccl::?if (if (not (equalp (mod ?1 ,modulo) 0)) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))
 

(define-box modulo-x-repetition-rule ((modulo 12) (mode? :true/false) (weight 1))
  "This rule allows any candidate having the same modulo given in modulo.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible.
N.B. USEFULL IN QUANTIFICATION OF DURATIONS."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 (ccl::?if (equalp (mod ?1 ,modulo) 0))))
   (2 `(* ?1 (ccl::?if (if (equalp (mod ?1 ,modulo) 0) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))





(define-box not-modulo-x-local-repetition-rule ((modulo 12) (mode? :true/false) (weight 1))
  "This rule does not allow any candidate having the same local modulo given in modulo.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
N.B. USEFULL IN QUANTIFICATION OF DURATIONS."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 ?2 (ccl::?if (not (equalp (mod ?1 ,modulo) (mod ?2 ,modulo))))))
   (2 `(* ?1 ?2 (ccl::?if (if (not (equalp (mod ?1 ,modulo) (mod ?2 ,modulo))) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))







(define-box not-rpt-elmts-in-lists-rule ((mode? :true/false) (weight 1))
  "This rule does not allow any element of one list to be repeated in the following
list.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 ?2 (ccl::?if (not (find-all-in-lists ?1 (list ?2))))))
   (2
    `(* ?1
	?2
	(ccl::?if
	 (if (not (find-all-in-lists ?1 (list ?2))) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box not-consecutive-number-rule ((mode? :true/false) (weight 1))
  "This rule does not allow numeric candidate to be followed by its consecutive. It means that if candidates are:
1 2 3 4 5 there will not be 1 follow by 2, but by 3, or 4 or 5.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 ?2 (ccl::?if (not (equalp (- ?2 ?1) 1)))))
   (2
    `(* ?1 ?2 (ccl::?if (if (not (equalp (- ?2 ?1) 1)) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box not-consecutive-ascending-rule ((how-many 3)
                                            (mode? :true/false)
                                            (weight 1))
  "This rule does not allow more ascending value than as indicate in how-many.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((ris nil)
	 (how-many (1+ how-many))
	 (candidates (make-?1-from-to  1 how-many))
	 (creo-i-simboli
          (genero-lista-segno-maggiore (mapcar 'reverse (scom candidates 2)))))
    (push creo-i-simboli ris)
    (mode-switch
      (1
       `(* ,@candidates
           (ccl::?if (not (and ,.(first (nreverse ris)))))))
      (2
       `(* ,@candidates
           (ccl::?if
            (if (not (and ,.(first (nreverse ris)))) ,weight 0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box not-consecutive-descending-rule ((how-many 3)
						  (mode? :true/false)
						  (weight 1))
  "This rule does not allow more descending value than as indicate in how-many.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((ris nil)
	 (how-many (1+ how-many))
	 (candidates (make-?1-from-to 1 how-many))
	 (creo-i-simboli
	  (genero-lista-segno-minore (mapcar 'reverse (scom candidates 2)))))
    (push creo-i-simboli ris)
    (mode-switch
     (1
      `(* ,@candidates
	  (ccl::?if (not (and ,.(first (nreverse ris)))))))
     (2
      `(* ,@candidates
	  (ccl::?if
	   (if (not (and ,.(first (nreverse ris)))) ,weight 0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box not-consecutive-equal-rule ((how-many 3) (mode? :true/false) (weight 1))
  "This rule does not allow more equal values than as indicate in how-many.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((ris nil)
	 (how-many (1+ how-many))
	 (candidates (make-?1-from-to 1 how-many))
	 (creo-i-simboli
	  (genero-lista-segno-uguale (mapcar 'reverse (scom candidates 2)))))
    (push creo-i-simboli ris)
    (mode-switch
     (1
      `(* ,@candidates
	  (ccl::?if (not (and ,.(first (nreverse ris)))))))
     (2
      `(* ,@candidates
	  (ccl::?if
	   (if (not (and ,.(first (nreverse ris)))) ,weight 0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))




(define-box not-repeated-element-sub-group-rule ((sub-group-length 3)
                                                  (mode? :true/false)
                                                  (weight 1))
  "This rule does not allow any repeated element into a given sub-group. The input
sub-group-length indicates the length of the sub-group.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((candidates (make-?1-from-to 1 sub-group-length))
	 (rest-candidates (rest candidates)))
    (mode-switch
      (1
       `(* ,@candidates
           (ccl::?if
            (and (not (member ?1
                              (list ,@rest-candidates)
                              :test
                              'equalp))
                 (if (= ccl::len (ccl::cur-slen))
                     (trova-ripetizioni
                      (morphologie::ptrn-reson ccl::l ,sub-group-length))
                   t)))))
      (2
       `(* ,@candidates
           (ccl::?if
            (if (and (not (member ?1
                                  (list ,@rest-candidates)))
                     (if (= ccl::len (ccl::cur-slen))
                         (trova-ripetizioni
                          (morphologie::ptrn-reson ccl::l ,sub-group-length))
                       t))
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))









(define-box not-repeated-list-sub-group-rule ((sub-group-length 3)
						   (mode? :true/false)
						   (weight 1))
  "This rule does not allow any repeated list into a given sub-group. The input
sub-group-length indicates the length of the sub-group.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((candidates (make-?1-from-to 1 sub-group-length))
	 (rest-candidates (rest candidates)))
    (mode-switch
     (1
      `(* ,@candidates
	  (ccl::?if
	   (not (list-member-list ?1
				  (list ,@rest-candidates))))))
     (2
      `(* ,@candidates
	  (ccl::?if
	   (if (not (list-member-list ?1
				      (list ,@rest-candidates)))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box item-sub-group-member-rule ((sub-group-length 5)
                                        (item-index 1)
                                        (allowed (1 7))
                                        (mode? :true/false)
                                        (weight 1))
  "Item indicated with 'item index' will be a member of 'allowed' elements in each sub group of length
 'sub-group-length'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (rus nil) (ros nil))
    (push sub-group-length ris)
    (push item-index rus)
    (push allowed ros)
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if
	   (if (map-group-pos? ccl::l ',(first (nreverse ris))
			       ',(first (nreverse rus)))
	       (member ?1 ',(first (nreverse ros)) :test 'equalp)
	       t))))
     (2
      `(* ?1
	  (ccl::?if
	   (if (map-group-pos? ccl::l ',(first (nreverse ris))
			       ',(first (nreverse rus)))
	       (if (member ?1 ',(first (nreverse ros)) :test 'equalp) ,weight 0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box allowed-chain-rule ((element 2) (following (5 7)) (mode? :true/false)
				     (weight 1))
  "This rule obliges a given element,
to be followed by those elements eneterd in following.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(ccl::?if
	 (if (equalp ?1 ,element) (member ?2 ',following) t))))
   (2
    `(* ?1
	?2
	(ccl::?if
	 (if (if (equalp ?1 ,element) (member ?2 ',following) t) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))




(define-box not-allowed-chain-rule ((element 2) (following (5 7)) (mode? :true/false)
				     (weight 1))
  "This rule obliges a given element,
NOT to be followed by those elements eneterd in following.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(ccl::?if
	 (if (equalp ?1 ,element) (not (member ?2 ',following)) t))))
   (2
    `(* ?1
	?2
	(ccl::?if
	 (if (if (equalp ?1 ,element) (not (member ?2 ',following)) t) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box length-sub-group-rule ((curve-min 60)
                                   (curve-max 72)
                                   (steps 10)
                                   (lengths nil)
                                   (mode? :true/false)
                                   (weight 1))
  "This rule obliges the sub solutions to have a length accordingly to the list put in 'lengths'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil)
        (ros nil)
        (mia-curva (if (and (listp lengths) (numberp (first lengths))) lengths
                     (pw::g-round
                      (pw::flat
                       (pw::scale-low-high
                        (pw::flat (jbs-profile::dynamic-interpolation (list! curve-min)
                                                                      (list! curve-max) steps lengths 2 nil))
                        curve-min curve-max))))))
    (push mia-curva ris)
    (push weight ros)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (equalp (length ?1)
                    (nth (1- ccl::len)
                         ',(pw::flat-once (nreverse ris)))))))
      (2
       `(* ?1
           (ccl::?if
            (if (equalp (length ?1)
                        (nth (1- ccl::len)
                             ',(pw::flat-once (nreverse ris))))
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box not-consecutive-equal-length-rule ((mode? :true/false) (weight 1))
  "The length of two consecutive groups has not to be equal.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 ?2 (ccl::?if (not (= (length ?1) (length ?2))))))
   (2
    `(* ?1
	?2
	(ccl::?if
	 (if (not (= (length ?1) (length ?2))) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box not-length-repetition-rule ((mode? :true/false) (weight 1))
  "No repetition of sub group equal length.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	(ccl::?if
	 (not (member (length ?1)
		      (mapcar #'(lambda (x) (length x))
			      (rest ccl::rl)))))))
   (2
    `(* ?1
	?2
	(ccl::?if
	 (if (not (member (length ?1)
			  (mapcar #'(lambda (x) (length x))
				  (rest ccl::rl))))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box index-rule ((index i1) (value 7) (mode? :true/false) (weight 1))
  "This rule obliges the value (indicated as index) of the solution to be the value indicated in 'value'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (ros nil))
    (push index ris)
    (push (list! value) ros)
    (if (listp (first (list! value)))
	(mode-switch
	 (1
	  `(,.(nreverse ris)
	      (ccl::?if
	       (find ,.(nreverse (copy-list ris))
		     ',.(nreverse ros)
		     :test
		     'equalp))))
	 (2
	  `( ,.(nreverse ris)
	      (ccl::?if
	       (if (find ,.(nreverse (copy-list ris))
			 ',.(nreverse ros)
			 :test
			 'equalp)
		   ,weight
		   0))))
	 (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))
	(mode-switch
	 (1
	  `( ,.(nreverse ris)
	      (ccl::?if
	       (member ,.(nreverse (copy-list ris)) ',.(nreverse ros)))))
	 (2
	  `( ,.(nreverse ris)
	      (ccl::?if
	       (if (member ,.(nreverse (copy-list ris)) ',.(nreverse ros))
		   ,weight
		   0))))
	 (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))))


(define-box not-index-rule ((index i1) (value 7) (mode? :true/false) (weight 1))
  "This rule obliges the value (indicated as index) of the solution NOT to be the value indicated in 'value'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (ros nil))
    (push index ris)
    (push (list! value) ros)
    (if (listp (first (list! value)))
	(mode-switch
	 (1
	  `(* ,.(nreverse ris)
	      (ccl::?if
	       (not (find ,.(nreverse (copy-list ris))
			  ',.(nreverse ros)
			  :test
			  'equalp)))))
	 (2
	  `(* ,.(nreverse ris)
	      (ccl::?if
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
	      (ccl::?if
	       (not (member ,.(nreverse (copy-list ris)) ',.(nreverse ros))))))
	 (2
	  `(* ,.(nreverse ris)
	      (ccl::?if
	       (if (not (member ,.(nreverse (copy-list ris)) ',.(nreverse ros)))
		   ,weight
		   0))))
	 (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))))


(define-box index-higher-rule ((index i1) (value 7) (mode? :true/false) (weight 1))
  "This rule obliges the value (indicated as index) of the solution to be higher than the value indicated in 'value'..
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (ros nil))
    (push index ris)
    (push (list! value) ros)
    (mode-switch
     (1
      `(* ,.(nreverse ris)
	  (ccl::?if
	   (> ,.(nreverse (copy-list ris)) ,.(first (nreverse ros))))))
     (2
      `(* ,.(nreverse ris)
	  (ccl::?if
	   (if (> ,.(nreverse (copy-list ris)) ,.(first (nreverse ros)))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box index-lower-rule ((index i1) (value 7) (mode? :true/false) (weight 1))
  "This rule obliges the value (indicated as index) of the solution to be lower than the value indicated in 'value'..
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (ros nil))
    (push index ris)
    (push (list! value) ros)
    (mode-switch
     (1
      `(* ,.(nreverse ris)
	  (ccl::?if
	   (< ,.(nreverse (copy-list ris)) ,.(first (nreverse ros))))))
     (2
      `(* ,.(nreverse ris)
	  (ccl::?if
	   (if (< ,.(nreverse (copy-list ris)) ,.(first (nreverse ros)))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box index-length-rule ((index i1) (length 3) (mode? :true/false) (weight 1))
  "This rule obliges the value (indicated as index) of the solution to have the length put in 'length'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ,index (ccl::?if (= (length ,index) ,length))))
   (2
    `(* ,index
	(ccl::?if (if (= (length ,index) ,length) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box index-nth-rule ((index i1) (nth? 0) (what? 1) (mode? :true/false)
				 (weight 1))
  "This rule obliges the nth (indicate from 0 to n) of the index (indicated
with i1, i2, i3...) to be the value put in what?.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ,index (ccl::?if (equalp (nth ,nth? ,index) ,what?))))
   (2
    `(* ,index
	(ccl::?if
	 (if (equalp (nth ,nth? ,index) ,what?) ,weight 10))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box index-applied-sum-rule ((index i1)
					 (sum 3)
					 (mode? :true/false)
					 (weight 1))
  "This rule obliges the value (indicated as index) of the solution to have elements that summed
together they give back the number put in sum.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible
ATTENTION: HEURISTIC NOT YET IMPLEMENTED."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ,index (ccl::?if (= (apply '+ (pw::g-abs ,index)) ,sum))))
   (2
    `(* ,index
	(ccl::?if
	 (if (= (apply '+ (pw::g-abs ,index)) ,sum) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box member-rule ((list (1 2)) (mode? :true/false) (weight 1))
  "This rule obliges any element of the solution to belong to the elements indicated in 'domain'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    (if (listp (first list))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (ccl::?if (list-member-list ?1 ',.(nreverse ros)))))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1 (ccl::?if (member ?1 ',.(nreverse ros)))))))
   (2
    (if (listp (first list))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (ccl::?if
	       (if (list-member-list ?1 ',.(nreverse ros)) ,weight 0))))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (ccl::?if
	       (if (member ?1 ',.(nreverse ros)) ,weight 0))))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box not-member-rule ((list (1 2)) (mode? :true/false) (weight 1))
  "This rule obliges any element of the solution not to belong to the elements indicated in 'domain'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    (if (listp (first list))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (ccl::?if
	       (not (list-member-list ?1 ',.(nreverse ros))))))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1 (ccl::?if (not (member ?1 ',.(nreverse ros))))))))
   (2
    (if (listp (first list))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (ccl::?if
	       (if (not (list-member-list ?1 ',.(nreverse ros))) ,weight 0))))
	(let ((ris nil) (ros nil))
	  (push list ros)
	  `(* ?1
	      (ccl::?if
	       (if (not (member ?1 ',.(nreverse ros))) ,weight 0))))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box not-higher-than-rule ((limit 3) (mode? :true/false) (weight 1))
  "This rule obliges any element of the solution not to belong to the elements indicated in 'domain'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 (ccl::?if (not (> ?1 ,limit)))))
   (2 `(* ?1 (ccl::?if (if (not (> ?1 ,limit)) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box not-lower-than-rule ((limit 3) (mode? :true/false) (weight 1))
  "This rule obliges any element of the solution not to belong to the elements indicated in 'domain'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 (ccl::?if (not (< ?1 ,limit)))))
   (2 `(* ?1 (ccl::?if (if (not (< ?1 ,limit)) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box count-common-elements-rule ((how-many 3) (mode? :true/false) (weight 1))
  "This rule obliges sub lists to have the number of common elements put in 'how-many.
ATTENTION : This rule works with a list of lists.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push how-many ris)
    (mode-switch
     (1
      `(* ?1
	  ?2
	  (ccl::?if
	   (equalp (count-element-first-list-in-second ?1 ?2)
		   ,(first (nreverse ris))))))
     (2
      `(* ?1
	  ?2
	  (ccl::?if
	   (if (equalp (count-element-first-list-in-second ?1 ?2)
		       ,(first (nreverse ris)))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box count-any-element-rule ((how-many 3) (mode? :true/false) (weight 1))
  "This rule obligesa solution to have any element repeated many times as indicated in 'how-many.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push how-many ris)
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (count-exactly-any-element ccl::l
					  ,(first (nreverse ris)))
	       t))))
     (2
      `(* ?1
	  ?2
	  (ccl::?if
	   (if (if (= ccl::len (ccl::cur-slen))
		   (count-exactly-any-element ccl::l
					      ,(first (nreverse ris)))
		   t)
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



(define-box count-this-element-rule ((element 10) (how-many 3) (mode? :true/false) (weight 1))
  "This rule obligesa solution to have any element repeated many times as indicated in 'how-many.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push how-many ris)
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (count-this-element ,element ccl::l
					  ,how-many)
	       t))))
     (2
      `(* ?1
	  ?2
	  (ccl::?if
	   (if (if (= ccl::len (ccl::cur-slen))
		   (count-this-element ,element ccl::l
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
(define-menu interval-rules :in pmc-rules)
(in-menu interval-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(define-box no-interval-local-repetition-rule ((absolute? :absolute)
                                               (mode? :true/false) (weight 1))
  "This rule does not allowed any local repetition of intervals.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (absolute? :absolute :up/down)
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
    (1
     (absolute-switch
       (1 
        `(* ?1
            ?2
            ?3
            (ccl::?if
             (not (= (abs (- ?2 ?1))
                     (abs (- ?3 ?2)))))))
       (2 
        `(* ?1
            ?2
            ?3
            (ccl::?if
             (not (= (- ?2 ?1)
                     (- ?3 ?2))))))))
    (2
     (absolute-switch
       (1
        `(* ?1
            ?2
            ?3
            (ccl::?if
             (if (not (= (abs (- ?2 ?1))
                         (abs (- ?3 ?2)))) ,weight 0))))
       (2 
        `(* ?1
            ?2
            ?3
            (ccl::?if
             (if (not (= (- ?2 ?1)
                         (- ?3 ?2))) ,weight 0))))))))




(define-box no-interval-repetition-rule ((mode? :true/false)
					      (absolute? :absolute)
					      (weight 1))
  "This rule does not allow any repetition of intervals.
If the menu 'absolute?' is 'absolute, that means that intervals are
intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  :menu (absolute? :absolute :up/down)
  (mode-switch
   (1
    (absolute-switch
      (1
       `(* ?1 ?2 (?IF (not (member (abs (- ?2 ?1)) (rest (pw::G-ABS (pw::x->dx rL))))))))
      (2
       `(* ?1 ?2 (?IF (not (member (- ?2 ?1) (rest (pw::x->dx rL))))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?)))
   (2
    (absolute-switch
      (1
       `(* ?1 ?2 (?IF (if (not (member (abs (- ?2 ?1)) (rest (pw::G-ABS (pw::x->dx rL))))) ,weight 0))))
      (2
       `(* ?1 ?2 (?IF (if (not (member (- ?2 ?1) (rest (pw::x->dx rL)))) ,weight 0))))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box no-locally-repeated-given-interval-rule ((interval 3)
							  (absolute? :absolute)
							  (mode? :true/false)
							  (weight 1))
  "This rule obliges a solution not to have a given 'interval' locally repeated.
It is a sort of no-local-repetition but limited to the given interval.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (absolute? :absolute :up/down)
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    (absolute-switch
      (1
       `(* ?1
	   ?2
	   ?3
	   (ccl::?if
	    (if (= (abs (- ?2 ?1)) ,interval)
		(not (= (abs (- ?3 ?2)) ,interval))
		t))))
      (2
       `(* ?1
	   ?2
	   ?3
	   (ccl::?if
	    (if (= (- ?2 ?1) ,interval) (not (= (- ?2 ?1) ,interval)) t))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
   (2
    (absolute-switch
      (1
       `(* ?1
	   ?2
	   ?3
	   (ccl::?if
	    (if (if (= (abs (- ?2 ?1)) ,interval)
		    (not (= (abs (- ?3 ?2)) ,interval))
		    t)
		,weight))))
      (2
       `(* ?1
	   ?2
	   ?3
	   (ccl::?if
	    (if (if (= (- ?2 ?1) ,interval) (not (= (- ?2 ?1) ,interval)) t)
		,weight))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))






(define-box allowed-intervals-rule ((intervals (-1 2 -3))
					 (absolute? :absolute)
					 (mode? :true/false)
					 (weight 1))
  "This rule allows only the intervals indicated in 'intervals'.
If the menu 'absolute?' is 'absolute,
that means that intervals are intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (absolute? :absolute :up/down)
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push intervals ris)
    (mode-switch
     (1
      (absolute-switch
	(1
	 `(* ?1
	     ?2
	     (ccl::?if
	      (member (abs (- ?2 ?1)) ',(pw::g-abs (first (nreverse ris)))))))
	(2
	 `(* ?1
	     ?2
	     (ccl::?if
	      (member (- ?2 ?1) ',(first (nreverse ris))))))
	(otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
     (2
      (absolute-switch
	(1
	 `(* ?1
	     ?2
	     (ccl::?if
	      (if (member (abs (- ?2 ?1)) ',(pw::g-abs (first (nreverse ris))))
		  ,weight
		  0))))
	(2
	 `(* ?1
	     ?2
	     (ccl::?if
	      (if (member (- ?2 ?1) ',(first (nreverse ris))) ,weight 0))))
	(otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box not-allowed-intervals-rule ((intervals (-1 2 -3))
                                        (absolute? :absolute)
                                        (mode? :true/false)
                                        (weight 1))
  "This rule does not allow the intervals indicated in 'intervals'.
If the menu 'absolute?' is 'absolute,
that means that intervals are intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (absolute? :absolute :up/down)
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push intervals ris)
    (mode-switch
      (1
       (absolute-switch
         (1
          `(* ?1
              ?2
              (ccl::?if
               (not (member (abs (- ?2 ?1))
                            ',(pw::g-abs (first (nreverse ris))))))))
         (2
          `(* ?1
              ?2
              (ccl::?if
               (not (member (- ?2 ?1) ',(first (nreverse ris)))))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (2
       (absolute-switch
         (1
          `(* ?1
              ?2
              (ccl::?if
               (if (not (member (abs (- ?2 ?1))
                                ',(pw::g-abs (first (nreverse ris)))))
                   ,weight
                 0))))
         (2
          `(* ?1
              ?2
              (ccl::?if
               (if (not (member (- ?2 ?1) ',(first (nreverse ris))))
                   ,weight
                 0))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))




(define-box allowed-distant-intervals-rule ((distance (1 3))
                                            (intervals (1))
                                            (absolute? :absolute)
                                            (mode? :true/false)
                                            (weight 1))
  "This rule allows a sequence of intervals to be equals with a given distance. The allowed intervals are put in INTERVALS.
The distance has to be described giving the first and the last note of the distance. For instance, if in distance you put 1 and 3 it means that in a sequence each the interval between the first and the third note has to be a member of INTERVALS. 
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (absolute? :absolute :up/down)
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((variables (jbs-constraints::make-?1 distance))
        (list-variables (jbs-constraints::make-?1 (pw::arithm-ser (first distance)
                                                                  1
                                                                  (second distance)))))
    (mode-switch
      (1
       (absolute-switch
         (1
          `(* ,@list-variables
              (ccl::?if
               (member (abs (- (second (list ,@variables)) (first (list ,@variables))))
                       ',(pw::g-abs intervals)))))
         (2
          `(* ,@list-variables
              (ccl::?if
               (member (- (second (list ,@variables)) (first (list ,@variables)))
                       ',(pw::g-abs intervals)))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (2
     (absolute-switch
       (1
        `(* ,@list-variables
            (ccl::?if
             (if (member (abs (- (second (list ,@variables)) (first (list ,@variables))))
                         ',(pw::g-abs intervals)) ,weight 0))))
       (2
        `(* ,@list-variables
            (ccl::?if
             (if (member (- (second (list ,@variables)) (first (list ,@variables)))
                         ',(pw::g-abs intervals)) ,weight 0))))
       (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))




(define-box no-consecutive-equal-intervals-rule ((how-many 3)
						      (mode? :true/false)
						      (absolute? :absolute)
						      (weight 1))
  "This rule does not allow any repetition of intervals for a length put in 'how-many'.
If the menu 'absolute?' is 'absolute, that means that intervals are
intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  :menu (absolute? :absolute :up/down)
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
	     (ccl::?if (not (and ,.(first (nreverse ris))))))))
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
	     (ccl::?if (not (and ,.(first (nreverse ris))))))))
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
	     (ccl::?if
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
	     (ccl::?if
	      (if (not (and ,.(first (nreverse ris)))) ,weight 0)))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box obliged-interval-chain-rule ((interval 3)
                                         (int-list (1 2))
                                         (mode? :true/false)
                                         (absolute? :absolute)
                                         (weight 1))
  "This rule obliges an interval to be followed by those put in int-list.
If the menu 'absolute?' is 'absolute, that means that intervals are
intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  :menu (absolute? :absolute :up/down)
  (mode-switch
    (1
     (absolute-switch
       (1
        `(* ?1 ?2 ?3
              (ccl::?if (if (= (abs (- ?2 ?1)) ,interval) (member (abs (- ?3 ?2)) ',int-list) t))))
       (2
        `(* ?1 ?2 ?3
              (ccl::?if (if (= (- ?2 ?1) ,interval) (member (- ?3 ?2) ',int-list) t))))
       (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (2
     (absolute-switch
       (1
        `(* ?1 ?2 ?3
              (ccl::?if (if (if (= (abs (- ?2 ?1)) ,interval) (member (abs (- ?3 ?2)) ',int-list) t) ,weight 0))))
       (2
        `(* ?1 ?2 ?3
              (ccl::?if (if (if (= (- ?2 ?1) ,interval) (member (- ?3 ?2) ',int-list) t) ,weight 0))))
       (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))





(define-box not-obliged-interval-chain-rule ((interval 3)
                                             (int-list (1 2))
                                             (mode? :true/false)
                                             (absolute? :absolute)
                                             (weight 1))
  "This rule obliges an interval NOT to be followed by those put in int-list.
If the menu 'absolute?' is 'absolute, that means that intervals are
intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  :menu (absolute? :absolute :up/down)
  (mode-switch
    (1
     (absolute-switch
       (1
        `(* ?1 ?2 ?3
            (ccl::?if (if (= (abs (- ?2 ?1)) ,interval) (not (member (abs (- ?3 ?2)) ',int-list)) t))))
       (2
        `(* ?1 ?2 ?3
            (ccl::?if (if (= (- ?2 ?1) ,interval) (not (member (abs (- ?3 ?2)) ',int-list)) t))))
       (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (2
     (absolute-switch
       (1
        `(* ?1 ?2 ?3
            (ccl::?if (if (if (= (abs (- ?2 ?1)) ,interval) (not (member (abs (- ?3 ?2)) ',int-list)) t) ,weight 0))))
       (2
        `(* ?1 ?2 ?3
            (ccl::?if (if (if (= (- ?2 ?1) ,interval) (not (member (abs (- ?3 ?2)) ',int-list)) t) ,weight 0))))
       (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))










(define-box repeat-interval-rule ((interval 3) (which? 1) (times 3)
                                  (mode? :true/false) (weight 1))
  "This rule obliges a solution to have a given interval repeated many times as indicated in time. The interval is considered ins the absolute mode. If the menu which? is set on <, it means that the given interval has to be repeated a number of time inferior to the one put in times. If the menu which? is set on =, it means that the given interval has to be repeated a number of time equal to the one put in times.
If the menu which? is set on >, it means that the given interval has to be repeated a number of times bigger than the one put in times.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (which? (1 "<") (2 "=") (3 ">"))
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
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
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (,(first (nreverse rus))
		 (count ',(first (nreverse ris)) (pw::g-abs (pw::x->dx ccl::l)))
		 ',(first (nreverse ros)))
              t))))
      (2
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (if (,(first (nreverse rus))
		     (count ',(first (nreverse ris))
			    (pw::g-abs (pw::x->dx ccl::l)))
		     ',(first (nreverse ros)))
                    ,weight
                  0)
              t))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))





(define-box repeat-resulting-interval-rule ((resulting-interval 3)
						 (which? 1)
						 (times 3)
						 (mode? :true/false)
						 (weight 1))
  "This rule obliges a solution to have a given resulting-interval repeated many times as indicated in time. A resulting interval is an interval between a note with any possible other notes. In this sense, look at the function find-all-intervals (that you can call using the package jbs-constraints::find-all-intervals). This function gives all the interval between all notes of a sequence. So a resulting interval is an interval that is the result of the function find-all-intervals.

If the menu which? is set on <, it means that the given interval has to be repeated a number of time inferior to the one put in times. If the menu which? is set on =, it means that the given interval has to be repeated a number of time equal to the one put in times.
If the menu which? is set on >, it means that the given interval has to be repeated a number of times bigger than the one put in times.

ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (which? (1 "<") (2 "=") (3 ">"))
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
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
    (push times ros)
    (push segno rus)
    (mode-switch
     (1
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (,(first (nreverse rus))
		 (count ',(first (nreverse ris))
			(pw::flat (find-all-intervals ccl::l)))
		 ',(first (nreverse ros)))
	       t))))
     (2
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (,(first (nreverse rus))
		     (count ',(first (nreverse ris))
			    (pw::flat (find-all-intervals ccl::l)))
		     ',(first (nreverse ros)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box index-interval-rule ((index 2)
                                 (allowed (2 4)) (absolute? :absolute)
                                 (mode? :true/false) (weight 1))
  "This rule obliges a given interval indicated with 'index' to be a member of a list
of possible intervals indicated in 'allowed'. If the menu 'absolute?' is 'absolute,
that means that intervals are intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (absolute? :absolute :up/down)
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((ris nil)
	 (candidati (make-?1-from-to 1 (+ index 2)))
	 (indice
	  (nth index
	       (genero-lista-differenza-uguale
		(mapcar 'reverse
			(scom (make-?1-from-to 1 (+ index 2))
			      2)))))
	 (ros nil))
    (push indice ris)
    (push allowed ros)
    (mode-switch
      (1
       (absolute-switch
         (1
          `(* ,@candidati
              (ccl::?if
               (member (abs ,(first (nreverse ris))) ',(first (nreverse ros))))))
         (2
          `(* ,@candidati
              (ccl::?if
               (member ,(first (nreverse ris)) ',(first (nreverse ros))))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (2
       (absolute-switch
         (1
          `(* ,@candidati
              (ccl::?if
               (if (member (abs ,(first (nreverse ris)))
                           ',(first (nreverse ros)))
                   ,weight
                 0))))
         (2
          `(* ,@candidati
              (ccl::?if
               (if (member ,(first (nreverse ris)) ',(first (nreverse ros)))
                   ,weight
                 0))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box not-index-interval-rule ((index 2)
                                     (allowed (2 4)) (absolute? :absolute)
                                     (mode? :true/false) (weight 1))
  "This rule obliges a given interval indicated with 'index' NOT to be a member of a list
of possible intervals indicated in 'allowed'. If the menu 'absolute?' is 'absolute,
that means that intervals are intented in absolute mode. If this menu is 'up/down', that means that
the intervals are divided into ascending and descending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (absolute? :absolute :up/down)
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((ris nil)
	 (candidati (make-?1-from-to 1 (+ index 2)))
	 (indice
	  (nth index
	       (genero-lista-differenza-uguale
		(mapcar 'reverse
			(scom (make-?1-from-to 1 (+ index 2))
			      2)))))
	 (ros nil))
    (push indice ris)
    (push allowed ros)
    (mode-switch
      (1
       (absolute-switch
         (1
          `(* ,@candidati
              (ccl::?if
               (not (member (abs ,(first (nreverse ris))) ',(first (nreverse ros)))))))
         (2
          `(* ,@candidati
              (ccl::?if
               (not (member ,(first (nreverse ris)) ',(first (nreverse ros)))))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (2
       (absolute-switch
         (1
          `(* ,@candidati
              (ccl::?if
               (if (not (member (abs ,(first (nreverse ris)))
                           ',(first (nreverse ros))))
                   ,weight
                 0))))
         (2
          `(* ,@candidati
              (ccl::?if
               (if (not (member ,(first (nreverse ris)) ',(first (nreverse ros))))
                   ,weight
                 0))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
#|

(define-box old-not-higher-interval-rule ((limit 6) (mode? :true/false) (weight 1))
  "This function does not allow interval higher than the one entered in 'limit'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
     (1
      `(* ?1
	  ?2
	  (ccl::?if
	   (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))))))
     (2
      `(* ?1
	  ?2
	  (ccl::?if
	   (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



|#
(define-box not-bigger-interval-rule ((limit 6) (sign? :+/-) (mode? :true/false) (weight 1))
  "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.
If you chose '+', it means that this function does not allow interval higher than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval higher than the one entered in 'limit' only for negatif interval.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :menu (sign? (1 "+") (2 "-") (3 "absolute"))
  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
      (1
       (case sign?
         (1 
          `(* ?1
              ?2
              (ccl::?if
               (if (>= (- ?2 ?1) 0)
                   (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (2 
          `(* ?1
              ?2
              (ccl::?if
               (if (<= (- ?2 ?1) 0)
                   (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (3 
          `(* ?1
              ?2
              (ccl::?if
               (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))))))))
      (2
       (case sign?
         (1 
          `(* ?1
              ?2
              (ccl::?if
               (if (>= (- ?2 ?1) 0)
                   (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (2 
          `(* ?1
              ?2
              (ccl::?if
               (if (<= (- ?2 ?1) 0)
                   (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (3 
          `(* ?1
              ?2
              (ccl::?if
              (if (not (> (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))))
         
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

#|
(define-box old-not-lower-interval-rule ((limit 600) (mode? :true/false) (weight 1))
  "This function does not allow interval lower than the one entered in 'limit'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
     (1
      `(* ?1
	  ?2
	  (ccl::?if
	   (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))))))
     (2
      `(* ?1
	  ?2
	  (ccl::?if
	   (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



|#

(define-box not-smaller-interval-rule ((limit 6) (sign? :+/-) (mode? :true/false) (weight 1))
  "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.
If you chose '+', it means that this function does not allow interval lower than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval lower than the one entered in 'limit' only for negatif interval.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :menu (sign? (1 "+") (2 "-") (3 "absolute"))
  :class pmc-box
  (let ((ris nil))
    (push limit ris)
    (mode-switch
      (1
       (case sign?
         (1 
          `(* ?1
              ?2
              (ccl::?if
               (if (> (- ?2 ?1) 0)
                   (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (2 
          `(* ?1
              ?2
              (ccl::?if
               (if (< (- ?2 ?1) 0)
                   (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) t))))
         (3 
          `(* ?1
              ?2
              (ccl::?if
               (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))))))))
      (2
       (case sign?
         (1 
          `(* ?1
              ?2
              (ccl::?if
               (if (> (- ?2 ?1) 0)
                   (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (2 
          `(* ?1
              ?2
              (ccl::?if
               (if (< (- ?2 ?1) 0)
                   (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0) t))))
         (3 
          `(* ?1
              ?2
              (ccl::?if
              (if (not (< (abs (- ?2 ?1)) ',(first (nreverse ris)))) ,weight 0))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box resulting-interval-rule ((interval 6) (mode? :true/false) (weight 1))
  "A resulting interval is an interval between a note of a sequence with any possible other notes of the same sequence. In this sense, look at the function find-all-intervals (that you can call using the package jbs-constraints::find-all-intervals). This function gives all the interval between all notes of a sequence. So a resulting interval is an interval that is the result of the function find-all-intervals.
Resulting-interval-rule [1] obliges the solution to have, among all the intervals among all eh notes of the sequence, the defined interval. 
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push interval ris)
    (mode-switch
     (1
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (member ',(first (nreverse ris))
		       (pw::flat
			(pw::g-abs (find-all-intervals ccl::l))))
	       t))))
     (2
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (member ',(first (nreverse ris))
			   (pw::flat
			    (pw::g-abs
			     (find-all-intervals ccl::l))))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box no-resulting-interval-rule ((interval 6)
                                        (mode? :true/false)
                                        (weight 1))
  "This rule does not allow the existence of the given 'interval' even as the result
of the verticality of all the elements of a solution.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push interval ris)
    (mode-switch
      (1
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (not (member ',(first (nreverse ris))
                             (pw::flat
                              (pw::g-abs
                               (find-all-intervals ccl::l)))))
              t))))
      (2
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (if (not (member ',(first (nreverse ris))
                                 (pw::x->dx
                                  (sort (copy-list ccl::l) #'<))))
                    ,weight
                  0)
              t))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box jump-resolution-rule ((interval 6)
                                  (resolution 2)
                                  (mode? :true/false)
                                  (weight 1))
  "If an interval is higher than the value put in interval, the next interval as to go in the opposite direction and it has to be smaller than the value put in resolution."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
    (1
     `(* ccl::?1 ccl::?2 ccl::?3 (ccl::?if
                                  (let ((ccl::int1 (- ccl::?2 ccl::?1)) 
                                        (ccl::int2 (- ccl::?3 ccl::?2)))
                                    (if (< (abs ccl::int1) ,interval) T 
                                      (and (< (abs ccl::int2) ,resolution) 
                                           (not (= (signum ccl::int1) (signum ccl::int2)))))))))
    (2
     `(* ccl::?1 ccl::?2 ccl::?3 (ccl::?if
                                  (let ((ccl::int1 (- ccl::?2 ccl::?1)) 
                                        (ccl::int2 (- ccl::?3 ccl::?2)))
                                    (if (if (< (abs ccl::int1) ,interval) T 
                                          (and (< (abs ccl::int2) ,resolution) 
                                               (not (= (signum ccl::int1) (signum ccl::int2)))))
                                        ,weight
                                      0)
                                    t))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box do-reach-that-interval-rule ((how-many 4)
                                         (interval 12)
                                         (mode? :true/false)
                                         (weight 1))
  "Does reach a given interval in how-many notes"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (setq calcola (list (jbs-constraints::make-?1 how-many)
                      (jbs-constraints::make-?1 1)))
  (let* ((ris nil)
         (candidates (make-?1-from-to  1 how-many))
         (creo-i-simboli 
          (jbs-constraints::genero-lista-segno-meno (mapcar 'reverse (scom candidates 2))))
         (creo-signum (jbs-constraints::genero-signum (mapcar 'list creo-i-simboli))))
    (push creo-signum ris)
    (mode-switch
      (1
       `(* ,@(jbs-constraints::make-?1 (pw::arithm-ser 1 1 how-many))
           (ccl::?if
            (and (= ,.(first (nreverse ris)))
                 (= (abs (- ,@calcola)) ,interval)))))
    (2
     `(* ,@(jbs-constraints::make-?1 (pw::arithm-ser 1 1 how-many))
         (ccl::?if
          (if (and (= ,.(first (nreverse ris)))
                   (= (abs (- ,@calcola)) ,interval))
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box do-not-reach-that-interval-rule ((how-many 6)
                                             (interval 2)
                                             (mode? :true/false)
                                             (weight 1))
  "Does not reach a given interval in how-many notes"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (setq calcola (list (jbs-constraints::make-?1 how-many)
                      (jbs-constraints::make-?1 1)))
  (let* ((ris nil)
         (candidates (make-?1-from-to  1 how-many))
         (creo-i-simboli 
          (jbs-constraints::genero-lista-segno-meno (mapcar 'reverse (scom candidates 2))))
         (creo-signum (jbs-constraints::genero-signum (mapcar 'list creo-i-simboli))))
    (push creo-signum ris)
    (mode-switch
      (1
       `(* ,@(jbs-constraints::make-?1 (pw::arithm-ser 1 1 how-many))
           (ccl::?if
            (not (and (= ,.(first (nreverse ris)))
                      (>= (abs (- ,@calcola)) ,interval))))))
      (2
       `(* ,@(jbs-constraints::make-?1 (pw::arithm-ser 1 1 how-many))
           (ccl::?if
            (if (not (and (= ,.(first (nreverse ris)))
                          (>= (abs (- ,@calcola)) ,interval)))
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



(define-box apply-interval-sum-rule ((sum 26) (mode? :true/false) (weight 1))
  "This rule outputs a solution having the the sum of all intervals equal to the value put in sum.
First it makes the x->dx of all intervals and then it applies '+ to all.
ATTENTION : in the mode true/false, does NOT work: because of SLEN"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
    (1
     `(* (ccl::?if
          (if (= ccl::len (ccl::cur-slen))
              (= ,sum (apply '+ (pw::g-abs (pw::x->dx ccl::l))))
            t))))
    (2
     `(* (ccl::?if
          (if (if (= ccl::len (ccl::cur-slen))
                  (= ,sum (apply '+ (pw::g-abs (pw::x->dx ccl::l))))
                t)
              ,weight
            0)
          t)))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box apply-interval-global-sum-rule ((sum 26) (mode? :true/false) (weight 1))
  "This rule outputs a solution having the the sum of all intervals equal to the value put in sum.
First it makes the x->dx of all intervals and then it applies '+ to all.
ATTENTION : in the mode true/false, does NOT work: because of SLEN"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
    (1
     `(* (ccl::?if
          (if (= ccl::len (ccl::cur-slen))
              (= ,sum (apply '+ (pw::flat (find-all-intervals (pw::sort-list ccl::l)))))
            t))))
    (2
     `(* (ccl::?if
          (if (if (= ccl::len (ccl::cur-slen))
                  (= ,sum (apply '+ (pw::g-abs (pw::x->dx ccl::l))))
                t)
              ,weight
            0)
          t)))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box not-complementary-interval-rule ((interval 12) (mode? :true/false) (weight 1))
  "This rule does not allow the existence of a given interval as the product of two consecutive
intervals.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	(ccl::?if
	 (not (member (abs (- ?1 ,interval)) ccl::l)))))
   (2
    `(* ?1
	(ccl::?if
	 (if (not (member (abs (- ?1 ,interval)) ccl::l)) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box interval-structure-rule ((interval-structure
					   (2 3 -1 7))
					  (mode? :true/false)
					  (weight 1))
  "This rule obliges elements to have the given 'interval-structure'.
N.B. BE CAREFULL: the number of intervals put in 'interval-stricture' has to be
one element less than the number of candidates you put in the search space!.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((ris nil)
	 (candidati
	  (make-?1-from-to 1 (1+ (length interval-structure))))
	 (ros nil))
    (push interval-structure ris)
    (push candidati ros)
    (mode-switch
     (1
      `(* ,@candidati
	  (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (eq-ints? ',(first (nreverse ris)) ,.(first (nreverse ros)))
	       t))))
     (2
      `(* ,@candidati
	  (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (eq-ints? ',(first (nreverse ris)) ,.(first (nreverse ros)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box not-interval-structure-rule ((interval-structure (5 4))
					      (mode? :true/false)
					      (weight 1))
  "This rule obliges elements not to have the given 'interval-structure'.
N.B. BE CAREFULL: the number of intervals put in 'interval-stricture' has to be
one element less than the number of candidates you put in the search space!.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((ris nil)
	 (candidati
	  (make-?1-from-to 1 (1+ (length interval-structure))))
	 (ros nil))
    (push interval-structure ris)
    (push candidati ros)
    (mode-switch
     (1
      `(* ,@candidati
	  (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (not (eq-ints? ',(first (nreverse ris))
			      ,.(first (nreverse ros))))
	       t))))
     (2
      `(* ,@candidati
	  (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (not (eq-ints? ',(first (nreverse ris))
				  ,.(first (nreverse ros))))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;
(define-box count-positive-intervals-rule ((number 2) (mode? :true/false) (weight 1))
  "The solution must have a number of positive intrevals as indicatd in number.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule DOES NOT WORK because of Slen..."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push number ris)
    (mode-switch
      (1
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (= (count-positif (pw::x->dx ccl::l)) ',(first (nreverse ris)))
              t))))
      (2
       `(* (ccl::?if
            (if (if (= ccl::len (ccl::cur-slen))
                    (= (count-positif (pw::x->dx ccl::l)) ',(first (nreverse ris)))
                  t)
                ,weight
              0)
            t)))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

;
;
;
(define-box count-negative-intervals-rule ((number 2) (mode? :true/false) (weight 1))
  "The solution must have a number of negative intrevals as indicatd in number.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule DOES NOT WORK because of Slen..."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push number ris)
    (mode-switch
      (1
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (= (count-negatif (pw::x->dx ccl::l)) ',(first (nreverse ris)))
              t))))
      (2
       `(* (ccl::?if
            (if (if (= ccl::len (ccl::cur-slen))
                    (= (count-negatif (pw::x->dx ccl::l)) ',(first (nreverse ris)))
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
(define-menu pitch-rules :in pmc-rules)
(in-menu pitch-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(define-box allowed-pitch-rule ((pitch (60 62)) (mode? :true/false) (weight 1))
  "Only the pitches indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push pitch ris)
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if
	   (member (first (my-mod (list ?1)))
		   (my-mod ',(first (nreverse ris)))))))
     (2
      `(* ?1
	  (ccl::?if
	   (if (member (first (my-mod (list ?1)))
		       (my-mod ',(first (nreverse ris))))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

(define-box not-allowed-pitch-rule ((pitch (60 62))
					 (mode? :true/false)
					 (weight 1))
  "Only the pitches indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push pitch ris)
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if
	   (not (member (first (my-mod (list ?1)))
			(my-mod ',(first (nreverse ris))))))))
     (2
      `(* ?1
	  (ccl::?if
	   (if (not (member (first (my-mod (list ?1)))
			    (my-mod ',(first (nreverse ris)))))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box allowed-polarized-pitch-rule ((pitch (60 62))
                                          (mode? :true/false)
                                          (weight 1))
  "Only the pitches indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((modulos (pw::g-mod pitch 12)))
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if (if (member (mod ?1 12) ',modulos)
                        (member ?1 ',pitch)
                      t))))
     (2
      `(* ?1
	  (ccl::?if
	   (if (if (member (mod ?1 12) ',modulos)
                        (member ?1 ',pitch)
                      t)
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


;
;
;
(define-box allowed-pitch-structure-rule ((pitch (60 63 67))
                                          (mode? :true/false)
                                          (weight 1))
  "Only the pitches indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil)
        (pitch (ccl::sc+off pitch)))
    (push pitch ris)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (equalp (ccl::sc+off ccl::l)
                        ',(first (nreverse ris))) t))))
      (2
       `(* ?1
           (ccl::?if
            (if (if (= ccl::len (ccl::cur-slen))
                    (equalp (ccl::sc+off ccl::l)
                            ',(first (nreverse ris))) t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;
(define-box allowed-pitch-class-rule ((pitch (60 63 67))
                                          (mode? :true/false)
                                          (weight 1))
  "Only the class (for instance minor triad) indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil)
        (pitch (ccl::sc-name pitch)))
    (push pitch ris)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (equalp (ccl::sc-name ccl::l)
                        ',(first (nreverse ris))) t))))
      (2
       `(* ?1
           (ccl::?if
            (if (if (= ccl::len (ccl::cur-slen))
                    (equalp (ccl::sc-name ccl::l)
                            ',(first (nreverse ris))) t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;
(define-box allowed-pitch-class-sub-list-rule ((pitch (60 63 67))
                                               (mode? :true/false)
                                               (weight 1))
  "This function outputs a solution having only the class (for instance minor triad) indicated in 
'pitch' will be allowed in any octave including also other notes. That means that is I'm looking
for a minor triad in a 5 notes chord, the solution will look if a minor triad exists inside the 5 notes chord.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil)
        (class (ccl::sc-name pitch)))
    (push class ris)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (find ',(first (nreverse ris))
                      (mapcar #'(lambda (x) (ccl::sc-name x)) (jbs-constraints::scom ccl::l (length ',pitch)))
                      :test 'equalp)
              t))))
      (2
       `(* ?1
           (ccl::?if
            (if (if (= ccl::len (ccl::cur-slen))
                    (find ',(first (nreverse ris))
                          (mapcar #'(lambda (x) (ccl::sc-name x)) (jbs-constraints::scom ccl::l (length ',pitch)))
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
(define-box not-allowed-pitch-structure-rule ((pitch (60 63 67))
                                              (mode? :true/false)
                                              (weight 1))
  "Only the pitches indicated in 'pitch' will be allowed in any octave and in any position.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil)
        (pitch (ccl::sc+off pitch)))
    (push pitch ris)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (not (equalp (ccl::sc+off ccl::l)
                        ',(first (nreverse ris)))) t))))
      (2
       `(* ?1
           (ccl::?if
            (if (if (= ccl::len (ccl::cur-slen))
                (not (equalp (ccl::sc+off ccl::l)
                        ',(first (nreverse ris)))) t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;
(define-box not-allowed-pitch-class-rule ((pitch (60 63 67))
                                          (mode? :true/false)
                                          (weight 1))
  "Only the class (for instance a minor triad) indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil)
        (pitch (ccl::sc-name pitch)))
    (push pitch ris)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (not (equalp (ccl::sc-name ccl::l)
                             ',(first (nreverse ris)))) t))))
      (2
       `(* ?1
           (ccl::?if
            (if (if (= ccl::len (ccl::cur-slen))
                    (not (equalp (ccl::sc-name ccl::l)
                                 ',(first (nreverse ris)))) t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box not-allowed-pitch-class-sub-list-rule ((pitch (60 63 67))
                                                   (mode? :true/false)
                                                   (weight 1))
  "This function outputs a solution having only the class (for instance minor triad) indicated in 
'pitch' will NOT be allowed in any octave including also other notes. That means that is I'm looking
for NOT HAVING a minor triad in a 5 notes chord, the solution will look if a minor triad exists inside the 5 notes chord.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule does not work because of SLEN..."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil)
        (class (ccl::sc-name pitch)))
    (push class ris)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (not (find ',(first (nreverse ris))
                           (mapcar #'(lambda (x) (ccl::sc-name x)) (jbs-constraints::scom ccl::l (length ',pitch)))
                           :test 'equalp))
              t))))
      (2
       `(* ?1
           (ccl::?if
            (if (if (= ccl::len (ccl::cur-slen))
                    (not (find ',(first (nreverse ris))
                               (mapcar #'(lambda (x) (ccl::sc-name x)) (jbs-constraints::scom ccl::l (length ',pitch)))
                               :test 'equalp))
                  t)
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box index-pitch-rule ((index i1) (pitch (60 62)) (mode? :true/false)
				   (weight 1))
  "For the give index (i1, i2, i3...) only the pitches indicated in 'pitch' will be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ,index
	(ccl::?if
	 (member (first (my-mod (list ,index))) (my-mod ',pitch)))))
   (2
    `(* ,index
	(ccl::?if
	 (if (member (first (my-mod (list ,index))) (my-mod ',pitch))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box not-index-pitch-rule ((index i1) (pitch (60 62)) (mode? :true/false)
				       (weight 1))
  "For the give index (i1, i2, i3...) only the pitches indicated in 'pitch' will NOT be allowed in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ,index
	(ccl::?if
	 (not (member (first (my-mod (list ,index))) (my-mod ',pitch))))))
   (2
    `(* ,index
	(ccl::?if
	 (if (not (member (first (my-mod (list ,index))) (my-mod ',pitch)))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))





(define-box any-note-repeated-rule ((times 2)
					 (which? 1)
					 (mode? :true/false)
					 (weight 1))
  "Any notes has to be repeated (in modulo too) a less, exactly or more times as indicated in 'times'.
N.B. BE CAREFULL: the menu which? defines less, equal or more.
If <, the calculation is quite fast.
If =, be sure to have a 'pari' number of candidates in the esarch space.
If >, the calculation can be very slow.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (which? (1 "<") (2 "=") (3 ">"))
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((ros nil))
    (push times ros)
    (mode-switch
     (1
      (case which?
	(1
	 `(* ?1
	     (ccl::?if
	      (<= (count (mod ?1 12) (my-mod ccl::rl))
		  ,(first (nreverse ros))))))
	(2
	 `(* (ccl::?if
	      (if (= ccl::len (ccl::cur-slen))
		  (count-exactly-any-element (my-mod ccl::l)
					     ,(first (nreverse ros)))
		  t))))
	(3
	 `(* (ccl::?if
	      (if (= ccl::len (ccl::cur-slen))
		  (count-exactly-for-bigger-element (my-mod ccl::l)
						    ,(first (nreverse ros)))
		  t))))
	(otherwise (error "Got ~s, was expecting one of 1, 2, 3." which?))))
     (2
      (case which?
	(1
	 `(* ?1
	     (ccl::?if
	      (if (<= (count (mod ?1 12) (my-mod ccl::rl))
		      ,(first (nreverse ros)))
		  ,weight
		  0))))
	(2
	 `(* (ccl::?if
	      (if (= ccl::len (ccl::cur-slen))
		  (if (count-exactly-any-element (my-mod ccl::l)
						 ,(first (nreverse ros)))
		      ,weight
		      0)
		  t))))
	(3
	 `(* (ccl::?if
	      (if (= ccl::len (ccl::cur-slen))
		  (if (count-exactly-for-bigger-element
		       (my-mod ccl::l) ,(first (nreverse ros)))
		      ,weight
		      0)
		  t))))
	(otherwise (error "Got ~s, was expecting one of 1, 2, 3." which?))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box count-this-note-rule ((note 68) (how-many 3) (mode? :true/false) (weight 1))
  "This rule obliges a solution to have the given note repeated many times as indicated in 'how-many inthe exact octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (count-this-element ,note ccl::l
					  ,how-many)
	       t))))
     (2
      `(* ?1
	  ?2
	  (ccl::?if
	   (if (if (= ccl::len (ccl::cur-slen))
		   (count-this-element ,note ccl::l
					      ,how-many)
		   t)
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))



(define-box count-this-modulo-rule ((note 68) (how-many 3) (mode? :true/false) (weight 1))
  "This rule obliges a solution to have a given note repeated many times as indicated in 'how-many, in any possible octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
    (1
     `(* ?1
         (ccl::?if
          (if (= ccl::len (ccl::cur-slen))
              (count-this-element (mod ,note 12) (pw::g-mod ccl::l 12)
                                  ,how-many)
            t))))
    (2
     `(* ?1
         ?2
         (ccl::?if
          (if (if (= ccl::len (ccl::cur-slen))
                  (count-this-element (mod ,note 12) (pw::g-mod ccl::l 12)
                                      ,how-many)
                t)
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))




(define-box not-repeated-modulo12-sub-group-rule ((sub-group-length 4)
						       (mode? :true/false)
						       (weight 1))
  "There are no modulo 12 repetition inside each sub group indicated with 'sub-group-length'.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((candidates (make-?1-from-to 1 sub-group-length))
	 (rest-candidates (rest candidates))
	 (lungo? sub-group-length))
    (mode-switch
     (1
      `(* ,@candidates
	  (ccl::?if
	   (and (not (member (first (my-mod (list ?1)))
			     (my-mod (list ,@rest-candidates))))
		(if (= ccl::len (ccl::cur-slen))
		    (trova-ripetizioni
		     (morphologie::ptrn-reson (my-mod ccl::l) ,lungo?))
		    t)))))
     (2
      `(* ,@candidates
	  (ccl::?if
	   (if (not (member (first (my-mod (list ?1)))
			    (my-mod (list ,@rest-candidates))))
	       ,weight
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box not-modulo12-repetition-rule ((mode? :true/false) (weight 1))
  "This rule allows only solution without any repetition in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	(ccl::?if
	 (not (member (mod ?1 12)
		      (mapcar #'(lambda (x) (mod x 12))
			      (rest ccl::rl)))))))
   (2
    `(* ?1
	(ccl::?if
	 (if (not (member (mod ?1 12)
			  (mapcar #'(lambda (x) (mod x 12))
				  (rest ccl::rl))))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))






(define-box not-modulo12-local-repetition-rule ((mode? :true/false) (weight 1))
  "This rule allows only solution without any LOCAL repetition in any octave.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
    (1
     `(* ?1 ?2
         (ccl::?if
          (/= (mod ?1 12) (mod ?2 12)))))
    (2
     `(* ?1 ?2
         (ccl::?if
          (if (/= (mod ?1 12) (mod ?2 12))
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))









(define-box mk-profile-pitch-rule ((curve-min 60)
                                   (curve-max 72)
                                   (steps 10)
                                   (profile nil)
                                   (approx 2)
                                   (mode? :true/false)
                                   (weight 1))
  "This rule asks the engine to put out a solution identical to the one put in profile.
As you understand, this rule is usefull only as heuristic!
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil)
	(ros nil)
	(mia-curva
	 (pw::approx-midi (pw::g-scaling (ccl::pwgl-sample profile steps) curve-min curve-max) approx)))
    (push mia-curva ris)
    (push weight ros)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (equalp ?1
                    (nth (1- ccl::len)
                         ',(pw::flat-once (nreverse ris)))))))
      (2
       `(* ?1
           (ccl::?if
            (- ,(first (nreverse ros))
               (abs (- ?1
                       (nth (1- ccl::len)
                            ',(pw::flat-once (nreverse ris)))))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box mk-profile-pitch-modulo-rule ((pitches (60 62 64 65))
					       (mode? :true/false)
					       (weight 1))
  "This rule asks the engine to put out a solution of pitches having the same modulo 12 of the given profile.
It is a OTTAVIATORE.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((ris nil) (moduli (my-mod pitches)))
    (push moduli ris)
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if
	   (equalp (mod ?1 12)
		   (nth (1- ccl::len)
			',(pw::flat-once (nreverse ris)))))))
     (2
      `(* ?1
	  (ccl::?if
	   (if (equalp (mod ?1 12)
		       (nth (1- ccl::len)
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
(define-menu shaping-rules :in pmc-rules)
(in-menu shaping-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(define-box ascending-rule ((mode? :true/false) (weight 1))
  "This rule obliges all the value to be ascending.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* (ccl::?if
	 (apply '<= l))))
   (2
    `(* (ccl::?if
	 (if (apply '<= l)
		 ,weight
		 0)
	     )))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box ascending-without-repetition-rule ((mode? :true/false) (weight 1))
  "This rule obliges all the value to be ascending without any repetition.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 (ccl::?if (apply #'< ccl::l))))
   (2
    `(* ?1
	(ccl::?if (if (apply #'< ccl::l) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box ascending-sub-group-no-repet-rule ((nth-? 0)
						    (mode? :true/false)
						    (weight 1))
  "This rule obliges the nth (put in nth-?) values of a list of lists to be ascending without any repetition.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	(ccl::?if
	 (apply #'<
		(mapcar #'(lambda (x) (nth ,nth-? x)) ccl::l)))))
   (2
    `(* ?1
	(ccl::?if
	 (if (apply #'<
		    (mapcar #'(lambda (x) (nth ,nth-? x)) ccl::l))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box ascending-sub-group-with-repet-rule ((nth-? 0)
						      (mode? :true/false)
						      (weight 1))
  "This rule obliges the nth (put in nth-?) values of a list of lists to be ascending with repetitions.
ATTENTION : The Heuristic implementation can not work."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* (ccl::?if
	 (if (= ccl::len (ccl::cur-slen))
	     (equalp (sort (copy-list (mapcar #'(lambda (x) (nth ,nth-? x))
					      ccl::l))
			   #'<)
		     (mapcar #'(lambda (x) (nth ,nth-? x)) ccl::l))
	     t))))
   (2 nil)
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box descending-rule ((mode? :true/false) (weight 1))
  "This rule obliges all the value to be descending
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
    (1
     `(* (ccl::?if
          (apply '>= l))))
    (2
     `(* (ccl::?if
          (if (apply '>= l)
              ,weight
            0)
          )))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box descending-without-repetition-rule ((mode? :true/false) (weight 1))
  "This rule obliges all the value to be descending without any repetition.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 (ccl::?if (apply #'> ccl::l))))
   (2
    `(* ?1
	(ccl::?if (if (apply #'> ccl::l) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box descending-sub-group-no-repet-rule ((nth-? 0)
						     (mode? :true/false)
						     (weight 1))
  "This rule obliges the nth (put in nth-?) values of a list of lists to be descending without any repetition.
ATTENTION : THE HEURISTIC MODE IT IS NOT WORKING"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	(ccl::?if
	 (apply #'>
		(mapcar #'(lambda (x) (nth ,nth-? x)) ccl::l)))))
   (2
    `(* ?1
	(ccl::?if
	 (if (apply #'>
		    (mapcar #'(lambda (x) (nth ,nth-? x)) ccl::l))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box descending-sub-group-with-repet-rule ((nth-? 0)
						       (mode? :true/false)
						       (weight 1))
  "This rule obliges the nth (put in nth-?) values of a list of lists to be descending with repetitions.
ATTENTION : The Heuristic implementation can not work."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* (ccl::?if
	 (if (= ccl::len (ccl::cur-slen))
	     (equalp (reverse (sort (copy-list (mapcar
						#'(lambda (x) (nth ,nth-? x))
						ccl::l))
				    #'<))
		     (mapcar #'(lambda (x) (nth ,nth-? x)) ccl::l))
	     t))))
   (2 nil)
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box mk-fix-profile-rule ((profile (60 63 70 74)) (mode? :true/false)
                                 (weight 1))
  "This rule asks the engine to put out a solution identical to the one put in profile.
As you understand, this rule is usefull only as heuristic!
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (ros nil))
    (push profile ris)
    (push weight ros)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (equalp ?1
                    (nth (1- ccl::len)
                         ',(pw::flat-once (nreverse ris)))))))
      (2
       `(* ?1
           (ccl::?if
            (- ,(first (nreverse ros))
               (abs (- ?1
                       (nth (1- ccl::len)
                            ',(pw::flat-once (nreverse ris)))))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box mk-profile-rule ((curve-min 60) (curve-max 72) (steps 10)
                             (profile nil) (decimals 0)
                             (mode? :true/false) (weight 1))
  "This rule asks the engine to put out a solution identical to the one put in profile.
As you understand, this rule is usefull only as heuristic!
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil)
	(ros nil)
	(mia-curva
	 (pw::g-round (pw::g-scaling (ccl::pwgl-sample profile steps) curve-min curve-max) decimals)))
    (push mia-curva ris)
    (push weight ros)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (equalp ?1
                    (nth (1- ccl::len)
                         ',(pw::flat-once (nreverse ris)))))))
      (2
       `(* ?1
           (ccl::?if
            (- ,(first (nreverse ros))
               (abs (- ?1
                       (nth (1- ccl::len)
                            ',(pw::flat-once (nreverse ris)))))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box sub-group-mk-profile-rule ((curve-min 60)
                                       (curve-max 72)
                                       (nth-? 0)
                                       (steps 10)
                                       (profile
                                        nil)
                                       (mode? :true/false)
                                       (weight 1))
  "This rule asks the engine to put out a solution in which for
each sub-groups the nth (put in nth-?) has to be identical to the one put in profile.
As you understand, this rule is usefull only as heuristic!ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil)
	(ros nil)
	(mia-curva
	 (pw::g-round (pw::g-scaling (ccl::pwgl-sample profile steps) curve-min curve-max))))
    (push mia-curva ris)
    (mode-switch
      (1
       `(* ?1
           (ccl::?if
            (equalp (nth ,nth-? ?1)
                    (nth (1- ccl::len)
                         ',(pw::flat-once (nreverse ris)))))))
      (2
       `(* ?1
           (ccl::?if
            (- ,weight
               (abs (- (nth ,nth-? ?1)
                       (nth (1- ccl::len)
                            ',(pw::flat-once (nreverse ris)))))))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box direct-analysis-rule ((analysis (1 -1 0 1)) (mode? :true/false)
                                  (weight 1))
  "This rule asks the engine to put out a solution identical to the one put in profile.
As you understand, this rule is usefull only as heuristic!
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push analysis ris)
    (mode-switch
      (1
       `(* ?1
           ?2
           (ccl::?if
            (equalp (nth (- ccl::len 2) ',(pw::flat-once (nreverse ris)))
                (signum (- ?2 ?1))))))
      (2
       `(* ?1
           ?2
           (ccl::?if
            (if (equalp (nth (- ccl::len 2)
                         ',(pw::flat-once (nreverse ris)))
                    (signum (- ?2 ?1)))
                ,weight
              0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box energy-profile-rule ((energy-profile
                                  (32 22 18 19 40 12 1 249))
                                 (mode? :true/false) (weight 1))
  "
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (ros nil) (calcolo (morphologie::contrasts-lev.1 energy-profile)))
    (push calcolo ris)
    (mode-switch
      (1
       `(* (ccl::?if
            (if (equalp (MORPHOLOGIE:CONTRASTS-LEV.1 ccl::l) (jbs-cmi:first-n (MORPHOLOGIE:CONTRASTS-LEV.1 ',energy-profile) ccl::len)) T))))
      (2
       `(* (ccl::?if
            (if (if (equalp (MORPHOLOGIE:CONTRASTS-LEV.1 ccl::l) (jbs-cmi:first-n (MORPHOLOGIE:CONTRASTS-LEV.1 ',energy-profile) ccl::len)) T) 0 1))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box energy-profile-range-rule ((energy-profile
                                        (32 22 18 19 40 12 1 249))
                                       (range 10)
                                       (mode? :true/false) (weight 1))
  "
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
      (1
       `(* (ccl::?if
            (if (not (find nil (mapcar #'(lambda (x y) (print (<= (- y ,range) x (+ y ,range))))
                        (MORPHOLOGIE:CONTRASTS-LEV.1 ccl::l) (jbs-cmi:first-n (MORPHOLOGIE:CONTRASTS-LEV.1 ',energy-profile) ccl::len)))) T))))
      (2
       `(* (ccl::?if
            (if (if (equalp (MORPHOLOGIE:CONTRASTS-LEV.1 ccl::l) (jbs-cmi:first-n (MORPHOLOGIE:CONTRASTS-LEV.1 ',energy-profile) ccl::len)) T) 0 1))))
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
(define-menu pattern-rules :in pmc-rules)
(in-menu pattern-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(define-box ptrn-find-rule ((ptrn-length 2) (repeat-ptrn 3) (which? 1)
				 (mode? :true/false) (weight 1))
  "This rule looks for solutions having patterns with a giveen length of element
put in ptrn-length. In repeated-ptrn you have to put how many time do you
want the pattern to be repeated.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (which? (1 "<") (2 "<=") (3 "=") (4 "=>") (5 ">"))
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
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
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (,(first (nreverse rus))
		 (length (morphologie::ptrn-find ccl::l
						 ',(first (nreverse ris))))
		 ',(first (nreverse ros)))
	       t))))
     (2
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (,(first (nreverse rus))
		     (length (morphologie::ptrn-find ccl::l
						     ',(first (nreverse ris))))
		     ',(first (nreverse ros)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;

(define-box not-ptrn-find-rule ((ptrn-length 2) (repeat-ptrn 3) (mode? :true/false)
				     (weight 1))
  "This rule looks for solutions NOT having patterns with a giveen length of element
put in ptrn-length. In repeated-ptrn you have to put how many time do you
want the pattern to be repeated.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (ros nil))
    (push ptrn-length ris)
    (push repeat-ptrn ros)
    (mode-switch
     (1
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (not (= (length (morphologie::ptrn-find ccl::l
						       ',(first (nreverse ris))))
		       ',(first (nreverse ros))))
	       t))))
     (2
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (not (= (length (morphologie::ptrn-find ccl::l
							   ',(first (nreverse ris))))
			   ',(first (nreverse ros))))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))
;
;
;
(define-box find-this-ptrn-n-times-rule ((pattern (1 2 3))
                                         (repeat-ptrn 2)
                                         (mode? :true/false)
                                         (weight 1))
  "This rule looks for solutions having patterns with a giveen length of element
put in ptrn-length. In repeated-ptrn you have to put how many time do you
want the pattern to be repeated.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((ris nil) (ros nil))
    (push pattern ris)
    (push repeat-ptrn ros)
    (mode-switch
     (1
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (= (count-pattern ',(first (nreverse ris)) ccl::l)
		  ,(first (nreverse ros)))
	       t))))
     (2
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (= (count-pattern ',(first (nreverse ris)) ccl::l)
		  ,(first (nreverse ros)))
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



(define-box no-shape-pattern-lcl-repetition-rule ((ptrn-length 4)
                                                  
                                                   (mode? :true/false)
                                                   (weight 1))
  "This rule does not allow two consecutive pattern described in the dirct-analys format. In Italiano : questa regola 
non ammette due pattern consecutivi la cui descrizione è basata sul direct analys di morphologie: chiama Filippo se non ti ricordi..."
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let* ((candidati (jbs-constraints::make-?1 (pw::arithm-ser 1 1 (* 2 ptrn-length))))
         (first-candidate (jbs-cmi::first-n candidati ptrn-length))
         (last-candidate (jbs-cmi::last-n candidati ptrn-length)))
    (mode-switch
      (1
       `(* ,@candidati (?if (not (equalp  (morph::direct-analysis (list ,@first-candidate))
                                          (morph::direct-analysis (list ,@last-candidate)))))

                            ))
      (2
       `(* (ccl::?if
            )))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))




(define-box more-first-repeated-than-second-rule ((element-1 (2))
                                                  (element-2 (3))
                                                  (mode? :true/false)
                                                  (weight 1))
  "This rule asks the engine to have a solution with the first element repeated
more times than the second.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (ros nil))
    (push element-1 ris)
    (push element-2 ros)
    (mode-switch
      (1
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (> (count ',(first (nreverse ris)) ccl::l :test 'equalp)
                   (count ',(first (nreverse ros)) ccl::l :test 'equalp))
              t))))
      (2
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (if (> (count ',(first (nreverse ris)) ccl::l :test 'equalp)
                       (count ',(first (nreverse ros)) ccl::l :test 'equalp))
                    ,weight
                  0)
              t))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box repeated-pattern-rule ((pattern 2)
                                   (times 3)
                                   (which? =)
                                   (absolute? :absolute)
                                   (mode? :true/false)
                                   (weight 1))
  "This rule is for pattern repetitions. In 'pattern you put what you want to be repeated.
In 'times you put how many times you want teh pattern to be repeated. In 'which? you can chose among
'< it that means less times, '= that means an exact number of times and '> that means more times.
In 'absolute? you can chose if you are looking for positive elements (absolute) or not.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (which? < = >)
  :menu (absolute? :up/down :absolute)
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
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
              `(* (ccl::?if
                   (if (= ccl::len (ccl::cur-slen))
                       (,(first (nreverse rus))
			(count ',(first (nreverse ris))
			       (pw::g-abs ccl::l)
			       :test
			       'equalp)
			,.(nreverse ros))
                     t)))
            `(* (ccl::?if
                 (if (= ccl::len (ccl::cur-slen))
                     (,(first (nreverse rus))
                      (count ,.(nreverse ris) (pw::g-abs ccl::l) :test 'equalp)
                      ,.(nreverse ros))
                   t)))))
         (2
          (if (listp pattern)
              `(* (ccl::?if
                   (if (= ccl::len (ccl::cur-slen))
                       (,(first (nreverse rus))
			(count ',(first (nreverse ris))
			       ccl::l
			       :test
			       'equalp)
			,.(nreverse ros))
                     t)))
            `(* (ccl::?if
                 (if (= ccl::len (ccl::cur-slen))
                     (,(first (nreverse rus))
                      (count ,.(nreverse ris)
                             ccl::l
                             :test
                             'equalp)
                      ,.(nreverse ros))
                   t)))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (2
       (absolute-switch
         (1
          (if (listp pattern)
              `(* (ccl::?if
                   (if (= ccl::len (ccl::cur-slen))
                       (if (,(first (nreverse rus))
			    (count ',(first (nreverse ris))
				   ccl::l
				   :test
				   'equalp)
			    ,.(nreverse ros))
                           ,weight
                         0)
                     t)))
            `(* (ccl::?if
                 (if (= ccl::len (ccl::cur-slen))
                     (if (,(first (nreverse rus))
                          (count ,.(nreverse ris)
                                 ccl::l
                                 :test
                                 'equalp)
                          ,.(nreverse ros))
                         ,weight
                       0)
                   t)))))
         (2
          (if (listp pattern)
              `(* (ccl::?if
                   (if (= ccl::len (ccl::cur-slen))
                       (if (,(first (nreverse rus))
			    (count ',(first (nreverse ris))
				   (pw::g-abs ccl::l)
				   :test
				   'equalp)
			    ,.(nreverse ros))
                           ,weight
                         0)
                     t)))
            `(* (ccl::?if
                 (if (= ccl::len (ccl::cur-slen))
                     (if (,(first (nreverse rus))
                          (count ,.(nreverse ris)
                                 (pw::g-abs ccl::l)
                                 :test
                                 'equalp)
                          ,.(nreverse ros))
                         ,weight
                       0)
                   t)))))
         (otherwise (error "Got ~s, was expecting one of 1, 2." absolute?))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box always-more-little-included-rule ((mode? :true/false) (weight 1))
  "When one element (as list of lists) is bigger than a second so the more little has to be included
in the bigger.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(ccl::?if
	 (if (< (length ?1) (length ?2))
	     (subsetp ?1 ?2 :test #'equal)
	     (subsetp ?2 ?1 :test #'equal)))))
   (2
    `(* ?1
	?2
	(ccl::?if
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
(define-menu distance-rules :in pmc-rules)
(in-menu distance-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(define-box distance-rule ((pattern (1 2 3)) (distance 50) (which? <)
                           (mode? :true/false) (weight 1))
  "This is a morphological rule. It asks to the engine those solutions who have a distance
- given in 'distance - with the 'pattern. In which? you can chose if you want an equal distance '=,
a more little distance '< or a bigger distance '>.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (which? < = >)
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
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
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (,(first (nreverse rus))
		 (morphologie::distance ccl::l ',(first (nreverse ris)) 1
					1 1)
		 ',(first (nreverse ros)))
              t))))
      (2
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (if (,(first (nreverse rus))
		     (morphologie::distance ccl::l
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
(define-menu structure-rules :in pmc-rules)
(in-menu structure-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(define-box mk-symbol-structure-rule ((structure (c i a o))
					   (mode? :true/false)
					   (weight 1))
  "This rule obliges the solution to be as indicated in structure.
You understand that this rule has meaning only as heuristic.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (ros nil))
    (push structure ris)
    (push weight ros)
    (mode-switch
     (1
      `(* ?1
	  (ccl::?if
	   (equalp ?1
		   (nth (1- ccl::len)
			',(pw::flat-once (nreverse ris)))))))
     (2
      `(* ?1
	  (ccl::?if
	   (if (equalp ?1
		       (nth (1- ccl::len)
			    ',(pw::flat-once (nreverse ris))))
	       ,.(nreverse ros)
	       0))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box find-apply-global-sum-rule ((sum 10) (mode? :true/false) (weight 1))
  "This rule finds out the candidates that summed together they give as a risult the same value
put in sum.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push sum ris)
    (mode-switch
     (1
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (= (apply '+ ccl::l) ',(first (nreverse ris)))
	       t))))
     (2
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (= (apply '+ ccl::l) ',(first (nreverse ris)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))

(define-box find-apply-global-absolute-sum-rule ((sum 10) (mode? :true/false) (weight 1))
  "This rule finds out the candidates that summed together (in an absolute mode) they give as a risult the same value
put in sum.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push sum ris)
    (mode-switch
     (1
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (= (apply '+ (pw::g-abs ccl::l)) ',(first (nreverse ris)))
	       t))))
     (2
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (= (apply '+ (pw::g-abs ccl::l)) ',(first (nreverse ris)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box find-apply-approx-sum-rule ((sum 7)
                                        (approx 0.2)
                                        (mode? :true/false)
                                        (weight 1))
  "This rule finds out the candidates that summed together they give as a risult the same value
put in sum.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (rus nil))
    (push sum ris)
    (push approx rus)
    (mode-switch
      (1
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (<= (- ,(first (nreverse ris)) ,(first (nreverse rus)))
                    (apply '+ ccl::l)
                    (+ ,(first (nreverse ris)) ,(first (nreverse rus))))
              t))))
      (2 `(* (ccl::?if
              (if (if (= ccl::len (ccl::cur-slen))
                      (<= (- ,(first (nreverse ris)) ,(first (nreverse rus)))
                          (apply '+ ccl::l)
                          (+ ,(first (nreverse ris)) ,(first (nreverse rus))))
                    t)
                  ,weight
                0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box find-apply-approx-absolute-sum-rule ((sum 7)
                                                 (approx 0.2)
                                                 (mode? :true/false)
                                                 (weight 1))
  "This rule finds out the candidates that summed together (in the absoulte mode) they give as a risult the same value
put in sum.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil) (rus nil))
    (push sum ris)
    (push approx rus)
    (mode-switch
      (1
       `(* (ccl::?if
            (if (= ccl::len (ccl::cur-slen))
                (<= (- ,(first (nreverse ris)) ,(first (nreverse rus)))
                    (apply '+ (pw::g-abs ccl::l))
                    (+ ,(first (nreverse ris)) ,(first (nreverse rus))))
              t))))
      (2 `(* (ccl::?if
              (if (if (= ccl::len (ccl::cur-slen))
                      (<= (- ,(first (nreverse ris)) ,(first (nreverse rus)))
                          (apply '+ (pw::g-abs ccl::l))
                          (+ ,(first (nreverse ris)) ,(first (nreverse rus))))
                    t)
                  ,weight
                0))))
      (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))



(define-box length-sub-group-applied-sum-rule ((length? 1)
                                               (mode? :true/false)
                                               (weight 1))
  "This rule obliges each sub list of the solution ti have an applied sum equal to length?.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
    (1
     `(* ?1
         (ccl::?if
          (equalp (apply '+ (pw::g-abs ?1)) ,length?))))
    (2
     `(* ?1
         (ccl::?if
          (if (equalp (apply '+ (pw::g-abs ?1)) ,length?)
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box structured-order-sum-rule ((candidates (?1 ?2 ?3))
					    (order (0 1 0 2 2 2 2 0 1))
					    (sum 11)
					    (mode? :true/false)
					    (weight 1))
  "In candidates you put in sconstraints symbol the candidates you are looking for (ex. ?1 ?2 ?3).
Then in order you put a list of indexes that has to be applied to a posn-match for the candidates
/////(ex. (0 1 0 2 2 2 2 0 1)). Then in sum you put the value that the 3 candidates you haveindicated, summmed together
in the given order.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ,@candidates
	(ccl::?if
	 (= (apply '+ (pw::posn-match (list ,@(copy-list candidates)) ',order))
	    ,sum))))
   (2
    `(* ,@candidates
	(ccl::?if
	 (if (= (apply '+
		       (pw::posn-match (list ,@(copy-list candidates)) ',order))
		,sum)
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box count-positive-rule ((number 2) (mode? :true/false) (weight 1))
  "The solution must have a number of positive valure as indicatd in number.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push number ris)
    (mode-switch
     (1
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (= (count-positif ccl::l) ',(first (nreverse ris)))
	       t))))
     (2
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (= (count-positif ccl::l)
		      ',(first (nreverse ris)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box count-negative-rule ((number 2) (mode? :true/false) (weight 1))
  "The solution must have a number of negative valure as indicatd in number.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push number ris)
    (mode-switch
     (1
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (= (count-negatif ccl::l) ',(first (nreverse ris)))
	       t))))
     (2
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (= (count-negatif ccl::l)
		      ',(first (nreverse ris)))
		   ,weight
		   0)
	       t))))
     (otherwise (error "Got ~s, was expecting one of 1, 2." mode?)))))


(define-box no-consecutive-rests-rule ((mode? :true/false) (weight 1))
  "Two negative values can not be consecutive.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(ccl::?if
	 (if (< ?1 1) (not (equalp (signum ?1) (signum ?2))) t))))
   (2
    `(* ?1
	?2
	(ccl::?if
	 (if (if (< ?1 1) (not (equalp (signum ?1) (signum ?2))) t)
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box no-consecutive-pulses-rule ((mode? :true/false) (weight 1))
  "Two positive values can not be consecutive.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(ccl::?if
	 (if (>= ?1 1) (not (equalp (signum ?1) (signum ?2))) t))))
   (2
    `(* ?1
	?2
	(ccl::?if
	 (if (if (>= ?1 1) (not (equalp (signum ?1) (signum ?2))) t)
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))





(define-box alternating-positive-negative-rule ((mode? :true/false) (weight 1))
  "This rule obliges positive number to be alternated with negative numbers.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(ccl::?if
	 (if (> (signum ?1) 0) (< (signum ?2) 0) (> (signum ?2) 0)))))
   (2
    `(* ?1
	?2
	(ccl::?if
	 (if (if (> (signum ?1) 0) (< (signum ?2) 0) (> (signum ?2) 0))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box alternating-+/-first-elmt-rule ((mode? :true/false) (weight 1))
  "This rule ceates a result of sub lists in which the fisrt element is, in an alterning way, before positive
then negative an so on.
ATTENTION : this rule works with list of lists.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(ccl::?if
	 (if (> (signum (first ?1)) 0)
	     (< (signum (first ?2)) 0)
	     (> (signum (first ?2)) 0)))))
   (2
    `(* ?1
	?2
	(ccl::?if
	 (if (if (> (signum (first ?1)) 0)
		 (< (signum (first ?2)) 0)
		 (> (signum (first ?2)) 0))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box alternating-+/-last-elmt-rule ((mode? :true/false) (weight 1))
  "This rule ceates a result of sub lists in which the last element is, in an alterning way, before positive
then negative an so on.
ATTENTION : this rule works with list of lists.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1
    `(* ?1
	?2
	(ccl::?if
	 (if (> (signum (first (last ?1))) 0)
	     (< (signum (first (last ?2))) 0)
	     (> (signum (first (last ?2))) 0)))))
   (2
    `(* ?1
	?2
	(ccl::?if
	 (if (if (> (signum (first (last ?1))) 0)
		 (< (signum (first (last ?2))) 0)
		 (> (signum (first (last ?2))) 0))
	     ,weight
	     0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


#|

(define-box structure-identity-rule ((contrast-analys (1 2 3 2 1 2 2 4))
					  (mode? :true/false)
					  (weight 1))
  "This rule gives t if the first level of the contrast analysis - see morphologie 3.0 - is equal
to the list put in 'contrast-analys.
ATTENTION : it is very slow.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (let ((ris nil))
    (push contrast-analys ris)
    (mode-switch
     (1
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (equalp (morph::contrasts-lev.1 ccl::l)
		       ',(first (nreverse ris)))
	       t))))
     (2
      `(* (ccl::?if
	   (if (= ccl::len (ccl::cur-slen))
	       (if (equalp (morph::contrasts-lev.1 ccl::l)
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
(define-menu matrix-rules :in pmc-rules)
(in-menu matrix-rules)
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
(define-box mk-latin-matrix-rule ((mode? :true/false) (weight 1))
  "This rule create a latin matrix like following :
     1 3 2 4
     2 1 4 3
     3 4 1 2
     4 2 3 1

ATTENTION : It works with list of lists.
ATTENTION : in the mode true/false, the rule is perfectly applied.
In the mode heuristic, the rule is applied as much as possible"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
   (1 `(* ?1 (ccl::?if (not (hhh ?1 (rest ccl::rl))))))
   (2
    `(* ?1
	(ccl::?if
	 (if (not (hhh ?1 (rest ccl::rl))) ,weight 0))))
   (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))


(define-box chain-common-element-lists-rule ((chain-length? 2)
                                            (mode? :true/false)
                                            (weight 1))
  "This rule chains lists of lists following the criteria of adaptating figure: see CMI thoery.
You have two lists of lists: in chain-lenngth?, the length of the last part of the corrent list (and automatically the length of the first part of the forword one.
ATTENTION : IN THE HEURISTIC MODE IT DOES NOT WORK. WHY???"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
    (1
     `(* ?1
         ?2
         (ccl::?if
          (equalp (jbs-cmi::last-n ?1 ,chain-length?)
                      (jbs-cmi::first-n ?2 ,chain-length?)))))
    (2
     `(* ?1
         ?2
         (ccl::?if
          (if (equalp (jbs-cmi::last-n ?1 ,chain-length?)
                      (jbs-cmi::first-n ?2 ,chain-length?))
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))



(define-box chain-more-little-included-common-lists-rule ((first-n? 2) (last-n? 2)
                                                          (mode? :true/false)
                                                          (weight 1))
  "This rule chains lists of lists following the criteria of adaptating figure: see CMI thoery.
You have two lists of lists: in chain-lenngth?, the length of the last part of the corrent list (and automatically the length of the first part of the forword one.
ATTENTION : IN THE HEURISTIC MODE IT DOES NOT WORK. WHY???"
  :non-generic t
  :menu (mode? (:true/false "true/false") (:heuristic "heuristic"))
  :class pmc-box
  (mode-switch
    (1
     `(* ?1
         ?2
         (ccl::?if
          (if (> ,first-n? ,last-n?)
              (pw::included? (jbs-cmi::last-n ?1 ,last-n?)
                             (jbs-cmi::first-n ?2 ,first-n?))
            (pw::included? (jbs-cmi::first-n ?2 ,first-n?)
                           (jbs-cmi::last-n ?1 ,last-n?)))
          )))
    (2
     `(* ?1
         ?2
         (ccl::?if
          (if (if (equalp (jbs-cmi::last-n ?1 ,chain-length?)
                          (jbs-cmi::first-n ?2 ,chain-length?))
                  t)
              ,weight
            0))))
    (otherwise (error "Got ~s, was expecting one of 1, 2." mode?))))




  