
#include <libguile.h>

#include <stdio.h>

#include "SDL.h"
#include "SDL_timer.h" //SDL_GetTicks

//extern Uint32 SDL_GetTicks(void);
//extern void SDL_Quit(void);
//extern int SDL_Init(unsigned int flags); // UInt32 
//extern SDL_Init;

/*
  SEE THIS FILE [https://github.com/libsdl-org/SDL/blob/SDL2/include/SDL.h]
  
  extern int SDL_Init(Uint32 flags);
  extern void SDL_Quit(void);
  extern const char *SDL_GetPlatform(void);
  extern void SDL_GetVersion(SDL_version *ver);

SDL_INIT_VIDEO 32
SDL_INIT_EVENTS 16384
SDL_INIT_TIMER 1
SDL_INIT_AUDIO 16
SDL_INIT_JOYSTICK 512
SDL_INIT_HAPTIC 4096
SDL_INIT_GAMECONTROLLER 8192
SDL_INIT_SENSOR 32768
SDL_INIT_EVERYTHING 62001
OR 'D KNOWN FLAGS EVERYTHING SHOULD THEN BE 62001 
PLATform [Linux] 
sdl SDL_MAJOR_VERSION 2 
sdl SDL_MINOR_VERSION 30 
sdl SDL_PATCHLEVEL 2 
sdl GetVersion 2 30 2 

 */
SCM c_sdl_getversion(){
  // scm_cons
  // scm_list
  // SCM_BOOL_T
  SCM major = scm_from_uint(SDL_MAJOR_VERSION);
  SCM minor = scm_from_uint(SDL_MINOR_VERSION);
  SCM patch = scm_from_uint(SDL_PATCHLEVEL);   
  SCM res = scm_list_3(major,minor,patch);
  return res;
}

/*
SCM c_sdl_init(SCM s_flags){  
  // 0 on success
  // anything else as error code
  unsigned int c_flags = scm_to_uint(s_flags);
  int c_ret = SDL_Init(c_flags);
  return scm_from_int(c_ret);
}

SCM c_sdl_quit(){
  SDL_Quit();
  return SCM_UNDEFINED;
}
*/


void init_sdl_routines (void)
{
  // maybe i needed to create pair type at runtime 
  //init_pair_type();
    
  // scm_c_define_gsubr (const char *name, int req, int opt, int rst, fcn)
  //  scm_c_define_gsubr ("sdl-init", 1, 0, 0, c_sdl_init);
  //scm_c_define_gsubr ("sdl-quit", 0, 0, 0, c_sdl_quit);
  scm_c_define_gsubr ("sdl-version", 0, 0, 0, c_sdl_getversion);
  
}


