#!/usr/bin/env sh

sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-workspaces --all); do
    sketchybar --add item space.$sid left \
              --subscribe space.$sid aerospace_workspace_change \
              --set space.$sid \
              icon="$sid" \
              icon.padding_left=12               \
              icon.padding_right=12              \
              background.height=26               \
              background.corner_radius=5         \
              background.color=$BASE        \
              background.drawing=of \
              label.drawing=off \
              click_script="aerospace workspace $sid" \
              script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done

sketchybar   --add item       separator left                          \
             --set separator  icon=                                  \
                              background.padding_left=12              \
                              background.padding_right=12             \
                              icon.color=$TEXT
