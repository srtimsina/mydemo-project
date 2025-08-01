#!/bin/bash

echo "Installing apache pkg."
#sudo apt update
#sudo apt install apache2 -y

if [ -f /var/run/apache2/apache2.pid ];
then
	echo "Apache is running"
else
	echo "Apache is not running"
        sudo systemctl start apache2
        sudo systemctl status apache2
fi
