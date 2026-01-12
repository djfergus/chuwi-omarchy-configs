#!/bin/bash
# Monitor libinput for tablet-mode state changes
libinput debug-events | while read -r line; do
  if [[ "$line" == *"switch tablet-mode state 1"* ]]; then
    # ENTERING tablet mode
    /home/df/.config/hypr/scripts/tablet-mode-on.sh
  elif [[ "$line" == *"switch tablet-mode state 0"* ]]; then
    # EXITING tablet mode
    /home/df/.config/hypr/scripts/tablet-mode-off.sh
  fi
done

