#!/usr/bin/env bash

echo "listing objects......."

if [ -z "$1" ]; then
   echo "There need to be a bucket name. e.g ./bucket my-new-bucket"
   exit 1
fi

aws s3api list-objects-v2 --bucket $1