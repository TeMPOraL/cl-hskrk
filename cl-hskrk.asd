(asdf:defsystem #:cl-hskrk
  :serial t
  :description "Access and control Hackerspace Kraków programmatically through a friendly Common Lisp API."
  :author "Jacek 'TeMPOraL' Złydach"
  :license "Beerware."
  :depends-on (#:alexandria
               #:drakma
               #:cl-json)

  :components ((:file "package")

               (:file "utils")

               (:file "at")
               (:file "lights")
               (:file "sensors")))
