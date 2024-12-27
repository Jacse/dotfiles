#!/usr/bin/env sh

SPOTIFY_RUNNING=$(osascript -e 'application "Spotify" is running') # false | true
SPOTIFY_PLAYER_STATE=$(echo "$INFO" | jq -r '.["Player State"]')


# This script is trigged by the spotify event
# which fires before spotify stops running
# So we need to check that the event isn't player state = Stopped
# AND that it's currently running (in case we didn't get the event)
if [ "$SPOTIFY_RUNNING" = "true" ] && [ "$SPOTIFY_PLAYER_STATE" != "Stopped" ]; then
  STATE=$(osascript -e 'tell application "Spotify" to get player state') # playing | paused
  TRACK=$(osascript -e 'try' -e 'tell application "Spotify" to get name of current track' -e 'end try')

  if [[ -n "$TRACK" ]]; then
    ARTIST=$(osascript -e 'tell application "Spotify" to get artist of current track')
    ALBUM=$(osascript -e 'tell application "Spotify" to get album of current track')
    sketchybar --set spotify.name icon="$TRACK" label="$ARTIST" drawing=on --set spotify drawing=on --set spotify.logo drawing=on
  else
    sketchybar --set spotify.name drawing=off --set spotify drawing=off --set spotify.logo drawing=off
  fi

  if [ "$SPOTIFY_PLAYER_STATE" = "Paused" ] || [ "$STATE" = "paused" ]; then
    sketchybar --set spotify.logo icon=
  else
    sketchybar --set spotify.logo icon=󰓇
  fi
elif [ "$SPOTIFY_PLAYER_STATE" = "Stopped" ]; then
  sketchybar --set spotify.name drawing=off --set spotify drawing=off --set spotify.logo drawing=off
fi

