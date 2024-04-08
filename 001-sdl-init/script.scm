
(load "sdl-ffi.scm")

(use-modules ((my-sdl) #:prefix sdl:))

(define (reckless n)
  (cond
   ((> n 0)
    (format #t "run no [~a] : initializing sdl everything~%" n)
    (let ((ret (sdl:sdl-init sdl:init-video)))
      (format #t "sdl returned ~a ~%" ret)
      (format #t "sdl version ~a ~%" (sdl:sdl-version))
      (sdl:sdl-quit)
      (format #t "sdl quit ! ~%")
      (reckless (- n 1))))))

;;(reckless 5)
(reckless 100)






