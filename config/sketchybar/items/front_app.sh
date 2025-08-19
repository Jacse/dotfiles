#!/usr/bin/env sh

sketchybar --add       item         front_app left                    \
           --set       front_app    script="$PLUGIN_DIR/front_app.sh" \
                                    icon.drawing=off                  \
                                    background.padding_right=48         \
                                    label.color=0x99cad3f5                 \
           --subscribe front_app    front_app_switched

