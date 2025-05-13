#!/usr/bin/env bash

echo "Deleting objects...."

if [ -z "$1" ]; then
  echo "There needs to be a bucket name. e.g. ./delete_objects.sh my-new-bucket"
  exit 1
fi

BUCKET_NAME=$1

# Get object keys and construct the delete JSON
aws s3api list-objects --bucket "$BUCKET_NAME" --query "Contents[].Key" --output json |
jq '{Objects: map({Key: .})}' > /tmp/delete_objects.json

# Check if the file is empty (no objects)
if [ ! -s /tmp/delete_objects.json ]; then
  echo "No objects to delete in bucket $BUCKET_NAME."
  exit 0
fi

# Delete the objects
aws s3api delete-objects --bucket "$BUCKET_NAME" --delete file:///tmp/delete_objects.json
