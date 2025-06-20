(require "asdf")
;(require "uiop")
(require "sb-posix")
(require "sb-introspect")

;;; die or no-die?
(defparameter *save-lisp-and-die?* T)

;;; get the loaded file name
(defparameter *this-file*
	(namestring (truename *load-pathname*)))

(defparameter *max-version*
	(read-from-string 
		(let* ((marker "Max ")(start (search marker *this-file*)))
			(if start
				(string (char *this-file* (+ start (length marker))))
				"version_not_found"))))

(format t "This version of MOZ'Lib is currently using Max ~A.~%" *max-version*)

(defun moz-relative-path (subpath)
	"The function goes from Documents to MOZLib included"
	(format nil "Documents/Max ~A/Packages/MOZLib/~A" *max-version* subpath))


;;;; load $HOME OR $WINHOME home directory

;; (probe-file (sb-unix::posix-getenv "HOME"))
;; -> /Users/julienvincenot/"

(defparameter *sladpath* nil)

(defparameter *list-asdf-paths*
	'(
		("cluster-engine-master/" :cluster-engine)
		("ta-utilities/" :ta-utilities)
		("fenv/" :fenv) 
		("cluster-rules/" :cluster-rules)

		("pmc/" :pmc) ;;; Kilian Sprotte

		; ("neuromuse/" :neuromuse)
		("fv-morphologie/" "fv-morphologie")

		("alexandria-master/" :alexandria) ("global-vars-master/" :global-vars)
		("trivial-features-master/" :trivial-features) ("trivial-garbage-master/" :trivial-garbage)
		("bordeaux-threads-master/" :bordeaux-threads) ("cl-store-master/" :cl-store) ("lparallel-master/" :lparallel)
		("asdf-flv-master/" :NET.DIDIERVERNA.ASDF-FLV) ("trivial-backtrace/" :trivial-backtrace)
		("fiveam-master/" :fiveam) ("chipz-master/" :chipz)
		("simple-neural-network-master/" :simple-neural-network)

		("split-sequence-master/" :split-sequence)

		("" :mozlib) ;;;; MOZ'Lib vanilla (incl. OM stuff, JBS libraries, Jv-components, Chreodes&Transkaija, etc )
	)
)



(defun init-moz-asdf-systems (platform)
	(progn 
		(loop for i in *list-asdf-paths*
			do (setf asdf:*central-registry*
				(list*     
					(merge-pathnames 
						(concatenate 'string 
					(moz-relative-path "sources/") ;;; "Documents/Max 8/Packages/MOZLib/sources/" 
					(first i))
						(probe-file (sb-unix::posix-getenv platform)))			                 
					asdf:*central-registry*))
			do (asdf:operate 'asdf:load-op (second i)))

		;;;;; locate and load user-libraries
		(defparameter *list-asdf-paths-userlibs* 
			(let* ((path (namestring 
				(merge-pathnames 
								(moz-relative-path "sources/_LOAD_user-libraries.lisp") ;;; "Documents/Max 8/Packages/MOZLib/sources/_LOAD_user-libraries.lisp" 
								(probe-file (sb-unix::posix-getenv platform))))))
			(if (probe-file (print path))
				(read-from-string 
					(with-open-file (stream path :direction :input)
						(let ((content (make-string (file-length stream))))
							(read-sequence content stream)
							content))))))
					
		;;;;; + when done filling *central-registry*, define *sladpath* :
		(setf *sladpath* 
			(namestring (merge-pathnames 
				(moz-relative-path "sbcl/moz-complete.core") ;;; "Documents/Max 8/Packages/MOZLib/sbcl/moz-complete.core" 
				(probe-file (sb-unix::posix-getenv platform)))))
	)
)



; ;;;; if macOS (easy):
; (if (sb-unix::posix-getenv "HOME")


;;; if Ubuntu Shell on Windows (WSL):
;;; export WINHOME=$(wslpath "$(winenv USERPROFILE)")
;;; echo $WINHOME -> /mnt/c/Users/matte/

(if (sb-unix::posix-getenv "WINHOME")

	;;; Windows case ;;;
	(init-moz-asdf-systems "WINHOME")

	;;; macOS case (hopefully...) ;;;
	(init-moz-asdf-systems "HOME")

)


; (defparameter *list-asdf-paths-userlibs* 
;     ( quote
;         (
;             ( "/Users/julienvincenot/Documents/Max 8/Packages/MOZLib-demolib/sources/" :MOZLIB-USER )
;             ( "/Users/julienvincenot/Documents/Max 8/Packages/NeuralConstraints_dummy/sources/" :NEURALCONSTRAINTS )
;         )
;     )
; )


(loop for i in *list-asdf-paths-userlibs*
	do (setf asdf:*central-registry* (list* (probe-file (first i)) asdf:*central-registry*))

	do (asdf:operate 'asdf:load-op (second i)))


(setf sb-ext:*muffled-warnings* 'style-warning)

(if *save-lisp-and-die?*
	(save-lisp-and-die *sladpath*)) ;;;;  this is the current user directory !

