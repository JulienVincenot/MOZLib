;;;;=========================================================
;;;;
;;;;  PATCH-WORK
;;;;  By Mikael Laurson, Jacques Duthen, Camilo Rueda.
;;;;  (c) 1986-1992 IRCAM 

;;;;  revision finale -  décembre 92 -  Tristan Murail
;;;;  PWGL revision -  February 07 -  Mikael Laurson
;;;;=========================================================

;;;===========================================================
;;; Combinatorial searching of chords satisfying a set of given constraints
;;;
;;;=============================================================

(defpackage "COMBINATORIAL-INTERV"
  (:use "COMMON-LISP")
  ;; (:import-from patch-work "DEFUNP")
  (:export "FIND-INTERVALS" "INT-REC"))

(in-package "COMBINATORIAL-INTERV")

(defun num-min (n)
  (ceiling (/ (+ 3 (sqrt (- 9 (* 8 (- 1 n))))) 2.0)))

(defun set-up-matrix (amb int-list)
  (let* (entry
         (cols (length int-list))
         (matrix (make-array (list  amb cols) :initial-element 0)))
    (loop for i from 0 upto (- amb 1) do
      (loop for j from 0 upto (1- cols) do
        (setq entry  (+ i (nth  j int-list)))
        (setf (aref matrix i j) (if (<= entry amb) entry 0))))
    matrix))

(defun insert-one-int (end1 end2 list)
  (let ((min (min end1 end2)) (max (max end1 end2)))
    (insert-ordered min max list ())))

(defun insert-ordered (low high list acum)
  (cond ((and (null list) (= low high))
         (nreverse (cons high acum)))
        ((null list) (nconc (nreverse acum) (list low high)))
        ((< (car list) low) (insert-ordered low high (cdr list) 
                                            (cons (car list) acum)))
        ((= (car list) low)
         (if (= low high)
           (nconc (nreverse acum) list)
           (insert-ordered high high (cdr list) (cons (car list) acum))))
        ((= low high)
         (nconc (nreverse acum) (cons high list)))
        (t (insert-ordered high high  list  (cons low acum)))))

(defun constraint (el no-int)
  "true if the 'el' note-positions satisfies list-constraint 'no-int' "
  (dolist (prod no-int nil)
    (if (contains-all el (pw::list! prod)) (return t))))


(defun contains-all (el prod)
  (let ((sublist (where-in el (car prod)))
        (rest (cdr prod)))
    (and sublist
         (dolist (term rest t)
           (unless 
             (setq sublist (member (+ (car sublist) term) sublist :test #'=))
             (return nil))))))

(defun where-in (list elem)
  (let (temp)
    (do ((subl list (cdr subl))) ((null subl) nil)
      (if (setq temp (member (+ (car subl) elem) (cdr subl) :test #'=))
        (return temp)))))
    
(defvar *the-matrix* ())
(defvar *the-matrix-columns* 0)
(defvar *the-negative-ints* nil)
(defvar *found-chords* ())
(defvar *num-of-hits* 0)
(defvar *abort-search* nil)
(defvar *max-chords-found* 10)
(defvar *the-yes-intervals* ())

(defun all-ints (amb from-column elements chord current-row fixed)
    (unless (> from-column *the-matrix-columns*) 
      (let ((from-row 0) temp-chord temp-int new-fixed)
        (if (and (plusp from-column) 
                 (eq (nth from-column *the-yes-intervals*) 
                     (nth (1- from-column) *the-yes-intervals*)))
          (setq from-row (1+ current-row)))
        (loop for i from from-row upto (1- amb)  do
          (unless *abort-search*
            (setq temp-int (aref *the-matrix* i from-column))
            (if (zerop temp-int)
              (return nil)                        ;  to stop the loop!!!
              (progn 
                (setq temp-chord (insert-one-int  i temp-int chord))
                (setq new-fixed (remove-interval i temp-int fixed))
                (cond ((= from-column *the-matrix-columns*)
                       (when (and 
                              (null new-fixed)
                              (= (length temp-chord) elements)
                              (not (member temp-chord *found-chords* :test #'equal))
                              (not (constraint temp-chord *the-negative-ints*)))
                         (setf *found-chords* (cons temp-chord *found-chords*))
                         (if (> (incf *num-of-hits*) *max-chords-found*) 
                           (setf *abort-search* t)
                           (print (format () "Hits:~D" *num-of-hits*)))))
                      ((and 
                        (>= (* 2 (- *the-matrix-columns* from-column))
                            (length new-fixed))
                        (<= (length temp-chord) elements)
                        (not (constraint temp-chord *the-negative-ints*)))
                       (all-ints amb (1+ from-column) elements temp-chord i
                                 new-fixed))))))
            ))))

(defun remove-interval (low high list)
  (and list (remove low (remove high list :test #'=) :test #'=)))


;;;;;;; * óóóóóóóóóóóóóóóóóóóó
(defun find-intervals (amb intervals forbid n max fixed &optional (format "inter"))

              ;;;;;;; ((amb 12) (intervals '(5 7)) (forbid ())(n 4) (max 3) (fixed ())
                         ; &optional (format 1 (ccl::mk-menu-subview  :menu-list '(("inter"  1) ("notes"  2)))))
        
         "Attempts to generate a list or lists containing the specified 
<intervals> (given in semitones; positive or negative) within the 
range <amb> (if negative intervals were used the range become between 
+ and - <amb>). Micro-intervals may be represented as floating point 
number parts of a semitone (e.g. a quarter-tone = 0.5). 

The number of intervals in each list found is determined by the 
argument <n>. If <n> is not at least twice the number of intervals in
<intervals> no solution is possible.    

In addition to the requested <intervals> other intervals will be 
formed by this box. The argument <forbid> allows the exclusion of
certain intervals from the resultant lists.

The argument <max> determines the maximum number of solutions returned
(fewer may exist).

The argument <fixed> forces each list to contain that value or those 
values.

The optional argument <format> allows a choice of whether the box 
returns real intervals (setting 'inter') or set notation (setting 
'notes'). 'Inter' will return only the intervals between notes, without 
the first note. 'Notes' returns the intervals present as well as the 
first note, given as '0'.

Warning: a solution is not always possible, if none is found the 
value 'nil' is returned. "
         ;(:w 0.4)
         (let ((res 
                (and (>= n (num-min (length intervals)))
                     (let ((*the-matrix-columns* (1- (length intervals)))
                           (*the-matrix* (set-up-matrix amb intervals))
                           (*the-negative-ints* forbid)
                           (*the-yes-intervals* (sort intervals '<)))
                       (setf *found-chords* nil)
                       (setf *num-of-hits* 0)
                       (when (plusp max)
                         (setf *max-chords-found* (1- max))
                         (setf *abort-search* nil)
                         (all-ints amb 0 n nil 0 fixed)
                         *found-chords*)))))
           (if (equalp format "inter") (mapcar #'(lambda (x) (remove 0 x)) res) res)))


;;;;;;; * óóóóóóóóóóóóóóóóóóóó

(defun int-rec ()  "current hits"() *found-chords*)

#|
(length (setq foo (find-intervals 19 '(17 4 7 6 1 5) '((12)(4 7)) 7 10 '(7))))
(constraint '(0 2 6 7 10) '((1 3)))
(mapcar  #'(lambda (x) (remove 0 x)) '((0 1 2) (2 0 5 8)))|#

