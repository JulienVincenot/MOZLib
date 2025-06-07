;;; Written by Gene Kim 2-19-2019
;;; File with functions to interface with python repl server

;; python python-repl-server.py 8080 "g:g"

(in-package :word2vec)

(defparameter *python-server-url* "http://localhost:8080")
(defparameter *python-server-username* "g")
(defparameter *python-server-password* "g")

(defvar *python-call-methods* '(socket shell))

;; Gets variable and returns a keyed pair (variable_name . variable_val)
(defmacro keyarg (x) `(if ,x (cons ',x ,x) nil))

;; Takes list and turns into string representing python array
(defun list-to-array (list)
  (cond
    ((not list) "")
    ((atom list) (if (stringp list) (format nil "'~a'" list) (format nil "~a" list)))
    (t (let ((ret "["))
      (dolist (l list) (setq ret (concatenate 'string ret (list-to-array l) ", ")))
      (setq ret (concatenate 'string ret "]"))
      ret))))

;; Takes the function name, list of required arguments, followed by an
;; association list of (key . arg) pairs for keyed arguments and returns
;; the string for the corresponding Python function call.
;;
;; At the moment this function assumes that the required arguments may be
;; strings, whereas keyed arguments are not.
(defun python-call (fnname required-args keyed-args)
  (let ((rarg-str (format nil "~{~s~^,~}" required-args))
        (karg-str (format nil "~{~a~^,~}"
                          (loop for (key . value) in keyed-args
                                collect (intern (format nil "~(~a~)=~a" key value))))))
    (cl-strings:join
      (list (format nil "~a" fnname) "(" rarg-str "," karg-str ")"))))


;; Makes a python call via a socket to a server that interprets it.
(defun python-over-socket (expression cmd-type)
  (assert (member cmd-type '(exec eval)))
  (let (;; Build the parameter string from the given command type and expression.
        (paramstr (json:encode-json-to-string
                    `(("cmd" . ,cmd-type) ("exp" . ,expression))))
        ;; The post-process the request output by decoding into a string followed
        ;; by json, then extracting the result.
        (post-proc-fn
          (util:compose
            #'(lambda (x) (cdr (assoc :result x)))
            #'json:decode-json-from-string
            #'flexi-streams:octets-to-string))
        raw-request-result)
    (setq raw-request-result
      (drakma:http-request *python-server-url* :method :post
                           :content paramstr
                           :basic-authorization (list *python-server-username*
                                                      *python-server-password*)))
    (if raw-request-result
      (funcall post-proc-fn raw-request-result)
      raw-request-result)))