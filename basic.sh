#!/bin/sh

# Update system
sudo apt update

# Skip update on CI environment
if ${CI+"true"}; then sudo apt --assume-yes upgrade; fi

# Enable the Canonical Partners Repository
sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"

# Install some basic utilities
sudo apt install --assume-yes --no-install-recommends ubuntu-restricted-extras \
	net-tools \
	p7zip-full \
	p7zip-rar \
	flatpak \
	git \
	curl \
	python3-pip

# Adds an alias to redirect pip to pip3
echo "alias pip=pip3" > ~/.profile

# Clean installation files
sudo apt --assume-yes autoremove && sudo apt --assume-yes autoclean

reboot;
