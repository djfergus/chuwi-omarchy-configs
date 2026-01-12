#!/bin/bash
# Disable auto-rotation and reset to normal orientation

killall iio-hyprland

hyprctl keyword monitor "DSI-1,preferred,auto,1,transform,3" 
hyprctl keyword device[goodix-capacitive-touchscreen-1]:transform 3


