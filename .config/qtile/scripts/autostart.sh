#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#start sxhkd to replace Qtile 
run sxhkd -c ~/.config/qtile/sxhkd/sxhkdrc &

wal -R &


