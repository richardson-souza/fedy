#!/bin/bash

echo "Installing Atom..."
{
cd /tmp
wget -q https://atom.io/download/deb -O atom.deb
dpkg -i atom.deb
apt install -qq -f -y -o=Dpkg::Use-Pty=0apt
} > /dev/null
echo "done!"
