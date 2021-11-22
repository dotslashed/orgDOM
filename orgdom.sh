#!/bin/bash

echo "Enter your org name with encoded spaces:"

read ORG_NAME

curl -s https://crt.sh/\?o=$ORG_NAME\&output=json | jq -r '.[].common_name' | sed 's/\*\.//g' | sort -u
