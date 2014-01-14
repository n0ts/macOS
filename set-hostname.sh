#!/bin/bash

SCUTIL=/usr/sbin/scutil

echo -n "What is hostname name? : "
read host_name
if [ -z "$host_name" ]; then
  echo "HostName is empty"
  exit 1
fi

sudo $SCUTIL --set ComputerName $host_name
sudo $SCUTIL --set HostName $host_name.local
sudo $SCUTIL --get LocalHostName $host_name

exit 0
