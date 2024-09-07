#!/usr/bin/env sh

TEXT=0xffcad3f5
SUBTEXT0_TRANSPARENT=0xaaa5adcb

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on icon.color=$TEXT
else
    sketchybar --set $NAME background.drawing=off icon.color=$SUBTEXT0_TRANSPARENT
fi
