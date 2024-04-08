#!/bin/bash

# \ slash comes before newline 
gcc -Wall \
    `pkg-config guile-3.0 --cflags` \
    `pkg-config sdl2 --cflags` \
    -shared -o lib-sdl-ffi.so -fPIC sdl-ffi.c  














