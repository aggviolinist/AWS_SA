#!/usr/bin/env bash

echo "== deploy secrets manager db"

STACK_NAME="aws-sm-db"

# https://awscli.amazonaws.com/v2/documentation/api/latest/reference/cloudformation/deploy/index.html
aws cloudformation deploy \
--template-file template.yaml \
--capabilities CAPABILITY_NAMED_IAM \
--no-execute-changeset \
--parameter-overrides VpcId="vpc-ID" Subnets="subnet-IDa,subnet-IDb,subnet-IDc" \
--region us-east-1 \
--stack-name $STACK_NAME