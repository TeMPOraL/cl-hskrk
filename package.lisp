(defpackage #:cl-hskrk
  (:use #:cl)
  (:nicknames #:hskrk
              #:hs-krk)

  (:import-from #:alexandria
                #:when-let)

  ;; TODO exports go here.

  (:export #:list-lights
           #:get-light-state
           #:set-light-state
           #:toggle-light))
