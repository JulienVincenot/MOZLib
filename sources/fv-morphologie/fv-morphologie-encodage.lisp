;; fv-morphologie-encoding.lisp
;; encoding tools for fv-morphologie

(in-package :fv-morphologie)

;;; ABOUT STRINGS AND CHARACTERS

(defvar *very-minimalist-midi-notes*
  '(("A" 69)
    ("B" 71)
    ("C" 72)
    ("D" 62)
    ("E" 64)
    ("F" 65)
    ("G" 67)))

;(mapcar #'(lambda (x) (read-from-string (symbol-name (car x)))) *very-minimalist-midi-notes*)

(defgeneric transcode (seq table &optional test)
  (:documentation "trqnscoding seq according to the list table with lists (a b) wher each symbol a of seq is changed to b.
By default test is #'eq."))

(defmethod transcode ((seq list) (symlist list) &optional (test #'eq))
  (loop until (null seq)
        collect (let* ((a (pop seq))
                       (b (assoc a symlist :test test)))
                  (if b (cadr b) a))))

(defgeneric alphatonum (char) ;;; should be renamed 2asciicode !
  (:documentation ""))

(defmethod alphatonum ((char number))
  (values char))

(defmethod alphatonum ((char character))
  (char-code char)) ; (if (lower-case-p char) (- (char-code char) 97) (- (char-code char) 65))

(defmethod alphatonum ((char list))
  (mapcar #'alphatonum char))

(defgeneric alpha>num (char &optional mode)
  (:documentation "Converts characters or lists of characters into numbers, i.e. 'a' into 0, 'b' into 1 etc.
Different modes can be selected into optional menu"))

; (defmethod alpha>num ((char array) &optional (mode nil))
;   (case mode
;     ('nil (alphatonum (loop for i from 0 to (1- (length char))
; 			 collect (char char i))))
;     (:midi (cadr (assoc (symbol-name char) *very-minimalist-midi-notes*)))))

(defmethod alpha>num ((char symbol) &optional (mode nil))
  (case mode
    ('nil (alpha>num (string char) mode))
    (:midi (cadr (assoc (symbol-name char) *very-minimalist-midi-notes* :test #'equal)))))

(defmethod alpha>num ((char list) &optional (mode nil))
  (mapcar #'(lambda (x) (alpha>num x mode)) char))

(defmethod alpha>num ((char list) &optional (mode nil))
  (cons (alpha>num (car char) mode) (alpha>num (rest char) mode)))

(defmethod alpha>num ((char null) &optional (mode nil))
  (declare (ignore mode))
  (values))

(defmethod alpha>num ((char number) &optional mode)
  (declare (ignore mode))
  (alpha>num (princ-to-string char)))

;(alpha>num "a")
;(alpha>num 'a)
;(alpha>num 't)
;(alpha>num '("a" "b"))
;(alpha>num '(a b c d e f g h))
;(alpha>num '(a b c d e f g h) :midi)
;(alpha>num '(A (b (c)) d e ((((f)))) g h) :midi)

(defun string-to-list (string)
  (let ((lstring nil))
    (dotimes (n (length string) (nreverse lstring))
      (push (elt string n) lstring))))

(defun string2code (string)
  (let ((c '()))
    (dotimes (n (length string) (reverse c))
      (push (char-code (char string n)) c))))

;(string2code " ")

(defgeneric concaten (list)
  (:documentation "Concatenate elements in list into a number, string or symbol according to the type of elements: The list to be flat (one level only)."))

(defmethod concaten ((list t))
  (values list))

(defmethod concaten ((list list))
  (cond ((eval `(and .,(mapcar #'numberp list)))
	 (concnum list 0))
	((eval `(and ., (mapcar #'stringp list)))
	 (eval `(concatenate 'string .,list)))
	(t (concalpha list nil))))

(defgeneric ascii2string (ascii)
  (:documentation "Converts ascii code to caracters into a string."))

(defmethod ascii2string ((ascii integer))
  (princ-to-string (code-char ascii)))

(defmethod ascii2string ((ascii list))
  (concaten (mapcar #'ascii2string ascii)))

(defun code2string (code)
  (ascii2string code))

(defun numtochar26 (n &optional r)
  (if (> n 25)
      (numtochar26 (1- (floor (/ n 26))) (cons (mod n 26) r))
      (mapcar #'(lambda (x) (code-char (+ x 97))) (cons n r))))

#|
(mapcar #'numtochar26 '(0 1 2 24 25 26 27 28 29))
(mapcar #'numtochar26 '(50 51 52 53 54))
(mapcar #'numtochar26 '(697 698 699 700 701 702 703))
|#

(defgeneric num>alpha (num)
  (:documentation "converts list of lists and/or integers to symbols :
0 -> A, 1 -> B, 2 -> C, 27->AA, etc."))

(defmethod num>alpha ((num integer))
  (read-from-string (concatenate 'string (numtochar26 num))))

(defmethod num>alpha ((num list))
  (mapcar #'num>alpha num))

;(num>alpha '(697 698 699 700 701 702 703))

(defun readst (st)
  (let ((r nil))
    (dotimes (n (length st) (nreverse r))
      (when (not (eql #\  (elt st n)))
	(push (read-from-string (string (elt st n))) r)))))

(defun string-to-symbol (string)
  (if (listp string)
      (cond ((equal 'nil (member 'nil (mapcar #'stringp string)))
	     (mapcar #'(lambda (st)
			 (read-from-string st)) ; t nil :start 0 :end (length st)))
		     string))
	    ((equal 'nil (member 'nil (mapcar #'listp string)))
	     (let ((r nil))
	       (dolist (st string (nreverse r))
		 (push (mapcar #'(lambda (s) (read-from-string s)) st) r)))))
      (when (stringp string) (readst string))))

(defgeneric str->symb (strings)
  (:documentation "Converts a string or a list of strings to respectively a list or a list of lists of symbols"))

(defmethod str->symb ((strings list))
  (mapcar #'string-to-symbol strings))

(defmethod str->symb ((strings string))
  (string-to-symbol strings))

(defun % (x base)
  (floor (/ x base)))

(defun concnum (list res)
  (when (not res) (setf res 0))
  (if (not list) res
    (let ((x (car list)))
    (concnum (cdr list) (+ (* (expt 10 (1+ (% x 10))) res) x)))))

;(concnum '(0 1 2 3 4 5 6 7 8 9 0 10 11) 0)

(defun concalpha (list res)
  (if list
      (concalpha (cdr list) (if res (concatenate 'string res (format nil "~S" (car list)))
                              (format nil "~S" (car list))))
    (read-from-string res)))

(defun dec2base (x &optional base)
  ; converti x exprime en decimal en base, ou en toute lettre sinon 
  (if base
      (read-from-string (format nil (concatenate 'string "\~" (format nil "~S" base) "r") x))
      (read-from-string (format nil "~r" x))))

(defun bin2dec (v)
  (let ((l (length v))
	(x 0))
    (dotimes (z l)
      (setf x (+ x
		 (* (nth z v)
		    (expt 2 (- l z 1))))))
    (values x)))

(defgeneric num-base (x base)
  (:documentation "Encodes integer number <x> considered as represented into decimal notation into its representation into base <base> (by default : base 2)"))

(defmethod num-base ((x integer) (base null))
  (dec2base x nil))

(defmethod num-base ((x integer) (base integer))
  (if (< base 2) 0
    (dec2base x base)))

(defmethod num-base ((x integer) (base list))
  (mapcar #'(lambda (b) (dec2base x b)) base))

(defmethod num-base ((x list) (base t))
  (mapcar #'(lambda (a) (num-base a base)) x))

(defgeneric graph2matrix (graph)
  (:documentation "represents a graph (list of (v1 v2 edge)) as a standart adjacent matrix"))

(defmethod graph2matrix ((graph list))
  (adj-matrix graph))

