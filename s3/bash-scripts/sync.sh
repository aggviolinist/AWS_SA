#!/usr/bin/env bash

#Exit if command returns non-zero status
set -e

echo "syncing in progress...."

#Check for bucket name
if [ -z "$1" ]; then
   echo " There need to be a bucket name. e.g ./bucket my-new-bucket"
   exit 1
fi

BUCKET_NAME=$1
#Check for file name
if [ -z "$2" ]; then
   echo "There need to be a file name prefix. e.g ./filename my-new-filename-prefix"
   exit 1
fi

FILE_NAME_PREFIX=$2

#Where we'll store those files
OUTPUT_DIR="/tmp/s3-bash-scripts"

#Removing redundant files
rm -r $OUTPUT_DIR

#Create output folder
mkdir -p $OUTPUT_DIR

#Generate a random number
#Determine first how many files to create

Num_files=$((RANDOM % 6 + 5))

for ((i=1; i<=Num_files; i++)); do

#Generate a random file name
filename="$OUTPUT_DIR/${FILE_NAME_PREFIX}_$i.txt"

#Generate random data and write it to file
dd if=/dev/urandom of="$filename" bs=1024 count=$((RANDOM % 1024 + 1)) 2>/dev/null

done

tree $OUTPUT_DIR

aws s3 sync $OUTPUT_DIR s3://$BUCKET_NAME