#!/bin/bash
set -e  # Stop script on first failure

echo "Starting the application with PM2..."

cd /home/ec2-user/app  # Navigate to the app directory

# Stop and delete existing PM2 process (ignore errors if not running)
pm2 stop app || true  
pm2 delete app || true  

# Start the new version using PM2
pm2 start app.js --name app

# Ensure PM2 restarts on reboot
pm2 startup systemd -u ec2-user --hp /home/ec2-user | tee /tmp/pm2_startup.log
pm2 save

# Wait for PM2 to ensure app is running before exiting (prevents CodeDeploy errors)
sleep 5  
pm2 list  # Show PM2 processes for debugging

echo "App started successfully with PM2!"
exit 0  # Ensure script exits cleanly
