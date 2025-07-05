;;; arch-tag: DB77A705-FDBF-492A-AB07-3D31CDC23165

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
  (asdf:oos 'asdf:load-op :pmc)
  (asdf:oos 'asdf:load-op :timing))

(defun as (from to by)
  (iter (for i from from to to by by)
	(collect i)))

(defmacro define-benchmark (name var-num domain rules heuristic-rules)
  `(progn
     (defun ,(intern (format nil "SMC-~a" (string-upcase (string name))) :smc) ()
       (smc ',(eval domain) ',rules ',heuristic-rules :var-num ,var-num :random nil))
     (defun ,(intern (format nil "PMC-~a" (string-upcase (string name))) :smc) ()
       (first
	(pmc:pmc ',(make-list var-num :initial-element (eval domain)) ',rules
		 :heuristic-rules ',heuristic-rules :rnd? nil)))))

(define-benchmark benchmark1 12 (as 1 7 1)
		  ((* ?1 (pmc:?if (if (< 8 (pmc:cur-index))
				      (every #'(lambda (x) (= x 2)) (cdr pmc:rl))
				      t))))
		  nil)

(define-benchmark benchmark1.b 12 (as 1 7 1)
		  ((* ?1 (pmc:?if (if (< 8 (pmc:cur-index))
				      (every #'(lambda (x)
						 (declare (optimize speed) (fixnum x))
						 (= x 2))
					     (the list (cdr pmc:rl)))
				      t))))
		  nil)

(define-benchmark benchmark2 18
  '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29)
  ((I1 I5
       (PMC:?IF (= 53 (+ I1 I5))))
   (I2 I6
       (PMC:?IF (= 17 (+ I2 I6))))
   (I3 I7
       (PMC:?IF (= 14 (+ I3 I7))))
   (I4 I8
       (PMC:?IF (= 12 (+ I4 I8))))
   (I5 I9
       (PMC:?IF (= 29 (+ I5 I9))))
   (I6 I10
       (PMC:?IF (= 36 (+ I6 I10))))
   (I7 I11
       (PMC:?IF (= 39 (+ I7 I11))))
   (I8 I12
       (PMC:?IF (= 19 (+ I8 I12))))
   (I9 I13
       (PMC:?IF (= 33 (+ I9 I13))))
   (I10 I14
	(PMC:?IF (= 41 (+ I10 I14))))
   (I11 I15
	(PMC:?IF (= 50 (+ I11 I15))))
   (I12 I16
	(PMC:?IF (= 34 (+ I12 I16))))
   (I13 I17
	(PMC:?IF (= 56 (+ I13 I17))))
   (I14 I18
	(PMC:?IF (= 37 (+ I14 I18)))))
  nil)


(defun run-benchmarks ()
  (dolist (b '(benchmark1 benchmark2))
    (print b)
    (eval `(timing:time-form-compare (,(intern (format nil "SMC-~a" (string-upcase (string b))) :smc))
				     (,(intern (format nil "PMC-~a" (string-upcase (string b))) :smc))
				     1))))
