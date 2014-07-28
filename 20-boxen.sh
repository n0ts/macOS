#!/bin/bash
 
BOXEN_HOME=/opt/boxen
OURBOXEN=https://github.com/n0ts/our-boxen.git
 
sudo mkdir -p $BOXEN_HOME
sudo chown "$USER":staff $BOXEN_HOME
cd $BOXEN_HOME
git clone $OURBOXEN repo
cd repo
#./script/bootstrap
#./script/boxen