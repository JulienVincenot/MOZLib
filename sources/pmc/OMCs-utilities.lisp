;; ===============================================
;; ===============================================

;;; PWConstraints by Mikael Laurson (c), 1995

;; ===============================================
;; ===============================================
(in-package omcs)
;; ===============================================
;; added from PatchWork by Orjan
(defun cirlist (elem)
  "makes a circular list out of elem"
  (setq elem (list elem))
  (rplacd elem elem))

;; ===============================================
;;   User search-engine functions
;; ===============================================
(defun engine ()
  "returns the current search-engine" *current-SE*)

(defun cur-index ()
  "returns the current search-index (counted from 1)"
  (1+ (variable-pos *current-SE*)))

(defun cur-slen ()
  "returns the number of search-variables of the current search-engine"
  (length (search-variables *current-SE*)))

;; ===============================================
;;   User search-variable macros and functions
;; ===============================================
(defmacro m (s-variable)
  "returns the value (m for midi) of s-variable"
  `(value ,s-variable))

(defmacro v (s-variable)
  "returns the value of s-variable"
  `(value ,s-variable))

(defmacro nindex (s-variable)
  "returns the note index (given by score-sort) of s-variable
 (starting from 0)"
  `(read-key ,s-variable :note-index))
;;  old
(defmacro  index (s-variable)
  "returns the note index (given by score-sort) of s-variable
 (starting from 0)"
  `(read-key ,s-variable :note-index))

