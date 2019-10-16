#!/bin/bash

DATE=$(date +'%Y%m%d-%H%M%S')

BACKUP_DIR="/home/mysql-backup/backups"

USER="mysql-backup"
PASSWORD="backupwd"

mysqldump -u $USER -p$PASSWORD --all-databases > "$BACKUP_DIR"/"$DATE"_backup.sql.gz
