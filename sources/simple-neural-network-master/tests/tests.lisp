;;; This library implements a simple neural network.
;;; Copyright 2019-2022 Guillaume Le Vaillant
;;; This library is free software released under the GNU GPL-3 license.

(defpackage :simple-neural-network/test
  (:use :cl :fiveam :simple-neural-network)
  (:import-from :simple-neural-network
                #:neural-network-layers
                #:neural-network-weights
                #:neural-network-biases
                #:neural-network-deltas))

(in-package :simple-neural-network/test)


(def-suite snn-tests
  :description "Unit tests for simple neural network.")

(in-suite snn-tests)


(test xor
  (labels ((normalize (x)
             (if (= x 1.0d0) 1.0d0 -1.0d0))
           (denormalize (x)
             (if (> x 0.0d0) 1.0d0 0.0d0))
           (same-value-p (output target)
             (= (denormalize (aref output 0))
                (denormalize (aref target 0)))))
    (let ((inputs (mapcar (lambda (v)
                            (map 'vector #'normalize v))
                          '(#(0.0d0 0.0d0)
                            #(0.0d0 1.0d0)
                            #(1.0d0 0.0d0)
                            #(1.0d0 1.0d0))))
          (targets (mapcar (lambda (v)
                             (map 'vector #'normalize v))
                           '(#(0.0d0)
                             #(1.0d0)
                             #(1.0d0)
                             #(0.0d0))))
          (nn (create-neural-network 2 1 4)))
      (dotimes (i 1000)
        (train nn inputs targets 0.1))
      (is (= 1 (accuracy nn inputs targets :test #'same-value-p))))))

(test cos
  (flet ((get-samples (n)
           (loop repeat n
                 for x = (float (- (random (* 2 pi)) pi) 1.0d0)
                 collect (vector x) into inputs
                 collect (vector (cos x)) into targets
                 finally (return (list inputs targets)))))
    (destructuring-bind (inputs targets) (get-samples 100000)
      (multiple-value-bind (normalize-input denormalize-input)
          (find-normalization inputs)
        (declare (ignore denormalize-input))
        (multiple-value-bind (normalize-target denormalize-target)
            (find-normalization targets)
          (let* ((inputs (mapcar normalize-input inputs))
                 (targets (mapcar normalize-target targets))
                 (nn (create-neural-network 1 1 8 8 8))
                 (learning-rate (find-learning-rate nn inputs targets
                                                    :iterations 20
                                                    :epochs 10
                                                    :maximum 0.3))
                 (close-enough-p (lambda (output target)
                                   (let ((x (aref (funcall denormalize-target output) 0))
                                         (y (aref (funcall denormalize-target target) 0)))
                                     (<= (abs (/ (- x y) y)) 0.01)))))
            (dotimes (i 100)
              (let ((batch-size (max 1 (floor i 10))))
                (train nn inputs targets learning-rate :batch-size batch-size)))
            (destructuring-bind (inputs targets) (get-samples 100)
              (let ((inputs (mapcar normalize-input inputs))
                    (targets (mapcar normalize-target targets)))
                (is (<= 90/100 (accuracy nn inputs targets
                                         :test close-enough-p)))))))))))

(defun mnist-file-path (filename)
  (asdf:system-relative-pathname "simple-neural-network"
                                 (concatenate 'string "tests/" filename)))

(defun mnist-read-and-normalize-image (data offset)
  (let ((image (make-array (* 28 28)
                           :element-type 'double-float
                           :initial-element 0.0d0)))
    (dotimes (i (* 28 28) image)
      (setf (aref image i) (/ (- (aref data (+ offset i)) 128) 128.0d0)))))

(defun mnist-read-and-normalize-label (data offset)
  (let ((target (make-array 10
                            :element-type 'double-float
                            :initial-element -1.0d0))
        (category (aref data offset)))
    (setf (aref target category) 1.0d0)
    target))

(defun mnist-load (type)
  (destructuring-bind (n-images images-path labels-path)
      (if (eql type :train)
          (list 60000
                (mnist-file-path "train-images-idx3-ubyte.gz")
                (mnist-file-path "train-labels-idx1-ubyte.gz"))
          (list 10000
                (mnist-file-path "t10k-images-idx3-ubyte.gz")
                (mnist-file-path "t10k-labels-idx1-ubyte.gz")))
    (let ((images (with-open-file (f images-path
                                     :element-type '(unsigned-byte 8))
                    (let ((images-data (chipz:decompress nil 'chipz:gzip f)))
                      (loop for i from 0 below n-images
                            for offset = (+ 16 (* i 28 28))
                            collect (mnist-read-and-normalize-image images-data
                                                                    offset)))))
          (labels (with-open-file (f labels-path
                                     :element-type '(unsigned-byte 8))
                    (let ((labels-data (chipz:decompress nil 'chipz:gzip f)))
                      (loop for i from 0 below n-images
                            collect (mnist-read-and-normalize-label labels-data
                                                                    (+ 8 i)))))))
      (values images labels))))

(test mnist
  (let ((nn (create-neural-network (* 28 28) 10 128)))
    (multiple-value-bind (inputs targets) (mnist-load :train)
      (train nn inputs targets 0.006d0))
    (multiple-value-bind (inputs targets) (mnist-load :test)
      (is (<= 85/100 (accuracy nn inputs targets))))))

(test store/restore
  (let ((nn1 (create-neural-network 3 2 4))
        (input #(0.2d0 0.5d0 0.1d0))
        (target #(0.1d0 0.2d0 0.3d0 0.4d0)))
    (train nn1 (list input) (list target) 0.6d0)
    (uiop:with-temporary-file (:pathname path)
      (store nn1 path)
      (let ((nn2 (restore path)))
        (is (equalp (neural-network-weights nn1)
                    (neural-network-weights nn2)))
        (is (equalp (neural-network-biases nn1)
                    (neural-network-biases nn2)))
        (is (equalp (predict nn1 #(0.6d0 0.5d0 0.4d0))
                    (predict nn2 #(0.6d0 0.5d0 0.4d0))))))))

(test copy
  (let ((nn1 (create-neural-network 3 2 4))
        (input #(0.2d0 0.5d0 0.1d0))
        (target #(0.1d0 0.2d0 0.3d0 0.4d0)))
    (train nn1 (list input) (list target) 0.1d0)
    (let ((nn2 (copy nn1)))
      (is (equalp (neural-network-weights nn1)
                  (neural-network-weights nn2)))
      (is (equalp (neural-network-biases nn1)
                  (neural-network-biases nn2)))
      (train nn1 (list input) (list target) 0.1d0)
      (is-false (equalp (neural-network-weights nn1)
                        (neural-network-weights nn2)))
      (is-false (equalp (neural-network-biases nn1)
                        (neural-network-biases nn2)))
      (train nn2 (list input) (list target) 0.1d0)
      (is (equalp (neural-network-weights nn1)
                  (neural-network-weights nn2)))
      (is (equalp (neural-network-biases nn1)
                  (neural-network-biases nn2))))))

(test normalization/denormalization
  (let ((inputs '(#(1.0d0 1.0d0 1.0d0)
                  #(2.0d0 1.0d1 -1.0d0)
                  #(3.0d0 1.0d2 2.0d0)
                  #(4.0d0 1.0d3 -2.0d0)
                  #(5.0d0 1.0d4 3.0d0))))
    (multiple-value-bind (normalize denormalize) (find-normalization inputs)
      (let* ((normalized-inputs (mapcar normalize inputs))
             (denormalized-inputs (mapcar denormalize normalized-inputs)))
        (mapc (lambda (x y) (is (equalp x y)))
              inputs
              denormalized-inputs)))))
