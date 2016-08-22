#!/bin/bash

echo "Installing Telegram..."
{
add-apt-repository -y ppa:atareao/telegram
apt -qq update
apt -qq install -y -o=Dpkg::Use-Pty=0apt telegram
} > /dev/null
echo "done!"
