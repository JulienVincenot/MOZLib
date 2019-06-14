(require "asdf")


(setf asdf:*central-registry*
       (list*
             ; #p "~/Documents/Max 7/Packages/MOZLib/_dev_only/pure-lisp-sources/test_asd/"
             ; #p "~/Documents/Max 8/Packages/MOZLib/_dev_only/pure-lisp-sources/adaptations-pure-lisp/"
             (merge-pathnames 
                                "Documents/Max 8/Packages/MOZLib/sources/" 
                                  (user-homedir-pathname))
             ; #p "~/Documents/Max 9/Packages/MOZLib/_dev_only/pure-lisp-sources/test_asd/"                                                                                                         
              asdf:*central-registry*))

#|     
	then to load : 
     (asdf:operate 'asdf:load-op 'mozlib)
|#  

(asdf:operate 'asdf:load-op 'mozlib)

(save-lisp-and-die   
  	(namestring (merge-pathnames 
                                "Documents/Max 8/Packages/MOZLib/sbcl/moz-complete-new.core" 
                                  (user-homedir-pathname)))) ;;;;  this is the current user directory !


