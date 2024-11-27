#!/bin/bash
set -x
cd /home/ubuntu/nodeapp
pm2 delete cloudsync-nodeapp
pm2 start app.js --name cloudsync-nodeapp
