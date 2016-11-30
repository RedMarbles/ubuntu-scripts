## Simple setup to get Ubuntu up to date after a fresh OS install.

# Update repos
sudo apt-get update
sudo apt-get upgrade

# Restricted extras
sudo apt-get install ubuntu-restricted-extras

# Basic toolchain
sudo apt-get install build-essential cmake cmake-curses-gui git

# Terminals
sudo apt-get install guake terminator

# Python
sudo apt-get install python python-numpy python-scipy

# Qt 5
sudo apt-get install qt5-default qtcreator qml-module-qtquick2 libqt5webkit5-dev libqt5svg5-dev

# Java
sudo apt-get install default-jdk

# Latex (takes some time)
sudo apt-get install texlive-full texmaker

# Internet
sudo apt-get install network-manager-openvpn network-manager-openvpn-gnome transmission-gtk

# Graphics
sudo apt-get install blender gimp imagemagick inkscape

# Video
sudo apt-get install libav-tools vlc
