(load "load")
(in-package :word2vec)

;; (----------------- EXAMPLE USEAGE ----------------------------)

(setq example '("babies do not start intellectually as tabulae rasae they rapidly build abstract knowledge and concepts and learn language with relatively little input at the symbolic ie linguistic level to build machines with such abilities we need to equip them with the symbolic machinery that can represent the kinds of abstract knowledge to be learned ways of using that knowledge for inference of various sorts and ways of deriving useful abstract patterns of behavior events and relationships from linguistic input"))

(setq embed-size 10) ;; Size of embedding
(setq window-size 2) ;; Size of skip-gram window
(setq num-iterations 50) ;; Number of iterations

(word2vec-init-train example embed-size window-size 0 nil num-iterations)

(format t "~a~%" (similarity "knowledge" "babies"))
(format t "~a~%" (similarity "babies" "babies"))
(format t "~a~%" (most-similar "abstract" 5))