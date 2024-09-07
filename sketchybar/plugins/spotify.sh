#!/usr/bin/env sh

update ()
{
  PLAYING=1
  if [ "$(echo "$INFO" | jq -r '.["Player State"]')" = "Playing" ]; then
    PLAYING=0
    TRACK="$(echo "$INFO" | jq -r .Name | cut -c1-20)"
    ARTIST="$(echo "$INFO" | jq -r .Artist | cut -c1-20)"
    ALBUM="$(echo "$INFO" | jq -r .Album | cut -c1-20)"
    SHUFFLE=$(osascript -e 'tell application "Spotify" to get shuffling')
    REPEAT=$(osascript -e 'tell application "Spotify" to get repeating')
  fi

  args=()
  if [ $PLAYING -eq 0 ]; then
    if [ "$ARTIST" == "" ]; then
      args+=(--set spotify.name icon="$TRACK" label="$ALBUM" drawing=on --set spotify background.drawing=on --set spotify.logo icon.drawing=on)
    else
      args+=(--set spotify.name icon="$TRACK" label="$ARTIST" drawing=on --set spotify background.drawing=on --set spotify.logo icon.drawing=on)
    fi
  else
    args+=(--set spotify.name drawing=off --set spotify background.drawing=off --set spotify.logo icon.drawing=off)
  fi
  sketchybar -m "${args[@]}"
}

case "$SENDER" in
  "forced") exit
  ;;
  *) update
  ;;
esac