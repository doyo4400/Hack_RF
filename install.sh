#!/bin/bash

sudo apt install hackrf -y

echo $(hackrf_info)


## update firmware : 
#wget https://github.com/greatscottgadgets/hackrf

#hackrf_spiflash -w hackrf_one_usb.bin
#hackrf_cpldjtag -x sgpio_if/default.xsvf



# install Gqrx
sudo apt install gqrx-sdr -y

# manually
#mkdir -p $HOME/hackrfonetools/gqrx-sdr
#VER=$(curl --silent -qI https://github.com/gqrx-sdr/gqrx/releases/latest | tr -d '\r' | awk -F '/' '/^location/ {print  substr($NF, 2, length($NF)-1)}');
#wget -P $HOME/hackrfonetools/gqrx-sdr https://github.com/gqrx-sdr/gqrx/releases/download/v${VER}/Gqrx-${VER}-x86_64.AppImage 
#chmod +x $HOME/hackrfonetools/gqrx-sdr/Gqrx-${VER}-x86_64.AppImage 
