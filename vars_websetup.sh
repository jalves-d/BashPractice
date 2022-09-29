#!/bin/bash

PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip"
ART_NAME="2129_crispy_kitchen"
TEMPDIR="/tmp/webfiles"

# Installing Dependencies
echo "Installing packages. "
echo
sudo yum install $PACKAGE -y > /dev/null
echo

# Start & Enable Service
echo "Start & Enable HTTPD Service"
echo
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

#Creating Temporary Directory
echo "Starting Artifact Deployment"
echo
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

#Downloading WebSite
echo "Downloading WebSite"
echo
wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/
echo

#Bounce Service
echo "Restarting HTTPD service"
echo
systemctl restart $SVC
echo

#Clean Up
echo "Removing Temporary Files"
echo
rm -rf $TEMPDIR
echo

