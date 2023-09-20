#!/bin/bash

mkdir -p $HOME/hackrfonetools/gps-sdr-sim
wget -P $HOME/hackrfonetools/ https://github.com/osqzss/gps-sdr-sim/archive/refs/heads/master.zip
unzip $HOME/hackrfonetools/master.zip -d $HOME/hackrfonetools/
rm -rf $HOME/hackrfonetools/master.zip
cd $HOME/hackrfonetools/gps-sdr-sim-master
gcc gpssim.c -lm -O3 -o gps-sdr-sim
ln -s $rootpath/RsaCtfTool/RsaCtfTool.py  $binpath/RsaCtfTool