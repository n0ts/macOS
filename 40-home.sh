#!/bin/bash

# SSH
mkdir -m 700 ~/.ssh
install -m 400 ~/.ssh/authorized_keys
install -m 400 ~/.ssh/known_hosts
if [ ! -f ~/.ssh/config ]; then
  cat << ~/.ssh/config > EOF
Host *
  ServerAliveInterval 60
  ForwardAgent no
  Compression yes
  StrictHostKeyChecking no
  UserKnownHostsFile /dev/null
EOF
fi

