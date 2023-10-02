#!/bin/bash


###########################################################################
# Script: backup_script.sh
# Purpose: Automate backups of IMP files and directories.
# Auther: Vinayak Salunke 
# Date: 23-7-2023
###########################################################################


# Configuration
backup_folder=" ." 
datestamp=$(date +%Y-%m-%d_%H-%M-%S)
backup_filename="backup_$datestamp.tar.gz"
log_file="backup_log.txt" 

# Check required commands 
required_commands=("tar" "date" "mkdir")
for cmd in "${required_commands}"; do
    if ! command -v "$cmd" > /dev/null; then
	echo "Error: '$cmd' command not found. Make sure it's installed and available in the system Path."
	exit 1 

    fi
done

# Create a backup folder if it doesent exitst 
mkdir -p "$backup_folder"

# Logging funtion 
log() {
	echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$log_file"
}

# Perform the backup 
log "Starting backup..."

# Compress and backup each file/directory 
 for item in "${files_to_backup[@]}"; do 
    # Backup each file/directory 
    # . . . 
 done

log "Backup completed!"

for item in "${files_to_backup[@]}"; do 
    if [ -e "$item" ]; then
	if [ "$item" != "$backup_folder"]; then
	    log "Backup up $item..."
	    tar -czf "$backup_folder/$backup_filename" "$item" || log "Failed to backup $item!"
	else
		log "Skipping backup of the backup folder: $item"
	fi
    else 
	    log "$item does not exist . Skiping ..."
    fi
done





