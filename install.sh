#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi
echo "Starting Install Of 'sanddice'..."
echo "Downloading Stuff..."
mkdir -p /usr/share/sandpotnoodles
wget https://raw.githubusercontent.com/ActuallySandPotNoodles/sanddice/refs/heads/main/sanddice-new.png -O /usr/share/sandpotnoodles/sanddice.png
wget https://raw.githubusercontent.com/ActuallySandPotNoodles/sanddice/refs/heads/main/sanddice.desktop -O /usr/share/applications/sanddice.desktop
wget https://github.com/ActuallySandPotNoodles/sanddice/releases/download/v1.0.1/sanddice -O /usr/bin/sanddice
chmod 775 /usr/bin/sanddice
echo "Install Complete!"
