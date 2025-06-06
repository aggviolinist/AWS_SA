#!/usr/bin/env bash
set -e

# we need the absolute path because relative path was giving us trouble
root_path=$(realpath .)
config_path="$(realpath .)/samconfig.toml"

if [ ! -f "$config_path" ]; then
  echo "$config_path does not exist."
  exit 1
fi

template_path="${root_path}/.aws-sam/build/template.yaml"
output_template_path="${root_path}/.aws-sam/build/packaged.yaml"


# sam package
# ===================
# https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-package.html
# -------------------
# creates a .zip file of your code and dependencies
# uploads the file to S3
# returns a copy of your AWS SAM template
# replace references to local artifacts with the S3 location where the command uploaded the artifacts
# This will prepare the packaged artifact at:
# .aws-sam/build/packaged.yml
echo "SAM package......"
# AWS_DEFAULT_REGION is env var that AWS recongizes and is set by your .aws/credentials
# https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html
sam package \
  --config-file "$config_path" \
  --template-file "$template_path" \
  --output-template-file $output_template_path \
  --s3-prefix "zip-package-python"