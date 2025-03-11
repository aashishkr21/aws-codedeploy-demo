#!/bin/bash
set -e  # Stop script on first failure

echo "Starting the application..."
cd /home/ec2-user/app  # Adjust path if needed
nohup npm start > app.log 2>&1 &  # Run in background and log output
echo "App started successfully."
