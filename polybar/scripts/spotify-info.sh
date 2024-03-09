#!/bin/sh

player_status=$(playerctl --player=spotify status 2> /dev/null)

if [[ "$player_status" =~ ^(Playing|Paused)$ ]]; then
    echo "$(playerctl --player=spotify metadata artist) - $(playerctl --player=spotify metadata title)"
else
    echo "Spotify"
fi
