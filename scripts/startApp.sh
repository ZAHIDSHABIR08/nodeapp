#!/bin/bash
set -x

echo "Starting the application with PM2"

# Navigate to the application directory
cd /home/ubuntu/nodeapp || exit 1

# Stop and delete any existing PM2 processes
pm2 stop cloudsync-nodeapp || true
pm2 delete cloudsync-nodeapp || true

# Start the app with PM2
pm2 start app.js --name cloudsync-nodeapp

# Optionally, save PM2 processes so they are restarted on system reboot
pm2 save
