#!/bin/bash

# Define backup name with current date
backup_name="backup-$(date +'%Y%m%d%H%M%S')"

# Velero backup command
velero backup create $backup_name --include-resources pods,secrets

# Check if backup creation was successful
if [ $? -eq 0 ]; then
    echo "Backup creation successful: $backup_name"
else
    echo "Backup creation failed"
fi

