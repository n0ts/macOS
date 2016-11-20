#!/bin/bash

if [[ ! -x "/usr/bin/xcodebuild" ]]; then
  echo "Could not found /usr/bin/xcodebuild"
  exit 1
fi

# XCode license agreement
sudo /usr/bin/xcodebuild -license

# NOTE: xcode-select command is no block
/usr/bin/xcode-select --install
