#!/bin/bash

# Update package index
sudo apt update

# Install LAMP stack
sudo apt install lamp-server^ -y

# Set Apache to run on bootup
sudo systemctl enable apache2

# Restart Apache web server
sudo systemctl start apache2

# Adjust firewall
sudo ufw allow in "Apache Full"

# Allow read/write permissions for owner
sudo chmod -R 0755 /var/www/html/

# Secure MySQL and set root password
sudo mysql_secure_installation

# Validate login to MySQL
sudo mysql -u root -p

# Create PHP info page
sudo sh -c 'echo "<?php phpinfo(); ?>" > /var/www/html/info.php'