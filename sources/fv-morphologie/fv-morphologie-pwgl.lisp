;; PWGL specific
;;
;; this to have special (french like) accentuation in tutorials, thank's to Mika

(in-package :dbl)
(defmethod parse-DBL-doc((pathname pathname) &key master-db-document document-source backend capi-args panes-only-p)
 (declare (ignore document-source))
 (if (equalp (pathname-type pathname) "DBD")
     (let ((*db-directory* pathname))
       (with-open-stream (stream (open pathname :direction :input
				       :element-type 'ccl::simple-char 
				       :external-format :utf-8))
         (parse-DBL-doc-stream stream :master-db-document
			       master-db-document :document-source
			       pathname :backend backend 
			       :capi-args capi-args
			       :panes-only-p panes-only-p)))
   (error "Not a DBD file")))

;;;;;;;;;;;;;;;;
;; Boxes & menu

(in-package :fv-morphologie)

(defclass  morphologie-box  (ccl::PWGL-box) ())
(defmethod ccl::special-info-string ((self morphologie-box)) "fv-morph")
(ccl::write-key 'morphologie-box  :code-compile t)

;; MENU

;; old version of int-landmarks for back compatibility
;(define-box int-primitives ((seq nil)  &optional (out :prim) (thres nil))
;  "Please update this box with int-landmarks"
;  :non-generic t
;  :class morphologie-box
;  :menu (out (:prim ":prim") (:pos ":pos") (:amp ":amp"))
;  (fv-morphologie::primitives seq out thres))

(define-menu fv-morphologie :print-name "fv-morphologie")
(in-menu fv-morphologie)

;;;;;;;;;;;;;;;;
;;; 1. DIFFERENTIATION
(define-menu DIFFERENCIATION :in fv-morphologie)
(in-menu differenciation)

;; 1.1 SEGMENTATION
;; 1.1.1 INTENSITIES

;(define-box int-sign ((seq nil) &key (pos nil) (thres 0))
;  "Sign of variation of intensities : -1 for decreasing, 1 for increasing, 0 for constant.
;Optional argument <pos>, if T returns each sign of variations consed to its position in sequence <seq>,
;or only signs of variations if NIL.
;Optional argument <thres> is the threshold for detecting only variations higher than <thres> value,
;the smaller being considered as constant (zéro)."
;  :non-generic t
;  :class morphologie-box
;  (fv-morphologie::dsign seq thres pos))

(define-box int-signature ((seq nil) (mode :minflexmax) (thres 0) &optional (option nil))
  "Signature of a sequence with some threshold <thres> for variation in intensity.
The argument <thres> may be nil (no threshold for variations in intensity), or an amount of the overall range of variation in the sequence <seq>, from 0.0 to 1.0 (where 0.0 means no threshold and 1.0 to remove all variation but the first).
 Argument <mode> define the algorithm to compute signature which may require the optional argument <option> :
:miflexnmax, returns minima, maxima and inflexions using Fred Voisin pragmatic method.
:minmax, same with only maxima and minima (without inflexions);
:major-extrema, using Fink & Gandhi method (cf. Conference on Systems, Man and Cybernetics, 2007);
:landmarks, using Perng, Parker and Leung method for landmarks (cf. Conference on Information and Knowledge Management, 1999);
Argument <thres> is the treshold value (delta) in amplitude.
Argument <option> is an optional parameter depending to the choosen method :
with :minflexmax method, <option> is the time (rank) distance threshold for detecting inflexions (a nul or positive number);
with :major-extrema, <option> defines the distance for comparing local extrema ; 
with :landmarks method, <option> is the time (rank) distance threshold for detecting a major extrema."
  :non-generic t
  :class morphologie-box
  :menu (mode (:minflexmax ":minflexmax") (:minmax ":minmax") (:important-extrema ":important-extrema") (:mdpp ":landmarks"))
  (fv-morphologie::signature seq mode thres option))


;; 1.1.2 MARKS
(menu-separator :in differenciation)

(define-box mark-list ((seq nil) (mark nil) &key (mark-t equalp) (seg-t equalp))
  "Returns the list of all segments and their position in <seq> beginning with some marks defined with argument <mark>.
If no argument mark (nil), considers all different symbols in <seq>.
Option :mark-t defines the test function for searching the marks (equalp by default).
Option :group-t defines the test function for comparing the different segments."
  :non-generic t
  :class morphologie-box
  (when (and (symbolp mark-t) (not (boundp mark-t))) (setf mark-t (eval `(function ,mark-t))))
  (when (and (symbolp seg-t) (not (boundp seg-t))) (setf group-t (eval `(function ,seg-t))))
  (fv-morphologie::mark-pos seq mark mark-t seg-t))

(define-box mark-structure  ((seq nil) (out :struct) &key (diss 0) (rem-loc-dup t) (test equalp))
  "Returns possible structures of input <seq> based on marks retrieved from <seq>.
The output is sorted by structures's length.
Use output menu <out> to define result form:
:struct lists all possible structures according to different marks of <seq>
:pos each structure is consed to the list of positions for each segment followed by the list of the segments themselves
:raw each structure is consed to the list of each segment with its positions in <seq>.
Option :diss defines the dissemblance threshold to consider different segment as the same.
Option :test defines the test function to consider the marks."
  :non-generic t
  :class morphologie-box
  :menu (out (:struct ":struct") (:pos ":pos") (:raw ":raw") )
  (fv-morphologie::mark-strct seq out diss rem-loc-dup test))

;; 1.1.3 MOTIFS
(menu-separator :in differenciation)

(define-box motif-find ((motif nil) (seq nil) &key (diss 0) (l-var 0) (change 1) (ins 1) (del 1) (uncom 0) (test equalp))
  "Returns all the positions of the segment <motif> into sequence <seq>.
Argument :diss is a threshold (from 0 to 1.0) of dissimilarity according to the normalized editing distance under which two different segments are considered to be the same ;
argument :l-var is the threshold for variation in length of the motifs to be compared ;
arguments :change :ins/sup :uncom and :test for tuning the editing distance (see dist-edit)."
  :non-generic t
  :class morphologie-box
  (fv-morphologie::find-pos motif seq diss l-var change ins del uncom test))

(define-box motif-list ((seq nil) (out :length) &key (diss 0) (l-var 0) (n nil) (change 1) (ins 1) (del 1) (uncom 0) (test equalp))
  "Returns the list of all motifs found into <seq> where a motif is any segment repeted at least one time according to editing distance.
Output can be sorted according to the length of segment (:length) or to their frequency (:freq).
Argument :diss is a threshold (from 0 to 1.0) of dissimilarity according to the normalized editing distance under which two different segments are considered to be the same ;
argument :l-var is the threshold for variation in length of the segments to be compared ;
argument :n is the maxinum length of segments to be compared ;
arguments :change :ins :sup :uncom and :test are arguments for the editing distance (see dist-edit)."
  :non-generic t
  :class morphologie-boxf
  :menu (out (:length ":length") (:freq ":freq"))
  (fv-morphologie::find-self seq out diss l-var n change ins del uncom test))

(define-box  motif-structure ((seq nil))
  "To be set"
  :non-generic t
  :class morphologie-box
  (fv-morphologie::rep-strct seq))

;; 1.2 CLASSIFICATION
(menu-separator :in differenciation)

(define-box class-num ((data nil) (classes 2) (mode :centroids) &key (iter nil) (dist nil))
  "Classify a set (list) of points <data> into different <classes> into s space with n dimensions (n integer > 0),
where each point is represented as a list of values into each dimension.
Argument :mode defines the algorithm used for partioning the points.
:centroids for centroids algorithm (in french : nuees dynamiques.
Keyword argument :iter to set the maximum iterations to run for partitioning ;
:dist to set the distance or metric to be used (by default: euclidian distance)."
  :non-generic t
  :class morphologie-box
  :menu (mode (:centroids "centroids") (:1d-centroids "1d-centroids"))
  (case mode 
    (:centroids (fv-morphologie::n-class data classes iter dist))
    (:1d-centroids (fv-morphologie::1d-class data classes (if dist dist #'identity))) 
     (t nil)))

(define-box class-sym ((data nil) (classes 2) (mode :edit-nn) &key (uncom .5) (ins 1) (del 1) (change 1) (excluded nil) (mst nil))
  "Classify a set of segments or sequences into different classes according to their editing distance to each other and
by partitioning the resulting spanning tree (see class-graph).
The output is a list of numbers (from zero) as instances of the different classes retrieved.
Keyword arguments :uncom :ins/del :change for tuning editing distance (see dist-edit).
The argument :excluded is a list of elements of data excluded from classification ;
in the output, the numbering of the different instances begins by numbering these elements first (from zero), 
in the order defined with the argument :excluded."
  :non-generic t
  :class morphologie-box 
  :menu (mode (:edit-nn "edit-nn") (:edit-norm "edit-norm"))
  (if (not excluded)
      (cond ((eq mode :edit-nn)
             (fv-morphologie::s-class data classes nil change ins del uncom mst))
            ((eq mode :edit-norm)
             (fv-morphologie::s-class data classes t change ins del uncom mst))
            (t nil))
    (cond ((eq mode :edit-nn)
           (fv-morphologie::s-class-with-fixed data classes excluded nil nil nil change ins del uncom mst))
          ((eq mode :edit-norm)
           (fv-morphologie::s-class-with-fixed data classes excluded nil nil t change ins del uncom mst))
          (t nil))))

;; 1.3 CONCATENATION
;(menu-separator :in differenciation)
;(define-box concaten ((list nil))
;  :non-generic t
;  :class morphologie-box
;  (fv-morphologie::concaten list))

;(define-box adj-group ((seq nil) (test #'eq) &optional (key nil))
;  :non-generic t
;  :class morphologie-box
;  (fv-morphologie::adj-group seq test key))

;;;;;;;;;;;;;;;;
;; 2. EVALUATION
(define-menu EVALUATION :in fv-morphologie)
(in-menu evaluation)

;;; 2.1 DISTANCE

(define-box dist-euclidian ((a nil) (b nil))
  "Euclidian distance between points a and b.
Point coordinates are represented by a list of values in any euclidian space with n dimensions (n integer > 0).
The dimensionality of the euclidian space is defined by the list representing <a> and <b>.
 If a is a list of coordinates (lists) and b null,
output is the list of distances for all points to all others ;
 if a or b is a number, consider b or a as list of numbers (1 dim).
If a and b are lists with not same size (i.e points with not same dimensions),
 returns NIL (no distance)."
  :non-generic t
  :class morphologie-box
  (fv-morphologie::dist-euclid a b))

(define-box dist-citybloc ((a nil) (b nil))
 "City-bloc distance between <x> and <y> which represent 'points' into kind of euclidian space.
If <y> is null, <x> may represent a list of points, then the output is the list of city-bloc distances for all points to all others."
  :non-generic t
  :class morphologie-box
  (fv-morphologie::city-bloc a b))

(define-box dist-hamming ((a nil) (b nil) &optional (norm t) (test eql))
  "Hamming distance between list a and list b."
  :non-generic t
  :class morphologie-box
  (fv-morphologie::hamming-dist a b norm test))

;;; DISSEMBLANCE (dissimilarity)

(define-box dist-edit ((seq1 nil) (seq2 nil) &key (sub 1) (ins 1) (del 1) (uncom 0) (norm NIL) (test equalp))
  :non-generic t
  :class morphologie-box
  ;:menu (norm (nil "not-normalized") (t "normalized"))
  (fv-morphologie::edit-dist seq1 seq2 sub ins del uncom norm test))

(define-box dist-multi-edit ((seq1 nil) (seq2 nil) (wgth 1) &key (change 1) (ins 1) (del 1) (uncom 0) (test equalp))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::multi-edit-dist seq1 seq2 wgth :change change :insert ins :delete del :inex uncom :test test))

(define-box dist-structure  ((seq1 nil) (seq2 nil) &key (w-occ 1.) (w-rep 1.) (test equalp))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::struct-dist seq1 seq2 w-occ w-rep test))

(define-box dist-graph ((v1 nil) (v2 nil) (graph nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::tree-dist v1 v2 graph))


;;; 2.2 DESCRIPTION - SELF-INFORMATION
(menu-separator :in evaluation)

(define-box histogram ((data nil) &key (test eql) (thes nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::histogramme data :test test :thes thes))

(define-box entropy ((data nil) &optional (mode nil) (samples nil) (test equalp))
  :non-generic t
  :class morphologie-box
  :menu (mode (0 "shannon-2") (1 "shannon-n") (2 "cond-sh"))
  (when (not test) (setf test #'equalp))
  (cond ((not mode)
	 (message "Entropy: using 'shannon-2 mode (default).")
	 (fv-morphologie::shannon-entropy data 2 samples test))
	((zerop mode)
         (fv-morphologie::shannon-entropy data 2 samples test))
        ((= mode 1)
	 (fv-morphologie::shannon-entropy data nil samples test))
        ((= mode 2)
	 (fv-morphologie::entropie-conditionnelle data nil samples test))
	(t (message "Entropy: unknown mode. Available modes are: 'shannon-2, 'shannon-n, shannon-e."))))

(define-box elt-info ((data nil) (elt nil) &optional (test equalp))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::self-info data elt test))

;(define-box redundancy ((data nil))
;  :non-generic t
;  :class morphologie-box
;  (fv-morphologie::redondance data))

(define-box  inner-dynamic ((seq nil) &optional (test equalp))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::mark-dynamic seq test))

;;;;;;;;;;;;;;;;
; 3. DELINEATION
(define-menu DELINEATION  :in fv-morphologie)
(in-menu delineation)

;; 3.1 BUILDING SOME GRAPHS

(define-box graph-span ((mat-dist nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::minimum-spanning-tree mat-dist))

(define-box graph-part ((graph nil) &optional (mode :distance))
  "Partition a graph."
  :non-generic t
  :class morphologie-box
  :menu (mode (:distance "distance"))
  (fv-morphologie::part-graph graph mode))

;; 3.2 MEASURING GRAPHS
(menu-separator :in delineation)

(define-box graph-path ((from nil) (to nil) (tree nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::tree-path from to tree))

(define-box graph-len ((graph nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::tree-minlen graph))

(define-box graph-deg ((node nil) (graph nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::tree-deg node graph))

(define-box graph-nodes ((graph nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::tree-nodes graph))

;; 3.3 DRAWING
(menu-separator :in delineation)

(define-box graph>dot  ((graph nil) (distorsion 0) (scale nil) (out t) &key (shape "ellipse") (legend t) (neato nil))
  :documentation "Converts a graph (list of edges) into an undirected graph into dot langage to be processed using neato program.
Arguments are:
graph : the graph, as a structured list.
distorsion : amount of distortion allowed for distances fir drawing the graph (from 0.0 for minimum distorsion to 1.0 maximum distorsion)
scale : scaling factor for the mininum distance
shape : string or list of strings to define node's shape, using 'neato' definitions
out :
if NIL or T, print out in listener;
if a string, it defines the pathname of the output. Type of file define output.
"
  :non-generic t
  :class morphologie-box
  ;:menu (shape ("ellipse" "ellipse") ("plaintext" "plaintext") ("point" "point"))
  (fv-morphologie::graph>dot graph distorsion scale shape out legend (if (or (stringp neato) (pathnamep neato)) neato nil)))

;;;;;;;;;;;;;;;;
;4. ENCODING
(define-menu ENCODAGE :in fv-morphologie)
(in-menu encodage)

;; 4.1 REDUCING / SAMPLING

(define-box sample ((seq nil) (method :landmarks) &optional (arg nil))
    :non-generic t
    :class morphologie-box
    :menu (method (:landmarks ":lamndmarks"))
    nil)

(menu-separator :in encodage)
;; 4.2 TRANSCODING

(define-box split ((seq nil) (marks nil))
  :non-generic t
  :class morphologie-box
  (if (and seq marks)
      (cond ((listp seq)
	     (split-list-using-marks seq marks))
	    ((stringp seq)
	     (split-string seq marks))
	    (t seq))
      seq))

(define-box concaten ((seq nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::concat seq))

(define-box transcode ((seq nil) (table nil) &optional (test #'eq))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::transcode seq table test))

(define-box num>base ((num 0) (base nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::num-base num base))

(define-box num>alpha ((num 0))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::num>alpha num))

(define-box alpha>num ((alpha abc) &optional (mode nil))
  :non-generic t
  :class morphologie-box
  :menu (mode (nil nil) (:midi ":midi"))
  (fv-morphologie::alpha>num alpha))

(define-box list>sym ((list nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::concaten list))

(define-box graph>matrix ((list nil))
  :non-generic t
  :class morphologie-box
  (fv-morphologie::graph2matrix list))

(menu-separator :in encodage)
;; 4.3 TOOLS

(define-box filt-median ((seq nil) (window 3))
  "median filter"
  :non-generic t
  :class morphologie-box
  (fv-morphologie::median-filter seq window))

(define-box filt-exponential ((seq nil) (alpha .5) &optional (gamma nil))
  "Low-pass filter"
  :non-generic t
  :class morphologie-box
  (if (not gamma)
      (fv-morphologie::exponential-smoothing seq alpha)
    (fv-morphologie::double-exponential-smoothing seq alpha gamma)))

(define-box filt-local-rep ((seq nil) &optional (mode nil) (test equalp))
  "Delete identical values or symbols."
  :non-generic t
  :class morphologie-box
  :menu (mode (:delete ":delete") (:linear ":interp"))
  (cond ((eq mode :delete)
         (fv-morphologie::rem-local-rep seq test))
        ((eq mode :linear)
         (if (not (member 'nil (mapcar #'numberp seq)))
             (fv-morphologie::nocons= seq test)
           (filt-local-rep seq :delete test)))
        (t (filt-local-rep seq :delete test))))

(define-box filt-noise ((seq nil) &optional (mode :nozero) (val 0.1))
  "Add noise into seq seq"
  :non-generic t
  :class morphologie-box
  :menu (mode (:nozero ":nozero") (:swap ":swap") (:relative ":relative"))
  (fv-morphologie::fnoise seq mode val))

;;;;;;;;;;;;;;;;
;5. IMPORT-EXPORT
(define-menu In-Out :in fv-morphologie)
(in-menu In-Out)

;; 5.1 reading files

(define-box read-text ((file nil)  (mode t) &key (sep nil) (rem-test nil))
  :non-generic t
  :class morphologie-box
  :menu (mode (t "lines") (nil "flat") (:ascii-7b "ascii-7b") (:ascii-8b "ascii-8b"))
  (case mode
    (:ascii-7b (read-txt-file file :mode :charcode :marks sep :rem-test rem-test :8bits nil))
    (:ascii-8b (read-txt-file file :mode :charcode :marks sep :rem-test rem-test :8bits t))
    (t (read-txt-file file :mode mode :marks sep :rem-test rem-test :8bits nil))))

; (define-box read-midi ((file))

; (define-box read-sdif ((file))

(menu-separator :in In-Out)
;; 5.2 writing files

(define-box write-list ((list list) (file t) &optional (mode :supersede))
  :non-generic t
  :class morphologie-box
  :menu (mode (:supersede "overwrite") (:append "append"))
  (list-write list file mode))


;;;;
;;; installing menu
(install-menu fv-morphologie)

;;; BOXES
#|
(defpackage :fv-morphologie-pw
  #+SBCL (:use :cl)
  #+Lispworks  (:use :cl :ompw)
  )

;;
(in-package :fv-morhologie-pw)
|#
