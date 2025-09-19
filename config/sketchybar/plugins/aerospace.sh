#!/usr/bin/env sh

SUBTEXT0_TRANSPARENT=0xaaa5adcb
CYAN=0xff41c6ee

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on icon.color=$CYAN label.color=$CYAN
else
  sketchybar --set $NAME background.drawing=off icon.color=$SUBTEXT0_TRANSPARENT label.color=$SUBTEXT0_TRANSPARENT
fi
