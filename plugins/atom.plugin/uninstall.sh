#!/bin/bash

echo "Uninstall Atom..."
{
apt remove -qq -y -o=Dpkg::Use-Pty=0apt atom
apt autoremove -qq -y
} > /dev/null
echo "done!"
