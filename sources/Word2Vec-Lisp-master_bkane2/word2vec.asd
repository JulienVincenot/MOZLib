;; Word2Vec
;; Packaged on 2019-02-25

(asdf:defsystem :word2vec
  :name "word2vec"
  :version "0.0.1"
  :author "Gene Louis Kim, Ben Kane"
  :depends-on (:util :cl-strings :drakma :cl-json)
  :components ((:file "package")
               (:file "python-server-lib")
               (:file "word2vec"))) 

