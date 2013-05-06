#!/bin/sh

# Install JDK x64

## Copy JDK to /usr/lib/jvm
echo "......copy jdk to /usr/lib/jvm......"
sudo cp jdk-6u35-linux-x64.bin /usr/lib/jvm
echo "......Done......"

## Install JDK
echo "......Install JDK......"
cd /usr/lib/jvm
sudo ./jdk-6u35-linux-x64.bin
echo "......Done......"

# Deploy JDK

## Create a link
sudo ln -sf /usr/lib/jvm/jdk1.6.0_35 /usr/jdk

## deploy system setting

echo "........Setting Path...................."

echo "export JAVA_HOME=/usr/jdk" >> ~/.bashrc
echo "export PATH=$JAVA_HOME/bin:$PATH" >> ~/.bashrc
echo "export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar" >> ~/.bashrc
source ~/.bashrc
echo "........Setting Done...................."

## setting jdk version
echo "......Setting JDK Version......"
echo "######################################"
echo "###### Choose /usr/jdk/bin/java ######"
echo "######################################"

sudo update-alternatives --install /usr/bin/java java /usr/jdk/bin/java 400
sudo update-alternatives --install /usr/bin/javac javac /usr/jdk/bin/javac 400
sudo update-alternatives --config java

echo "######################################"
echo "###### Install Done JDK ######"
echo "######################################"
