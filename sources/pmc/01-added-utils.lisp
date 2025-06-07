(in-package :pmc)

(defun permut-random (list)
  "Random permutation of LIST. Called by PMC."
  (labels ((vector-shuffle (vec)
	     "Generate a random permutation of the vector in place.
If the argument is a number, return a new random vector of this length.
Uses the Fisher/Yates algorithm, see
 Knuth, TAOCP vol 2 Algorithm 3.4.2P, p.145
 R.A. Fisher & F. Yates, Statistical Tables, London 1938, Example 12
 R. Durstenfeld, CACM 7 (1964), 420.
This is more or less the same as
  (permutation vec (random (! (length vec))))
except that the factorial is likely to be far too large for `random'."
	     (loop for ii downfrom (1- (length vec)) to 1
		  for jj = (random (1+ ii))
		  unless (= jj ii)
		  do (rotatef (aref vec ii) (aref vec jj))
		  finally (return vec))))
    ;; main
    (coerce (vector-shuffle (coerce list 'vector)) 'list)))

;; ------------------------------

(defmacro setf-nthcdr (n list obj)
  "@code{(setq a '(1 2 3 4 5 6 7 8 9 10))
@*(setf-nthcdr 5 a '(a b c d))
@*@result{}(1 2 3 4 5 a b c d)}"
  (let ((tail (gensym "tail-")))
    `(let ((,tail (nthcdr (1- ,n) ,list)))
       (rplacd ,tail ,obj))))
