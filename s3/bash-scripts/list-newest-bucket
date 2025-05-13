#!/usr/bin/env bash

echo "This is the newest bucket"

aws s3api list-buckets | jq -r '.Buckets | sort_by(.CreationDate) | reverse | .[0] | .Name'
