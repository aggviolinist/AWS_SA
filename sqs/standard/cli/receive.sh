#!/usr/bin/env bash

echo "Receiving SQS...."
set -e
# https://docs.aws.amazon.com/cli/latest/reference/sqs/receive-message.html
aws sqs receive-message --queue-url https://xyz --attribute-names All --message-attribute-names All --max-number-of-messages 10