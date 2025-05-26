#!/usr/bin/env bash

echo "Receiving SQS...."
set -e
# https://docs.aws.amazon.com/cli/latest/reference/sqs/receive-message.html
aws sqs receive-message --queue-url https://sqs.us-east-1.amazonaws.com/365897511972/SQS-Tutorial-MyQueue-PopfP8Pg5aMG --attribute-names All --message-attribute-names All --max-number-of-messages 10