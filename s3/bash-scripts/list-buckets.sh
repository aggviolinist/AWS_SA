#!/usr/bin/env bash

echo "Listing buckets....."

#List All buckets
#aws s3 ls

#Listing top 5 newest buckets
aws s3api list-buckets | jq -r '.Buckets | sort_by(.CreationDate) | reverse | .[0:5] | .[] | .Name'
echo "...."