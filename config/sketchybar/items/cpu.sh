#!/usr/bin/env sh

sketchybar --add item cpu.percent right \
  --set cpu.percent label=CPU \
  width=40 \
  update_freq=2 \
  background.padding_right=10 \
  \
  --add graph cpu.sys right 60 \
  --set graph.color=$RED \
  graph.fill_color=$RED \
  label.drawing=off \
  icon.drawing=off \
  background.padding_right=10 \
  \
  --add graph cpu.user right 60 \
  --set cpu.user graph.color=$BLUE \
  update_freq=2 \
  label.drawing=off \
  icon.drawing=off \
  background.padding_right=10 \
  script="$PLUGIN_DIR/cpu.sh"
