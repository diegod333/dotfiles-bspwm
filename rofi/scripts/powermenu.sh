#!/bin/bash

chosen=$(printf "Lock\nLogout\nSuspend\nReboot\nShutdown" | rofi -dmenu \
    -theme ~/.config/rofi/powermenu.rasi \
    -p "")

case "$chosen" in
    Lock) i3lock -c 1e1e1e ;;
    Logout) bspc quit ;;
    Suspend) systemctl suspend ;;
    Reboot) systemctl reboot ;;
    Shutdown) systemctl poweroff ;;
esac
