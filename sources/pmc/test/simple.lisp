(in-package :pmc-test)

(in-suite :pmc-test)

(defun arithm-ser (from step to)
  (iter
    (for i from from to to by step)
    (collect i)))

(pmc-test (simple.1)
	  (pmc '((1 2 3) (1 2 3)) '(* ?1 ?2 (?if (= ?1 ?2)))
	       :sols-mode :all :rnd? t)
	  '((3 3) (2 2) (1 1)))

;; pyth triangle
(pmc-test (simple.2 "pyth triangle")
	  (PMC (make-list 3 :initial-element (arithm-ser 1 1 20))
	       '((* ?1 ?2 (?if (< ?1 ?2))) ;; avoid redundant cases
		 (?1 ?2 ?3 (?if (=  (+ (* ?1 ?1) (* ?2 ?2)) (* ?3 ?3)))))
	       :sols-mode :all)
	  '((12 16 20) (9 12 15) (8 15 17) (6 8 10) (5 12 13) (3 4 5)))

;; all permutations
(pmc-test (simple.3 "all permutations")
	  (PMC (make-list 4 :initial-element '(0 1 4 6))
	       '((* ?1 (?if (not (member ?1 (rest rl))))))
	       :sols-mode :all)
	  '((6 4 1 0) (6 4 0 1) (6 1 4 0) (6 1 0 4) (6 0 4 1) (6 0 1 4)
	    (4 6 1 0) (4 6 0 1) (4 1 6 0) (4 1 0 6) (4 0 6 1) (4 0 1 6)
	    (1 6 4 0) (1 6 0 4) (1 4 6 0) (1 4 0 6) (1 0 6 4) (1 0 4 6)
	    (0 6 4 1) (0 6 1 4) (0 4 6 1) (0 4 1 6) (0 1 6 4) (0 1 4 6)))

(pmc-test (simple.3b "all permutations with index var")
	  (PMC (make-list 4 :initial-element '(0 1 4 6))
	       '((* ?1 (?if (not (member ?1 (rest rl))))) (i3 (?if (= i3 0))))
	       :sols-mode :all)
	  '((6 4 0 1) (6 1 0 4) (4 6 0 1) (4 1 0 6) (1 6 0 4) (1 4 0 6)))

(deftest simple.3c "bad index var"
	 #+ecl(skip)
	 #-ecl
	 (signals
	     #+lispworks simple-error
	     #+sbcl sb-int:simple-parse-error
	     #+openmcl ccl::parse-integer-not-integer-string
	     #+clisp system::simple-parse-error
	     #+ecl SI::SIMPLE-PARSE-ERROR
	     #-(or lispworks openmcl sbcl clisp ecl) dont-know
	     (pmc (make-list 4 :initial-element '(0 1 4 6))
		  '((* ?1 (?if (not (member ?1 (rest rl))))) (i3x (?if (= i3 0))))
		  :sols-mode :all)))

;; nqueens
(defun Nqns-noattack (x y tail)
  (cond ((null tail) t)
	((member y tail) nil)
	(t (let ((fl t)(x1 (length tail)))
	     (loop while (and fl tail)
		  do (when (= (abs (- y (pop tail))) (- x x1))
		       (setq fl nil))
		  (decf x1))
	     fl))))

(pmc-test (simple.4 "nqueens")
	  (PMC (make-list 8 :initial-element (arithm-ser 1 1 8))
	       '((* ?1 (?if (Nqns-noattack len ?1  (rest rl)))))
	       :print-fl nil :sols-mode :all :rnd? nil)
	  '((8 4 1 3 6 2 7 5) (8 3 1 6 2 5 7 4) (8 2 5 3 1 7 4 6)
	    (8 2 4 1 7 5 3 6) (7 5 3 1 6 8 2 4) (7 4 2 8 6 1 3 5)
	    (7 4 2 5 8 1 3 6) (7 3 8 2 5 1 6 4) (7 3 1 6 8 5 2 4)
	    (7 2 6 3 1 4 8 5) (7 2 4 1 8 5 3 6) (7 1 3 8 6 4 2 5)
	    (6 8 2 4 1 7 5 3) (6 4 7 1 8 2 5 3) (6 4 7 1 3 5 2 8)
	    (6 4 2 8 5 7 1 3) (6 4 1 5 8 2 7 3) (6 3 7 4 1 8 2 5)
	    (6 3 7 2 8 5 1 4) (6 3 7 2 4 8 1 5) (6 3 5 8 1 4 2 7)
	    (6 3 5 7 1 4 2 8) (6 3 1 8 5 2 4 7) (6 3 1 8 4 2 7 5)
	    (6 3 1 7 5 8 2 4) (6 2 7 1 4 8 5 3) (6 2 7 1 3 5 8 4)
	    (6 1 5 2 8 3 7 4) (5 8 4 1 7 2 6 3) (5 8 4 1 3 6 2 7)
	    (5 7 4 1 3 8 6 2) (5 7 2 6 3 1 8 4) (5 7 2 6 3 1 4 8)
	    (5 7 2 4 8 1 3 6) (5 7 1 4 2 8 6 3) (5 7 1 3 8 6 4 2)
	    (5 3 8 4 7 1 6 2) (5 3 1 7 2 8 6 4) (5 3 1 6 8 2 4 7)
	    (5 2 8 1 4 7 3 6) (5 2 6 1 7 4 8 3) (5 2 4 7 3 8 6 1)
	    (5 2 4 6 8 3 1 7) (5 1 8 6 3 7 2 4) (5 1 8 4 2 7 3 6)
	    (5 1 4 6 8 2 7 3) (4 8 5 3 1 7 2 6) (4 8 1 5 7 2 6 3)
	    (4 8 1 3 6 2 7 5) (4 7 5 3 1 6 8 2) (4 7 5 2 6 1 3 8)
	    (4 7 3 8 2 5 1 6) (4 7 1 8 5 2 6 3) (4 6 8 3 1 7 5 2)
	    (4 6 8 2 7 1 3 5) (4 6 1 5 2 8 3 7) (4 2 8 6 1 3 5 7)
	    (4 2 8 5 7 1 3 6) (4 2 7 5 1 8 6 3) (4 2 7 3 6 8 5 1)
	    (4 2 7 3 6 8 1 5) (4 2 5 8 6 1 3 7) (4 1 5 8 6 3 7 2)
	    (4 1 5 8 2 7 3 6) (3 8 4 7 1 6 2 5) (3 7 2 8 6 4 1 5)
	    (3 7 2 8 5 1 4 6) (3 6 8 2 4 1 7 5) (3 6 8 1 5 7 2 4)
	    (3 6 8 1 4 7 5 2) (3 6 4 2 8 5 7 1) (3 6 4 1 8 5 7 2)
	    (3 6 2 7 5 1 8 4) (3 6 2 7 1 4 8 5) (3 6 2 5 8 1 7 4)
	    (3 5 8 4 1 7 2 6) (3 5 7 1 4 2 8 6) (3 5 2 8 6 4 7 1)
	    (3 5 2 8 1 7 4 6) (3 1 7 5 8 2 4 6) (2 8 6 1 3 5 7 4)
	    (2 7 5 8 1 4 6 3) (2 7 3 6 8 5 1 4) (2 6 8 3 1 4 7 5)
	    (2 6 1 7 4 8 3 5) (2 5 7 4 1 8 6 3) (2 5 7 1 3 8 6 4)
	    (2 4 6 8 3 1 7 5) (1 7 5 8 2 4 6 3) (1 7 4 6 8 2 5 3)
	    (1 6 8 3 7 4 2 5) (1 5 8 6 3 7 2 4)))

;; aiv-series
(defun unique-int? (iv Xs &key (key #'identity))
  (iter
    (for xtail on Xs)
    (when (second xtail)
      (never (= iv (funcall key (- (first xtail) (second xtail))))))))

					;3856 solutions
					;(58.283 seconds)

#|

\(time
 (defparameter *AI-series*
   (PMC '((0) (1 2 3 4 5 7 8 9 10 11) (1 2 3 4 5 7 8 9 10 11) (1 2 3 4 5 7 8 9 10 11)
	  (1 2 3 4 5 7 8 9 10 11) (1 2 3 4 5 7 8 9 10 11) (1 2 3 4 5 7 8 9 10 11)
	  (1 2 3 4 5 7 8 9 10 11) (1 2 3 4 5 7 8 9 10 11) (1 2 3 4 5 7 8 9 10 11)
	  (1 2 3 4 5 7 8 9 10 11) (6))
	'((* ?1 (?if (not (member ?1 (rest rl)))) "no pitch-class dups")
	  (* ?1 ?2 (?if (unique-int? (mod (- ?2 ?1) 12) (rest rl) :key #'(lambda (n) (mod n 12))))
	   "no (modulo 12) interval duplicates 2"))
	:rnd? nil :sols-mode :all)))

|#
