(require "asdf")
;(require "uiop")
(require "sb-introspect")

;;;; load $HOME OR $WINHOME home directory

;; (probe-file (sb-unix::posix-getenv "HOME"))
;; -> /Users/julienvincenot/"

(defparameter *sladpath* nil)

(if (sb-unix::posix-getenv "HOME")
  (progn (setf asdf:*central-registry*
             (list*     
                   (merge-pathnames 
                                      "Documents/Max 8/Packages/MOZLib/sources/" 
                                        (probe-file (sb-unix::posix-getenv "HOME"))
                                        )                  
                    asdf:*central-registry*)) 
         
         (setf asdf:*central-registry*
             (list*
                   (merge-pathnames 
                                      "Documents/Max\ 8/Packages/MOZLib/sources/cluster-engine-master/" 
                                        (probe-file (sb-unix::posix-getenv "HOME"))
                                        )  
                    asdf:*central-registry*))

          (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/neuromuse/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))






          (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/alexandria-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))

          (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/global-vars-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))

          (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/trivial-features-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))
          (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/trivial-garbage-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))


           (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/bordeaux-threads-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))
           (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/lparallel-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))

           (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/cl-store-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))

           (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/asdf-flv-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))

           (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/trivial-backtrace/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))

           (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/fiveam-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))

           (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/chipz-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))
           

          (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/simple-neural-network-master/" 
                                         (probe-file (sb-unix::posix-getenv "HOME"))
                                         )  
                     asdf:*central-registry*))








         
         (setf *sladpath* 
                            (namestring (merge-pathnames 
                                "Documents/Max 8/Packages/MOZLib/sbcl/moz-complete.core" 
                                  (probe-file (sb-unix::posix-getenv "HOME"))))
           )
             
         ))


;;; if Ubuntu Shell on Windows (WSL):
;;; export WINHOME=$(wslpath "$(winenv USERPROFILE)")
;;; echo $WINHOME -> /mnt/c/Users/matte/

(if (sb-unix::posix-getenv "WINHOME")
  (progn (setf asdf:*central-registry*
             (list*     
                   (merge-pathnames 
                                      "Documents/Max 8/Packages/MOZLib/sources/" 
                                        (probe-file (sb-unix::posix-getenv "WINHOME"))
                                        )                  
                    asdf:*central-registry*)) 
         
        (setf asdf:*central-registry*
             (list*
                   (merge-pathnames 
                                      "Documents/Max\ 8/Packages/MOZLib/sources/cluster-engine-master/" 
                                        (probe-file (sb-unix::posix-getenv "WINHOME"))
                                        )  
                    asdf:*central-registry*))

         (setf asdf:*central-registry*
              (list*
                    (merge-pathnames 
                                       "Documents/Max\ 8/Packages/MOZLib/sources/neuromuse/" 
                                         (probe-file (sb-unix::posix-getenv "WINHOME"))
                                         )  
                     asdf:*central-registry*))

         (setf asdf:*central-registry*
             (list*
                   (merge-pathnames 
                                      "Documents/Max\ 8/Packages/MOZLib/sources/simple-neural-network-master/" 
                                        (probe-file (sb-unix::posix-getenv "WINHOME"))
                                        )  
                    asdf:*central-registry*))
        
        (setf *sladpath* 
                            (namestring (merge-pathnames 
                                "Documents/Max 8/Packages/MOZLib/sbcl/moz-complete.core" 
                                  (probe-file (sb-unix::posix-getenv "WINHOME"))))
           )
            
         ))

;(print (+ 1 0))

(asdf:operate 'asdf:load-op 'cluster-engine)
(asdf:operate 'asdf:load-op 'neuromuse)

(asdf:operate 'asdf:load-op 'alexandria)
(asdf:operate 'asdf:load-op 'global-vars)
(asdf:operate 'asdf:load-op 'trivial-features)
(asdf:operate 'asdf:load-op 'trivial-garbage)
(asdf:operate 'asdf:load-op 'bordeaux-threads)
(asdf:operate 'asdf:load-op :cl-store)
(asdf:operate 'asdf:load-op :lparallel)
(asdf:operate 'asdf:load-op :NET.DIDIERVERNA.ASDF-FLV)
(asdf:operate 'asdf:load-op :trivial-backtrace)
(asdf:operate 'asdf:load-op :fiveam)
(asdf:operate 'asdf:load-op :chipz)
(asdf:operate 'asdf:load-op 'simple-neural-network)

(asdf:operate 'asdf:load-op 'mozlib)


;(print (+ 1 1))
;(print (+ 1 2))
;;(asdf:load-system :cluster-engine)

(save-lisp-and-die *sladpath*) ;;;;  this is the current user directory !


