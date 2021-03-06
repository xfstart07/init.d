#!/usr/bin/env bash

echo "install Ubuntu packages..."
sudo apt-get update
sudo apt-get install -y wget vim build-essential openssl libreadline6 libreadline6-dev \
curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf \
automake libtool imagemagick libmagickwand-dev libpcre3-dev libevent-dev libgdbm-dev libncurses5-dev bison libffi-dev 
echo "---------------------------------------------------------------------------"

