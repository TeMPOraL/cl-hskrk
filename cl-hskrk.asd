(asdf:defsystem #:cl-hskrk
  :serial t
  :description "Access and control Hackerspace Kraków programmatically through a friendly Common Lisp API."
  :author "Jacek 'TeMPOraL' Złydach"
  :license "Beerware."
  :depends-on (#:cl-json)

  :components ((:file "package")))
