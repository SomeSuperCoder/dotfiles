#!/bin/sh

chosen=$(printf "Screen\nWindow\nRegion" | rofi -dmenu -i)

case "$chosen" in
    "Screen") hyprshot -m output ;;
    "Window") hyprshot -m window ;;
    "Region") hyprshot -m region ;; 
    *) exit 1 ;;
esac
