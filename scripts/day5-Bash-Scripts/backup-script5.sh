#!/bin/bash 
# This is a shebang line, which tells the shell which interpreter to use for executing the script

###########################################################################
# Script: backup_script.sh
# Purpose: Automate backups of IMP files and directories.
# Auther: Vinayak Salunke 
# Date: 29-09-2023
###########################################################################

# Check if an argument is given
if [ -z "$1" ]; then 
# This is a conditional statement, which checks if the first argument is empty or not
  echo "Usage: $0 folder" 
  # This prints a message to the standard output, showing how to use the script
  exit 1 
  # This exits the script with an error code of 1, indicating a failure
fi

# Assign the argument to a variable
folder="$1"
# This assigns the value of the first argument to a variable named folder

# Get the current date and time
date=$(date +"%Y-%m-%d_%H-%M-%S") 
# This assigns the output of the date command to a variable named date, using the specified format

# Create the backup file name
backup="$folder/backup_$date.tar" 
# This concatenates the folder name, a slash, the word backup, an underscore, the date, and the extension .tar to create a backup file name

# Print a message
echo "Backing up $folder to $backup" 
# This prints a message to the standard output, showing what is being backed up and where

# Use tar command to create an archive
tar cf $backup $folder 
# This uses the tar command to create an archive file named backup, containing all the files and subfolders in folder

# Print a message
echo "Backup completed" 
# This prints a message to the standard output, showing that the backup is done

# Print a message
echo "Compressing $backup using bzip2" 
# This prints a message to the standard output, showing that the compression is starting

# Use bzip2 command to compress the backup file
bzip2 -z $backup
# This uses the bzip2 command to compress the backup file, appending .bz2 to its name

# Print a message
echo "Compression completed" 
# This prints a message to the standard output, showing that the compression is done