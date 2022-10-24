#!/bin/bash

WORKING_DIR=$(dirname "$0")
readarray -t BLOATWARE_LIST < $WORKING_DIR/bloatware.txt

for bloatware in "${BLOATWARE_LIST[@]}"; do
  if [ ! -z "$bloatware" -a "$bloatware" != " " ]; then
    echo -n "Uninstalling ${bloatware}: "
    adb shell pm uninstall --user 0 "$bloatware"
  fi
done
