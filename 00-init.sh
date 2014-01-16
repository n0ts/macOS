#!/bin/bash

URL="https://raw.github.com/n0ts/os-x/master/"

SCRIPTS=(01-hostname 10-xcode)
for script in ${SCRIPTS[@]}; do
    curl -Ls $URL/$script.sh | bash -
done
