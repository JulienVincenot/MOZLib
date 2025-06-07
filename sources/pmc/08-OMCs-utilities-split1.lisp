(in-package :pmc)

;; ===============================================
;; ===============================================

;;; PWConstraints by Mikael Laurson (c), 1995

;; ===============================================
;; ===============================================
;; ===============================================
;; added from PatchWork by Orjan
(defun cirlist (elem)
  "makes a circular list out of elem"
  (setq elem (list elem))
  (rplacd elem elem))

;; ===============================================
;;   User search-engine functions
;; ===============================================
(defun engine ()
  "returns the current search-engine" *current-SE*)

(defun cur-index ()
  "returns the current search-index (counted from 1)"
  (1+ (variable-pos *current-SE*)))

(defun cur-slen ()
  "returns the number of search-variables of the current search-engine"
  (length (search-variables *current-SE*)))
