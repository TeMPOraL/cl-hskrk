(defpackage #:cl-hskrk
  (:use #:cl)
  (:nicknames #:hskrk
              #:hs-krk)

  (:import-from #:alexandria
                #:when-let)

  ;; TODO exports go here.

  (:export #:light-list
           #:get-light-state
           #:set-light-state
           #:toggle-light))
