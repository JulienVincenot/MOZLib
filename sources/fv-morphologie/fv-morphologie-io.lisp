;; fv-morphologie-import.lisp
;; to import data from files

(in-package :fv-morphologie)

;;; Date & Time

(defun time-string ()
  (multiple-value-bind (s m h) (get-decoded-time)
    (format nil "~A:~2,,,'0@A:~2,,,'0@A" h m s)))

; (defconstant months
;   '#("Jan" "Feb" "Mar" "Apr" "May" "June" "Jul" "Aug" "Sept" "Oct" "Nov" "Dec"))

(defun date-string ()
  (multiple-value-bind (ig no re d mo y) (get-decoded-time)
    (declare (ignore ig no re))
    (format nil "~A ~A ~A" d (svref months (1- mo)) y)))

(defun date+time-string (&optional (u (get-universal-time)))
  (multiple-value-bind (s m h d mo y) (decode-universal-time u)
    (format nil "~A ~A ~A ~A:~2,,,'0@A:~2,,,'0@A"
                d (svref months (1- mo)) y h m s)))

;;; FILE SYSTEM

;(defconstant whitechars '#(#\Space #\Tab #\Return #\Newline))

(defun file-list (dir &optional extension)
  "attention: extension en  minuscules !"
  (when (not (equalp "/" (elt dir (1- (length dir)))))
    (setf dir (concatenate 'string dir "/")))
  (let ((d (directory (if extension
			  (concatenate 'string (directory-namestring dir) "*."
				       (if (stringp extension) extension (format nil "~(~@S~)" extension)))
			  (concatenate 'string (directory-namestring dir) "*.*")))))
    (mapcar #'namestring d)))

; (print  (file-list "/home/fred/lisp/midi/"))
; (print (file-list "/home/fred/lisp/midi" 'lisp))

(defun file-list-rec (paths &optional files)
  (if (null paths)
      files
    (multiple-value-bind (newfiles newpaths)
	(file-list (pop paths))
      (file-list-rec
       (append newpaths paths)
       (append newfiles files) ))))

; (print (file-list-rec '("/home/fred/lisp/")))

(defun read-text-lines (file)
  (with-open-file (in-stream file
			     :direction :input
                             :element-type 'character)
    (loop with length = (file-length in-stream)
          while (< (file-position in-stream) length)
          collect (read-line in-stream))))

(defun slurp-stream (stream)
;src: www.ymeme.com/slurping-a-file-common-lisp-83.html
;www.emmett.ca/~sabetts/slurp.html
  (let ((seq (make-string (file-length stream))))
    (read-sequence seq stream)
    seq))

(defun slurp-file (file)
  (with-open-file (in file :direction :input)
    (slurp-stream in)))

(defun split-string (string marks)
  ;; marks + space + tabulation : (code2string 9)...
  (if marks
      (let ((pos (findpos (append (string2code marks) '(9 32))
			   (string2code string)))
	    words)
	(if pos
	    (progn (setf words (list (subseq string 0 (car pos))))
		   (dotimes (i (length pos))
		     (push (subseq string
				   (1+ (nth i pos))
				   (nth (1+ i) pos))
			   words))
		   (nreverse (remove-if #'(lambda (x) (zerop (length x))) words)))
	    string))
      string))
 
;(split-string "12   345-6789" "- ")

(defgeneric string2sym (s)
  (:documentation "Converts string to symbol and list of strings to list of symbols"))

(defmethod string2sym ((s string))
  (if (> (length s) 0)
      (read-from-string s)
    nil))

(defmethod string2sym ((s list))
  (remove 'nil (mapcar #'string2sym s)))

(defgeneric all2char-code (datum)
  (:documentation "Converts everything to char-code value."))

(defmethod all2char-code ((datum string))
  (string2code datum))

(defmethod all2char-code ((datum integer))
  datum)

(defmethod all2char-code ((datum list))
  (mapcar #'all2char-code datum))

(defgeneric alphanump (datum &optional exceptions 8bits)
  (:documentation "Tests if datum is an alphanum char or seq of (up to char-code 247)."))

(defmethod alphanump ((datum integer) &optional (exceptions nil) (8bits nil))
  (or (and (> datum 47) ; number
	   (< datum 58))
      (and (> datum 64) ; MAJ upcase
	   (< datum 91))
      (and (> datum 96) ; min downcase
	   (< datum 123))
      (if 8bits (and (> datum 191)
		     (< datum 247))
	  nil)
      (when exceptions
	(member datum (all2char-code exceptions)))))

(defmethod  alphanump ((datum character) &optional (exceptions nil) (8bits nil))
  (alphanump (char-code datum) exceptions 8bits))

;(defmethod alphanump ((datum list))
;  (mapcar #'alphanump datum))

(defmethod alphanump ((datum string) &optional (exceptions nil) (8bits nil))
  (eval `(and .,(alphanump (string2code datum) exceptions 8bits))))

(defun read-txt-file (file &key (mode t) (marks nil) (rem-test nil) (8bits nil))
  (if (not file) nil
    (progn
      (when (not rem-test) (setf rem-test #'(lambda (x) (declare (ignore x)) nil)))
      (when (not marks) (setf marks " "))
      (if mode
          (case mode
            (:charcode
	     (cond ((eq T marks)
		    (remove-if rem-test
			       (split-list-using-marks
				(string2code (slurp-file file))
				#'(lambda (x) (not (alphanump x nil 8bits))))))
		   ((null marks)
		    (remove-if rem-test
			       (remove-if-not #'(lambda (x) (alphanump x '(32) 8bits))
					      (string2code (slurp-file file)))))
		   ((stringp marks)
		    (remove-if rem-test
			       (split-list-using-marks
				(string2code (slurp-file file))
				(string2code marks))))
		   ((listp marks)
		    (if (eql :ignore (car marks))
			(remove-if rem-test
			       (split-list-using-marks
				(string2code (slurp-file file))
				#'(lambda (x) (not (alphanump x
							      (all2char-code (cdr marks))
							      8bits)))))
			(remove-if rem-test
			       (split-list-using-marks
				(string2code (slurp-file file))
				(all2char-code marks)))))
		   (t (message "read-txt-file: marks must be a string or a list.")
		      (abort))))
	    (t (mapcar #'(lambda (x) (string2sym (split-string x marks)))
                                    (read-text-lines file))))
        (let ((st (slurp-file file)))
          (print (split-string st marks))
          (mapcar #'read-from-string (remove-if rem-test (split-string st marks))))))))

#|
(read-from-string (code2string (string2code "aéièuo")
(mapcar #'code2string
        (split-list-using-marks
         (subseq
         (string2code
          (slurp-file "~/txt/Deleuze/DR_314-315.txt")
          )
         3680 3706)
         (string2code "\\ ,?!.;:+=\"'(@)\^\&")
         )
        )

(char-code #\é) ;195
(code-char 233)
|#

;;----------------
;; OUTPUT

(defun list-write (liste file &optional (mode :supersede))
  "Writes a list to file."
  (with-open-file (out-stream (if file file "liste")
                              :direction :output
                              :element-type 'character
                              :if-exists mode
                              :if-does-not-exist :create)
    (format out-stream "(~&")
    (dolist (l liste (format out-stream "~&)"))
      (format out-stream "~&~S" l))))

;;; eof
