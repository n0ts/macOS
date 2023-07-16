#!/bin/bash

set -e

HOMEBREW_ROOT=/opt/homebrew

if [ ! -x /opt/homebrew/bin/brew ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$($HOMEBREW_ROOT/bin/brew shellenv)"

$HOMEBREW_ROOT/bin/brew --version

$HOMEBREW_ROOT/bin/brew bundle

sudo sh -c "echo $HOMEBREW_ROOT/bin/zsh >> /etc/shells"

chsh -s $HOMEBREW_ROOT/bin/zsh
