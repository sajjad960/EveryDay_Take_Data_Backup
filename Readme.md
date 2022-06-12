## Introduction
Hi! I am a simple repo, Who have some bash script for taking backup of your MongoDB database.
Simply, I am exporting your all database and send a copy of it to another server.😀

If you need any help Here's my creator knock him:- [Sajjad_Hossain](https://twitter.com/SajjadH40513194)

## Architecture
Please take a look into the Architecture folder. You can find out it with two format
1. PDF
2. PNG

## Pre-requisites
* MongoDB
    * mongodump
    * mongorestore
* Basic Bash script
* SCP
* Cron

<!-- ## Step-1: Export all MongoDB databases.
Hope, Already you some database and collections into your mechine MongoDB.
Please check my exportsAllDB.sh script into the ExportsDB_Script folder of this repo.

```
declare -a databases=("lalaladb" "ulululu")
```
you need to make some change in this ^ line, just add your all database name instead of "lalaladb" "ulululu". Don't laugh at my DB name please. :) :)


## Step-2: Export all MongoDB databases. -->
## Step-1: Let's Prepare Server To Server Data Sending Script.
Please take a look into `Copy_BackupDB_To_BackupServer_Script` folder in this repo and
check `scpScriptForTransfer.sh`.
You need to make some change here,If You don't know about SCP and How it work, Please learn it first.
> Hint: Here scp works with some security layer, example:- ServerIp, specific port, ssl, public key and networkIp.
## Step-2: Export all MongoDB databases and Upload To Another Server.
Hope, Already you have some database and collections into your MongoDB Database system. Please check my exportsAllDB.sh script into the ExportsDB_Script folder of this repo.

```declare -a databases=("lalaladb" "ulululu")```
you need to make some change in this ^ line, just add your all database name instead of "lalaladb" "ulululu". Don't laugh at my DB name please. :) :)
```
DIR=`date -d '-1 day' +%d-%m-%y`
DEST=~/db_backups/$DIR
```
Since I am working with UTC Time and I want to execute this script at 12:00 AM, That's why `DEST` will make a directory into `/db_backups` and the name of the directory gonna be yesterday date. 
Example- (today date = 12-06-22, yesterday date = 11-06-22, DEST=/db_backups/11-06-22).
*** Now run exportsAllDB.sh and when it's finish execution then Check /db_backups directory you will find your exported Databases ***
So, end of the exportsAllDB.sh execution another script gonna start execution because here's it's added into the exportsAllDB.sh
```
# let's upload the backup on another server
echo "Start Uploading another cloud server"
../Copy_BackupDB_To_BackupServer_Script/scpScriptForTransfer.sh #Set your own location for run your scp script
echo "Finished Uploading another cloud server"
```
💥If all execution completed successfully it's mean your data also upload to the server(which server address you added into the scpScriptForTransfer.sh)

----UPDATING----


