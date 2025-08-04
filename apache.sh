#!/bin/bash

echo "Installing apache pkg."
#sudo apt update
#sudo apt install apache2 -y

# Check if apache is running

if [ -f /var/run/apache2/apache2.pid ];
then
	echo "Apache is running"
else
	echo "Apache is not running"
        sudo systemctl start apache2
        sudo systemctl status apache2
fi
echo "Hello DevOps" > /var/www/html/index.html

sudo apt install openjdk -y
sudo mkdir /mydata/appdata

# Install maven
sudo apt install maven -y
