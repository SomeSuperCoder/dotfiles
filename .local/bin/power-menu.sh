#!/bin/sh

chosen=$(printf "Power Off\nRestart\nLock" | rofi -dmenu -i)

case "$chosen" in
    "Power Off") poweroff ;;
    "Restart") reboot ;;
    "Lock") hyprctl switchxkblayout at-translated-set-2-keyboard 0 & hyprlock ;;
    *) exit 1 ;;
esac
