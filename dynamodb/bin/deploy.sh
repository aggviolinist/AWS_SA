#!/usr/bin/env bash
set -e

echo "Deploying dynamoDB table..........."

STACK_NAME="dynamoDB-basic-table"

root_path=$(realpath .)
template_path="${root_path}/template.yaml"

# https://awscli.amazonaws.com/v2/documentation/api/latest/reference/cloudformation/deploy/index.html
aws cloudformation deploy \
--template-file "${template_path}" \
--capabilities CAPABILITY_NAMED_IAM \
--no-execute-changeset \
--region us-east-1 \
--stack-name $STACK_NAME