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

(define-menu ompw :print-name "ompw")
(define-menu file-dialogs :in ompw :print-name "File-Dialogs")
(in-menu file-dialogs)

;;; choose-new-file-dialog
#-(or pwgl om)
(define-box choose-new-file-dialog (&key (prompt "Enter the path for a new file:")
					 button-string)
  :non-generic t
  (declare (ignore button-string))
  (format *query-io* "~&~a~%[please enter a path like /tmp/test.txt]~%" prompt)
  (force-output *query-io*)
  (parse-namestring (read-line *query-io*)))

#+ (or pwgl om)
(define-box choose-new-file-dialog (&key (prompt "Enter the path for a new file:")
					 button-string)
  :non-generic t
  (capi:prompt-for-file prompt :operation :save))

;;; choose-file-dialog
#-(or pwgl om)
(define-box choose-file-dialog (&key (prompt "Enter the path for an existing file:")
				     button-string)
  :non-generic t
  (format *query-io* "~&~a~%[please enter a path like /tmp/test.txt]~%" prompt)
  (force-output *query-io*)
  (let ((path (parse-namestring (read-line *query-io*))))
    (if (probe-file path)
	path
	(progn
	  (format *query-io* "~&ERROR: ~A does not exist.~%" path)
	  (choose-file-dialog :prompt prompt :button-string button-string)))))

#+ (or pwgl om)
(define-box choose-file-dialog (&key (prompt "Enter the path for an existing file:")
				     button-string)
  :non-generic t
  (capi:prompt-for-file prompt))

(install-menu ompw)
