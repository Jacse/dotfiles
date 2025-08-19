#!/usr/bin/env sh

sketchybar --add item     calendar right               \
           --set calendar update_freq=15               \
                          label.padding_right=12       \
                          script="$PLUGIN_DIR/time.sh"
