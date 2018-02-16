#!/bin/bash

SCRIPTS=(
  00-lang
  01-hostname
  10-xcode
  11-nobootsound
  12-gatekeeper
)
MODEL=$(system_profiler SPHardwareDataType | awk '/Model Name/ {print $3,$4}')

for script in "${SCRIPTS[@]}"; do
    if [[ "$MODEL" == 'MacBook Pro' ]] && [[ $script == '11-nobootsound' ]]; then
        continue
    fi
    bash ./$script.sh
done

echo "Please run ./20-boxen.sh [--no-fde]"
