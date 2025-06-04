#!/usr/bin/env bash
set -e

echo "Deploying Secrets Manager..........."

STACK_NAME="secerets-manager"

root_path=$(realpath .)
template_path="${root_path}/template.yaml"

aws cloudformation deploy \
--template-file "${template_path}" \
--capabilities CAPABILITY_NAMED_IAM \
--no-execute-changeset \
--region us-east-1 \
--stack-name $STACK_NAME