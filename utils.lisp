(in-package :cl-hskrk)

(defun string+ (&rest strings)
  "Concatenate `STRINGS'."
  ;; NOTE apparently could be implementation-dependent
  (apply #'concatenate 'string strings))

(defun fix-drakma-output (output)
  "Takes `OUTPUT' from drakma:http-request and coerces it into a string."
  (if (stringp output)
      output
      (map 'string #'code-char output)))

(defun http-get (url)
  (fix-drakma-output (drakma:http-request url)))

(defun http-get-data (url)
  (json:decode-json-from-string (http-get url)))

