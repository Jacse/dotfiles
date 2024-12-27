#!/usr/bin/env sh

CONNECTED=$(system_profiler -json SPBluetoothDataType | jq -r '.SPBluetoothDataType[0].device_connected[] | select((first(.[]).device_minorType == "Headphones") or (first(.[]).device_minorType == "Headset")) | keys[0]' | head -n 1)

if [ -n "$CONNECTED" ]; then
  sketchybar --set bluetooth.headphones drawing=on label="$CONNECTED"
else
  sketchybar --set bluetooth.headphones drawing=off
fi

