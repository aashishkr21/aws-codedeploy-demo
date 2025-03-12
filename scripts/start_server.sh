#!/bin/bash
set -e  # Stop script on first failure

echo "Starting the application with PM2..."

cd /home/ec2-user/app  # Navigate to the app directory

# Stop any existing app process (ignore errors if not running)
pm2 stop app || true  

# Delete any existing process named 'app' (to avoid conflicts)
pm2 delete app || true  

# Start the new version using PM2
pm2 start app.js --name app

# Ensure PM2 restarts on reboot
pm2 startup systemd -u ec2-user --hp /home/ec2-user
pm2 save

echo "App started successfully with PM2!"
