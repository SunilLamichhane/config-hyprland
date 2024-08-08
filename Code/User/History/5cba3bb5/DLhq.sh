#!/bin/sh

# Terminate already running bar instances
killall -q xborder

python xborders -c 
# Launch bar1 and bar2

# MONITORS=$MONITORS polybar top &
# MONITOR=$MONITORS polybar bottom;

MONITORS=$MONITORS polybar top

echo "Bars launched..."