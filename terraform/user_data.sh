#!/bin/bash
# Install Apache Web Server
sudo yum update -y
sudo yum install -y httpd

echo "Welcome to My Blue-Green Deployment Project Version - 1" > /var/www/html/index.html

sudo systemctl start httpd
sudo systemctl enable httpd

# Install CodeDeploy Agent
sudo yum install ruby -y
cd /home/ec2-user
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo systemctl start codedeploy-agent
sudo systemctl enable codedeploy-agent

