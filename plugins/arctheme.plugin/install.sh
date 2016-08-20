#!/bin/bash

echo "Installing arc-theme ..."
{
sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
cd /tmp
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
apt-key add - < Release.key
apt update
apt install -y arc-theme
} > /dev/null
echo "done!"
