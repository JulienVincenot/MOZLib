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

(in-package :cl-user)

;; this file was intended to be a load file for people
;; that do not use ASDF
;; for the unlikely case, you can comment out the code below

;; for now, let's just call ASDF to do the job

(asdf:oos 'asdf:load-op :ompw)

;; (let ((ompw-base-directory
;;        (make-pathname :name nil :type nil :version nil
;;                    :defaults (parse-namestring *load-truename*)))
;;       must-compile)
;;   (with-compilation-unit ()
;;     (dolist (file '("package"
;;                  "define-box"
;;                  "pprint-define-box"
;;                  ))
;;       (let ((pathname (make-pathname :name file :type "lisp" :version nil
;;                                      :defaults ompw-base-directory)))
;;         (let ((compiled-pathname (compile-file-pathname pathname)))
;;           (unless (and (not must-compile)
;;                        (probe-file compiled-pathname)
;;                        (< (file-write-date pathname)
;;                           (file-write-date compiled-pathname)))
;;             (setq must-compile t)
;;             (compile-file pathname))
;;           (setq pathname compiled-pathname))
;;         (load pathname)))))
