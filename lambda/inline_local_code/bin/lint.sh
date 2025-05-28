#!/usr/bin/env bash

set -e

#We need the absolute path because relative path was giving us trouble
root_path=$(realpath .)

# This checks our cloud formation templates to ensure its valid format
echo "CFN Linting......"
cfn-lint "${root_path}/template.yml"