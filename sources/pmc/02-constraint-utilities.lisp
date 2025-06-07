(in-package :pmc)

;; ===============================================
;; ===============================================

;;; PWConstraints by Mikael Laurson (c), 1995

;; ===============================================
;; ===============================================
;; ===============================================

;; ===============================================
;;      global variables
;; ===============================================
(defparameter *constraint-diagnostics* nil)
(defparameter *current-SE* ())
(defparameter *staff-collection* ())
(defparameter *part-collection* ())
(defparameter *measure-lines* ())
(defparameter *search-order* :from-bass)
;; (defparameter pw::*current-score-PMC-RTM-window* ())

;; ===============================================
(defun make-ls-ls (list)
  (if list
      (if (atom (car list)) (list list) list)
      ()))

(defun make-length-ls-ls (lst)
  (let ((sort-ls (sort (copy-list lst) #'< :Key #'length))
	temp res)
    (push (pop sort-ls) temp)
    (loop while sort-ls
	 do (loop while (= (length (car sort-ls)) (length (car temp)))
		 do (push (pop sort-ls) temp))
	 (push (nreverse temp) res)
	 (setq temp (list (pop sort-ls))))
    (when (car temp) (push (nreverse temp) res))
    (nreverse res)))

;; (make-length-ls-ls '((1 2 3) (4 5 6 7 8) (4 5 6 7 8) (1 2 3) (4 5 6 7)))

;; ===============================================
;;  prop-item
;; ===============================================
(defgeneric  write-key (place key data) (:documentation "write data to place with key"))
(defgeneric  read-key (place key) (:documentation "read data from place with key"))

(defclass key-item ()
  ((prop-list :initform (gensym) :initarg :prop-list :accessor prop-list)))

(defmethod write-key ((self key-item) key data)
  (setf (get (prop-list self) key) data))

(defmethod read-key ((self key-item) key)
  (get (prop-list self) key))

;;   for functions
(defmethod write-key ((self symbol) key data)
  (setf (get self key) data))

(defmethod read-key ((self symbol) key)
  (get self key))

;;   for hash-tables
(defmethod write-key ((self hash-table) key data)
  (setf (gethash key self) data))

(defmethod read-key ((self hash-table) key)
  (gethash key self))

;; TODO this fun does not seem to be needed...
;; commented it out cause 'function-name' is undefined...

;; (defun write-defaults (fn &rest key-data-pairs)
;;   (let (key data)
;;     (loop while key-data-pairs
;;        do (progn (setq key (pop key-data-pairs))
;;               (setq data (pop key-data-pairs))
;;               (write-key (function-name fn) key data)))
;;     fn))

;; =================================================
;;  for PW-chord
;; =================================================
;; (defmethod make-chord-hash ((self pw::C-chord))
;;   (setf (pw::extra self)(make-hash-table :test #'equal))) ;??? to deal with strings

;; (defmethod write-key ((self pw::C-chord) key data)
;;   (unless (pw::extra self) (make-chord-hash self))
;;   (write-key (pw::extra self) key data))

;; (defmethod read-key ((self pw::C-chord) key)
;;   (read-key (pw::extra self) key))

;; (defmethod clear-keys ((self pw::C-chord))
;;   (clrhash  (pw::extra self)))

;;  and PW-note
;; (defmethod make-note-hash ((self pw::C-note))
;;   (setf (pw::extra self)(make-hash-table :test #'equal))) ;??? to deal with strings

;; (defmethod write-key ((self pw::C-note) key data)
;;   (unless (pw::extra self) (make-note-hash self))
;;   (write-key (pw::extra self) key data))

;; (defmethod read-key ((self pw::C-note) key)
;;   (read-key (pw::extra self) key))

;; (defmethod clear-keys ((self pw::C-note))
;;   (clrhash  (pw::extra self)))

;; ===============================================
;;  linked-list
;; ===============================================

;;; TODO make this a structure
(defclass linked-list-item ()
  ((prev-item :initform nil :accessor prev-item)
   (next-item :initform nil :accessor next-item)))

(defun n-prev-items (self count)
  (declare (linked-list-item self))
  (let (res (prev-item self) (index 0))
    (loop while (and (setq prev-item (prev-item prev-item)) (> count index))
	 do (progn (push prev-item res)
		   (incf index)))
    (nreverse res)))

(defun n-next-items (self count)
  (declare (linked-list-item self))
  (let (res (next-item self) (index 0))
    (loop while (and (setq next-item (next-item next-item)) (> count index))
	 do (progn (push next-item res)
		   (incf index)))
    (nreverse res)))

(defun all-prev-items (self)
  (declare (linked-list-item self))
  (let (res (prev-item self))
    (loop while (setq prev-item (prev-item prev-item))
	 do (push prev-item res))
    (nreverse res)))

(defun all-next-items (self)
  (declare (linked-list-item self))
  (let (res (next-item self))
    (loop while (setq next-item (next-item next-item))
	 do (push next-item res))
    (nreverse res)))

(defun all-prev-items+self-rev (self)
  (declare (linked-list-item self))
  (let ((res (list self)) (prev-item self))
    (loop while (setq prev-item (prev-item prev-item))
	 do (push prev-item res))
    res))

;; =================================================
(defun mk-linked-item ()
  (make-instance 'linked-list-item))

(defun link-list (l)
  (let (prev item)
    (loop while (setq item (pop l))
	 do (progn (setf (prev-item item) prev)
		   (setf (next-item item) (car l))
		   (setq prev item)))))


;; (defclass  test-item (linked-list-item)
;;   ((data :initarg :data :accessor data)))

;; (defparameter w nil)
;; (link-list (setf w (let (res) (dotimes (i 30) (push (make-instance 'test-item :data i) res)) (nreverse res))))

;; (mapcar #'data (n-next-items (nth 10 w) 10))
;; (mapcar #'data (n-prev-items (nth 10 w) 10))
;; (mapcar #'data (all-next-items (nth 10 w)))
;; (mapcar #'data (all-prev-items (nth 10 w)))
