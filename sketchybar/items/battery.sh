sketchybar --add item battery right \
           --set battery update_freq=120 script="$PLUGIN_DIR/battery.sh" \
                 icon.font="MesloLGS NF:Regular:24.0" \
                 icon.padding_right=12 \
                 icon.padding_left=12 \
           --subscribe battery system_woke power_source_change