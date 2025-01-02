#!/usr/bin/env sh

sketchybar --add item bluetooth.headphones right \
  --add event bluetooth_status "com.apple.bluetooth.status" \
  --add event bluetooth_on "IOBluetoothHostControllerPoweredOnNotification" \
  --add event bluetooth_off "IOBluetoothHostControllerPoweredOffNotification" \
  --set bluetooth.headphones \
  drawing=off \
  padding_left=8 \
  padding_right=8 \
  icon="" \
  icon.padding_right=4 \
  icon.padding_left=8 \
  label.padding_right=8 \
  background.height=26 \
  background.color=0xff1e66f5 \
  background.corner_radius=9 \
  background.drawing=on \
  script="$PLUGIN_DIR/bluetooth.sh" \
  updates=on \
  --subscribe bluetooth.headphones system_woke bluetooth_status bluetooth_off bluetooth_on
