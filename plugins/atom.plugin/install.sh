#!/bin/bash

echo "Installing Atom..."
{
cd /tmp
apt install -qq -y git gconf2 gconf-service libgtk2.0-0 libudev0 libudev1 libgcrypt11 libgcrypt20 libnotify4 libxtst6 libnss3 python gvfs-bin xdg-utils libcap2
wget -q https://atom-installer.github.com/v1.9.9/atom-amd64.deb?s=1471476867&ext=.deb
dpkg -i atom-amd64.deb
apt install -qq -f -y -o=Dpkg::Use-Pty=0apt
} > /dev/null
echo "done!"
