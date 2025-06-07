(in-package :pmc-test)

(in-suite :pmc-test)

(deftest domain-nil.1
  (let ((res (pmc:pmc '((nil) (nil)) nil)))
    (is (equal '((nil nil)) res))))

(deftest domain-nil.2
  (let ((res (pmc:pmc '((nil) (nil)) '((i1 i2 (pmc:?if (not nil)))))))
    (is (equal '((nil nil)) res))))

(deftest domain-nil.3
  (let ((res (pmc:pmc '((nil) (nil)) '((?1 ?2 (pmc:?if (not nil)))))))
    (is (equal '((nil nil)) res))))

(deftest single-form.1
  (let ((res (pmc:pmc '((nil) (nil)) '((?1 ?2 (pmc:?if t))))))
    (is (equal '((nil nil)) res))))

(deftest single-form.2
  (skip "known to fail")
  #+nil
  (let ((res (pmc:pmc '((nil) (nil)) '((?1 ?2 (pmc:?if nil))))))
    (is (equal nil res))))

(deftest single-form.3
  (let ((res (pmc:pmc '((nil) (nil)) '((i1 i2 (pmc:?if t))))))
    (is (equal '((nil nil)) res))))

(deftest single-form.4
  (skip "known to fail")
  #+nil
  (let ((res (pmc:pmc '((nil) (nil)) '((i1 i2 (pmc:?if nil))))))
    (is (equal nil res))))

(deftest single-form.5
  (let ((res (pmc:pmc '((nil) (nil)) '((i1 i2 (pmc:?if (progn nil)))))))
    (is (equal nil res))))

(deftest sols-mode.1
  (let ((res (pmc:pmc '((1 2 3) (1 2 3)) nil :sols-mode :once)))
    (is (equal '((1 1)) res)))
  (let ((res (pmc:pmc '((1 2 3) (1 2 3)) nil :sols-mode 1)))
    (is (equal '((1 1)) res))))

(deftest sols-mode.2
  (let ((res (pmc:pmc '((1 2 3) (1 2 3)) nil :sols-mode 2)))
    (is (equal '((1 1) (1 2)) res))))

(deftest sols-mode.3
  (let ((res (pmc:pmc '((1 2 3) (1 2 3)) nil :sols-mode :all)))
    (is (equal '((1 1) (1 2) (1 3) (2 1) (2 2) (2 3) (3 1) (3 2) (3 3)) res))))

(deftest sols-mode.4
  (let ((res (pmc:pmc '((1 2 3) (1 2 3)) nil :sols-mode 100)))
    (is (equal '((1 1) (1 2) (1 3) (2 1) (2 2) (2 3) (3 1) (3 2) (3 3)) res))))

(deftest sols-mode.5
  (let ((res (pmc:pmc '((1 2 3) (1 2 3)) nil :sols-mode :all
		      :heuristic-rules '((* ?1 (?if (- 10 (abs (- 2 ?1)))))))))
    (is (equal '((2 2) (2 1) (2 3) (1 2) (1 1) (1 3) (3 2) (3 1) (3 3)) res))))

(deftest sols-mode.6
  (let ((res (pmc:pmc '((1 2 3) (1 2 3)) nil :sols-mode 100
		      :heuristic-rules '((* ?1 (?if (- 10 (abs (- 2 ?1)))))))))
    (is (equal '((2 2) (2 1) (2 3) (1 2) (1 1) (1 3) (3 2) (3 1) (3 3)) res))))

(deftest sols-mode.7
  (let ((res (pmc:pmc '((1 2 3) (1 2 3)) nil :sols-mode 2
		      :heuristic-rules '((* ?1 (?if (- 10 (abs (- 2 ?1)))))))))
    (is (equal '((2 2) (2 1)) res))))
