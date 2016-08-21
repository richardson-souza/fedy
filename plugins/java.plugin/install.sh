#!/bin/bash

echo "Installing Java..."
{
cd /tmp
add-apt-repository -y ppa:webupd8team/java
apt -qq update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt -qq install -y -o=Dpkg::Use-Pty=0apt oracle-java8-installer
} > /dev/null
echo "done!"
