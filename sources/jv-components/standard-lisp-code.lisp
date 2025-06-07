(in-package :jv-components)


;;;;;;;;;;;;; T00LS :::::::::::::::


; Coll2LISP
; code written by Frederic Voisin to convert coll files from MaxMSP into lists of strings

(defun read-file-lines (file)
  (with-open-file (in-stream file
			     :direction :input
                             :element-type 'character)
    (loop with length = (file-length in-stream)
          while (< (file-position in-stream) length)
          collect (read-line in-stream))    ))

;(read-file-lines #P"/path/to/fichier.txt")


(defun string2code (string)
  (let ((c '()))
    (dotimes (n (length string) (reverse c))
      (push (char-code (char string n)) c))))

(defmethod findpos ((item t) (seq t) &key (test #'=))
  (let (pos)
    (dotimes (i (length seq) (reverse pos))
      (when (funcall test (nth i seq) item)
        (push i pos)))))

(defmethod findpos ((item list) (seq t) &key (test #'=))
  (let (pos)
    (dotimes (i (length seq) (reverse pos))
      (when (member (nth i seq) item :test test)
        (push i pos)))))

(defmethod path2words ((path string))
  (let* (names (separators (findpos 58 (string2code path))))
    (dotimes (i (length separators))
      (push (subseq path
                    (1+ (nth i separators))
                    (nth (1+ i) separators))
            names))
    names))

(defmethod path2words ((path pathname))
  (setf path (princ-to-string path))
  (path2words path))

(defmethod segment-words ((seq string) &optional (marks " /\"\_:,;"))
  ;; ajouter tabulation : (code2string 9)...
  (let* ((pos (findpos (append (string2code marks) (list 9))
(string2code seq)))
        words)
    (setf words (list (subseq seq 0 (car pos))))
    (dotimes (i (length pos))
      (push (subseq seq
                    (1+ (nth i pos))
                    (nth (1+ i) pos))
            words))
    (reverse (remove-if #'(lambda (x) (< (length x) 1)) words))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;