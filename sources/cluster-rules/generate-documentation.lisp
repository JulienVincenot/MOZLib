;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

;;; Using cldoc (https://gitlab.common-lisp.net/cldoc/cldoc/) 
;;; Just works.  Minor doc string formatting supported.
;;; Perhaps only downside: internal and exported symbols are not distinguished. Workaround: mark auxiliary function names etc. with a leading underscore (e.g., _aux-function). 
;;; BUG: Nested functions (e.g.g, global functions within flet) not documented. Could this be fixed with cldoc::define-descriptor-handler?

(require :cldoc)

(defparameter *doc-dir* (make-pathname :directory (append (pathname-directory *load-truename*) '("doc"))))

(cldoc:extract-documentation 'cludg:html (format nil "~A" *doc-dir*)
    (asdf:find-system :cluster-rules)
    :table-of-contents-title 
    "Cluster Rules")

