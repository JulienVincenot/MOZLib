(in-package :asdf)

(defsystem "jv-components"
  :name "JV-Components"	
  :description "Various functions and patches for analysis, development and generation of musical materials in PWGL."
  :long-description "Various functions and patches for PWGL. The topics developed are evolving around analysis, development and metamorphosis of musical entities, musical contents generation and various tools. Most of the ideas presented here are inspired by the domain of morphology and morphogenesis."
  :version "0.9" ;beta
  :author "Julien Vincenot"
  :licence ""
  :maintainer "Julien Vincenot"

  ;; je viens d'ajouter ceci 
  ;;  :default-component-class ccl::pwgl-source-file

  ;; :serial t means that each component is only compiled, when the
  ;; predecessors are already loaded
  :serial t
  :components
  (
   ; (:FILE "package")
   ; (:FILE "jv-components") 
   ; (:FILE "menus")
   ; (:FILE "standard-lisp-code")
   (:FILE "pwgl-spline")
		
)

   :depends-on (  ;; :jbs-constraints 
                  ;; :jbs-cmi 
                  ;; :jbs-profile 
                  ;; :iterate 
                  ;; :fv-morphologie

                  ;;   :patch-work

               )

)

; :useful-devices
; :iterate
; :ompw