#!/usr/bin/env sh

sketchybar --add       item         front_app left                    \
           --set       front_app    script="$PLUGIN_DIR/front_app.sh" \
                                    icon.drawing=off                  \
                                    background.padding_right=48         \
                                    label.color=$TEXT                 \
                                    label.font="$FONT:SemiBold:12.0"     \
           --subscribe front_app    front_app_switched

