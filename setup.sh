#!/bin/bash

SCRIPTS=(
  00-lang
  01-hostname
  10-xcodebuild
  20-rosetta2
  30-base
  40-home
  #50-homebrew
  #60-mas
  #70-dotenv
)
MODEL=$(system_profiler SPHardwareDataType | awk '/Model Name/ {print $3,$4}')

for script in "${SCRIPTS[@]}"; do
    bash -x ./$script.sh
done
