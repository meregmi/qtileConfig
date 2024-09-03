#!/bin/bash

function run {
  if ! pgrep -x $(basename $1 | head -c 15) 1>/dev/null;
  then
    $@&
  fi
}
picom &

# Utilities
nm-applet &
blueman-applet &
/usr/bin/dunst
