#!/bin/bash

set -e

git clone https://github.com/n0ts/dotfiles.git ~/.env

cwd=$(pwd)

cd ~/.env
make

cd $pwd

