#!/bin/bash

if [ -z "$HOSTNAME" ]; then
  echo "HostName is empty"
  exit 1
fi

SCUTIL=/usr/sbin/scutil
sudo $SCUTIL --set ComputerName $HOSTNAME
sudo $SCUTIL --set HostName $HOSTNAME.local
sudo $SCUTIL --get LocalHostName $HOSTNAME

exit 0
