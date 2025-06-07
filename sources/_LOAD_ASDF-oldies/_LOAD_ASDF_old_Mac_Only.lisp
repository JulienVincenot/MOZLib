(require "asdf")
(require "sb-introspect")

(setf asdf:*central-registry*
       (list*
             (merge-pathnames 
                                "Documents/Max 8/Packages/MOZLib/sources/" 
                                  (user-homedir-pathname))
              asdf:*central-registry*))

(setf asdf:*central-registry*
       (list*
             (merge-pathnames 
                                "Documents/Max\ 8/Packages/MOZLib/sources/cluster-engine-master/" 
                                  (user-homedir-pathname))
              asdf:*central-registry*))


;;; in Ubuntu Shell on Windows:
;;; WINHOME=$(wslpath "$(winenv USERPROFILE)")
;;; echo $WINHOME -> /mnt/c/Users/matte/

;; (sb-unix::posix-getenv MACHOME)

;;;; find $MACHOME
;;;; load $MACHOME OR $WINHOME

;;;; create namestring of save-lisp and die beforehand (WIN or MAC)

;(print (+ 1 0))

(asdf:operate 'asdf:load-op 'cluster-engine)

(asdf:operate 'asdf:load-op 'mozlib)






;(print (+ 1 1))
;(print (+ 1 2))
;;(asdf:load-system :cluster-engine)


(save-lisp-and-die   
  	(namestring (merge-pathnames 
                                "Documents/Max 8/Packages/MOZLib/sbcl/moz-complete-new.core" 
                                  (user-homedir-pathname)))) ;;;;  this is the current user directory !


