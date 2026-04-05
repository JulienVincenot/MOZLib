;;;; moz-transformer.asd
;;;; ASDF system definition for MOZ'Transformer — neural inference for MOZLib

(asdf:defsystem #:moz-transformer
  :description "Transformer inference module for MOZLib.
                Loads pretrained weights directly from TF1 checkpoints (Magenta etc.)
                or from exported binary format, and scores Cluster Engine candidates
                via neural forward pass. No Python or TensorFlow required at runtime."
  :author "Julien Vincenot / Troisième Oreille"
  :licence "MIT"
  :version "0.1.0"
  :depends-on (#:magicl #:cl-json)
  :around-compile (lambda (compile)
                    (let ((*readtable* (copy-readtable nil)))
                      (funcall compile)))
  :serial t
  :components
  ((:file "transformer-inference")   ; model struct, forward pass, score-candidates
   (:file "ckpt-reader")))           ; pure Lisp TF1 checkpoint reader
