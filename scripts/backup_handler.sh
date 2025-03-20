#!/bin/bash

BACKUP_DIR="/backup"
SOURCE_DIR="/home/user/important_files"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p $BACKUP_DIR
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" $SOURCE_DIR

echo "✅ Backup creado en $BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
