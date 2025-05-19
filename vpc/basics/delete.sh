#!/usr/bin/env bash

# detach the IGW

# delete the IGW

# delete VPC
echo "Deleting VPC......"

# Check for VPC ID in the env var
if [ -z "$1" ]; then
    echo "There need to be a VPC to be deleted"
else
    export VPC_ID="$1"
fi
aws ec2 delete-vpc --vpc-id $VPC_ID