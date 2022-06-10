# Introduction
Hi! I am a simple repo, Who have some bash script for taking backup of your MongoDB database.
Simply, I am exporting your all database and send a copy of it to another server.😀

If you need any help Here's my creator knock him:- [Sajjad_Hossain](https://twitter.com/SajjadH40513194)

# Architecture
Please take a look into the Architecture folder. You can findout it with two format
1. PDF
2. PNG

# Pre-requisites
* MongoDB
    * mongodump
    * mongorestore
* Bash script
* SCP
* Cron

# Step-1: Export all databases.
Hope, Already you some database and collections into your mechine MongoDB.
Please check my exportsAllDB.sh script into the ExportsDB_Script folder of this repo.

```
declare -a databases=("lalaladb" "ulululu")
```
you need to make some change in this ^ line, just add your all database name instead of "lalaladb" "ulululu". Don't laugh at my DB name please. :) :)






