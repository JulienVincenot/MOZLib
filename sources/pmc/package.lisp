;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; Coding:utf-8 -*-

(defpackage :pmc
  (:use :common-lisp)
  (:documentation "This is the pmc package.

It exports some symbols (and just symbols, not functions) for rule-writing,
which are the following:

@code{?if l rl len}

Example:
@lisp
\(pmc:pmc '((1 2) (3 4))
         '((* ?1 (pmc:?if (prog1 t
                            (format t \"l=~A, rl=~A, len=~A~%\" l rl len)))))
         :sols-mode :once)
@end lisp")
  (:export #:?if #:l #:rl #:len)        ;rule-writing symbols
  (:export #:cur-index #:cur-slen)      ;rule-writing functions
  (:export #:pmc)                       ;the main entry-point function
  (:export                              ;some more functions
   #:engine #:pmc-init #:next-sol))
