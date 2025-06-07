(in-package :pmc-test)

(defsuite* :pmc-test)

(defun set-equal (list1 list2 &key (test #'eql) (key nil keyp))
  "Returns true if every element of LIST1 matches some element of LIST2 and
every element of LIST2 matches some element of LIST1. Otherwise returns false."
  (let ((keylist1 (if keyp (mapcar key list1) list1))
	(keylist2 (if keyp (mapcar key list2) list2)))
    (and (dolist (elt keylist1 t)
	   (or (member elt keylist2 :test test)
	       (return nil)))
	 (dolist (elt keylist2 t)
	   (or (member elt keylist1 :test test)
	       (return nil))))))

(defmacro pmc-test ((name &optional doc) pmc-form exp)
  (when doc (setq doc (list doc)))
  `(deftest ,name ,@doc
	    (let ((exp-res ,exp)
		  res)
	      (is (set-equal
		   (setq res ,pmc-form)
		   exp-res
		   :test #'equal)
		  "PMC returned:~%    ~S~%    We expected:~%    ~S" res exp-res))))
