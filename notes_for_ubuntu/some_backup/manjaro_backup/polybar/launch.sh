#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar -c $HOME/.config/polybar/upper_config bar1 &
polybar -c $HOME/.config/polybar/lower_config bar2 &

echo "Bars launched..."
