#!/bin/bash

BACKUP_DIR="/backup"
RESTORE_DIR="/home/user/important_files"
LATEST_BACKUP=$(ls -t $BACKUP_DIR | head -n1)

if [ -z "$LATEST_BACKUP" ]; then
    echo "❌ No hay backups disponibles para restaurar."
    exit 1
fi

tar -xzf "$BACKUP_DIR/$LATEST_BACKUP" -C $RESTORE_DIR
echo "✅ Archivos restaurados desde el backup: $LATEST_BACKUP"
