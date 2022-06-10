#!/usr/bin/env bash

#password="password" // don't need password,Coz we are transfer data with ssh public key authentication with specific port.
username="root"
backupFolderName=`date -d '-1 day' +%d-%m-%y`
dir_origin="../db_backups/${backupFolderName}"
dir_destination="scpTestComeData"
Ip="00.00.00.00" #example
Port='6666' #example

echo "Uploading files to remote server...."
scp -P $Port -r $dir_origin $username@$Ip:$dir_destination
echo "File upload to remote server completed! ;)"