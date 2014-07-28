#!/bin/bash

if [ ! -x "/usr/bin/xcode-select" ]; then
  echo "Could not found /usr/bin/xcode-select"
  exit 1
fi

# NOTE: xcode-select command is no block
/usr/bin/xcode-select --install

exit 0
