
;; use :string-tools seems not to work
(unless (find-package :ta-utilities)
  (make-package :ta-utilities
                :nicknames '(:ta-utils :tu)
                :use '(:common-lisp)))


