#!/bin/bash 

# Author: Angel Hernandez
# Date: 24/08/2022
# Description: Backup /etc/ and /var/ filesystem
# Modified: 24/08/2022

tar cvf /tmp/backup.tar /etc /var

gzip /tmp/backup.tar 

find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null # ? find the backup file created 1 day ago, that is a file type and don't show me the output, just send it to the /dev/null

if [ $? -eq 0 ]  # * if the status of previous command is ok then:
  then 
    echo  Backup was created
    echo
    echo Archiving Backup
    # scp /tmp/backup.tar.gz root@192.168.1.105:/path  # ? this would send the backup to different server.
  else
    echo Backup failed.
fi