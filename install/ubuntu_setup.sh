## Simple setup to get Ubuntu up to date after a fresh OS install.

# Update repos
sudo apt-get update
sudo apt-get upgrade

# Restricted extras
sudo apt-get install ubuntu-restricted-extras

# Basic toolchain
sudo apt-get install build-essential cmake cmake-curses-gui git gitk

# Terminals
sudo apt-get install guake terminator

# Zsh terminal
sudo apt-get install zsh
chsh -s $(which zsh) # login again before running the next command
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Python
sudo apt-get install python python-numpy python-scipy python3-pip

# Editors and IDEs
sudo apt-get install atom qtcreator

# Qt 5
sudo apt-get install qt5-default qml-module-qtquick2 libqt5webkit5-dev libqt5svg5-dev

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
