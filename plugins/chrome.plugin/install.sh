#!/bin/bash

echo "Installing Google Chrome..."
{
cd /tmp
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt install -qq -f -y
} > /dev/null
echo "done!"
