# Word2Vec-Lisp
Some Lisp tools for interfacing with Gensim's Word2Vec implementaton in Python via socket, as well as a simple implementation of the Word2Vec algorithm in Lisp.

## Dependencies
- [Quicklisp](https://www.quicklisp.org/beta/)
- [ASDF version 3 or above](https://common-lisp.net/project/asdf/archives/asdf.lisp)
- [cl-util](https://github.com/genelkim/cl-util)
- cl-strings (loaded automatically via quicklisp)
- drakma (loaded automatically via quicklisp)
- cl-json (loaded automatically via quicklisp)

## Installation
1. Install quicklisp by following instructions at https://www.quicklisp.org/beta/
2. IF USING ACL: Download the latest asdf.lisp file and include it in your lisp start-up script (e.g. `.clinit.cl`)
3. Then place the other depenedencies listed above in a folder accessible to Quicklisp or ASDF (which underlies quicklisp).  How to do this in a couple ways is described by the following Stack Overflow answer https://stackoverflow.com/a/11265601.
4. Note that if you get a MISSING-DEPENDENCY error the first time you try to load, you may need to quickload the dependencies manually the first time, e.g. `(ql:quickload :cl-ppcre)`. It should load them automatically after that.
5. If you need a Python virtual environment, get [virtualenv](https://virtualenv.pypa.io/en/latest/#) (`cs.rochester.edu` already has it) and start a virtual environment. I also recommend [pyenv](https://github.com/pyenv/pyenv) and [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) for better management of virtual environments.

## Running the Gensim interface
First, start the Python REPL server:
```python
python python-repl-server.py 8080 "g:g"
```

Then, start ACL or SBCL:

```lisp
(load "load")
(in-package :word2vec)

;; OPTION 1
;; Train a custom model. 
;; ---------------------------
;; input := a list of strings to be trained on
;; embed-size := integer (size of word embedding)
;; window-size := integer (size of CBOW/skip-gram window)
;; min_count := minimum number of times a word must appear in input to be included in embedding
;; workers := number of threads to use
;; epochs := number of epochs to train
(word2vec-init-train input embed-size window-size min_count workers epochs)

;; OPTION 2
;; Load a pre-trained model.
;; ---------------------------
;; filename := a string representing the filename of a model file stored in ./model.
;; NOTE: the file must be a binary file, i.e. the filename must end in '.bin'.
;; e.g. (word2vec-init-pretrained "GoogleNews-vectors-negative300.bin")
(word2vec-init-pretrained filename)

;; Get cosine similarity between two words.
(similarity "pond" "lake")

;; Get top n most similar words to a given word.
(most-similar "dog" 5)
```

## Pure lisp implementation
Note: This implementation still needs a number of improvements (particularly, negative sampling and/or hierarchical softmax); it is just a prototype currently.

In directory `lisp-implementation`.

```lisp
;; For best results, preproccess input to remove punctuation and special characters (and optionally, stopwords)
(setq example "babies do not start intellectually as tabulae rasae they rapidly build abstract knowledge and
concepts and learn language with relatively little input at the symbolic ie linguistic level to build
machines with such abilities we need to equip them with the symbolic machinery that can represent the kinds
of abstract knowledge to be learned ways of using that knowledge for inference of various sorts and ways
of deriving useful abstract patterns of behavior events and relationships from linguistic input")

(setq embed-size 10) ;; Size of embedding
(setq window-size 2) ;; Size of skip-gram window
(setq lr 0.01) ;; Learning rate
(setq num-iterations 50) ;; Number of iterations

;; Create and train word2vec model
;; Returns pair (encoding, model), where encoding is a hash table mapping words to one-hot encodings,
;; and model is the pair of weights in the trained model, (w1, w2).
(setq w2v (word2vec example num-iterations embed-size window-size lr))

;; Get 5 most similar words to "tabulae"
(word-sim "tabulae" 5 w2v)
```
