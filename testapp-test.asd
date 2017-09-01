(in-package :cl-user)
(defpackage testapp-test-asd
  (:use :cl :asdf))
(in-package :testapp-test-asd)

(defsystem testapp-test
  :author "tamura shingo"
  :license "MIT"
  :depends-on (:testapp
               :prove)
  :components ((:module "t"
                :components
                ((:file "testapp"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
