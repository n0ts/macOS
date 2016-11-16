#!/bin/bash

SCRIPTS=(
  01-hostname
  10-xcode
  11-nobootsound
  12-gatekeeper
)
for script in "${SCRIPTS[@]}"; do
    bash ./$script.sh
done

echo "Please run ./20-boxen.sh [--no-fde]"
