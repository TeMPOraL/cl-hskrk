(in-package #:cl-hskrk)

(defparameter *lights-base* "http://al2.hskrk.pl/api/v2/light/")
(defparameter *lights-get-state-endpoint* (string+ *lights-base* "get_state/"))

(defun make-light-action-url (light action)
  (string+ *lights-base*
           (string-downcase (symbol-name action))
           "/"
           (string-downcase (symbol-name light))))

(defun list-lights ()
  (http-get-data (make-light-action-url :all :get_state)))

(defun get-light-state (light)
  ;; TODO crashes on invalid light.
  ;; TODO we're having a tri-state situation, figure out how to encode it.
  (http-get-data (make-light-action-url light :get_state)))

(defun set-light-state (light state)
  (declare (ignore light state))
  ;; TODO
  )

(defun toggle-light (light)
  (declare (ignore light))
  ;; TODO
  )
