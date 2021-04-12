# Update system

sudo apt update 
sudo apt --assume-yes upgrade
sudo apt --assume-yes autoremove
sudo apt --assume-yes autoclean

#Enable the Canonical Partners Repository

sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"


# Install some basic utilities

sudo apt install --assume-yes 
	ubuntu-restricted-extras \
	net-tools \
	p7zip-full \
	p7zip-rar 


# Flatpack
# sudo add-apt-repository ppa:alexlarsson/flatpak
# sudo apt update && sudo apt install flatpak
# sudo apt install gnome-software-plugin-flatpak
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo




