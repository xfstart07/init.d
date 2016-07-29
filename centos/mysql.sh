# https://www.linode.com/docs/databases/mysql/how-to-install-mysql-on-centos-7

# Add rpm

echo "-------------Add RPM------------------"

sudo wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum update

echo "-------------Install Mysql------------"

sudo yum install mysql-server

echo "-------------start mysql--------------"

sudo systemctl start mysqld