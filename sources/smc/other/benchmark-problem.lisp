;;; arch-tag: 92305BAA-471A-49E4-96B5-AB435899A651

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

;; if the next form is p
;; you can call: (smc:smc (caar p) (second p) nil :var-num (length (first p)))
(((0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29)
  (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
     29))
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
       (PMC:?IF (= 37 (+ I14 I18))))))

#|"
SMC> (time (pmc:pmc (first p) (second p) :rnd? nil))
Evaluation took:
  27.463 seconds of real time
  27.461716 seconds of user run time
  0.008 seconds of system run time
  [Run times include 0.32 seconds GC run time.]
  0 calls to %EVAL
  0 page faults and
  496,521,776 bytes consed.
 ((28 0 0 0 25 17 14 12 4 19 25 7 29 22 25 27 27 15))
SMC> (time (smc (caar p) (second p) nil :var-num (length (first p)) :random nil))
Comp 0.124 + Search 11.389 = 11.513
Evaluation took:
  11.52 seconds of real time
  11.468717 seconds of user run time
  0.048003 seconds of system run time
  [Run times include 0.656 seconds GC run time.]
  0 calls to %EVAL
  0 page faults and
  894,032,304 bytes consed.
 (28 0 0 0 25 17 14 12 4 19 25 7 29 22 25 27 27 15)
"|#

#|
after returning directly a vector to a-member-of

SMC> (time (pmc:pmc (first p) (second p) :rnd? nil))
Evaluation took:
  27.746 seconds of real time
  27.721731 seconds of user run time
  0.012001 seconds of system run time
  [Run times include 0.744 seconds GC run time.]
  0 calls to %EVAL
  0 page faults and
  496,503,776 bytes consed.
((28 0 0 0 25 17 14 12 4 19 25 7 29 22 25 27 27 15))
SMC> (time (smc (caar p) (second p) nil :var-num (length (first p)) :random nil))
Comp 0.096 + Search 9.464 = 9.56
Evaluation took:
  9.556 seconds of real time
  9.540596 seconds of user run time
  0.020002 seconds of system run time
  [Run times include 0.652 seconds GC run time.]
  0 calls to %EVAL
  0 page faults and
  383,281,488 bytes consed.
(28 0 0 0 25 17 14 12 4 19 25 7 29 22 25 27 27 15)
|#
