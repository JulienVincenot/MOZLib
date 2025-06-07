;; Ben Kane 02-25-2019
;; Word2Vec implementation in Common Lisp
;; Supports Python calls to Gensim library via server, or rudimentary offline version implemented in Lisp.

(in-package :word2vec)

(defparameter *setup-complete* nil)
(defparameter *training-complete* nil)

;; Setup python server with gensim
(defun setup ()
  (python-over-socket "from gensim.test.utils import *" 'exec)
  (python-over-socket "from gensim.utils import simple_preprocess" 'exec)
  (python-over-socket "from gensim.models import Word2Vec" 'exec)
  (python-over-socket "from gensim.models import KeyedVectors" 'exec)
  (setq *setup-complete* t))

;; input := list of strings
;; Cleans and tokenizes list of strings and sets document variable on python server
(defun prepare-documents (input)
  (if (not *setup-complete*) (setup))
  (let ((documents (mapcar (lambda (x)
    (python-over-socket (python-call "simple_preprocess" (list x) '()) 'eval)) input)))
  (python-over-socket (format nil "DOCUMENTS = ~a" (list-to-array documents)) 'exec)))

;; input := list of strings to use as input
;; size := size of word embedding to use (nil for default)
;; window := skip-gram/CBOW window size to use (nil for default)
;; min_count := minimum frequency a word needs to appear to included in embedding (nil for default)
;; workers := number of threads to use (nil for default)
;; epochs := number of epochs to train model over
(defun word2vec-init-train (input size window min_count workers epochs)
  (if (not *setup-complete*) (setup))
  (assert (and input (listp input) (every #'stringp input)))
  (assert (or (and (integerp size) (>= size 1)) (not size)))
  (assert (or (and (integerp window) (>= window 1)) (not window)))
  (assert (or (and (integerp min_count) (>= min_count 0)) (not min_count)))
  (assert (or (and (integerp workers) (>= workers 1)) (not workers)))
  (assert (or (and (integerp epochs) (>= epochs 1)) (not epochs)))
  (prepare-documents input)
  (let ((keyargs (remove nil (list (keyarg size) (keyarg window) (keyarg min_count) (keyarg workers)))))
    (python-over-socket (format nil "model = ~a" (python-call "Word2Vec" '(documents) keyargs)) 'exec))
  (python-over-socket (python-call "model.train" '(documents)
                                                  (remove nil (list (cons "total_examples" (python-call "len" '(documents) '()))
                                                  (keyarg epochs)))) 'exec)
  (setq *training-complete* t))

;; filename := name of pre-trained model in ./model (assuming binary .bin file)
(defun word2vec-init-pretrained (filename)
  (if (not *setup-complete*) (setup))
  (assert (stringp filename))
  (assert (string= (subseq filename (- (length filename) 4) (length filename)) ".bin"))
  (python-over-socket (format nil "model = ~a"
    (python-call "KeyedVectors.load_word2vec_format" (list (format nil "./model/~a" filename)) '((binary . "True")))) 'exec)
  (setq *training-complete* t))

;; w-list := list of word strings
;; returns := true if each word is in the model vocabulary
(defun check-in-vocab (w-list)
  (assert (and (listp w-list) (every #'stringp w-list)))
  (every (lambda (w) (cond
    ((python-over-socket (format nil "'~a' in model.wv.vocab" w) 'eval) t)
    (t (format t "Invalid input: '~a' is not in the model vocabulary." w))))
  w-list))

;; w1, w2 := two word strings (lowercase)
;; returns := floating point cosine similarity between w1 and w2
(defun similarity (w1 w2)
  (assert (stringp w1))
  (assert (stringp w2))
  (assert *training-complete*)
  (if (check-in-vocab (list w1 w2))
    (python-over-socket (format nil "float(~a)"
      (python-call "model.wv.similarity" (list (string-downcase w1) (string-downcase w2)) '()))
    'eval)))

;; w1 := word string (lowercase)
;; topn := number of words to return
;; returns := list of topn pairs (word, similarity), sorted by similarity
(defun most-similar (w1 topn)
  (assert (stringp w1))
  (assert (and (integerp topn) (>= topn 1)))
  (assert *training-complete*)
  (if (check-in-vocab (list w1))
    (python-over-socket (python-call "model.wv.most_similar" (list (string-downcase w1)) (list (keyarg topn))) 'eval)))

