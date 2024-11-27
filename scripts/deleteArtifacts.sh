#!/bin/bash

echo "Cleaning up old artifacts"

# Remove the previous nodeapp directory (if it exists)
rm -rf /home/ubuntu/nodeapp

# Create a fresh directory for the new application
mkdir -p /home/ubuntu/nodeapp

