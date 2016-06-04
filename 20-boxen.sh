#!/bin/bash
 
BOXEN_HOME=/opt/boxen
OUR_BOXEN=https://github.com/n0ts/our-boxen.git

if [[ ! -f "$BOXEN_HOME" ]]; then
  sudo mkdir -p $BOXEN_HOME
  sudo chown $(whoami):staff $BOXEN_HOME
fi

cd $BOXEN_HOME
git clone $OUR_BOXEN repo

#
# Boxen environment variables
#
# - BOXEN_NO_FDE: $boxen::config::root_encrypted
# - BOXEN_HOME: /opt/boxen
# - BOXEN_LOG_FILE: ${boxen::config::repodir}/log/boxen.log
# - BOXEN_PUPPET_DIR: /tmp/boxen/puppet
# - BOXEN_REPO_DIR: `pwd`
# - BOXEN_GITHUB_ENTERPRISE_URL: https://github.com
# - BOXEN_REPO_URL_TEMPLATE: default
# - BOXEN_SRC_DIR: /Users/${boxen::config::boxen_user}/src
# - BOXEN_S3_HOST: s3.amazonaws.com
# - BOXEN_S3_BUCKET: boxen-downloads
export BOXEN_SRC_DIR=$HOME/.boxen-src

cd repo

git pull origin master

#
# boxen --help
# Usage: boxen [options] [projects...]
#
# --debug                      Be really verbose.
# --pretend, --noop            Don't make changes.
# --report                     Enable puppet reports.
# --graph                      Enable generation of dependency graphs.
# --env                        Show useful environment variables.
# -h, -?, --help                   Show help.
# --disable-service SERVICE    Disable a Boxen service.
# --enable-service SERVICE     Enable a Boxen service.
# --restart-service SERVICE    Restart a Boxen service.
# --disable-services           Disable all Boxen services.
# --enable-services            Enable all Boxen services.
# --restart-services           Restart all Boxen services.
# --list-services              List Boxen services.
# --homedir DIR                Boxen's home directory.
# --logfile DIR                Boxen's log file.
# --login LOGIN                Your GitHub login.
# --no-fde                     Don't require full disk encryption.
# --no-pull                    Don't try to update code before applying.
# --no-issue, --stealth        Don't open an issue on failure.
# --token TOKEN                Your GitHub OAuth token.
# --profile                    Profile the Puppet run.
# --future-parser              Enable the Puppet future parser
# --projects                   Show available projects.
# --srcdir DIR                 The directory where repos live.
# --user USER                  Your local user.
# --no-color                   Disable colors
./script/boxen $@
