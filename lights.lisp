(in-package #:cl-hskrk)

(defun fix-drakma-output (output)
  (if (stringp output)
      output
      (map 'string #'code-char output)))

(defun debug-get-lights-state ()
  (let ((result (fix-drakma-output (drakma:http-request "http://al2.hskrk.pl/api/v2/light/get_state/all"))))
    (list result (json:decode-json-from-string result))))
