#!/usr/bin/env bash

echo "deleting bucket...."

if [ -z "$1" ]; then
   echo "There need to be a bucket name. e.g ./bucket my-new-bucket"
   exit 1

fi

aws s3api delete-bucket --bucket $1