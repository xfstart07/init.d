#!/bin/bash

# CONSTANT
DIRECTORY=/usr/local

# Delete user redis
deluser redis redis

# Remove redis folder
sudo rm -R $DIRECTORY/redis

# Remove links
sudo rm $DIRECTORY/bin/redis-server
sudo rm $DIRECTORY/bin/redis-cli

# Remove runlevel & Remove init.d startup for redis-server
if which yum &> /dev/null; then
	sudo rm /etc/init.d/redis-server
	sudo chkconfig redis-server --del
else
	sudo rm /etc/init.d/redis-server
	sudo update-rc.d -f redis-server remove
fi 

# Test
if which redis-server &> /dev/null; then
	echo "Failed to uninstall Redis"
else
	echo "Successfully uninstall Redis"
fi
