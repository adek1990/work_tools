sudo apt-get install libx11-guitest-perl

sudo apt-get install -y git build-essential libevdev-dev autoconf automake libmtdev-dev xorg-dev xutils-dev libtool
sudo apt-get remove -y xserver-xorg-input-synaptics
git clone https://github.com/Chosko/xserver-xorg-input-synaptics.git
cd xserver-xorg-input-synaptics
./autogen.sh
./configure --exec_prefix=/usr
make
sudo make install

cd ..
rm -rf xserver-xorg-input-synaptics

sudo mkdir -p /etc/X11/xorg.conf.d
sudo cp 50-synaptics.conf /etc/X11/xorg.conf.d/

