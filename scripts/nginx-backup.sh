#!/bin/bash

FILENAME=$(date +"%Y-%m-%d")
WORKING_DIRECTORY="/home/gagah-admin/backup"

cd $WORKING_DIRECTORY

# Backup log directory
tar -czvf log-backup-$FILENAME.tar.gz -C /var/log nginx

# Delete backup files older than 7 days 
find /home/gagah-admin/backup -type f -mtime +7 -exec rm {} +
