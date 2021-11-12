#!/bin/sh

export PATH=/usr/local/bin:/usr/bin:/bin
DAY=`date +"%d-%m-%Y"`
mkdir backup
list_to_backup=`cat list_of_backup_dir.txt `
for i in $list_to_backup; do

rsync -avzh /$i /data2/backup/

done
cd /data2


zip backup_$DAY.zip backup

rm -rf backup
