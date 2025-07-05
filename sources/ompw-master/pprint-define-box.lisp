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

;;; (set-pprint-dispatch '(cons (eql ompw:define-box)) #'ompw:pprint-define-box)

;;; this could probably be more pretty
(defun pprint-define-box (stream obj)
  (destructuring-bind (name lambda-list &rest body) (cdr obj)
    (let ((*standard-output* stream))
      (write-char #\()
      (prin1 'ompw:define-box)
      (write-char #\space)
      (prin1 name)
      (write-char #\space)
      (prin1 lambda-list)
      ;; TODO we assume that a doc string will always be before options
      (when (stringp (car body))
	(terpri)
	(prin1 (pop body)))
      (loop for opt-tail = body
	 for opt = (car opt-tail)
	 for keywordp = (keywordp opt)
	 for i upfrom 0
	 until (and (not keywordp) (evenp i))
	 do (when (evenp i) (terpri))
	 do (prin1 opt)
	 do (when (evenp i)
	      (write-char #\space))
	 do (pop body))
      (mapc #'pprint body)
      (write-char #\))
      (terpri))))
