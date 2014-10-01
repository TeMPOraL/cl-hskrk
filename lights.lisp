(in-package #:cl-hskrk)

(defparameter *lights-base* "http://al2.hskrk.pl/api/v2/light/")
(defparameter *lights-get-state-endpoint* (string+ *lights-base* "get_state/"))

(defparameter *lights-actions* '((:on . "enable")
                                 (:off . "disable")
                                 (:toggle . "toggle")
                                 (:get_state . "get_state")))

(defun make-light-action-url (light action)
  (string+ *lights-base*
           (cdr (assoc action *lights-actions*))
           "/"
           (string-downcase (symbol-name light))))

(defun list-lights ()
  (http-get-data (make-light-action-url :all :get_state)))

(defun get-light-state (light)
  ;; TODO we're having a tri-state situation, figure out how to encode it.
  (http-get-data (make-light-action-url light :get_state)))

(defun set-light-state (light state)
  (assert (assoc state *lights-actions*)
          (state)
          "Value ~S is not a proper light operation." state)
  (http-get-data (make-light-action-url light state)))

(defun toggle-light (light)
  (http-get-data (make-light-action-url light :toggle)))
