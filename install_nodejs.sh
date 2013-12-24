#!/usr/bin/env bash

VERSION="0.10.22"
echo "------------------------------------------------------------------------"
echo "Now install Node.js $VERSION..."
wget -N http://nodejs.org/dist/v$VERSION/node-v$VERSION.tar.gz
tar zxf node-v$VERSION.tar.gz
cd node-v$VERSION
./configure
make && sudo make install
cd ..
rm node-v$VERSION.tar.gz
rm -R node-v$VERSION
echo "Node.js install done."
echo "------------------------------------------------------------------------"
