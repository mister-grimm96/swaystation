#!/usr/bin/env bash

set_background() {
  local wall_name
  wall_name="$(<"$HOME/.cache/wall.txt")"
  pkill swaybg
  if [[ -z "$wall_name" ]]; then
    swaybg -i "$HOME/.config/walls/wall.png" -m fill  > /dev/null 2>&1 &
  else
    swaybg -i "$wall_name" -m fill  > /dev/null 2>&1 &
  fi
  exit 0
}

set_background 
