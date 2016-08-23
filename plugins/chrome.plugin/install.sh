#!/bin/bash

echo "Installing Google Chrome..."
{
cd /tmp
apt -qq install -y -o=Dpkg::Use-Pty=0apt libappindicator1 libindicator7 libpango1.0-0 libpangox-1.0-0
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
} > /dev/null
echo "done!"
