if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    export XDG_CURRENT_DESKTOP="${XDG_CURRENT_DESKTOP:-sway}"
    export MOZ_ENABLE_WAYLAND=1
    exec sway --unsupported-gpu
fi
