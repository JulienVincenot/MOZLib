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

(flet ((load-compile (path)
	 (if (member :om-deliver *features*)
	     (om::compile&load (make-pathname :type nil :defaults path))
	     (load (compile-file path)))))
  (let ((*default-pathname-defaults* *load-truename*))
    (load-compile "package.lisp")
    (load-compile "menu.lisp")
    (load-compile "define-box.lisp")
    (load-compile "file-dialog.lisp")
    (load-compile "pprint-define-box.lisp")))
