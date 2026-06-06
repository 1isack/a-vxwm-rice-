#!/bin/sh

export XDG_RUNTIME_DIR="/tmp/runtime-$USER"
if [ ! -d "$XDG_RUNTIME_DIR" ]; then
    mkdir -p "$XDG_RUNTIME_DIR"
    chmod 700 "$XDG_RUNTIME_DIR"
fi

export GTK_THEME=Adwaita-dark
export QT_QPA_PLATFORMTHEME=qt5ct

eval $(dbus-launch --sh-syntax --exit-with-session)

pipewire &
wireplumber &
pipewire-pulse &  
sleep 1

mpd ~/.config/mpd/mpd.conf &
polybar &

(cat "$HOME/.cache/wal/sequences" &)
wal -R &

picom &

exec vxwm
