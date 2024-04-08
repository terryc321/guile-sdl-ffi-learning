
#|

sdl-init.scm

from sdl.h
these values 0x0000u is an unsigned hex numbers
is there a way to enter hex values in guile


#define SDL_INIT_TIMER          0x00000001u
#define SDL_INIT_AUDIO          0x00000010u
#define SDL_INIT_VIDEO          0x00000020u  /**< SDL_INIT_VIDEO implies SDL_INIT_EVENTS */
#define SDL_INIT_JOYSTICK       0x00000200u  /**< SDL_INIT_JOYSTICK implies SDL_INIT_EVENTS */
#define SDL_INIT_HAPTIC         0x00001000u
#define SDL_INIT_GAMECONTROLLER 0x00002000u  /**< SDL_INIT_GAMECONTROLLER implies SDL_INIT_JOYSTICK */
#define SDL_INIT_EVENTS         0x00004000u
#define SDL_INIT_SENSOR         0x00008000u
#define SDL_INIT_NOPARACHUTE    0x00100000u  /**< compatibility; this flag is ignored. */
#define SDL_INIT_EVERYTHING (						\
			      SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_EVENTS | \
			      SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC | SDL_INIT_GAMECONTROLLER | SDL_INIT_SENSOR \
			      )

#x1 = 1 
#xff = 255 
|#



(define sdl-init-timer          #x00000001)
(define sdl-init-audio          #x00000010)
(define sdl-init-video          #x00000020);;/**< SDL_INIT_VIDEO implies SDL_INIT_EVENTS */
(define sdl-init-joystick       #x00000200) ;;/**< SDL_INIT_JOYSTICK implies SDL_INIT_EVENTS */
(define sdl-init-haptic         #x00001000)
(define sdl-init-gamecontroller #x00002000) ;;/**< SDL_INIT_GAMECONTROLLER implies SDL_INIT_JOYSTICK */
(define sdl-init-events         #x00004000)
(define sdl-init-sensor         #x00008000)
(define sdl-init-noparachute    #x00100000)  ;;/**< compatibility; this flag is ignored. */

(define sdl-init-everything (logior sdl-init-timer
				    sdl-init-audio
				    sdl-init-events
				    sdl-init-gamecontroller
				    sdl-init-haptic
				    sdl-init-joystick
				    sdl-init-sensor
				    sdl-init-video))

(define sdl-version '(major 2 minor 30 patchlevel 2))

