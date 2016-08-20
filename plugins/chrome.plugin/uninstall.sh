#!/bin/bash

echo "Uninstall Google Chrome..."
{
apt remove --purge -qq -y -o=Dpkg::Use-Pty=0apt google-chrome-stable
} > /dev/null
echo "done!"
