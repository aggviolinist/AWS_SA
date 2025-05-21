#!/usr/bin/env bash

yq -o json policy.yaml > policy.json

# aws iam create-policy-version --policy-arn aws iam attach-user-policy --policy-arn arn:aws:iam::365897511972:policy/my-fun-policyyy --user-name my-cool-user --policy-document file://policy.json --set-as-default
