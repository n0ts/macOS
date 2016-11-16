#!/bin/bash

set -e

git clone https://github.com/teored90/nobootsound

cd nobootsound
sudo ./install.sh
cd ..

rm -fr nobootsound
