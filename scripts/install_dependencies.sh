#!/bin/bash
set -e

# Ensure the app directory belongs to ec2-user
sudo chown -R ec2-user:ec2-user /home/ec2-user/app
sudo chmod -R 755 /home/ec2-user/app

# Run npm install as ec2-user
cd /home/ec2-user/app
sudo -u ec2-user npm install
