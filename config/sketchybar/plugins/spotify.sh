#!/usr/bin/env sh

STATE=$(echo "$INFO" | jq -r '.["Player State"]')
PLAYING=0
if [ "$STATE" != "Stopped" ]; then
  PLAYING=1
  TRACK="$(echo "$INFO" | jq -r .Name | cut -c1-20)"
  ARTIST="$(echo "$INFO" | jq -r .Artist | cut -c1-20)"
fi

if [ $PLAYING -eq 1 ] && [ -n "$TRACK" ]; then
  sketchybar --set spotify.name icon="$TRACK" label="$ARTIST" drawing=on --set spotify drawing=on --set spotify.logo drawing=on 

  if [ "$STATE" = "Paused" ]; then
    sketchybar --set spotify.logo icon=
  else
    sketchybar --set spotify.logo icon=󰓇
  fi
else
  sketchybar --set spotify.name drawing=off --set spotify drawing=off --set spotify.logo drawing=off 
fi
