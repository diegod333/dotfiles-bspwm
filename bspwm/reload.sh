#!/bin/bash

# matar procesos
pkill polybar
pkill sxhkd

# reiniciar bspwm
bspc wm -r

# esperar un poco
sleep 0.1

# levantar sxhkd
sxhkd &

# levantar polybar
polybar main &
