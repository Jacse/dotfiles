#!/usr/bin/env sh

sketchybar --add item     bluetooth.headphones right      \
           --set bluetooth.headphones                     \
                          update_freq=10                  \
                          drawing=off                     \
                          padding_left=8                  \
                          padding_right=8                 \
                          icon=""                        \
                          icon.padding_right=4            \
                          icon.padding_left=8             \
                          label.padding_right=8           \
                          background.height=26            \
                          background.color=$BASE          \
                          background.corner_radius=9      \
                          background.drawing=on           \
                          script="$PLUGIN_DIR/bluetooth.sh"
