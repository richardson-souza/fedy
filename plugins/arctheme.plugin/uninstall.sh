#!/bin/bash

echo "Uninstall arch-theme..."
{
apt remove -qq -y -o=Dpkg::Use-Pty=0apt arc-theme
sudo rm -r /etc/apt/sources.list.d/arc-theme.list
apt-key del BEB6D886
apt update
} > /dev/null
echo "done!"
