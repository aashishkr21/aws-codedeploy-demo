#!/bin/bash
set -e  # Stop script on first failure

echo "Starting the application with PM2..."

cd /home/ec2-user/app  # Navigate to the app directory

# Stop and delete existing PM2 process (ignore errors if not running)
pm2 reload all

echo "App started successfully with PM2!"
exit 0  # Ensure script exits cleanly
