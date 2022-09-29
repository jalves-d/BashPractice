#!/bin/bash


# Installing Dependencies
echo "Installing packages. "
echo
sudo yum install wget unzip httpd -y
echo

# Start & Enable Service
echo "Start & Enable HTTPD Service"
echo
sudo systemctl start httpd
sudo systemctl enable httpd
echo

#Creating Temporary Directory
echo "Starting Artifact Deployment"
echo
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

#Downloading WebSite
echo "Downloading WebSite"
echo
wget https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip
unzip 2129_crispy_kitchen.zip
sudo cp -r 2129_crispy_kitchen/* /var/www/html/
echo

#Bounce Service
echo "Restarting HTTPD service"
echo
systemctl restart httpd
echo

#Clean Up
echo "Removing Temporary Files"
echo
rm -rf /tmp/webfiles
echo

