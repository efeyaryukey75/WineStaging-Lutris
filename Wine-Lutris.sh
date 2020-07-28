#!/bin/bash
#32 bit kütüphanelerini ekleyelim/Add 32 bit libraries
sudo dpkg --add-architecture i386
#wine anahtarını indirelim/Download wine key
wget -nc https://dl.winehq.org/wine-builds/winehq.key
#anahtarı sisteme ekleyelim/add wine key to the system
sudo apt-key add winehq.key
#wine deposunu sisteme ekleyelim/add wine repository
echo 'deb https://dl.winehq.org/wine-builds/debian/ buster main ' | sudo tee -a /etc/apt/sources.list
#paket yöneticisini güncelleyelim/update package manager
sudo apt update
#wine staging kuralım/install the wine staging
sudo apt install --install-recommends winehq-staging
#lutris deposunu ekleyelim/add lutris repository
echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
#depo anahtarını indirip ekleyelim/add lutris repo's key
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_10/Release.key -O- | sudo apt-key add -
#paket yöneticisini güncelleyelim/updatepackage manager
sudo apt-get update
#lutris paketini kuralım/install lutris
sudo apt-get install lutris
#işlemler tamamlandı/done, check the terminal outputs
zenity --info --text="İşlemler tamam terminal çıktısını kontrol edin."


