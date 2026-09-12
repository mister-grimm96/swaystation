#!/usr/bin/env bash

# Detect whether we're running on Xorg or Wayland
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    suspend="systemctl suspend && swaylock -i ~/.config/walls/lock.png"
else
    suspend="systemctl suspend && i3lock -i ~/.config/walls/lock.png"
fi

# special method for loggin out :(
if [ "$XDG_CURRENT_DESKTOP" = "i3" ]; then
    logout="killall i3"
elif [ "$XDG_CURRENT_DESKTOP" = "Hyprland" ]; then
    logout="killall Hyprland"
elif [ "$XDG_CURRENT_DESKTOP" = "sway:wlroots" ]; then
    logout="killall sway"
else
  logout="loginctl terminate-user $USER"
fi

lock="swaylock -i ~/.config/walls/lock.png"

options=(
    "LOCK"
    "SUSPEND"
    "LOG-OUT"
    "RESTART"
    "POWER-OFF"
)

chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -theme-str '@import "~/.config/rofi/themes/powermenu.rasi"')

# Perform the action based on user choice
case "$chosen" in
    "LOCK") eval "$lock" ;;
    "SUSPEND") eval "$suspend" ;;
    "LOG-OUT") eval "$logout" ;;
    "RESTART") systemctl reboot ;;
    "POWER-OFF") systemctl poweroff ;;
    *) exit 1 ;;
esac
