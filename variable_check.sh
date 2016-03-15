#!/bin/bash
set -x -e

# Abort if the SINOPIA_BUCKET was not provided
if [ -z $SINOPIA_BUCKET ]; then
  echo "You need to set SINOPIA_BUCKET environment variable. Aborting!"
  exit 1
fi

if [ -z $SINOPIA_CONFIG ]; then
  echo "You need to set SINOPIA_CONFIG"
  exit 1
fi

# Get config file
# If you want to pull the config from somewhere else
echo $SINOPIA_CONFIG
echo $SINOPIA_BUCKET

aws s3 cp $SINOPIA_CONFIG /home/config.yaml
# echo "Received sinopia config:"
cat /home/config.yaml

