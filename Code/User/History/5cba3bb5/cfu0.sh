#!/bin/sh

# Terminate already running bar instances
killall -q xborder

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITORS=$(xrandr --query | grep " connected" | cut -d" " -f1)

# MONITORS=$MONITORS polybar top &
# MONITOR=$MONITORS polybar bottom;

MONITORS=$MONITORS polybar top

echo "Bars launched..."