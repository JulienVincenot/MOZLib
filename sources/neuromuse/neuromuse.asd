#|
  This file is a part of neuromuse project.
|#

(defsystem "neuromuse"
           :version "2.2.0"
  :author "Fred Voisin"
  :license " GNU GENERAL PUBLIC LICENSE V3"
  :depends-on (:sb-bsd-sockets)
  :depends-on (:sb-thread)
  
  :components ((:module "src"
                        :components
                        ((:file "neuromuse")
                         (:file	"neuromuse-main")
                         (:file "maths&misc")
                         (:file	"mlp")
                         (:file "som")
                         (:file "udp"))))
  :description "Neural nets for experiments in music prod by Fred Voisin, since 1999."
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "neuromuse-test"))))
