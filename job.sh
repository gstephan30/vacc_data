#!/bin/sh
# for crontab
depdir=/home/pi/vacc_data
jetzt=`date +%Y%m%d`
cd vacc_data

git pull

sudo Rscript download.R

git add . 
git commit -m "new render task at $jetzt"
git push -u origin master

cd ..
