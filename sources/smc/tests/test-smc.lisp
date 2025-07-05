;;; arch-tag: E4DDDCED-5A81-4DFB-BE43-598022DA7DB1

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

(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:oos 'asdf:load-op :rt)
  (asdf:oos 'asdf:load-op :pmc)
  ;; needed for some tests...
  (asdf:oos 'asdf:load-op :set-theory2))

(defun set-equal (a b &key (test #'eql) (key #'identity))
  (let* ((lenb (length b))
         (bflags (make-array lenb
                             :element-type 'bit
                             :initial-element 0)))
    (iter
      (for ela in a)
      (let ((pos (position (funcall key ela) b :test test :key key)))
        (if pos
            (setf (sbit bflags pos) 1)
            (return-from set-equal nil))))
    (iter
      (for pos from 0 below lenb)
      (when (zerop (sbit bflags pos))
        (return-from set-equal nil)))
    t))

(defmacro define-test (name-or-options domain var-num rules
                       &optional heuristic-rules)
  (unless (listp name-or-options)
    (setq name-or-options (list name-or-options)))
  (destructuring-bind (name &key all random) name-or-options
    `(rtest:deftest ,name
         (,(if random 'set-equal 'equal)
           (smc ,domain ,var-num ,rules ,heuristic-rules nil ,random
                ,(if all nil 1))
           (pmc:pmc (iter (repeat ,var-num) (collect (copy-list ,domain)))
                    ,rules
                    :heuristic-rules ,heuristic-rules
                    :rnd? ,random
                    :sols-mode ,(if all :all :once))
           ,@(when random '(:test #'equalp)))
       T)))

(define-test simple.1 '(1 2 3) 5 '((* ?1 ?2 (pmc:?if (/= ?1 ?2)))))
(define-test simple.2 '(1 2 3) 5 '((* ?1 ?2 (pmc:?if (= ?1 ?2)))))
(define-test simple.3 '(1 2 3) 5 '((* ?1 ?2 (pmc:?if (< ?1 ?2)))))
(define-test simple.4 '(1 2 3) 3 '((* ?1 ?2 (pmc:?if (< ?1 ?2)))))
(define-test index.1 '(1 2 3) 5 '((i1 i2 (pmc:?if (/= i1 i2)))))
(define-test index.2 '(1 2 3) 5 '((i1 i2 (pmc:?if (= i1 i2)))))
(define-test index.3 '(1 2 3) 5 '((i1 i2 (pmc:?if (< i1 i2)))))
(define-test index.4 '(1 2 3) 5 '((i2 i4 (pmc:?if (< i2 i4)))))
(define-test index.5 '(1 2 3) 5 '((i1 i2 (pmc:?if (< i1 i2)))
                                  (i2 i4 (pmc:?if (< i2 i4)))))
(define-test index.6 '(1 2 3) 10 '((i2 i4 (pmc:?if (< i2 i4)))
                                   (i3 i8 (pmc:?if (< i3 i8)))
                                   (i5 i7 (pmc:?if (< i5 i7)))
                                   (i4 i7 (pmc:?if (< i4 i7)))))
(define-test double.1 '(1 2 3) 5 '((* ?1 ?2 (pmc:?if (/= ?1 ?2)))
                                   (* ?1 ?2 ?3 (pmc:?if (/= ?1 ?3)))))
(define-test double.2 '(1 2 3) 5 '((* ?1 ?2 ?3 (pmc:?if (/= ?1 ?3)))))
(define-test double.3 '(1 2 3) 5 '((* ?1 ?2 (pmc:?if (/= ?1 ?2)))
                                   (* ?1 ?2 ?3 (pmc:?if (/= ?1 ?3)))
                                   (i1 i2 (pmc:?if (< i2 i1)))))
(define-test double.4 '(1 2 3) 5 '((* ?1 ?2 (pmc:?if (/= ?1 ?2)))
                                   (* ?1 ?2 ?3 (pmc:?if (/= ?1 ?3)))

                                   (i4 i5 (pmc:?if (< i5 i4)))))
(define-test long.1 '(1 2 3) 10 '((* ?1 ?2 ?3 ?4 ?5 ?6 (pmc:?if (/= ?1 ?6)))))
(define-test long.2 '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
                      22 23 24 25 26 27 28 29)
  100
  '((I1 I2 (PMC:?IF (= 35 (+ I1 I2))))
    (I2 I3 (PMC:?IF (= 21 (+ I2 I3))))
    (I3 I4 (PMC:?IF (= 29 (+ I3 I4))))
    (I4 I5 (PMC:?IF (= 30 (+ I4 I5))))
    (I5 I6 (PMC:?IF (= 26 (+ I5 I6))))
    (I6 I7 (PMC:?IF (= 32 (+ I6 I7))))
    (I7 I8 (PMC:?IF (= 32 (+ I7 I8))))
    (I8 I9 (PMC:?IF (= 21 (+ I8 I9))))
    (I9 I10 (PMC:?IF (= 23 (+ I9 I10))))
    (I10 I11 (PMC:?IF (= 20 (+ I10 I11))))
    (I11 I12 (PMC:?IF (= 22 (+ I11 I12))))
    (I12 I13 (PMC:?IF (= 35 (+ I12 I13))))
    (I13 I14 (PMC:?IF (= 41 (+ I13 I14))))
    (I14 I15 (PMC:?IF (= 26 (+ I14 I15))))
    (I15 I16 (PMC:?IF (= 15 (+ I15 I16))))
    (I16 I17 (PMC:?IF (= 21 (+ I16 I17))))
    (I17 I18 (PMC:?IF (= 15 (+ I17 I18))))
    (I18 I19 (PMC:?IF (= 16 (+ I18 I19))))
    (I19 I20 (PMC:?IF (= 11 (+ I19 I20))))
    (I20 I21 (PMC:?IF (= 29 (+ I20 I21))))
    (I21 I22 (PMC:?IF (= 42 (+ I21 I22))))
    (I22 I23 (PMC:?IF (= 20 (+ I22 I23))))
    (I23 I24 (PMC:?IF (= 22 (+ I23 I24))))
    (I24 I25 (PMC:?IF (= 20 (+ I24 I25))))
    (I25 I26 (PMC:?IF (= 4 (+ I25 I26))))
    (I26 I27 (PMC:?IF (= 16 (+ I26 I27))))
    (I27 I28 (PMC:?IF (= 21 (+ I27 I28))))
    (I28 I29 (PMC:?IF (= 10 (+ I28 I29))))
    (I29 I30 (PMC:?IF (= 31 (+ I29 I30))))
    (I30 I31 (PMC:?IF (= 48 (+ I30 I31))))
    (I31 I32 (PMC:?IF (= 31 (+ I31 I32))))
    (I32 I33 (PMC:?IF (= 32 (+ I32 I33))))
    (I33 I34 (PMC:?IF (= 37 (+ I33 I34))))
    (I34 I35 (PMC:?IF (= 29 (+ I34 I35))))
    (I35 I36 (PMC:?IF (= 39 (+ I35 I36))))
    (I36 I37 (PMC:?IF (= 50 (+ I36 I37))))
    (I37 I38 (PMC:?IF (= 35 (+ I37 I38))))
    (I38 I39 (PMC:?IF (= 24 (+ I38 I39))))
    (I39 I40 (PMC:?IF (= 19 (+ I39 I40))))
    (I40 I41 (PMC:?IF (= 19 (+ I40 I41))))
    (I41 I42 (PMC:?IF (= 23 (+ I41 I42))))
    (I42 I43 (PMC:?IF (= 36 (+ I42 I43))))
    (I43 I44 (PMC:?IF (= 39 (+ I43 I44))))
    (I44 I45 (PMC:?IF (= 35 (+ I44 I45))))
    (I45 I46 (PMC:?IF (= 42 (+ I45 I46))))
    (I46 I47 (PMC:?IF (= 42 (+ I46 I47))))
    (I47 I48 (PMC:?IF (= 44 (+ I47 I48))))
    (I48 I49 (PMC:?IF (= 24 (+ I48 I49))))
    (I49 I50 (PMC:?IF (= 5 (+ I49 I50))))
    (I50 I51 (PMC:?IF (= 27 (+ I50 I51))))
    (I51 I52 (PMC:?IF (= 42 (+ I51 I52))))
    (I52 I53 (PMC:?IF (= 35 (+ I52 I53))))
    (I53 I54 (PMC:?IF (= 32 (+ I53 I54))))
    (I54 I55 (PMC:?IF (= 16 (+ I54 I55))))
    (I55 I56 (PMC:?IF (= 15 (+ I55 I56))))
    (I56 I57 (PMC:?IF (= 24 (+ I56 I57))))
    (I57 I58 (PMC:?IF (= 20 (+ I57 I58))))
    (I58 I59 (PMC:?IF (= 33 (+ I58 I59))))
    (I59 I60 (PMC:?IF (= 26 (+ I59 I60))))
    (I60 I61 (PMC:?IF (= 19 (+ I60 I61))))
    (I61 I62 (PMC:?IF (= 32 (+ I61 I62))))
    (I62 I63 (PMC:?IF (= 34 (+ I62 I63))))
    (I63 I64 (PMC:?IF (= 37 (+ I63 I64))))
    (I64 I65 (PMC:?IF (= 33 (+ I64 I65))))
    (I65 I66 (PMC:?IF (= 20 (+ I65 I66))))
    (I66 I67 (PMC:?IF (= 15 (+ I66 I67))))
    (I67 I68 (PMC:?IF (= 25 (+ I67 I68))))
    (I68 I69 (PMC:?IF (= 31 (+ I68 I69))))
    (I69 I70 (PMC:?IF (= 31 (+ I69 I70))))
    (I70 I71 (PMC:?IF (= 23 (+ I70 I71))))
    (I71 I72 (PMC:?IF (= 17 (+ I71 I72))))
    (I72 I73 (PMC:?IF (= 11 (+ I72 I73))))
    (I73 I74 (PMC:?IF (= 9 (+ I73 I74))))
    (I74 I75 (PMC:?IF (= 22 (+ I74 I75))))
    (I75 I76 (PMC:?IF (= 42 (+ I75 I76))))
    (I76 I77 (PMC:?IF (= 28 (+ I76 I77))))
    (I77 I78 (PMC:?IF (= 8 (+ I77 I78))))
    (I78 I79 (PMC:?IF (= 11 (+ I78 I79))))
    (I79 I80 (PMC:?IF (= 15 (+ I79 I80))))
    (I80 I81 (PMC:?IF (= 39 (+ I80 I81))))
    (I81 I82 (PMC:?IF (= 48 (+ I81 I82))))
    (I82 I83 (PMC:?IF (= 49 (+ I82 I83))))
    (I83 I84 (PMC:?IF (= 30 (+ I83 I84))))
    (I84 I85 (PMC:?IF (= 28 (+ I84 I85))))
    (I85 I86 (PMC:?IF (= 36 (+ I85 I86))))
    (I86 I87 (PMC:?IF (= 15 (+ I86 I87))))
    (I87 I88 (PMC:?IF (= 19 (+ I87 I88))))
    (I88 I89 (PMC:?IF (= 22 (+ I88 I89))))
    (I89 I90 (PMC:?IF (= 10 (+ I89 I90))))
    (I90 I91 (PMC:?IF (= 23 (+ I90 I91))))
    (I91 I92 (PMC:?IF (= 23 (+ I91 I92))))
    (I92 I93 (PMC:?IF (= 27 (+ I92 I93))))
    (I93 I94 (PMC:?IF (= 26 (+ I93 I94))))
    (I94 I95 (PMC:?IF (= 29 (+ I94 I95))))
    (I95 I96 (PMC:?IF (= 56 (+ I95 I96))))
    (I96 I97 (PMC:?IF (= 55 (+ I96 I97))))
    (I97 I98 (PMC:?IF (= 39 (+ I97 I98))))
    (I98 I99 (PMC:?IF (= 35 (+ I98 I99))))
    (I99 I100 (PMC:?IF (= 31 (+ I99 I100))))))

(define-test no-rules '(1 2 3) 3 nil)

(define-test cur-slen '(1 2 3) 5 '((* ?1 (pmc:?if (= ?1 (pmc::cur-slen))))))
(define-test len '(1 2 3) 5 '((* ?1 (pmc:?if (= ?1 pmc::len)))))
(define-test l '(1 2 3) 5
             '((* ?1 (pmc:?if (if (minusp (- pmc::len 2))
                                  t
                                  (/= ?1 (nth (- pmc::len 2) pmc::l)))))))
(define-test rl '(1 2 3) 5 '((* ?1 (pmc:?if (not (member ?1 (cdr pmc::rl)))))))
(define-test rl.2 '(1 2 3 4 5 6) 5
             '((* ?1 (pmc:?if (not (member ?1 (cdr pmc::rl)))))))
(define-test rl.3 '(1 2 3 4 5 6) 5
             '((* ?1 (pmc:?if (if (second pmc::rl)
                                  (/= ?1 (second pmc::rl))
                                  t)))
               (i1 i2 i3 i4 i5 (pmc:?if (equal '(5 4 3 2 1)
                                               (list i1 i2 i3 i4 i5))))))

;; NOTE this differs from pmc
;; (define-test progn.1 '(1 2 3) 5 '((* ?1 ?2 (pmc:?if nil (/= ?1 ?2)))))
;; (define-test progn.2 '(1 2 3) 5 '((* ?1 ?2 (pmc:?if t (/= ?1 ?2)))))
(rtest:deftest progn.3
    (and (equal
          (SMC '(1 2 3) 5
               '((* ?1 ?2 (PMC:?IF NIL (/= ?1 ?2))))
               nil
               nil
               nil
               1)
          (SMC '(1 2 3) 5
               '((* ?1 ?2 (PMC:?IF T (/= ?1 ?2))))
               nil
               nil
               nil
               1))
         (equal
          (SMC '(1 2 3) 5
               '((* ?1 ?2 (PMC:?IF T (/= ?1 ?2))))
               nil
               nil
               nil
               1)
          (SMC '(1 2 3) 5
               '((* ?1 ?2 (PMC:?IF (/= ?1 ?2))))
               nil
               nil
               nil
               1)))
  T)

(rtest:deftest solution-p.1
    (equal '((1 2 1 2 1))
           (smc '(1 2 3) 24
                '((* ?1 ?2 (pmc:?if (/= ?1 ?2))))
                nil
                #'(lambda (i v l rl) (declare (ignore v l rl)) (= 5 i))
                nil
                1))
  T)

(rtest:deftest solution-p.2
    (equal '((1 2 1 2))
           (smc '(1 2 3) 24
                '((* ?1 ?2 (pmc:?if (/= ?1 ?2))))
                nil
                #'(lambda (i v l rl)
                    (declare (ignore v i rl))
                    (<= 6 (apply #'+ l)))
                nil 1))
  T)

(rtest:deftest solution-p.3
    (eql nil
         (smc '(1 2 3) 5
              '((* ?1 ?2 (pmc:?if (/= ?1 ?2))))
              nil
              #'(lambda (i v l rl)
                  (declare (ignore v i rl))
                  (= 32.2 (apply #'+ l)))
              nil
              1))
  t)

(define-test heuristic.1 '(1 2 3) 5 nil '((* ?1 ?2 (pmc:?if (abs (- ?1 ?2))))))
(define-test heuristic.2 '(1 2 3) 5
             '((* ?1 ?2 (pmc:?if (/= 2 (abs (- ?1 ?2))))))
             '((* ?1 ?2 (pmc:?if (abs (- ?1 ?2))))))
(define-test heuristic.3 '(1 2 3) 5
             '((* ?1 ?2 (pmc:?if (/= 2 (abs (- ?1 ?2)))))
               (* ?1 ?2 ?3 (pmc:?if (member 3 (list ?1 ?2 ?3)))))
             '((* ?1 ?2 (pmc:?if (abs (- ?1 ?2))))))
(define-test heuristic.4 '(1 2 3) 5 nil '((i3 (pmc:?if i3))))
(define-test heuristic.5 '(1 2 3) 5 nil '((* ?1 (PMC:?IF (- ?1)))
                                          (* ?1 ?2 (PMC:?IF (abs (- ?1 ?2))))))
(define-test heuristic.6 '(1 2 3) 5 nil '((* ?1 (PMC:?IF ?1))
                                          (* ?1 ?2 (PMC:?IF (abs (- ?1 ?2))))))


(define-test set-theory.1 '(60 61 62 63 64 65 66 67) 3
             '((* ?1 ?2 (pmc:?if
                         (when (< ?1 ?2)
                           (let ((rev-list
                                  (sort (copy-list (cons ?2 (cdr pmc::rl)))
                                        #'<)))
                             (when (set-theory2:setp rev-list 12)
                               (member (set-theory2:t-primeform rev-list 12)
                                       '((0 3) (0 5) (0 4) (0 4 7))
                                       :test #'equal)))))
                "ch-rule")
               (i1 (pmc:?if (= i1 60)))
               (i3 (pmc:?if (= i3 67))))
             '((* ?1 (pmc:?if (- (abs (- ?1 (nth (1- (pmc::cur-index))
                                                 '(60 64 67))))))
                "homg-hrule")))

;;; screamer is not backtracking... it returns nil, although there is
;;; a solution
(define-test set-theory.2 '(60 61 62 63 64 65 66 67) 3
             '((* ?1 ?2 (pmc:?if
                         (when (< ?1 ?2)
                           (let ((rev-list
                                  (sort (copy-list (cons ?2 (cdr pmc::rl)))
                                        #'<)))
                             (when (set-theory2:setp rev-list 12)
                               (member (set-theory2:t-primeform rev-list 12)
                                       '((0 3) (0 5) (0 4) (0 4 7))
                                       :test #'equal)))))
                "ch-rule")
               (i1 (pmc:?if (= i1 60)))
               (i3 (pmc:?if (= i3 67))))
             '((* ?1 (pmc:?if (- (abs (- ?1 (nth (1- (pmc::cur-index))
                                                 '(60 127/2 67))))))
                "homg-hrule")))

(define-test set-theory.3 '(59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75
                            76 77 78 79 80 81 82) 3
                            '((* ?1 ?2
                               (pmc:?if
                                (when (< ?1 ?2)
                                  (let ((rev-list
                                         (sort (copy-list
                                                (cons ?2 (cdr pmc::rl)))
                                               #'<)))
                                    (when (set-theory2:setp rev-list 12)
                                      (member
                                       (set-theory2:t-primeform rev-list 12)
                                       '((0 3) (0 5) (0 4) (0 4 7))
                                       :test #'equal)))))
                               "ch-rule")
                              (i1 (pmc:?if (= i1 59)))
                              (i3 (pmc:?if (= i3 82))))
                            '((* ?1 (pmc:?if
                                     (- (abs (- ?1 (nth (1- (pmc::cur-index))
                                                        '(59 141/2 82))))))
                               "homg-hrule")))

(define-test (simple.1.all :all t) '(1 2 3) 5
             '((* ?1 ?2 (pmc:?if (/= ?1 ?2)))))
(define-test (simple.2.all :all t) '(1 2 3) 5
             '((* ?1 ?2 (pmc:?if (= ?1 ?2)))))
(define-test (simple.3.all :all t) '(1 2 3) 5
             '((* ?1 ?2 (pmc:?if (< ?1 ?2)))))
(define-test (simple.4.all :all t) '(1 2 3) 3
             '((* ?1 ?2 (pmc:?if (< ?1 ?2)))))

(define-test (simple.1.allr :all t :random t) '(1 2 3) 5
             '((* ?1 ?2 (pmc:?if (/= ?1 ?2)))))
(define-test (simple.2.allr :all t :random t) '(1 2 3) 5
             '((* ?1 ?2 (pmc:?if (= ?1 ?2)))))
(define-test (simple.3.allr :all t :random t) '(1 2 3) 5
             '((* ?1 ?2 (pmc:?if (< ?1 ?2)))))
(define-test (simple.4.allr :all t :random t) '(1 2 3) 3
             '((* ?1 ?2 (pmc:?if (< ?1 ?2)))))


(define-test (double.1.allr :all t :random t)
    '(1 2 3) 5 '((* ?1 ?2 (pmc:?if (/= ?1 ?2)))
                 (* ?1 ?2 ?3 (pmc:?if (/= ?1 ?3)))))
(define-test (double.2.allr :all t :random t)
    '(1 2 3) 5 '((* ?1 ?2 ?3 (pmc:?if (/= ?1 ?3)))))
(define-test (double.3.allr :all t :random t)
    '(1 2 3) 5 '((* ?1 ?2 (pmc:?if (/= ?1 ?2)))
                 (* ?1 ?2 ?3 (pmc:?if (/= ?1 ?3)))
                 (i1 i2 (pmc:?if (< i2 i1)))))
(define-test (double.4.allr :all t :random t)
    '(1 2 3) 5 '((* ?1 ?2 (pmc:?if (/= ?1 ?2)))
                 (* ?1 ?2 ?3 (pmc:?if (/= ?1 ?3)))
                 (i4 i5 (pmc:?if (< i5 i4)))))
#+nil
(rtest:do-tests)
#+nil
(rtest:continue-testing)
