(in-package :cl-user)
(defpackage testapp-test
  (:use :cl
        :testapp
        :prove))
(in-package :testapp-test)

(plan nil)

;; blah blah blah.

(finalize)
