#!/usr/bin/env bash

echo "Creating buckets...."

#check for bucket name
if [ -z "$1" ]; then
  echo "There need to be a bucket name. e.g ./bucket my-bucket-name"
  exit 1

fi

aws s3api create-bucket --bucket $1 --output text