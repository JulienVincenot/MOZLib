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

(rtest:deftest menu1
  (menu-spec2native '("ks"
		      ("file1" cl:+ cl:-)
		      ("file2" * + / :menu-separator +)
		      ("file3" ("first" * + /) ("second" +))
		      ("file4" * + / ("second" +))))
  #+pwgl
  (:menu-component
   ("ks"
    ("file1" (+ -))
    ("file2" (* + /) (:menu-component (+)))
    ("file3" ("first" (* + /)) ("second" (+)))
    ("file4" (* + /) ("second" (+)))))
  #-(or pwgl)
  #.(error "do not know how to test this"))

(rtest:deftest menu2
  (menu-spec2native '("KS"
		      ("file1" cl:+ cl:-)
		      ("file2" * + /)))
  #+pwgl
  (:menu-component
   ("KS"
    ("file1"
     (+ -))
    ("file2"
     (* + /))))
  #-(or pwgl)
  #.(error "do not know how to test this"))

(rtest:deftest menu3
  (menu-spec2native '("Esquisse"
		      ("Intervals"
		       ("Generation" + - +)
		       ("Treatment" subseq append)
		       ("Analysis" list))
		      ("Freq harmony"
		       ("Harm Series" subseq)
		       ("Modulations" list)
		       ("Treatment" + - +)
		       ("Analysis" subseq append :menu-separator +))
		      ("Utilities"
		       subseq append
		       :menu-separator
		       + - +
		       :menu-separator
		       list)))
  #+pwgl
  (:menu-component
   ("Esquisse"
    ("Intervals"
     ("Generation" (cl:+ cl:- cl:+))
     ("Treatment" (cl:subseq cl:append))
     ("Analysis" (cl:list)))
    ("Freq harmony"
     ("Harm Series" (cl:subseq))
     ("Modulations" (cl:list))
     ("Treatment" (cl:+ cl:- cl:+))
     ("Analysis" (cl:subseq cl:append)
		 (:menu-component (cl:+))))
    ("Utilities" (cl:subseq cl:append)
		 (:menu-component (cl:+ cl:- cl:+))
		 (:menu-component (cl:list))
		 )))
  #-(or pwgl)
  #.(error "do not know how to test this"))
