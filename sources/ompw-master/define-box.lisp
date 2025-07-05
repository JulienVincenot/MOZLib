;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

;;; This file is part of ompw.

;;; Copyright (c) 2007 - 2011, Kilian Sprotte. All rights reserved.

;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.

;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.

;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(in-package :ompw)

;; TODO allow only one docstring
;; TODO pw menu with association string is currently not possible
;; TODO icon option for OM

(defun ensure-list (thing)
  (if (listp thing) thing (list thing)))

(defun atom-or-first (thing)
  (or (atom thing) (first thing)))

(defun second-or-nil (thing)
  (if (listp thing) (second thing) nil))

(defvar *lambda-list-keywords*
  '(&key &aux &rest &body &whole &optional &environment &allow-other-keys))

(defun lambda-list-keywordp (obj)
  (member obj *lambda-list-keywords*))

(defun args-after-take-default-value (lambda-list-keyword)
  (case lambda-list-keyword
    ((&key &aux &optional) t)
    (otherwise nil)))

;; TODO check these definitions against each other
;; probably make this a normal pure lisp functions
(defun self-evaluating-p (obj)
  #+sbcl (sb-int:self-evaluating-p obj)
  #-sbcl (and (atom obj) (or (null obj) (not (symbolp obj)) (eq obj t) (keywordp obj))))

(defun canonicalize-menu (menu)
  (destructuring-bind (arg &rest values) menu
    (cons arg
	  (loop for value in values
	     if (consp value)
	     collect value
	     else collect (list value (prin1-to-string value))))))

(defun parse-body (body)
  "Returns a plist, where values (of possibly multiply
   occuring keys in BODY) are collected into lists.
   If a documentation string is present, it will get the key :doc.
   The actual forms of BODY are available by the key :forms."
  (labels ((rec (body)
	     (cond
	       ((keywordp (car body))
		(let ((key (car body))

		      (rest (rec (cddr body))))
		  (if (getf rest key)
		      (progn
			(setf (getf rest key) (nconc (list (second body)) (getf rest key)))
			rest)
		      (list* (first body) (list (second body)) rest))))
	       ((stringp (car body))
		(rec (cons :doc body)))
	       ((and (listp (car body))
		     (eql 'declare (caar body)))
		(rec `(:declarations ,(car body) ,@(cdr body))))
	       (t `(:forms ,body)))))
    (let ((parsed-body (rec body)))
      (setf (getf parsed-body :menu) (mapcar #'canonicalize-menu (getf parsed-body :menu)))
      parsed-body)))

(defun canonicalize-lambda-list (lambda-list &optional (default-value t)) ; req args take default
  (cond
    ((null lambda-list)
     nil)
    ((lambda-list-keywordp (car lambda-list))
     (cons (car lambda-list)
	   (canonicalize-lambda-list (cdr lambda-list)
				     (args-after-take-default-value (car lambda-list)))))
    (t
     (cons (typecase (car lambda-list)
	     (symbol (if default-value
			 (list (car lambda-list) nil)
			 (car lambda-list)))
	     (list (car lambda-list)))
	   (canonicalize-lambda-list (cdr lambda-list) default-value)))))

(defun required-strip-initvals (lambda-list)
  (loop
     for arg-tail on lambda-list
     for arg = (car arg-tail)
     do (when (lambda-list-keywordp arg)
	  (return (nconc required-args arg-tail)))
     collect (first arg) into required-args
     finally (return required-args)))

(defun strip-initvals (lambda-list)
  (mapcar #'(lambda (arg) (if (listp arg) (first arg) arg)) lambda-list))

(defun lambda-list-only-args (lambda-list)
  (remove-if #'lambda-list-keywordp lambda-list))

(defun quote-initvals (lambda-list)
  "Will quote all initvals (second arg) in LAMBDA-LIST,
if there are not self-evaluating-p."
  (loop for arg in lambda-list
     if (or (atom arg) (self-evaluating-p (second arg)))
     collect arg
     else collect (list (first arg) (list 'quote (second arg)))))

;;; its a good time to remember here that PARSED-BODY
;;; is not really a plist
(defun export-option-present (parsed-body)
  (car (getf parsed-body :export '(t))))

;;; TODO maybe we dont need this option
(defun main-menu-option-present (parsed-body)
  (car (getf parsed-body :main-menu '(t))))

(defun export-and-menu-forms (name parsed-body)
  (when (export-option-present parsed-body)
    `((export ',name)
      ,@(when (main-menu-option-present parsed-body)
	      `((eval-when (:load-toplevel :execute)
		  (menu-add-item *menu* ',name)))))))

;;; TODO doc should be for the defgeneric, not the defmethod
#-(or pwgl om)
(defmacro define-box (name lambda-list &body body)
  (let* ((parsed-body (parse-body body))
	 (lambda-list (canonicalize-lambda-list lambda-list))
	 (lambda-list-only-args (lambda-list-only-args lambda-list))
	 (lambda-list-arg-names (mapcar #'atom-or-first lambda-list-only-args))
	 (lambda-list-arg-values (mapcar #'second-or-nil lambda-list-only-args)))
    `(progn
       ,@(export-and-menu-forms name parsed-body)
       ,@(unless (getf parsed-body :non-generic)
		 `((defgeneric ,name ,(strip-initvals lambda-list))))
       (,(if (getf parsed-body :non-generic)
	     'defun
	     'defmethod)
	 ,name
	 ,(quote-initvals (required-strip-initvals lambda-list))
	 ,@(getf parsed-body :doc)
	 ,@(getf parsed-body :declarations)
	 ,@(loop for (arg . vals) in (getf parsed-body :menu)
	      for arg-ind = (position arg lambda-list-arg-names)
	      for def-val = (nth arg-ind lambda-list-arg-values)
	      do (unless (member def-val vals :key #'first :test #'equal)
		   (cerror "Okay - we ignore this."
			   "Sorry, default-value '~S' of arg '~S' is not part of its menu ~S."
			   def-val arg (cons arg vals)))
	      collect `(assert (member ,arg ',(mapcar #'first vals))))
	 ,@(getf parsed-body :forms)))))

#+om
(defmacro define-box (name lambda-list &body body)
  (labels ((quote-for-5.1 (obj)
	     #+(or ccl-5.1 lispworks) (list 'quote obj)
	     #-(or ccl-5.1 lispworks) obj)
	   (omify-symbols (tree)
	     (cond
	       ((null tree)
		nil)
	       ((consp tree)
		(cons (omify-symbols (car tree))
		      (omify-symbols (cdr tree))))
	       ((and (symbolp tree) (not (keywordp tree)))
		(intern (symbol-name tree) #.(find-package "OM")))
	       (t tree))))
    (let* ((parsed-body (parse-body body))
	   (lambda-list (canonicalize-lambda-list lambda-list))
	   (lambda-list-only-args (lambda-list-only-args lambda-list))
	   (lambda-list-arg-names (mapcar #'atom-or-first lambda-list-only-args))
	   (lambda-list-arg-values (mapcar #'omify-symbols (mapcar #'second-or-nil lambda-list-only-args))))
      `(progn
	 ,@(export-and-menu-forms name parsed-body)
	 (om::defmethod! ,name ,(quote-initvals (required-strip-initvals lambda-list))
	   ,@(when (getf parsed-body :doc) '(:doc))
	   ,@(getf parsed-body :doc)
	   :initvals ',lambda-list-arg-values
	   :icon ,(car (getf parsed-body :icon '(176)))
	   :numouts ,(car (getf parsed-body :outputs '(1)))
	   ,@(when (getf parsed-body :menu)
		   (list :menuins
			 (quote-for-5.1
			  (loop for (arg . vals) in (getf parsed-body :menu)
			     for arg-ind = (position arg lambda-list-arg-names)
			     for def-val = (nth arg-ind lambda-list-arg-values)
			     do (unless (member def-val vals :key #'first :test #'equal)
				  (cerror "Okay - we ignore this."
					  "Sorry, default-value '~S' of arg '~S' is not part of its menu ~S."
					  def-val arg (cons arg vals)))
			     collect `(,arg-ind ,(loop for (value title) in vals
						    collect (if (eql value def-val)
								(list title value t)
								(list title value))))))))
	   ,@(getf parsed-body :declarations)
	   ,@(getf parsed-body :forms))))))

#+pwgl
;;; use :r :g :b between 0 and 1 for color
;;; look tutorial -> basic -> box-creation
(defmacro define-box (name lambda-list &body body)
  (labels ((lambda-list-quoted-values (lambda-list)
	     (loop
		for elt in lambda-list
		collect (if (consp elt)
			    (list (first elt) (list 'quote (second elt)))
			    elt)))
	   (lambda-list-ensure-defaults (lambda-list)
	     (loop for arg in lambda-list
		if (lambda-list-keywordp arg)
		collect arg
		else if (atom arg)
		collect (list arg nil)
		else collect arg))
	   (menu-form (menu-spec def-value)
	     (destructuring-bind (arg &rest items) menu-spec
	       ;; the string is first :menu-list (("eins" 1) ("zwei" 2))
	       `(ccl::mk-menu-subview :menu-list ',(mapcar #'reverse items) :value ,(position def-value items :key #'first :test #'equal)))))
    (let* ((parsed-body (parse-body body))
	   (lambda-list (lambda-list-quoted-values (canonicalize-lambda-list lambda-list)))
	   (lambda-list (lambda-list-ensure-defaults lambda-list))
	   (lambda-list (macrolet ((collect (obj)
				     `(push ,obj res)))
			  (loop with res
			     with menu-specs = (getf parsed-body :menu)
			     for arg in lambda-list
			     do (if (lambda-list-keywordp arg)
				    (collect arg)
				    (let ((menu-spec (find (car (ensure-list arg)) menu-specs :key #'first)))
				      (cond
					((null menu-spec)
					 (collect arg))
					(t
					 ;; second second because the def-val is quoted
					 (collect (list (first arg) (second arg) (menu-form menu-spec (second (second arg)))))))))
			     finally (return (nreverse res)))))
	   (outputs (getf parsed-body :outputs (list 1))))
      (when (and (> (first outputs) 1) (getf parsed-body :class))
	(error "In define-box ~s: Currently, you cannot specify a :class together with more than one :outputs." name))
      (when (getf parsed-body :class) (assert (= 1 (length (getf parsed-body :class)))))
      `(progn
	 ,@(export-and-menu-forms name parsed-body)
	 (ccl::pwgldef ,name ,lambda-list
	     ,(if (getf parsed-body :doc)
		  (first (getf parsed-body :doc))
		  "no doc")
	     (,@(when (not (= 1 (first outputs)))
		      `(:class 'ccl::PWGL-values-box :outputs ,(first outputs)))
		,@(when (getf parsed-body :class) `(:class ',(first (getf parsed-body :class)))))
	   ,@(getf parsed-body :declarations)
	   ,@(getf parsed-body :forms))))))
