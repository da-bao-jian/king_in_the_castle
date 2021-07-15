#!/bin/bash
# Author: Harry
# Date: 01/07/2021

tar cvf /temp/backup.tar /etc /var

gzip backup.tar

find backup.tar.gz -mtime -1 -type f -print 

if [ $? -eq 0]
then
	echo backup successful
	echo Archiving 
	scp /tmp/backup.tar.gz root@192.168.1.1
else
	echo backup failed
fi
