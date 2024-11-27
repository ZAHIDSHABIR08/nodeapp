#!/bin/bash
set -x
cd /home/ubuntu/nodeapp
pm2 delete cloudsync
pm2 start npm --name cloudsync
