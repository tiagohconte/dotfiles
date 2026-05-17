#!/bin/sh

player_status=$(playerctl --player=spotify status 2> /dev/null)

if [[ "$player_status" =~ ^(Playing|Paused)$ ]]; then
    title_meta=$(playerctl --player=spotify metadata title 2> /dev/null)
    artist_meta=$(playerctl --player=spotify metadata artist 2> /dev/null)
    if [[ -z "$artist_meta" ]]; then
        artist_meta=$(playerctl --player=spotify metadata album 2> /dev/null)
    fi
    echo "$artist_meta | $title_meta"
else
    echo "Spotify"
fi
