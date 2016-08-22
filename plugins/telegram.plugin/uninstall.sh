#!/bin/bash

echo "Uninstall Telegram..."
{
add-apt-repository --remove ppa:atareao/telegram -y
apt -qq remove --purge -y -o=Dpkg::Use-Pty=0apt telegram
} > /dev/null
echo "done!"
