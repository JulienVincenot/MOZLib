(in-package :jv-components)

;;; SPLINE CURVES 
;;; algo adapted from P. Bourke by Jean Bresson for OpenMusic
;;; http://astronomy.swin.edu.au/~pbourke/curves/spline/
;;; http://paulbourke.net/geometry/spline/

;;; ported to PWGL by Julien Vincenot

;; This returns the point "output" on the spline curve.
;; The parameter "v" indicates the position, it ranges from 0 to n-t+2
;; u = int*, n = int, tt = int, v = double, control = XYZ*, output = XYZ*   

(defun SplinePoint (u n tt v control)
  (let ((b 0)
        (outp (list 0 0 0)))
    (loop for k = 0 then (+ k 1)
          while (<= k n) do 
          (setf b (SplineBlend k tt u v))
          (setf (nth 0 outp) (+ (nth 0 outp) (* (nth 0 (nth k control)) b)))
          (setf (nth 1 outp) (+ (nth 1 outp) (* (nth 1 (nth k control)) b)))
          (setf (nth 2 outp) (+ (nth 2 outp) (* (nth 2 (nth k control)) b)))
          )
    outp))

(defun SplinePoint2D (u n tt v control)
  (let ((b 0)
        (outp (list 0 0)))
    (loop for k = 0 then (+ k 1)
          while (<= k n) do 
          (setf b (SplineBlend k tt u v))
          (setf (nth 0 outp) (+ (nth 0 outp) (* (nth 0 (nth k control)) b)))
          (setf (nth 1 outp) (+ (nth 1 outp) (* (nth 1 (nth k control)) b)))
          )
    outp))

;; Calculate the blending value, this is done recursively.
;; If the numerator and denominator are 0 the expression is 0.
;; If the deonimator is 0 the expression is 0
;; k = int, tt = int, u = int*, v = double
(defun SplineBlend (k tt u v)
  (let ((value 0))
    (setf value
          (if (= tt 1)
            (if (and (<= (nth k u) v) (< v (nth (+ k 1) u)))
              1 0)
          
            (if (and (= (nth (+ k tt -1) u) (nth k u)) (= (nth (+ k tt) u) (nth (+ k 1) u)))
              0 
              (if (= (nth (+ k tt -1) u) (nth k u))
                (* (/ (- (nth (+ tt k) u) v) (- (nth (+ tt k) u) (nth (+ k 1) u))) (SplineBlend (+ k 1) (- tt 1) u v))
                (if (= (nth (+ tt k) u) (nth (+ k 1) u))
                  (* (/ (- v (nth k u)) (- (nth (+ k tt -1) u) (nth k u))) (SplineBlend k (- tt 1) u v))
                  (+ (* (/ (- v (nth k u)) (- (nth (+ tt k -1) u) (nth k u))) (SplineBlend k (- tt 1) u v))  
                     (* (/ (- (nth (+ k tt) u) v) (- (nth (+ k tt) u) (nth (+ k 1) u)))  (SplineBlend (+ k 1) (- tt 1) u v)))
                  )))))
    value))


;; The positions of the subintervals of v and breakpoints, the position
;; on the curve are called knots. Breakpoints can be uniformly defined
;; by setting u[j] = j, a more useful series of breakpoints are defined
;; by the function below. This set of breakpoints localises changes to
;; the vicinity of the control point being modified.
;; u = int*, n = int, tt = int
(defun SplineKnots (n tt)
  (let ((u (make-sequence 'list (+ n tt 1)))) 
    (loop for j = 0 then (+ j 1)
          while (<= j (+ n tt)) do
          (if (< j tt)
            (setf (nth j u) 0)
            (if (<= j n)
           (setf (nth j u) (+ j (- tt) 1))
           (if (> j n)
             (setf (nth j u) (+ n (- tt) 2)))))
          )
    u)) 



;; Create all the points along a spline curve
;; Control points "inp", "n" of them.
;; Knots "knots", degree "t".
;; Ouput curve "outp", "res" of them.
;; inp = XYZ*, n = int, knots = int*, tt = int, outp = XYZ*, res = int
(defun SplineCurve (inp n knots tt res)
  (let ((outp (make-sequence 'list res))
        (interval 0)
        (increment (/ (+ n (- tt) 2) (float (- res 1)))))
    (loop for i = 0 then (+ i 1)
          while (< i (- res 1)) do
          (setf (nth i outp) (SplinePoint knots n tt interval inp))
          (incf interval increment))
    (setf (nth (- res 1) outp) (nth n inp))
    outp))

(defun SplineCurve2D (inp n knots tt res)
  (let ((outp (make-sequence 'list res))
        (interval 0)
        (increment (/ (+ n (- tt) 2) (float (- res 1)))))
    (loop for i = 0 then (+ i 1)
          while (< i (- res 1)) do
          (setf (nth i outp) (SplinePoint2D knots n tt interval inp))
          (incf interval increment))
    (setf (nth (- res 1) outp) (nth n inp))
    outp))


;; Example of how to call the spline functions
;;Basically one needs to create the control points, then compute
;; the knot positions, then calculate points along the curve.

;define N 3
;XYZ inp[N+1] = {0.0,0.0,0.0,   1.0,0.0,3.0,   2.0,0.0,1.0,   4.0,0.0,4.0};
;define T 3
;int knots[N+T+1];
;define RESOLUTION 200
;XYZ outp[RESOLUTION];


;;;;; PWGL Box

(defun pw-spline (xy_pairs resolution degree)
  
 (let* ((points xy_pairs)
         (N (- (length points) 1))
         (knots (SplineKnots N degree))
         (splc (SplineCurve2D points N knots degree resolution))
         (xylist splc)
         (fact (expt 10 15)))

;(car (system::mk2D-object :bpf xylist))
 
xylist


            ))

