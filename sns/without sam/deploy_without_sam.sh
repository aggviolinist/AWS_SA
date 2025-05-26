#!/usr/bin/env bash

echo "Deploying SNS......."

STACK_NAME="SNS-Tutorial"

aws cloudformation deploy --template-file template.yaml --capabilities CAPABILITY_NAMED_IAM --no-execute-changeset --stack-name $STACK_NAME 