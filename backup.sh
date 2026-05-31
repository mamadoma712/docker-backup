#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi
if [ ! -d "$1" ]; then
    echo "Error: Directory $1 does not exist"
    exit 1
fi
source_dir="$1"
backup_name="/data/$(basename "$source_dir")_backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$backup_name" "$source_dir"
echo "Backup created: $backup_name"
