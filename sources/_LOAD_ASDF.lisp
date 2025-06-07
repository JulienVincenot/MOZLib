(require "asdf")
;(require "uiop")
(require "sb-posix")
(require "sb-introspect")

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

		("pmc/" :pmc)

    ;("neuromuse/" :neuromuse)
    ("fv-morphologie/" "fv-morphologie")


    ("alexandria-master/" :alexandria) ("global-vars-master/" :global-vars)
    ("trivial-features-master/" :trivial-features) ("trivial-garbage-master/" :trivial-garbage)
    ("bordeaux-threads-master/" :bordeaux-threads) ("cl-store-master/" :cl-store) ("lparallel-master/" :lparallel)
    ("asdf-flv-master/" :NET.DIDIERVERNA.ASDF-FLV) ("trivial-backtrace/" :trivial-backtrace)
    ("fiveam-master/" :fiveam) ("chipz-master/" :chipz)
    ("simple-neural-network-master/" :simple-neural-network)

    ("split-sequence-master/" :split-sequence)

    ("" :mozlib) ;;;; MOZ'Lib vanilla (incl. OM stuff, JBS libraries, Jv-components, Chreodes&Transkaija, etc )

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;; external libraries ;;;;;;;;;;

    ; ("neuralconstraints_sources/" :neuralconstraints)

    )
	)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;; here add system for User libraries...!

;;;;;; "if ~/MOZLib-User/" exists then add the path and scan for libraries / asdf file...!

;;;;;; maybe needs to put it before MOZ'Lib vanilla final evaluation

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; ;;;; if macOS (easy):

; (if (sb-unix::posix-getenv "HOME")
;   )



;;; if Ubuntu Shell on Windows (WSL):
;;; export WINHOME=$(wslpath "$(winenv USERPROFILE)")
;;; echo $WINHOME -> /mnt/c/Users/matte/

(if (sb-unix::posix-getenv "WINHOME")

    ;; Windows case
    (progn 
    	(loop for i in *list-asdf-paths*
    		do (setf asdf:*central-registry*
    			(list*     
    				(merge-pathnames 
    					(concatenate 'string "Documents/Max 8/Packages/MOZLib/sources/" 
    						(first i))
    					(probe-file (sb-unix::posix-getenv "WINHOME"))
    					)                  
    				asdf:*central-registry*))

    		do (asdf:operate 'asdf:load-op (second i))

    		)

    	;;;;; locate and load user-libraries
    	(defparameter *list-asdf-paths-userlibs* 
    		(let* ((path 

    			(namestring (merge-pathnames 
      		"Documents/Max 8/Packages/MOZLib/sbcl/moz-complete.core" 
      		(probe-file (sb-unix::posix-getenv "WINHOME"))))

    			))

    		(if (probe-file (print path))
    			(read-from-string 
    				(with-open-file (stream path :direction :input)
    					(let ((content (make-string (file-length stream))))
    						(read-sequence content stream)
    						content))
    				)
    			)
    		)
    	)



      ;;;;; + when done filling *central-registry*, define *sladpath* :
      (setf *sladpath* 
      	(namestring (merge-pathnames 
      		"Documents/Max 8/Packages/MOZLib/sbcl/moz-complete.core" 
      		(probe-file (sb-unix::posix-getenv "WINHOME"))))
      	)
      )

    ;; macOS case (hopefully...)
    (progn 
    	(loop for i in *list-asdf-paths*
    		do (setf asdf:*central-registry*
    			(list*     
    				(merge-pathnames 
    					(concatenate 'string "Documents/Max 8/Packages/MOZLib/sources/" 
    						(first i))
    					(probe-file (sb-unix::posix-getenv "HOME"))
    					)                  
    				asdf:*central-registry*))

    		do (asdf:operate 'asdf:load-op (second i))

    		)


    	;;;;; locate and load user-libraries
    	(defparameter *list-asdf-paths-userlibs* 
    		(let* ((path (namestring (merge-pathnames 
    			"Documents/Max 8/Packages/MOZLib/sources/_LOAD_user-libraries.lisp" 
    			(probe-file (sb-unix::posix-getenv "HOME"))))))

    		(if (probe-file (print path))
    			(read-from-string 
    				(with-open-file (stream path :direction :input)
    					(let ((content (make-string (file-length stream))))
    						(read-sequence content stream)
    						content))
    				)
    			)
    		)
    	)




      ;;;;; + when done filling *central-registry*, define *sladpath* :
      (setf *sladpath* 
      	(namestring (merge-pathnames 
      		"Documents/Max 8/Packages/MOZLib/sbcl/moz-complete.core" 
      		(probe-file (sb-unix::posix-getenv "HOME"))))
      	)
      )  

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
            do (setf asdf:*central-registry*
                     (list*     
                           (probe-file (first i))                  
                            asdf:*central-registry*))

            do (asdf:operate 'asdf:load-op (second i))

)


(setf sb-ext:*muffled-warnings* 'style-warning)



(save-lisp-and-die *sladpath*) ;;;;  this is the current user directory !








