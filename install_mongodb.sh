#!/usr/bin/env bash

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list
sudo apt-get update
sudo apt-get install mongodb-10gen

# set dbpath and mongodb.log
echo "set dppath"

sudo mkdir /data/
sudo mkdir /data/mongodb/
sudo mongod --dbpath /data/mongodb/
sudo mongod --fork --logpath /var/log/mongodb.log

echo "restart mongodb"
sudo service mongodb restart

