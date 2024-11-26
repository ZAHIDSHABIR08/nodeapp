#!/bin/bash
pm2 stop all || true
pm2 start app.js
