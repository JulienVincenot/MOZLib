;;;; moz-transformer.asd
;;;; ASDF system definition for MOZ'Transformer — neural inference for MOZLib

(asdf:defsystem #:moz-transformer
  :description "Transformer inference module for MOZLib — loads pretrained weights
                and scores Cluster Engine candidates via neural forward pass."
  :author "Julien Vincenot / Troisième Oreille"
  :licence "MIT"
  :version "0.1.0"
  :depends-on (#:magicl #:cl-json)
  :around-compile (lambda (compile)
                    (let ((*readtable* (copy-readtable nil)))
                      (funcall compile)))
  :components
  ((:file "transformer-inference")))
