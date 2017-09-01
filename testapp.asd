(in-package :cl-user)
(defpackage testapp-asd
  (:use :cl :asdf))
(in-package :testapp-asd)

(defsystem testapp
  :version "0.1"
  :author "tamura shingo"
  :license "MIT"
  :depends-on (:clack
               :lack
               :caveman2
               :envy
               :cl-ppcre
               :uiop

               ;; for @route annotation
               :cl-syntax-annot

               ;; HTML Template
               :djula

               ;; for DB
               :datafly
               :cl-batis
               :cl-dbi-connection-pool

               ;; Dependency Injection
               :cl-dependencyinjection)
  :components ((:module "src"
                :components
                ((:file "main" :depends-on ("config" "view" "db"))
                 (:file "web" :depends-on ("view"))
                 (:file "view" :depends-on ("config"))
                 (:file "db" :depends-on ("config"))
                 (:file "config"))))
  :description "Common Lisp Web Application with caveman2, cl-batis, cl-dependencyinjection"
  :in-order-to ((test-op (load-op testapp-test))))
