#!/usr/bin/env bash

echo "Deploying ec2 instance to interact with redis...."

STACK_NAME="ec2-for-rediss"

aws cloudformation deploy --template-file template.yaml --capabilities CAPABILITY_NAMED_IAM --no-execute-changeset --region us-east-1 --stack-name $STACK_NAME