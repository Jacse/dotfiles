SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"

sketchybar --add       item             spotify.logo left                  \
           --set       spotify.logo     icon=󰓇                             \
                                        icon.color=$GREEN                  \
                                        icon.padding_left=12               \
                                        drawing=off                        \
           --add       event            spotify_change $SPOTIFY_EVENT      \
           --add       item             spotify.name left                  \
           --set       spotify.name     icon.padding_right=8               \
                                        icon.padding_left=8                \
                                        label.padding_right=8              \
                                        icon.color=$TEXT                   \
                                        icon.font="$FONT:SemiBold:12.0"    \
                                        label.font="$FONT:Medium:12.0"     \
                                        label.color=$SUBTEXT0_TRANSPARENT  \
                                        script="$PLUGIN_DIR/spotify.sh"    \
                                        drawing=off                        \
                                        updates=on                         \
           --subscribe spotify.name     spotify_change                     \
           --add bracket spotify        spotify.logo spotify.name          \
           --set         spotify        background.height=26               \
                                        background.corner_radius=9         \
                                        background.color=$BASE             \
                                        drawing=off
                                  
