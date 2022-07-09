#!/bin/bash

backup_files="/home1 /homeuser2 /homeuser2/folder3"

dest="/home/backup"

dayofbackup=$(date +%A)
username=$(hostname -s)
archive_file="$username-$dayofbackup.tgz"


echo "Backing up $backup_files to $dest/$archive_file"
date

tar czf $dest/$archive_file $backup_files
#c - creates an archive.
#z - filter the archive through the gzip utility compressing the archive.
#f - output to an archive file. Otherwise the tar output will be sent to STDOUT.

echo "Backup is finished"
date

ls -lh $dest

#end
