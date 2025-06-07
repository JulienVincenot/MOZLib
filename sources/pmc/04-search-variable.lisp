(in-package :pmc)

;; ===============================================
;; ===============================================

;;; PWConstraints by Mikael Laurson (c), 1995

;; ===============================================
;; ===============================================
;; ===============================================

;; ===============================================
;;           arc
;; ===============================================
(defclass arc ()
  ((fn :initarg :fn :accessor fn)
   (prev-s-variables :initarg :prev-s-variables :accessor prev-s-variables)
   (next-s-variable :initarg :next-s-variable :accessor next-s-variable)))

(defun mk-arc (fn prev-s-variables next-s-variable)
  (make-instance 'arc :fn fn :prev-s-variables prev-s-variables
		 :next-s-variable next-s-variable))


;; ===============================================
;;           search-variable
;; ===============================================
;;; TODO make this a structure
(defclass search-variable (key-item linked-list-item)
  ((domain :initform () :initarg :domain :accessor domain)
   (domain-copy :initform () :initarg :domain-copy :accessor domain-copy)
   (arcs :initform () :initarg :arcs :accessor arcs) ;;
   (value :initform () :initarg :value :accessor value)
   (other-values :initform () :initarg :other-values :accessor other-values)))

(defun update-values (self values)
  (declare (search-variable self))
  (setf (value self) (first values))
  (setf (other-values self) (rest values)))

(defun set-init-state (self)
  (declare (search-variable self))
  (setf (value self) ())
  (setf (other-values self) ()))

(defun set-new-forward-state- (self)
  (declare (search-variable self))
  (if (other-values self)
      (progn
	(setf (value self) (first (other-values self)))
	(setf (other-values self) (rest (other-values self)))
	t)
      (progn
	(set-init-state self)
	nil)))

(defun set-new-forward-state (self)
  (declare (search-variable self))
  (let ((fl (set-new-forward-state- self))
	(val (value self)))
    (setf (first (read-key self :write-pos)) val)
    (setf (first (read-key self :rev-sols-list)) val)
    fl))

(defun all-prev-sols (self)
  (declare (search-variable self))
  (let ((prev-item self)
	res)
    (loop while (setq prev-item (prev-item prev-item))
	 do (push (value prev-item) res))
    (nreverse res)))

(defun all-next-sols (self)
  (declare (search-variable self))
  (let ((next-item self)
	res)
    (loop while (setq next-item (next-item next-item))
	 do (push (value next-item) res))
    (nreverse res)))

;; ===============================================
(defun make-search-variable (domain)
  (make-instance 'search-variable :domain domain :domain-copy domain))
