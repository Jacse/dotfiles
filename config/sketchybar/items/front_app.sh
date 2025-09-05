#!/usr/bin/env sh

sketchybar --add item front_app left \
  --set front_app script="$PLUGIN_DIR/front_app.sh" \
  background.padding_right=48 \
  --subscribe front_app front_app_switched
