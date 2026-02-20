#!/bin/bash

#######################################################################
# Script Name: multios_websetup.sh
# Description: Automated Web Deployment for CentOS and Ubuntu
# Author: Onyeka
#######################################################################

# Variable Declaration
URL='https://www.tooplate.com/zip-templates/2098_health.zip'
ART_NAME='2098_health'
TEMPDIR="/tmp/webfiles"

# Check for 'yum' to determine if OS is CentOS/RHEL family
yum --help &> /dev/null

if [ $? -eq 0 ]
then
    # --- CentOS Configuration ---
    PACKAGE="httpd wget unzip"
    SVC="httpd"

    echo "Running Setup on CentOS/RHEL"
    echo "########################################"
    echo "Installing packages..."
    sudo yum install $PACKAGE -y > /dev/null

    echo "Starting & Enabling $SVC Service..."
    sudo systemctl start $SVC
    sudo systemctl enable $SVC

else
    # --- Ubuntu/Debian Configuration ---
    PACKAGE="apache2 wget unzip"
    SVC="apache2"

    echo "Running Setup on Ubuntu/Debian"
    echo "########################################"
    echo "Updating cache and installing packages..."
    sudo apt update > /dev/null
    sudo apt install $PACKAGE -y > /dev/null

    echo "Starting & Enabling $SVC Service..."
    sudo systemctl start $SVC
    sudo systemctl enable $SVC
fi

# --- Deployment Logic (Common for both OS) ---
echo "########################################"
echo "Starting Artifact Deployment"
echo "########################################"

mkdir -p $TEMPDIR
cd $TEMPDIR

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/

echo "Restarting $SVC service..."
sudo systemctl restart $SVC

echo "Removing Temporary Files..."
rm -rf $TEMPDIR

echo "########################################"
echo "Deployment Complete!"
sudo systemctl status $SVC --no-pager
ls /var/www/html/
