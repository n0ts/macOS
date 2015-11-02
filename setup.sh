#!/bin/bash

SCIPTS=(
  01-hostname
  10-xcode
)
for script in ${SCRIPTS[@]}; do
  bash ./$script.sh
  if [ "$?" != 0 ]; then
    echo "Failed to run $script.sh"
    exit 1
  fi
done

echo "Please run 20-boxen.sh"
echo "$ bash ./20-boxen.sh [--no-fde]"
