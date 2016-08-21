#!/bin/bash

echo "Uninstall Java..."
{
add-apt-repository --remove ppa:webupd8team/java
apt -qq remove --purge -y -o=Dpkg::Use-Pty=0apt oracle-java8-installer
} > /dev/null
echo "done!"
