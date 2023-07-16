#!/bin/bash

NAME=macOS-terminal-app

git clone https://github.com/n0ts/$NAME.git $TMP

open /tmp/$NAME/n0ts.terminal
open /tmp/$NAME/n0ts-solarized.terminal

cp /tmp/$NAME/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

rm -f /tmp/$NAME
