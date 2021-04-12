#!/bin/sh

# Update system
sudo apt update && sudo apt --assume-yes upgrade
sudo apt --assume-yes autoremove && sudo apt --assume-yes autoclean

# Enable the Canonical Partners Repository
sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"

# Install some basic utilities
sudo apt install --assume-yes 
	ubuntu-restricted-extras \
	net-tools \
	p7zip-full \
	p7zip-rar \
	flatpak
