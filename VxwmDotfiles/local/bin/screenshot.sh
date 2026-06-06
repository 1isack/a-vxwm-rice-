#!/bin/sh

SHOT_DIR="$HOME/Pictures/Screenshots"
VIDEO_DIR="$HOME/Videos/Recordings"
mkdir -p "$SHOT_DIR" "$VIDEO_DIR"

case "$1" in
    shot)
        FILE="$SHOT_DIR/shot_$(date +%Y%m%d_%H%M%S).png"
        maim -s "$FILE"
        if [ -f "$FILE" ]; then
            xclip -selection clipboard -t image/png -i "$FILE"
            notify-send "Screenshot" "Saved and copied to clipboard" -i camera
        fi
        ;;
    video)
        if pgrep -x "ffmpeg" > /dev/null; then
            pkill -x ffmpeg
            notify-send "Recording" "Stopped and saved to $VIDEO_DIR" -i video-display
        else
            FILE="$VIDEO_DIR/rec_$(date +%Y%m%d_%H%M%S).mp4"
            RES=$(xrandr | grep '*' | awk '{print $1}' | head -n1)
            notify-send "Recording" "Started ($RES) con audio interno..." -i video-display
            ffmpeg -f x11grab -video_size "$RES" -i :0.0 \
                   -f pulse -i "alsa_output.pci-0000_00_1f.3.analog-stereo.monitor" \
                   -c:v libx264 -pix_fmt yuv420p -c:a aac -b:a 192k \
                   "$FILE" &
        fi
        ;;
esac
