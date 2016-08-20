#!/bin/bash

echo "Remove arch-theme ..."
{
apt remove -y arc-theme
sudo rm -r /etc/apt/sources.list.d/arc-theme.list
apt-key del BEB6D886
apt update
} > /dev/null
echo "done!"
