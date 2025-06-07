;; Apply condition to each element of list and reduce to true if it holds for each, nil otherwise
;; Matrix op & utility library
;; ---------------------------
;; Ben Kane
;; bkane2@u.rochester.edu

(defun reduce-condition (condf l)
  (cond
    ((equalp (remove-duplicates (mapcar condf l)) '(t)) t)
    (t nil)))

;; Flatten nested list by one level
(defun flatten (l)
  (if (null l) nil (append (car l) (flatten (cdr l)))))

;; Check if a given matrix has valid nxm form with integers
(defun mat-is-valid (m)
  (and
    (listp m)
    (not (null m))
    (reduce-condition (lambda (x)
      (and
        (listp x)
        (not (null x))
        (= (length x) (length (car m)))
        (reduce-condition #'numberp x)))
    m)))

;; Transpose a matrix
(defun mat-t (mat)
  (cond
    ((not (mat-is-valid mat)) (error "mat not in valid nxm matrix form"))
    (t (apply #'mapcar #'list mat))))

;; Take dot product of two matrices
(defun mat-dot (mat1 mat2)
  (cond
    ((not (mat-is-valid mat1)) (error "mat1 not in valid nxm matrix form"))
    ((not (mat-is-valid mat2)) (error "mat2 not in valid nxm matrix form"))
    ((not (= (length (car mat1)) (length mat2))) (error "matrix sizes not compatible"))
    (t
      (labels ((dot-vector (v1 v2)
        (if (null v1) 0 (+ (* (car v1) (car v2)) (dot-vector (cdr v1) (cdr v2))))))
      (mapcar (lambda (x) (mapcar (lambda (y) (dot-vector x y)) (mat-t mat2))) mat1)))))

;; Take outer product of two matrices
(defun mat-outer (mat1 mat2)
  (cond
    ((not (mat-is-valid mat1)) (error "mat1 not in valid nxm matrix form"))
    ((not (mat-is-valid mat2)) (error "mat2 not in valid nxm matrix form"))
    (t (mapcar (lambda (i) (mapcar (lambda (j) (* i j)) (flatten mat2))) (flatten mat1)))))

;; Initiates nxm matrix of random fractions between 0 and 1
(defun mat-init-random (n m)
  (mapcar (lambda (x) (mapcar (lambda (y) (random 1.0)) x))
    (make-list n :initial-element (make-list m :initial-element 0))))

;; Gets maximum in matrix
(defun mat-max (mat)
  (cond
    ((not (mat-is-valid mat)) (error "mat not in valid nxm matrix form"))
    (t
      (reduce #'max (mapcar (lambda (x) (reduce #'max x)) mat)))))

;; Sums along a given axis, returns a vector with sums
(defun mat-sum (mat axis)
  (cond
    ((not (mat-is-valid mat)) (error "mat not in valid nxm matrix form"))
    ((not (or (= 0 axis) (= 1 axis))) (error "axis must be 0 (columns) or 1 (rows)"))
    (t
      (cond
        ((= 1 axis) (mapcar (lambda (x) (list (reduce #'+ x))) mat))
        (t (mat-t (mapcar (lambda (x) (list (reduce #'+ x))) (mat-t mat))))))))

;; Duplicates vector to form a matrix (i.e. 1xm -> cxm or nx1 -> nxc)
(defun mat-fill (v c)
  (cond
    ((or (not (mat-is-valid v)) (not (or (= 1 (length v)) (= 1 (length (car v)))))) (error "v not in valid 1xm or nx1 vector form"))
    ((not (and (integerp c) (> c 0))) (error "c must be integer and greater than zero"))
    (t
      (cond
        ((= 1 (length v)) (make-list c :initial-element (first v)))
        (t (mapcar (lambda (x) (make-list c :initial-element (first x))) v))))))

;; Sums matrix and then fills to return to dimensionality of original matrix
(defun mat-sum-fill (mat axis)
  (mat-fill (mat-sum mat axis) (if (= 1 axis) (length (car mat)) (length mat))))

;; Performs unary operation on each element in matrix
(defun mat-unary (op mat)
  (cond
    ((not (mat-is-valid mat)) (error "mat not in valid nxm matrix form"))
    (t
      (mapcar (lambda (x) (mapcar (lambda (i) (funcall op i)) x)) mat))))

;; Performs binary operation on matrices, pairwise
(defun mat-pairwise (op mat1 mat2)
  (cond
    ((not (mat-is-valid mat1)) (error "mat1 not in valid nxm matrix form"))
    ((not (mat-is-valid mat2)) (error "mat2 not in valid nxm matrix form"))
    ((not (= (length mat1) (length mat2))) (error "matrix sizes not compatible"))
    ((not (= (length (car mat1)) (length (car mat2)))) (error "matrix sizes not compatible"))
    (t
      (mapcar (lambda (x y) (mapcar (lambda (i j) (funcall op i j)) x y)) mat1 mat2))))

;; Performs softmax on matrix and returns normalized matrix
(defun softmax (mat)
  (cond
    ((not (mat-is-valid mat)) (error "mat not in valid nxm matrix form"))
    (t (let*
        ((maxv (mat-max mat))
        (e_x (mat-unary (lambda (x) (exp x))
          (mat-unary (lambda (x) (- x maxv)) mat)))
        (norm (mat-sum-fill e_x 0)))
      (mat-pairwise #'/ e_x norm)))))

;; Calculates (L2) norm of vector
(defun vec-norm (v)
  (cond
    ((or (not (mat-is-valid v)) (not (or (= 1 (length v)) (= 1 (length (car v)))))) (error "v not in valid 1xm or nx1 vector form"))
    (t
      (cond
        ((= 1 (length v)) (sqrt (reduce (lambda (x y) (+ x (expt y 2))) (car v) :initial-value 0)))
        (t (vec-norm (mat-t v)))))))