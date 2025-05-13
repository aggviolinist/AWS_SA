#!/usr/bin/env bash

echo "putting objects...."

#Check for the bucket name
if [ -z "$1" ]; then
  echo "There need to be a bucket name. e.g ./bucket my-new-bucket"
  exit 1
fi

#Check for filename
if [ -z "$2" ]; then
   echo "There need to be a filename. e.g ./filename my-new-filename"
   exit 1
fi

BUCKET_NAME=$1
FILENAME=$2

OBJECT_KEY=$(basename "$FILENAME")

aws s3api put-object --bucket $BUCKET_NAME --body $FILENAME --key $OBJECT_KEY