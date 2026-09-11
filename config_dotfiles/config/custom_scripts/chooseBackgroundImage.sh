#!/usr/bin/env bash

backgrounds_directory="$HOME/Pictures/backgrounds"
theme="$HOME/.config/rofi/themes/wallpicker.rasi"
cache_file="$HOME/.cache/wall.txt"


show_wallpapers() {
# - keep the current selection
# - clear the filter after selecting
printf '\0keep-selection\x1ftrue\n'

local file
local name

while IFS= read -r -d '' file; do
  name="${file##*/}"

  printf '%s\0icon\x1f%s\n' \
    "$name" \
    "$file"
done < <(
  find "$backgrounds_directory" \
    -maxdepth 1 \
    -type f \
    \( \
    -iname "*.jpg" -o \
    -iname "*.jpeg" -o \
    -iname "*.png" -o \
    -iname "*.gif" -o \
    -iname "*.bmp" -o \
    -iname "*.webp" \
    \) \
    -print0 |
    sort -z
  )
}

set_wallpaper() {
  local selected_wall="$1"
  [[ -z "$selected_wall" ]] && return
  echo "$selected_wall" > "$cache_file"
  pkill swaybg
  swaybg \
    -i "$backgrounds_directory/$selected_wall" \
    -m fill \
    >/dev/null 2>&1 &
}

if [[ -n "$ROFI_RETV" ]]; then
  case "$ROFI_RETV" in
    # Initial call
    0)
    show_wallpapers
    ;;
    1)
    set_wallpaper "$1"
    show_wallpapers
    ;;
  esac
  exit 0
fi

if ! find "$backgrounds_directory" \
  -maxdepth 1 \
  -type f \
  \( \
  -iname "*.jpg" -o \
  -iname "*.jpeg" -o \
  -iname "*.png" -o \
  -iname "*.gif" -o \
  -iname "*.bmp" -o \
  -iname "*.webp" \
  \) \
  -print -quit |
  grep -q .
then
  notify-send \
    "Wallpaper Picker" \
    "No wallpapers found."

  exit 1
fi


exec rofi \
  -show walls \
  -modi "walls:$0" \
  -show-icons \
  -theme "$theme"
