#!/bin/sh

chosen=$(printf "Power Off\nRestart\nLock" | rofi -dmenu -i)

case "$chosen" in
    "Power Off") poweroff ;;
    "Restart") reboot ;;
    "Lock") hyprctl switchxkblayout all 0 & hyprlock ;;
    *) exit 1 ;;
esac
