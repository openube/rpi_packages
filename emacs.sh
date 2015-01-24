# dependencies (probably only need libtiff5)
sudo apt-get install texinfo libncurses5-dev xorg-dev libpng12-dev libjpeg8-dev libgif-dev libtiff5 libtiff5-dev
sudo dpkg -i emacs_24.4-1_armhf.deb
sudo mkdir /usr/local/share/emacs/24.4/etc/charsets
sudo cp ./charsets/* /usr/local/share/emacs/24.4/etc/charsets/
