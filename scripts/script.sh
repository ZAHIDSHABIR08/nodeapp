#!/bin/bash
set -x

# Ensure you are in the correct directory
cd /home/ubuntu/nodeapp || exit 1

# Ensure PM2 is installed, adjust path if necessary
pm2 stop cloudsync-nodeapp || true  # Stop the app if it's running
pm2 delete cloudsync-nodeapp || true  # Delete the app from PM2 list, if exists

# Start the app using PM2 with the specified name
pm2 start app.js --name cloudsync-nodeapp

# Optionally, save PM2 process list so it restarts on system reboot (if desired)
pm2 save