;; ===============================================
;;   General Lisp functions
;; ===============================================
(defun setp (list  &key (test #'eq) (key #'identity))
  "returns true if list is a set"
  (= (length (remove-duplicates list :test test :key key))
     (length list)))

;; (setp '(24 35 58 60) :key #'(lambda (n) (mod n 12)))

(defun window-list (list win)
  "returns a subsequence of list starting from the first item.
The length of the subsequence is given by win. If win is :all
or if win is greater than the length of list then the complete
list is returned,  "
  (if (eq win :all)
      list
      (subseq list 0 (min win (length list)))))

(defun inds->vals (inds ls)
  "translates a list of indices (inds) to actual values found in ls"
  (mapcar #'(lambda (ind) (nth ind ls)) inds))

(defun eq-ints? (ints &rest midis)
  "returns true if midis (a list of midi-values) forms
the interval succession given by ints,
where ints can be an interval or a list of intervals or a list of lists of intervals,
midis can be either single midi-values or a list of midi-values"
  (when (atom ints) (setq ints (list ints)))
  (if (atom (car ints))
      (equal ints (mapcar #'- (cdr midis) midis))
      (member (mapcar #'- (cdr midis) midis) ints :test #'equal)))

;; (eq-ints? '(4 3) 60 64 67)
;; (eq-ints? '((3 4) (4 3)) 60 64 67)

;;  from Norvig
(defun find-all (item sequence &rest keyword-args
		 &key (test #'eql) test-not &allow-other-keys)
  "find all those elements of sequence that match item,
  according to the keywords.  Doesn't alter sequence."
  (if test-not
      (apply #'remove item sequence
	     :test-not (complement test-not) keyword-args)
      (apply #'remove item sequence
	     :test (complement test) keyword-args)))

;; (find-all 6 '(6 5 4 7 6 -6) :key #'(lambda (a) (abs a)))

(defun find-all-if (test l)
  "returns all items in l that satisfy <test>"
  (let (res)
    (while l
      (when (funcall test (first l)) (push (first l) res))
      (pop l))
    (nreverse res)))

;; (find-all-if  #'plusp '(4 -3 5 6 -1 -2 3 4))

;; ; imbricate
(defun imb-group2 (lst len imb-count)
  (let ((res)(temp))
    (while lst
      (unless (< (length lst) len)
	(setq temp (subseq lst 0 len))
	(push temp res))
      (repeat imb-count (pop lst)))
    (nreverse res)))

(defun imbricate (lowcard highcard step list)
  "returns a list of subsequences of list using lowcard and highcard
to define the range of the subsequence lengths; step indicates how many
items we proceed in list before starting with the next subsequence."
  (let ((res))
    (for (i lowcard 1 highcard)
	 (push (imb-group2 list i step) res))
    (apply #'append (nreverse res))))

(defun group (list group-lens)
  "groups list into subsequnces, where group-lens indicates
the length of each sublist. group-lens can be a number or a list of numbers.
If list is not exhausted by group-lens, the last value of
 group-lens will be used as a constant until list has been exhausted."
  (let ((res)(temp-res)(gr-len))
    (when (numberp group-lens) (setq group-lens (cirlist  group-lens)))
    (while list
      (when group-lens (setq gr-len (pop group-lens)))
      (repeat gr-len
	      (when (car list)
		(push (car list) temp-res))
	      (pop list))
      (push (nreverse temp-res) res)
      (setq temp-res ()))
    (nreverse res)))

;; (group '(6 7 8 9 0) '(2 3))

(defmacro sort< (l)
  "sorts l in ascending order (non-destructive)"
  `(sort (copy-list ,l) #'<))

;; ===============================================
;;   PCS
;; ===============================================
;;  in SC-names.lisp: SC-name, SC+off, card, all-subs
(defun eq-set (setnames &rest notes)
  "setnames can be SC or list of SC's, notes can be midis or a list of midis"
  (setq setnames (om::list! setnames))
  (when (listp (car notes)) (setq notes (car notes)))
  (member (SC-name-from-points notes)  setnames))

(defun eq-SC? (set-classes &rest midis)
  "checks whether the SC identity of midis (a list of midi-values) is found
in set-classes (a list of SC-names).
set-classes can be a single SC or list of SCs, midis individual midi-values
or a list of midis."
  (setq set-classes (om::list! set-classes))
  (when (listp (car midis)) (setq midis (car midis)))
  (member (SC-name-from-points midis)  set-classes))
;; (eq-SC? '(3-11a 3-11b) 60 64 67))
;; (eq-SC? '(3-11a 3-11b) '(60 64 67))
;; ===============================================
;;   Groupings
;; ===============================================
(defun map-group-pos? (l size pos)
  "l is first grouped into subsequences of equal
length (given by size). map-group-pos?
returns true if the last item of the last subsequence is
at the position given by pos (the position is counted from 1)
within the last subsequence. This function is useful if a rule wants
to check if the last item of a partial solution is at a given position
where the partial solution is been split into subsequences of equal length.
For instance, if we split the list (1 2 3 1 2 3 1) into subsequences
of length 3 and check whether the last item of the last subsequence
is at position 1, we call:
(map-group-pos? '(1 2 3 1 2 3 1) 3 1)
which returns true as the last item (1) is at the 1st position of the last subsequence."
  (let ((mod (mod (length l) size)))
    (if (= mod 0)
      (= pos size)
      (= mod pos))))

;; (map-group-pos? '(1) 2 1)            ;; ; ; ;
;; (map-group-pos? '(1) 2 2)            ;; ; ; ;
;; (map-group-pos? '(1 2 3 1 2 3 1) 3 1)	;; ; ; ; ;
;; (map-group-pos? '(1 2 3 4 5 1 2 3 4 5 1 2) 5 2) ;; ; ; ; ;

;=============================================== ; ; ; ; ;
; Chains				; ; ; ; ;
;=============================================== ; ; ; ; ;
(defun group-to-chain (l card)
  (let (res)
    ;(for (i 0 (/ card 2) (length l))	; ; ; ; ;
    (loop for i from 0 to (length l) by (/ card 2)
	 do (if (< (length l) (+ i card))
		(progn (when  (and (/= (mod (length l) card) 0)
				   (if (= (length l) (/ card 2)) t (/= (mod (length l) card) (/ card 2)))
				   )
			 (push (subseq l i (length l)) res))
		       (return))
		(push (subseq l i (+ i card)) res)))
    res))

;(group-to-chain (om::arithm-ser 1 1 19) 6) ; ; ; ; ;
					;(group-to-chain (om::arithm-ser 1 1 6) 4) ; ; ; ;

(defun check-chain? (l card SC-names)
  "checks whether l (imbricated with a step size card/2) is a chain consisting
of SCs (given by SC-names).
No SC with the same transposition duplicate should be found in the chain.
This function is used by the 'Chains' example"
  (let ((chain (group-to-chain l card)) first SC-name)
    (and
     (member (setq SC-name (SC-name (setq first (first chain)))) SC-names)
     (= (length first) (card SC-name))
     (if (= (length first) card)
	 (not (member first (rest chain)  :test #'(lambda (a b)  (= (length (intersection a b)) card))))
	 t))))

;; (check-chain? '(1 2 3 4 5 9) 6 (all-subs '(6-1 6-2b)))
;; (check-chain? '(0 1 2 3 4 5 6 7 8  9 8 1 0 1 2 3 5 4) 6 (all-subs '(6-1 6-2b)))

(defun mk-chain-index-rules (indexes SCs)
  "returns a list of index-rules for the 'Chains' example"
  (when (atom (car SCs)) (setq SCs (make-list (length indexes) :initial-element SCs)))
  (let (res inds SCl)
    (dolist (indexl indexes)
      (setq SCl (pop SCs))
      (setq inds (mapcar #'(lambda (n) (read-from-string (concatenate 'string "i" (format () "~A" n)))) indexl))
      (push `(,@inds (?if (eq-SC? ',SCl ,@inds))) res))
    (nreverse res)))

;; (mk-chain-index-rules '((1 2 5 6) (4 7 8 10)) '((4-2a) (4-z15a 4-z15b 4-16a 4-16b)))
;; (mk-chain-index-rules '((1 2 5 6) (4 7 8 10)) '(4-16b))

(defun transp-+12 (+inds -inds start l)
  (setq +inds (remove-duplicates (om::flat +inds)))
  (setq -inds (remove-duplicates (om::flat -inds)))
  (let (res)
    (setq l (om::om+ start l))
    (for (i 1 1 (length l))
	 (cond ((member i +inds) (push (+ (nth (1- i) l) 12) res))
	       ((member i -inds) (push (- (nth (1- i) l) 12) res))
	       (t (push (nth (1- i) l) res))))
    (nreverse res)))

;; (transp-+12 '((6 7 10 11) (11 14 15 16) (18 19 21 22)) '(8 9 12 13) 60 '(9 3 8 1 2 0 6 11 5 10 7 4 9 8 3 1 2 6 7 8 11 1 0 2) )

;; ===============================================
;;   Contours
;; ===============================================
(defun contour (chord)
  (let ((ref (sort (remove-duplicates chord) #'<)))
    (mapcar #'(lambda (n) (position n ref)) chord)))

(defun inv-contour (contour)
  (mapcar #'- (cirlist (apply #'max contour)) contour))

;; (inv-contour '(0 1 2 3 4))
;; (inv-contour '(3 2 1 2 0))

(defun tol-equal (l1 l2 tol)
  "like equal but tol specifies in how many places the two list can differ
the lists have to of equal size"
  (let ((tol-cnt 0) (fl t))
    (while (and l1 l2 fl)
      (when (not (eq (pop l1) (pop l2)))
	(incf tol-cnt)
	(if (> tol-cnt tol) (setq fl nil))))
    fl))

;; (time (repeat 100000 (tol-equal '(0 1 2 3 4) '(0 1 2 2 4) 1)))
;; (time (repeat 100000 (equal '(0 1 2 3 4) '(0 1 2 2 5))))

(defun s-contours (contour data &optional reduce-overlaps (tol 0))
  "returns a list of indexes (a list with low and high) where the data containes the contour
overlaps of idexes can be avoided by setting reduce-overlaps to t "
  (let (res)
    (for (i 0 1 (1- (length data)))
	 (when (and (>= (length data) (length contour))
		    (tol-equal (contour (subseq data 0  (length contour))) contour tol))
	   (if (and res reduce-overlaps)
	       (when (not (< (first (car res)) i (second (car res))))
		 (push (list i (+ i (1- (length contour)))) res))
	       (push (list i (+ i (1- (length contour)))) res)))
	 (pop data))
    (nreverse res)))

(defun eq-subcontour? (ref-cont sub-cont &optional (tol 0))
  "returns a flag if the sub-cont is a subcontour of ref-cont"
  (if (= (length sub-cont) 1)
      t
      (if (= (length ref-cont) (length sub-cont))
	  (tol-equal ref-cont sub-cont tol)
	  (let ((new-ref-cont (contour (subseq ref-cont 0 (length sub-cont)))))
	    (tol-equal new-ref-cont sub-cont tol)))))

;; (eq-subcontour? '(3 4 3 0 1 2) '(0 1 0))
;; (eq-subcontour? '(3 4 3 0 1 2) '(1 2 1 0))
;; (eq-subcontour? '(3 4 2 0 1) '(3 4 2 0 1))

;; ===============================================
;;   Statistics
;; ===============================================
(defun count-stats (lst)
  "calculates the frequency distribution of lst and
returns the result as count-item pairs. The result is
sorted in descending order according to the count information
(i.e. the items that are found most often are found first in the
      result list)."
  (let (res
	(testfn (cond ((stringp (car lst)) #'string=)
		      ((atom (car lst)) #'eq)
		      ((listp (car lst)) #'equal))))
    (while lst
       (push (list
		(count (car lst) lst :test testfn)
		(car lst))
	     res)
       (setq lst (remove (car lst) lst :test testfn)))
   (sort res '> :key #'car)))

					;; (count-stats '(3-1 4-2a 6-1 3-2a 3-1 3-1 6-z6)) ; ; ;


(defun check-stats? (item count stats &optional (tolerance 0))
  "checks that item's count (given by count) does not exceed item's count found in stats,
where stats is a list of count-item pairs: ((count1 item1) (count2 item2) ... (countN itemN)).
The difference (- count tolerance) should be less or equal than the respective count found
in stats.
See the 'Automatic Rules and Statistical Distribution' example."
  (let ((cnt+int (if (atom item)
		     (find item stats :key #'second)
		     (find item stats :key #'second :test #'equal))))
    (when cnt+int (<= (- count tolerance) (first cnt+int)))))

#|					; ; ;
(check-stats? '3-1
	      (count '3-1  '(3-3b 3-4a 3-5b 3-5a 3-4b 3-2a 3-1 3-8a 3-11b 3-1 3-3a 3-8a))
	      '((7 3-3b) (1 3-1) (5 3-5b) (4 3-3a)
		(3 3-10) (3 3-2a) (3 3-2b) (3 3-4b)
		(2 3-4a)(2 3-5a) (1 3-12) (1 3-7b)
		(1 3-8a) (1 3-11b) (1 3-9)))
|#

(defun check-rel-stats? (item rel-count l &optional (tolerance 0))
  "l -> ((rel-count1 item1) (rel-count2 item2) ... (rel-countN itemN)).
The sum of counts should be 1.
Item is included in l. (- rel-count tolerance) should be less than the respective count
found in l"
  (check-stats? item rel-count l tolerance))

(defun SC-distribution (card l)
  "gives all SC-names found in l when l is grouped
into subsequences starting from each successive item.
The length of each subsequence is given by card.
See the 'Automatic Rules and Statistical Distribution' example."
  (mapcar #'(lambda (l1) (SC-name l1)) (imbricate card card 1 l)))

(defun interval-distribution (card l)
  "gives all interval successions found in l
when l is grouped into subsequences starting from each successive item.
The length of each subsequence is given by card.
See the 'Automatic Rules and Statistical Distribution' example."
  (mapcar #'(lambda (l1) (om::x->dx l1)) (imbricate card card 1 l)))

(defun +-distribution (card l)
  "gives the '+-'  movements of l
when l is grouped into subsequences starting from each successive item.
The length of each subsequence is given by card.
See the 'Automatic Rules and Statistical Distribution' example."
  (let ((deltas (om::x->dx l)))
    (imbricate card card 1
	       (substitute-if '+ #'(lambda (n) (if (numberp n) (plusp n) nil))
			      (substitute-if '- #'minusp deltas)))))

;; ===============================================
(defun atleast-check (l tot-len cur-len atleast-cnt atleast-item &optional (test #'eq))
  (let ((cur-atleast-cnt (- cur-len (- tot-len atleast-cnt))))
    (>= (count atleast-item l :test test) cur-atleast-cnt)))

;; (atleast-check '(60 67 78 78) 5 4 3 60)

(defun atleast-cnt-check (l total-len atleast-cnt-item-lst &optional (test #'eq))
  "checks whether l fulfills the 'at-least property'.
See the 'Atleast property' example."
  (when (atom (car atleast-cnt-item-lst))
    (setq atleast-cnt-item-lst (list atleast-cnt-item-lst)))
  (let ((cur-len (length l)) (fl t))
    (while (and atleast-cnt-item-lst fl)
      (setq fl (atleast-check l total-len cur-len
			      (first (car atleast-cnt-item-lst))
			      (second (car atleast-cnt-item-lst))
			      test))
      (pop atleast-cnt-item-lst))
    fl))

;; (atleast-cnt-check '(60 67 78 78) 5 '(5 3))

;; ===============================================
;;   Splitter
;; ===============================================
(defun sp-partnum (partnum-data)
  "returns the partnum part of partnum-data pair.
See the 'Splitter' example."
  (first partnum-data))

(defun data (partnum-data)
  "returns the data part of partnum-data pair.
See the 'Splitter' example."
  (second partnum-data))

(defun mod-len (l card)
  (let ((mod-len (mod (length l) card)))
    (if (= mod-len 0) card  mod-len)))

(defun data-group-of-part (partnum-data-lists group-len partnum)
  "partnum-data-lists is a list of partnum-data pairs, group-len indicates the length of
subgroups and partnum is the part number of the current part.
First, data-group-of-part collects all partnum-data pairs that belong to
the current part to a list (the current part is given by partnum).
Then this list is grouped into sublists. The length of the sublists is given by group-len.
data-group-of-part returns the data items of the first sublist.
See the 'Splitter' example."
  (let (res)
    (while partnum-data-lists
      (when (= (sp-partnum (car partnum-data-lists)) partnum)
	(push (data (car partnum-data-lists)) res))
      (pop partnum-data-lists))
    (setq res (nreverse res))
    (subseq res 0 (mod-len res group-len))))

;; ===============================================
;;   Simple melodic reduction
;; ===============================================
(defun mel-pitch (l) (second l))
(defun mel-time (l) (first l))

(defun reduce-mel-simple (mel)
  (when (atom (car mel))
    (setq mel (mapcar #'list (om::arithm-ser 0 1 (1- (length mel))) mel)))
  (let (res 1st 2nd 3rd)
    (push (pop mel) res)               ;;;;; first note
    (while (cdr mel)
      (setq 1st (mel-pitch (car res)) 2nd (mel-pitch (first mel)) 3rd (mel-pitch (second mel)))
      (if (or (<= 1st 2nd 3rd)
	      (>= 1st 2nd 3rd))
	  (pop mel)
	  (push (pop mel) res)))
    (push (pop mel) res)               ;;;;; last note
    (nreverse res)))

(defun reduce-mel (mel)
  "returns a list of lists of time-midi value pairs defining
the reduced melodic line of mel, mel can be a list
of midi-values or a list of lists where each sublist consists of time-midi value pairs.
See the 'Syyssonetti' example."
  (reduce-mel-simple mel))

;;  leave away begin or end
(defun group-partial-arcs (l)
  (let (res first-skyl last-skyl)
    (when (> (mel-pitch (first l)) (mel-pitch (second l)))
      (setq first-skyl (car l))
      (setq l (cdr l)))
    (when (> (mel-pitch (first (last l))) (mel-pitch (first (last l 2))))
      (setq last-skyl (first (last l))))
    (while l
      (when (>= (length l) 3)
	(push (subseq l 0 3) res))
      (pop l) (pop l))
    (values (nreverse res) first-skyl last-skyl)))

;; (group-partial-arcs '((0 71) (6 53) (10 80) (13 52) (15 83) (16 54) (17 84) (19 50) (20 72)))

(defun part-arc-lens (mel)
  "returns the partial arc lengths of mel.
See the 'Syyssonetti' example."
  (mapcar #'(lambda (l) (- (first (first (last l))) (first (first l))))
	  (group-partial-arcs
	   (reduce-mel
	    (mapcar #'list (om::arithm-ser 0 1 (1- (length mel)))  mel))) ))

(defun skyline (mel)
  "returns the skyline of mel.
See the 'Syyssonetti' example."
  (mapcar #'(lambda (l) (second (second l)))
	  (group-partial-arcs
	   (reduce-mel
	    (mapcar #'list (om::arithm-ser 0 1 (1- (length mel)))  mel)))))

;; ===============================================
;;   Misc
;; ===============================================
(defun make-note-ranges (start ints card)
  "returns a reduced search-space for chords of size card
and with the adjacent-interval structure given by ints.
start gives the pitch of the first note as a midi-value.
See the 'Constraining Chords' example."
  (let ((res (list (list start)))
	temp)
    (dotimes (i(1- card))
      (setq temp ())
      (dolist (pitch (car res))
	(push (mapcar #'+ (cirlist pitch) ints) temp))
      (setq temp (remove-duplicates (om::flat temp)))
      (push (remove-duplicates (om::flat temp)) res))
    (nreverse res)))

;; (make-note-ranges 36 '(5 6) 12)

(defun count-adjacent-items (list &optional (test #'=))
  "counts the number of adjacent equal items found at the beginning of list.
The equality can be defined by giving an optional test function."
  (let ((cnt 0) (prev (car list)))
    (while (and list (funcall test prev (pop list)))
      (incf cnt))
    cnt))

;; (count-adjacent-items '(2 2 3))
;; (count-adjacent-items '(2 2 3 3 3))

;; ================================
;;  special functions with rl
(defun unique-int? (int rl &key (key #'identity))
  "checks if int is unique (not found in rl).
rl is a reversed list of midi-values!
This function is optimised for partial solutions in reversed order (rl)."
  (let ((fl t))
    (while (and fl (cdr rl))
      (when (= int (funcall key (- (first rl) (second rl))))
	(setq fl nil))
      (pop rl))
    fl))
;; (time (repeat 5000 (unique-int? 6 '(7 2 5 7 0 4 6 1 8) :key #'(lambda (n) (mod n 12)))))

(defun unique-ints? (ints rl &key (key #'identity))
  "checks if ints are unique (not found in rl).
rl is a reversed list of midi-values!
This function is optimised for partial solutions in reversed order (rl)."
  (let ((fl t) fl2 ints-c rl-c)
    (setq ints (reverse ints))
    (while (and fl (nth (length ints) rl))
      (setq ints-c ints)
      (setq rl-c rl)
      (setq fl2 t)
      (while (and fl ints-c fl2)
	;; (print (list (first ints-c) (- (first rl-c) (second rl-c))))
	(setq fl2 (= (first ints-c) (funcall key (- (first rl-c) (second rl-c)))))
	(pop ints-c) (pop rl-c))
      (when fl2
	(setq fl nil))
      (pop rl))
    fl))
;; (unique-ints? '(6 7) (reverse '(4 6 0 6 13)))
;; (unique-ints? '(-7 -5) (reverse '(13 6 1 5)))
;; (unique-ints? '(7 -5) (reverse '(13 6 1 5)))
;; (time (repeat 50000 (unique-rl-ints? '(6 7) '(13 6 0 6 4))))


;; ============================================
(defun unique-cell1? (x list &optional (cnt most-positive-fixnum) (key #'identity))
  "checks whether x is not found in list, list in reversed order!
This function is optimised for partial solutions in reversed order (rl)."
  (let ((fl t))
    (while (and fl list (> cnt 0))
      (when (= (funcall key (first list)) x)
	(setq fl nil))
      (pop list)
      (decf cnt))
    fl))

;; (unique-cell1? 69 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 4)
;; (time (repeat 10000 (unique-cell1? 69 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 5)))
;; (subseq (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 0 5)

#|
(defun unique-cell2? (x y list &optional (cnt most-positive-fixnum))
  "checks whether the succession x y is not found in list, list in reversed order,
also x and y have to be in reversed order!
This function is optimised for partial solutions in reversed order (rl)."
  (let ((fl t))
    (while (and fl (cdr list) (> cnt 1))
      (when (and (= (first list) x) (= (second list) y))
	(setq fl nil))
      (pop list)
      (decf cnt))
    fl))

					;(unique-cell2? 69 51 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 8)
					;(unique-cell2? 69 51 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 9)
					;(subseq (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 0 9)
|#

(defun unique-cell2? (x y list &aux list1); list2)
  "checks whether the succession x y is not found in list, list in reversed order,
also x and y have to be in reversed order!
This function is optimised for partial solutions in reversed order (rl)."
  (cond ((null list) t)
	((not (setq list1 (member x list))) t)
	((eq (second list1) y) nil)
	(t (unique-cell2? x y (cdr list1)))))

;; (unique-cell2? 69 51 (window-list (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 8))
;; (unique-cell2? 69 51 (window-list (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 9))

(defun unique-cell3? (x y z list &optional (cnt most-positive-fixnum))
  "checks whether the succession x y z is not found in list, list in reversed order,
also x, y and z have to be in reversed order!
This function is optimised for partial solutions in reversed order (rl)."
  (let ((fl t))
    (while (and fl (cddr list) (> cnt 2))
      (when (and (= (first list) x) (= (second list) y) (= (third list) z))
	(setq fl nil))
      (pop list)
      (decf cnt))
    fl))

;; (unique-cell3? 69 51 70 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 9)
;; (unique-cell3? 69 51 70 (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 10)
;; (subseq (rest '(69 51 56 67 89 69 55 45 69 51 70 89 56 67 89 69 55)) 0 10)


#|
(mapcar #'(lambda (n) (read-from-string (first n))) (ccl::list-definitions (front-window)))))
|#
