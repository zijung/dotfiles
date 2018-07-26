#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch top and bottom
MONITOR=eDP1 polybar top &
MONITOR=eDP1 polybar bottom &

echo "Bars launched..."
