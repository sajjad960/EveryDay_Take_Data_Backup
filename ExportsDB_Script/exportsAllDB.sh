#!/bin/bash
DIR=`date -d '-1 day' +%d-%m-%y`
echo $Dir
DEST=~/db_backups/$DIR
mkdir $DEST

#All Db name
declare -a databases=("lalaladb" "ulululu")

# get length of an database array
databaseslength=${#databases[@]}

# use loop for  get each database name and run backup command
for ((i=0; i<${databaseslength}; i++))
do
    echo "Starting backup ${databases[$i]}"
   mongodump -h localhost:27017 -d testdb -o $DEST
    echo "Finish backup ${databases[$i]}"
done

echo "All Backup Exported"

# let's upload the backup on another server
echo "Start Uploading another cloud server"
../Copy_BackupDB_To_BackupServer_Script/scpScriptForTransfer.sh #Set your own location for run your scp script
echo "Finished Uploading another cloud server"