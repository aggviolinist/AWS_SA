#!/usr/bin/env bash

set -e

TOPIC_ARN="arn"

aws sns publish \
--topic-arn $TOPIC_ARN \
--message '{ "first_name": "Kelvin", "last_name": "Mulandi" }'