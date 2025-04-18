#!/bin/bash

case $1 in
"up") command="set-volume -l 1.00 @DEFAULT_AUDIO_SOURCE@ 5%+" ;;
"down") command="set-volume @DEFAULT_AUDIO_SOURCE@ 5%-" ;;
"toggle") command="set-mute @DEFAULT_AUDIO_SOURCE@ toggle" ;;
"*") command="" ;;
esac

[ -n "$command" ] && wpctl ${command}
volume=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@)
if [[ "$volume" =~ "MUTED" ]]; then
  level="Muted"
  icon=""
else
  level="$(awk '{ printf "%d\n", $2 * 100 }' <<<"$volume")%"
  icon=""
fi

echo "{\"content\": \"$level\", \"icon\": \"$icon\"}"
