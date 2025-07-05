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

(in-package #:asdf)

(defsystem :ompw
  :author "Kilian Sprotte"
  :version "0.3.2"
  :serial t
  :components
  ((:static-file "README")
   (:static-file "TODO")
   (:static-file "ompw.asd")
   (:static-file "ompw.lisp")
   (:static-file "load.lisp")
   (:file "package")
   (:file "menu")
   (:static-file "menu-tests.lisp")
   (:file "define-box")
   (:file "file-dialog")
   (:file "pprint-define-box")))
