#!/bin/bash
set -e  # Stop script on first failure

echo "Starting the application..."

cd /home/ec2-user/app  # Navigate to the app directory

# Stop any running PM2 process (ignore errors if not running)
pm2 stop app || true  

# Start the new version using PM2
pm2 start app.js --name app

# Set PM2 to start on system reboot
pm2 startup -u ec2-user --hp /home/ec2-user
pm2 save

echo "App started successfully with PM2!"
