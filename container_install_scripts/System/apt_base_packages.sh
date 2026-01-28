#! /usr/bin/env bash

set -e

echo "** apt Base Packages **"

export LOGFILES=$HOME/Logfiles
mkdir --parents $LOGFILES
export LOGFILE=$LOGFILES/apt_base_packages.log
rm --force $LOGFILE

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -qq
sudo apt-get upgrade -qqy
sudo apt-get install -qqy \
  apt-file \
  curl \
  git \
  info \
  lsb-release \
  lynx \
  man-db \
  plocate \
  python3-venv \
  screen \
  speedtest-cli \
  time \
  tmux \
  tree \
  vim \
  wget \
  zstd \
  >> $LOGFILE 2>&1

echo "** Finished apt Base Packages **"
echo ""
