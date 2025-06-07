
(in-package :asdf)

(defsystem fv-morphologie
  :author "Frederic Voisin"
  :name "fv-morphologie"
  :version "20111025"
  :serial t
  :description "Some tools to analyse sequences of symboles wich represent music using some 'morphological' principles."
  :components
  ((:file "package")
   (:file "fv-morphologie-cl")
   (:file "fv-morphologie")
   (:file "fv-morphologie-encodage")
   (:file "fv-morphologie-io")
   (:file "fv-morphologie-graphs")
   )
  )

