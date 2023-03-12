#!/bin/bash

wget http://launchpadlibrarian.net/365856925/multiarch-support_2.27-3ubuntu1_amd64.deb
wget http://launchpadlibrarian.net/353281752/libsass0_3.4.8-1_amd64.deb
wget http://launchpadlibrarian.net/344203197/sassc_3.4.5-1_amd64.deb

sudo dpkg -i multiarch-support_2.27-3ubuntu1_amd64.deb
sudo dpkg -i libsass0_3.4.8-1_amd64.deb
sudo dpkg -i sassc_3.4.5-1_amd64.deb

sudo apt install -y autoconf automake git optipng inkscape gnome-shell libgtk-3-dev gnome-themes-extra gtk2-engines-murrine

git clone https://github.com/andreisergiu98/arc-flatabulous-theme --depth 1 && cd arc-flatabulous-theme
./autogen.sh --prefix=/usr
sudo make install

sudo dpkg -r sassc
sudo dpkg -r libsass0
sudo dpkg -r multiarch-support
