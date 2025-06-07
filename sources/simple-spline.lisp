(in-package patch-work)


(defun compute-spline (points)
  "Computes cubic spline coefficients for given points (natural spline)."
  (let* ((sorted-points (sort (copy-list points) #'< :key #'car))
         (n (length sorted-points)))
    (when (< n 2)
      (error "At least two points required"))
    (let* ((x (map 'vector #'car sorted-points))
           (y (map 'vector #'cadr sorted-points))
           (m (- n 2)) ; Number of equations
      (if (= n 2)
          ;; Linear interpolation for two points
          (let ((h (- (aref x 1) (aref x 0)))
                (dy (- (aref y 1) (aref y 0))))
            (list (list (aref x 0) (aref x 1) (aref y 0) (/ dy h) 0 0)))
          ;; Cubic spline for three or more points
          (let* ((h (make-array (1- n)))
                 (delta (make-array (1- n)))
                 (a (make-array m))
                 (b (make-array m))
                 (c (make-array m))
                 (d (make-array m)))
            ;; Calculate h and delta arrays
            (loop for i from 0 below (1- n) do
              (setf (aref h i) (- (aref x (1+ i)) (aref x i)))
              (setf (aref delta i) (/ (- (aref y (1+ i)) (aref y i)) (aref h i))))
            ;; Set up tridiagonal system
            (loop for i from 0 below m do
              (cond
                ((= i 0) ; First equation
                 (setf (aref a i) 0.0)
                 (setf (aref b i) (* 2 (+ (aref h 0) (aref h 1))))
                 (setf (aref c i) (aref h 1))
                 (setf (aref d i) (* 3 (- (aref delta 1) (aref delta 0)))))
                ((= i (1- m)) ; Last equation
                 (setf (aref a i) (aref h (- i 1)))
                 (setf (aref b i) (* 2 (+ (aref h (- i 1)) (aref h i))))
                 (setf (aref c i) 0.0)
                 (setf (aref d i) (* 3 (- (aref delta i) (aref delta (- i 1))))))
                (t ; Middle equations
                 (setf (aref a i) (aref h (- i 1)))
                 (setf (aref b i) (* 2 (+ (aref h (- i 1)) (aref h i))))
                 (setf (aref c i) (aref h i))
                 (setf (aref d i) (* 3 (- (aref delta i) (aref delta (- i 1))))))))
            ;; Solve tridiagonal system
            (let ((M (thomas-algorithm a b c d m))
              ;; Build spline segments
              (loop for i from 0 below (1- n) collect
                (let* ((x0 (aref x i))
                       (x1 (aref x (1+ i)))
                       (h_i (aref h i))
                       (delta_i (aref delta i))
                       (M_i (if (zerop i) 0.0 (aref M (- i 1)))))
                       (M_i+1 (if (= i (1- m)) 0.0 (aref M i))))
                       (a_i (aref y i))
                       (b_i (- delta_i (/ (* h_i (+ (* 2 M_i) M_i+1)) 6)))
                       (c_i (/ M_i 2))
                       (d_i (/ (- M_i+1 M_i) (* 6 h_i))))
                  (list x0 x1 a_i b_i c_i d_i)))))))))

; (defun thomas-algorithm (a b c d m)
;   "Solves tridiagonal system using Thomas algorithm."
;   (let ((x (make-array m)))
;     ;; Forward elimination
;     (loop for i from 1 below m do
;       (let ((w (/ (aref a i) (aref b (1- i)))))
;         (setf (aref b i) (- (aref b i) (* w (aref c (1- i)))))
;         (setf (aref d i) (- (aref d i) (* w (aref d (1- i))))))
;     ;; Back substitution
;     (setf (aref x (1- m)) (/ (aref d (1- m)) (aref b (1- m))))
;     (loop for i from (- m 2) downto 0 do
;       (setf (aref x i) (/ (- (aref d i) (* (aref c i) (aref x (1+ i)))) (aref b i)))
;     x))

; (defun evaluate-spline (spline x)
;   "Evaluates spline at position x."
;   (let ((segments spline))
;     (dolist (segment segments)
;       (when (and (>= x (first segment)) (<= x (second segment)))
;         (return-from evaluate-spline
;           (let* ((x0 (first segment))
;                  (dx (- x x0))
;                  (a (third segment))
;                  (b (fourth segment))
;                  (c (fifth segment))
;                  (d (sixth segment)))
;             (+ a 
;                (* b dx)
;                (* c dx dx)
;                (* d dx dx dx))))))
;     ;; Handle extrapolation
;     (if (< x (first (first segments)))
;         (third (first segments))
;         (let* ((last-seg (car (last segments)))
;                (x0 (first last-seg))
;                (dx (- x x0))
;                (a (third last-seg))
;                (b (fourth last-seg))
;                (c (fifth last-seg))
;                (d (sixth last-seg)))
;           (+ a (* b dx) (* c dx dx) (* d dx dx dx))))))

