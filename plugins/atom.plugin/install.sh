#!/bin/bash

echo "Installing Atom..."
{
cd /tmp
wget -q https://atom.io/download/deb -O atom.deb
dpkg -i atom.deb
apt -qq install -f
} > /dev/null
echo "done!"
