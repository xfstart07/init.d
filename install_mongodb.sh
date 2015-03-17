#!/usr/bin/env bash

sudo apt-get install mongodb

# set dbpath and mongodb.log
echo "set dppath"

sudo mkdir /data/
sudo mkdir /data/db/
#sudo mongod --dbpath /data/mongodb/
#sudo mongod --fork --logpath /var/log/mongodb.log

echo "restart mongodb"
sudo service mongodb restart

