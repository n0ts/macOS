#!/bin/bash

URL="https://raw2.github.com/n0ts/os-x/master/"
SCRIPTS=(01-hostname 10-xcode 20-boxen)

for script in $SCRIPTS; do
    curl -Ls $URL/$script.sh | bash -
done
