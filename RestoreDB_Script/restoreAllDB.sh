#!/bin/bash
# -> Read Doc for Understanding, if you are not familier
dbName="db names"
dblocation="dblocations, where the backup data located into your pc"

echo "Database name: ${dbname}, ${dblocation}"
echo "Database Restoring START"
#restoring command
mongorestore --port 27017 --db dbName dblocation --drop
echo "Database Restoring END"