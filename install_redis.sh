VERSION="3.2.6"
echo "-----------------------------------------------------------------------"
echo "Now will install Redis $VERSION..."
cd /tmp

wget http://download.redis.io/releases/redis-$VERSION.tar.gz
tar zxf redis-$VERSION.tar.gz
cd redis-$VERSION
make && sudo make install

echo "Redis $VERSION install successed."
echo "-----------------------------------------------------------------------"
echo "Now install service to /etc/init.d ..."

cd utils
sudo ./install_server.sh

sudo rm -R /tmp/redis-$VERSION
rm /tmp/redis-$VERSION.tar.gz
