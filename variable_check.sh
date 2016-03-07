#!/bin/bash

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
# Otherwise comment this out the curl command
curl -s $SINOPIA_CONFIG > /home/config.yaml

# echo "Received sinopia config:"
cat /home/config.yaml

