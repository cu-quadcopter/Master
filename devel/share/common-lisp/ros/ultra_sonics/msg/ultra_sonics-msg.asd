
(cl:in-package :asdf)

(defsystem "ultra_sonics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ProximityReading" :depends-on ("_package_ProximityReading"))
    (:file "_package_ProximityReading" :depends-on ("_package"))
  ))