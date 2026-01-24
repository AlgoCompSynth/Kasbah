#! /usr/bin/env bash

set -e

echo ""
echo "* apt Container Hosting *"

export LOGFILES=$HOME/Logfiles
mkdir --parents $LOGFILES
export LOGFILE=$LOGFILES/apt_container_hosting.log
rm --force $LOGFILE

echo ""
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -qqy \
  podman \
  uidmap \
  >> $LOGFILE 2>&1

./distrobox.sh

echo "* Finished apt Container Hosting *"
