#!/bin/sh

export PATH=/usr/local/bin:/usr/bin:/bin
DAY=`date +"%d-%m-%Y"`

list_to_backup=[/etc , /home,/media,/mnt,/opt,/root,/var]

for d in $list_to_backup; do

rsync -azvh $d /data2/backup

done
cd /data2

compress `tar -cvf /data2/backup backup_$DAY.tar`
