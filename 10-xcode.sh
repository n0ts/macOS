#!/bin/bash

if [ ! -x "/usr/bin/xcode-select" ]; then
  echo "Could not found /usr/bin/xcode-select"
  exit 1
fi

/usr/bin/xcode-select --install
sudo /usr/bin/xcodebuild -license

exit 0