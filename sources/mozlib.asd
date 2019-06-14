(defsystem mozlib

	:version "1.0-beta"
    :author "Main author: Julien Vincenot <julien.vincenot@gmail.com> ; Contributions: Orjan Sandred <Orjan.Sandred@umanitoba.ca>, Torsten Anders <torsten.anders@beds.ac.uk>"
  
  	:licence "Simplified BSD License"

  	:description "This is not an official release - use this at your own risk.

	MOZ'Lib is a pedagogical package for Max 7 or 8 (Cycling'74) dedicated to computer-aided composition. 
        It relies heavily on musical techniques developed in Lisp-based environments such as PatchWork (PW), OpenMusic and PWGL. 
        Therefore many Lisp functions are called within Max thanks to the Shell object (Bill Orcutt/Jeremy Berstein), 
        and then evaluated with any Lisp implementation (such as SBCL) before coming back into Max. 

        This package relies mostly on the bach/cage/dada packages by Daniele Ghisi and Andrea Agostini, 
        and on a set of functions from the PW family (adapted from OpenMusic sources) as well as libraries by Mikael Laurson (OMCS), 
        Jacopo Baboni Schilingi (JBS-CMI, JBS-Profile and JBS-Constraints) and Frédéric Voisin (Morphologie).
	
Legal :

GPL 3
Copyright (c) 2015-2019, Julien Vincenot

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU GENERAL PUBLIC LICENSE (Version 3, 29 June 2007) 
as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU GENERAL PUBLIC LICENSE for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>

"  

  :serial t 
  
  :components (
               (:file "iter")

               (:file "pw-common-language")
               (:file "pw_profile_functions")

               (:file "backquote_guy-steele")

               (:file "OMCS")

               (:file "morphologie")

               (:file "jbs-profile/profile-to-core")
  	           (:file "jbs-profile/profile_all")

               (:file "jbs-cmi/cmi_all")
               (:file "jbs-cmi/box-classes")
               (:file "jbs-cmi/generic-functions")
               (:file "jbs-cmi/matrix-boxes")
               (:file "jbs-cmi/pitch-boxes")
               (:file "jbs-cmi/segmentations")
               (:file "jbs-cmi/special-combinations-boxes")
               (:file "jbs-cmi/useful-devices")

               (:file "jbs-constraints/constraints_all")
               (:file "jbs-constraints/jbs-generic-functions")
               (:file "jbs-constraints/pmc-boxes")
               (:file "jbs-constraints/utils")

               )      
  ) 
