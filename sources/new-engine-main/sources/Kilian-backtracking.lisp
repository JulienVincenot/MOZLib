(in-package :cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defparameter *var-num* 10)
  (declaim (fixnum *var-num*))
  (defparameter *optimization-settings*
    '(optimize (speed 3) (safety 0) (debug 0) (space 0)
      (compilation-speed 0))))

(deftype var-type () 'fixnum)
(deftype var-array-type ()
  '(simple-array var-type (#.*var-num*)))

(defparameter *vars* (make-array *var-num* :element-type 'var-type))
(declaim (var-array-type *vars*))

(defmacro get-var (i)
  `(aref *vars* ,i))

(defparameter *domain* '(1 2 3 4 5 6 7))
(declaim (list *domain*))

(defparameter *current-values* (make-array *var-num* :element-type 'list))
(declaim ((simple-array list (#.*var-num*)) *current-values*))

(defmacro get-current-value (i)
  `(aref *current-values* ,i))

(defparameter *solution-count* 0)
(declaim (fixnum *solution-count*))

(defun initialize-for-i (i)
  (declare #.*optimization-settings* (fixnum i))
  (if (>= i *var-num*)
      (progn
        #+nil(cerror "fail it"
                     "done ~a" (map 'list #'car *current-values*))
        (incf *solution-count*)
        (next-for-i (the fixnum (1- i))))
      (progn (setf (get-current-value i) *domain*)
             (initialize-for-i (1+ i)))))

(defun fail-for-i (i)
  (declare #.*optimization-settings* (fixnum i))
  (if (< i 0)
      nil
      #+nil(error "fail!")
      (next-for-i i)))

(defun next-for-i (i)
  (declare #.*optimization-settings* (fixnum i))
  (let ((next-value (cdr (get-current-value i))))
    (if (null next-value)
        (fail-for-i (1- i))
        (progn
          (setf (get-current-value i) next-value)
          (initialize-for-i (1+ i))))))

(defun search-all ()
  (setq *solution-count* 0)
  (initialize-for-i 0)
  *solution-count*)

(defun search-all2 ()
  (macrolet ((initialize-for-i (i)
               `(progn (setq i ,i)
                       (go initialize-for-i)))
             (next-for-i (i)
               `(progn (setq i ,i)
                       (go next-for-i)))
             (fail-for-i (i)
               `(progn (setq i ,i)
                       (go fail-for-i))))
    (declare #.*optimization-settings*)
    (let ((i 0))
      (declare (fixnum i))
      (setq *solution-count* 0)
      (tagbody
       initialize-for-i
         (if (>= i *var-num*)           ; = scheint nichts zu bringen
             (progn
               #+nil(cerror "fail it"
                            "done ~a" (map 'list #'car *current-values*))
               (incf *solution-count*)
               (next-for-i (the fixnum (1- i))))
             (progn (setf (get-current-value i) *domain*)
                    (initialize-for-i (1+ i))))
       next-for-i
         (let ((next-value (cdr (get-current-value i))))
           (if (null next-value)
               (fail-for-i (1- i))
               (progn
                 (setf (get-current-value i) next-value)
                 (initialize-for-i (1+ i)))))
       fail-for-i
         (if (< i 0)
             (go end)
             (next-for-i i))
       end)
      *solution-count*)))

(defun search-all3 ()
  (macrolet ((initialize-for-i (i)
               `(progn (setq i ,i)
                       (go initialize-for-i)))
             (next-for-i (i)
               `(progn (setq i ,i)
                       (go next-for-i)))
             (fail-for-i (i)
               `(progn (setq i ,i)
                       (go fail-for-i)))
             (get-current-value (i)
               `(aref current-values ,i)))
    (declare #.*optimization-settings*)
    (let ((i 0)
          (solution-count 0)
          (current-values (make-array *var-num* :element-type 'list :initial-element nil))
          (var-num *var-num*)
          (domain '(1 2 3 4 5 6 7)))
      (declare (fixnum i solution-count)
               ((simple-array list (#.*var-num*)) current-values)
               (list domain))
      (setq solution-count 0)
      (tagbody
       initialize-for-i
         (if (>= i var-num)             ; = scheint nichts zu bringen
             (progn
               #+nil(cerror "fail it"
                            "done ~a" (map 'list #'car *current-values*))
               (incf solution-count)
               (next-for-i (the fixnum (1- i))))
             (progn (setf (get-current-value i) domain)
                    (initialize-for-i (1+ i))))
       next-for-i
         (let ((next-value (cdr (get-current-value i))))
           (if (null next-value)
               (fail-for-i (1- i))
               (progn
                 (setf (get-current-value i) next-value)
                 (initialize-for-i (1+ i)))))
       fail-for-i
         (if (< i 0)
             (go end)
             (next-for-i i))
       end)
      solution-count)))
