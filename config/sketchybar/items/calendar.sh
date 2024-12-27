#!/usr/bin/env sh

sketchybar --add item     calendar right               \
           --set calendar update_freq=15               \
                          icon=cal                     \
                          icon.color=$TEXT             \
                          icon.font="$FONT:Regular:13.0" \
                          icon.padding_left=10         \
                          icon.padding_right=4         \
                          label.width=55               \
                          label.align=right            \
                          label.color=$TEXT            \
                          label.padding_right=12       \
                          align=center                 \
                          script="$PLUGIN_DIR/time.sh"
