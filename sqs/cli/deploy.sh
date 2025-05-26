#!/usr/bin/env bash

echo "Deploying SQS......."

STACK_NAME="SQS-Tutorial"

aws cloudformation deploy --template-file template.yaml --capabilities CAPABILITY_NAMED_IAM --no-execute-changeset --stack-name $STACK_NAME 