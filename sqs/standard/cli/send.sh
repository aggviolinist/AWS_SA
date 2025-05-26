#!/usr/bin/env bash

echo "Sending SQS Messages......"
set -e
# https://docs.aws.amazon.com/cli/latest/reference/sqs/send-message.html
aws sqs send-message --queue-url https://xyz --message-body "Wagwan Biggie here." --delay-seconds 0 --message-attributes file://send-message.json
