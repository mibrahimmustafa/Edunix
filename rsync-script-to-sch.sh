#!/bin/sh

export PATH=/usr/local/bin:/usr/bin:/bin
DAY=`date +"%d-%m-%Y"`
mkdir backup
list_to_backup=`ls / `
list_to_backup1={'home','opt','root','var'}
for i in $list_to_backup; do
if $i in list_to_backup1; then
rsync -avzh /$i /data2/backup/
fi
done
cd /data2


zip  backup* .
