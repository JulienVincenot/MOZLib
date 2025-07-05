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

(defpackage :mylibrary-package
  (:use :cl :ompw))

(in-package :mylibrary-package)

(define-ompw myadd ((a 1) (b 1))
  "Add A + B."
  (+ a b))

(defmethod myadd ((a list) (b list))
  (mapcar #'+ a b))

(define-ompw myadd-non-gf ((a 1) (b 1))
  :non-generic t
  "Add A + B."
  (+ a b))

(define-ompw myposition ((elt 3) (list (1 2 3 4 3 2 1)) &optional (from-end nil))
  "Return position of ELT in LIST."
  :menu (from-end t nil)
  (position elt list :from-end from-end))

(define-ompw myadd2 ((a 3) (b 200))
  :menu (a 1 2 3 4 5)
  :menu (b (100 "einhundert") (200 "zweihundert"))
  "Add A + B."
  (+ a b))

(define-ompw myadd3 (&optional (a 1) (b 1))
  "Add A + B."
  (+ a b))

(define-ompw ks ()
  (progn
    "ks"))

(define-ompw mymember ((elt (2)) (list ((1) (2) 3 4 5 6)) &optional (test equal))
  (member elt list :test test))

(define-ompw menu-test ((dyn :mf))
  :menu (dyn :p :mf :f)
  (if (eql dyn :mf) "its mf" "another dyn"))

(define-ompw menu-test2 ((dyn mf))
  :menu (dyn p mf f)
  (if (eql dyn 'mf) "its mf" "another dyn"))

(define-ompw outputs-test ((a 1) (b 1))
  :outputs 2
  (values a b))
