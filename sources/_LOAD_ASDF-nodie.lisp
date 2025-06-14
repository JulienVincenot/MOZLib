(require "asdf")
;(require "uiop")
(require "sb-introspect")

;;;; load $HOME OR $WINHOME home directory

;; (probe-file (sb-unix::posix-getenv "HOME"))
;; -> /Users/julienvincenot/"

(defparameter *sladpath* nil)

(defparameter *list-asdf-paths*
  '( 
    ; ("cluster-engine-master/" :cluster-engine)
    ; ("ta-utilities/" :ta-utilities)
    ; ("fenv/" :fenv) 
    ; ("cluster-rules/" :cluster-rules)

    ;; ("pmc/" :pmc)
    
    ; ("neuromuse/" :neuromuse)
    ; ("fv-morphologie/" "fv-morphologie")

    ; ("alexandria-master/" :alexandria) ("global-vars-master/" :global-vars)
    ; ("trivial-features-master/" :trivial-features) ("trivial-garbage-master/" :trivial-garbage)
    ; ("bordeaux-threads-master/" :bordeaux-threads) ("cl-store-master/" :cl-store) ("lparallel-master/" :lparallel)
    ; ("asdf-flv-master/" :NET.DIDIERVERNA.ASDF-FLV) ("trivial-backtrace/" :trivial-backtrace)
    ; ("fiveam-master/" :fiveam) ("chipz-master/" :chipz)
    ; ("simple-neural-network-master/" :simple-neural-network)

     ("" :mozlib) ;;;; MOZ'Lib vanilla
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

      ;;;;; + when done filling *central-registry*, define *sladpath* :
      (setf *sladpath* 
            (namestring (merge-pathnames 
                "Documents/Max 8/Packages/MOZLib/sbcl/moz-complete.core" 
                  (probe-file (sb-unix::posix-getenv "HOME"))))
           )
  )  

  )












(setf sb-ext:*muffled-warnings* 'style-warning)



;;;(save-lisp-and-die *sladpath*) ;;;;  this is the current user directory !








