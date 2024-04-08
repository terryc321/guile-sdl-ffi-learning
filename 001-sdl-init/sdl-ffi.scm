

(define-module (my-sdl)
  #:use-module (system foreign)
  #:use-module (system foreign-library)
  #:export (sdl-init
	    sdl-quit
	    sdl-version
	    
	    init-timer
	    init-audio
	    init-video
	    init-joystick
	    init-haptic
	    init-gamecontroller
	    init-events
	    init-sensor
	    init-noparachute
	    init-everything
	    ))

(define init-timer          #x00000001)
(define init-audio          #x00000010)
(define init-video          #x00000020);;/< SDL_INIT_VIDEO implies SDL_INIT_EVENTS /
(define init-joystick       #x00000200) ;;/< SDL_INIT_JOYSTICK implies SDL_INIT_EVENTS /
(define init-haptic         #x00001000)
(define init-gamecontroller #x00002000) ;;/< SDL_INIT_GAMECONTROLLER implies SDL_INIT_JOYSTICK /
(define init-events         #x00004000)
(define init-sensor         #x00008000)
(define init-noparachute    #x00100000)  ;;/< compatibility; this flag is ignored. /

(define init-everything (logior init-timer
				    init-audio
				    init-events
				    init-gamecontroller
				    init-haptic
				    init-joystick
				    init-sensor
				    init-video))

#|
(define j0
  (foreign-library-function "libm" "j0"
                            #:return-type double
                            #:arg-types (list double)))
|#

;; SDL_Init is from /usr/local/lib/libSDL2.so
(define sdl-init
  (foreign-library-function "libSDL2" "SDL_Init"
                            #:return-type int
                            #:arg-types (list uint32)))

(define sdl-quit
  (foreign-library-function "libSDL2" "SDL_Quit"
                            #:return-type void
                            #:arg-types '()))


;; try loading SDL itself
;;(load-extension "libSDL2" "init_sdl_routines")
;;(load-foreign-library "libSDL2" #:lazy? #f)


;; try loading our SDL-FFI library
(load-extension "./lib-sdl-ffi" "init_sdl_routines")








