;;; arch-tag: 0A6CEF75-1BC3-409F-B7B3-B8A9A1049082

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

(define-menu smc :print-name "SMC")
(in-menu smc)

(define-box smc ((domain (1 2 3)) (var-num 24)
                 (rules nil) (heuristic-rules nil)
                 solution-p
                 (random t) (number 1))
  "PMC built on top of screamer.

SOLUTION-P (if-given) has to be a function (or a sub-patch
in lambda mode) which takes 3 arguments:
LEN, L, RL
If it returns T, the search will be stopped.

VAR-NUM on the other hand specifies the longest possible
solution length.

What happens, if this limit is reached, but SOLUTION-P
returns NIL? In this special case, SOLUTION-P is considered
like a strict rule - the engine will backtrack.

NUMBER specifies the desired number of solutions. If NUMBER
is 1 a single solution (or NIL) is returned, otherwise a
list of solutions or NIL is returned. This list may be shorter
than NUMBER, if only less solutions exist.
If NUMBER is NIL, there is no limit.

There is one thing to note, when writing your rules.
Whenever you want to access the current candidate value,
e.g in a rule (* ?1 ?2 ?3 (?if ...)) this would be ?3,
DO use the symbol ?3 for referring to it and DONT use
the L or RL variables (e.g. (car RL)), because they would
not have been updated yet.
However, to use (cdr RL), like in (not (member ?1 (cdr RL))) is
perfectly valid.

TODO doc"
  :non-generic t
  :icon 200
  :menu (random t nil)
  (let ((before-comp (get-internal-run-time))
        before-search
        after-search)
    (let ((predicate-fn (cond
                          ((functionp rules) rules)
                          ((consp rules) (make-true-false-function rules))
                          (t (constantly t))))
          (heuristic-fn (cond
                          ((functionp heuristic-rules) heuristic-rules)
                          ((consp heuristic-rules) (make-heuristic-function heuristic-rules))
                          (t nil))))
      ;; (pprint (make-rule-checks (mapcar #'make-rule-from-pmc heuristic-rules) 'i 'v :heuristic-rules t))
      (setq before-search (get-internal-run-time))
      (prog1
          (cond
            ((eql number 1)
             (let ((res (search-one domain var-num predicate-fn heuristic-fn solution-p random)))
               (when res (list res))))
            ((null number)
             (search-all domain var-num predicate-fn heuristic-fn solution-p random))
            (t (search-n number domain var-num predicate-fn heuristic-fn solution-p random)))
        (setq after-search (get-internal-run-time))
        (format t "Comp ~,3F + Search ~,3F = ~,3F~%"
                (/ (- before-search before-comp) (float internal-time-units-per-second))
                (/ (- after-search before-search) (float internal-time-units-per-second))
                (/ (- after-search before-comp) (float internal-time-units-per-second)))))))

;; (define-compiler-macro smc (&whole form &environment env
;;                                 domain rules heuristic-rules
;;                                 &rest rest)
;;   (let ((constant-rules-p (and rules (constantp rules env)))
;;      (constant-heuristic-rules-p (and heuristic-rules (constantp heuristic-rules env))))
;;     (cond
;;       ((or constant-rules-p constant-heuristic-rules-p)
;;        `(smc ,domain
;;           ,(if constant-rules-p
;;                `(load-time-value (make-true-false-function ,rules))
;;                rules)
;;           ,(if constant-heuristic-rules-p
;;                `(load-time-value (make-heuristic-function ,heuristic-rules))
;;                heuristic-rules)
;;           ,@rest))
;;       (t form))))


(define-box smc-pmc ((search-space ((1 2 3) (1 2 3) (1 2 3)))
                     rules heuristic-rules (random t) (number 1)
                     &optional solution-p)
  "Tries to be as close to the PMC as possible.

Please note that although SEARCH-SPACE is a list of domains,
only the first domain is actually used and the length of
SEARCH-SPACE is used to determine the (maximum) number of
variables. So, all the domains in SEARCH-SPACE are assumed
to be equal (this is not checked!)."
  :non-generic t
  :icon 200
  :menu (random t nil)
  (let ((res (smc (first search-space) (length search-space)
                  rules heuristic-rules solution-p random number)))
    (if (eql number 1)
        (list res)
        res)))

(menu-separator)

(menu-add-symbol make-true-false-function)
(menu-add-symbol make-heuristic-function)

(menu-separator)

(define-box rule2check-function (rule)
  "TODO doc"
  :non-generic t
  :icon 520
  (flet ((arg-access (arg-symbol arg-index)
           (if (zerop arg-index)
               `(,arg-symbol (car rl))
               `(,arg-symbol (nth ,arg-index rl)))))
    (let* ((rule (make-rule-from-pmc rule))
           (solution-min-length (rule-solution-min-length rule))
           (arg-symbols (cdr (rule-head rule)))
           (arg-indices (rule-arg-indices-for-pos rule solution-min-length))
           (rl-relative-arg-indices (mapcar #'(lambda (i) (- solution-min-length i)) arg-indices)))
      (assert (eql :relative (rule-type rule)) nil
              "Right now, I cannot do this for a rule head of ~s" (rule-head rule))
      (compile nil `(lambda (pos v l rl)
                      (declare (ignorable v l))
                      (when (>= pos ,solution-min-length)
                        (let ,(mapcar #'arg-access arg-symbols rl-relative-arg-indices)
                          ,(rule-body rule))))))))


(define-box negate-rule (rule)
  "TODO doc"
  :non-generic t
  :icon 520
  (let ((rule (make-rule-from-pmc rule)))
    (setf (rule-body rule)
          (if (eql (car (rule-body rule)) 'not)
              (second (rule-body rule))
              (list 'not (rule-body rule))))
    (unparse-rule rule)))

(install-menu smc)
