#!/bin/bash

echo "Installing dependencies"

# Navigate to the nodeapp directory
cd /home/ubuntu/nodeapp || exit 1

# Install npm dependencies
npm install
