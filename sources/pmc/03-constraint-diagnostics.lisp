(in-package :pmc)

;; ===============================================
;; ===============================================

;;; PWConstraints by Mikael Laurson (c), 1995

;; ===============================================
;; ===============================================
;; ===============================================


;; ========================================================
;; constraint-diagnostics
;; ========================================================

;; by default diagnostics is nil
;; (setf *constraint-diagnostics* t)
;; (setf *constraint-diagnostics* nil)

(defun read-diagnostics (fns)
  (when *constraint-diagnostics*
    (let ((index 0)
	  res)
      (dolist (fn fns)
	(when (> (read-key fn :stats) 0)
	  (push (list (incf index)
		      (documentation fn 'function) (read-key fn :stats))
		res)))
      (mapc #'print (sort res #'> :key #'third))))
  (values))

(defun write-diagnostics (fn)
  (when *constraint-diagnostics*
    (let* ((stats (read-key fn :stats))
	   (cnt (1+ stats))
	   (print-cnt 50))
      ;(print (list (documentation fn 'function) cnt))
      (write-key fn :stats cnt)
      (when (= (mod cnt print-cnt) 0)
	(print (list (documentation fn 'function) cnt))))))

(defun start-diagnostics (fns)
  (when *constraint-diagnostics*
    (dolist (fn fns)
      (write-key fn :stats 0))))
