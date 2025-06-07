(defpackage my-package
  (:use :common-lisp :pw :iterate :sb-ext)) ; 

(in-package my-package)

(defun my-function (a b c) 
    (+ a (* b c))
  )


