# Instructions for installing OpenCV

# Check if opencv is already installed. If yes, this tells you which version has been installed.
pkg-config --modversion opencv


# Note - update the version to the latest version number


# System update
sudo apt-get update
sudo apt-get upgrade


# DEPENDENCIES:

# Toolchain
sudo apt-get install build-essential cmake cmake-curses-gui

# Qt 5
sudo apt-get install qt5-default libvtk6-dev

# Media libraries
sudo apt-get install zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev

# Video libraries
sudo apt-get install libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev

# Parallelism and linear algebra libraries
sudo apt-get install libtbb-dev libeigen3-dev

# Python
sudo apt-get install python-dev python-tk python-numpy python3-dev python3-tk python3-numpy

# Java
sudo apt-get install ant default-jdk

# Documentation
sudo apt-get install doxygen

# Tools
sudo apt-get install git unzip wget




# DOWNLOAD AND EXTRACT

mkdir -p ~/Sources/OpenCV/
cd ~/Sources/OpenCV/

wget https://github.com/opencv/opencv/archive/3.1.0.zip
mv 3.1.0.zip opencv-3.1.0.zip

unzip opencv-3.1.0.zip
#rm 3.1.0.zip
cd opencv-3.1.0




# COMPILE SOURCE

mkdir build
cd build

cmake -DWITH_QT=ON -DWITH_OPENGL=ON -DFORCE_VTK=ON -DWITH_TBB=ON -DWITH_GDAL=ON -DWITH_XINE=ON -DBUILD_EXAMPLES=ON  


    -DBUILD_NEW_PYTHON_SUPPORT=ON -DWITH_V4L=ON -DINSTALL_C_EXAMPLES=ON -DINSTALL_PYTHON_EXAMPLES=ON -DBUILD_EXAMPLES=ON

make -j5

sudo make install




# Set environment configurations
sudo sh -c "echo '/usr/local/lib' >> /etc/ld.so.conf.d/opencv.conf"

sudo ldconfig

sudo sh -c "echo 'PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig' >> /etc/bash.bashrc"

sudo sh -c "echo 'export PKG_CONFIG_PATH' >> /etc/bash.bashrc"