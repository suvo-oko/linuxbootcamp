#!/bin/bash

# Update Package Index
sudo apt update

# Install Apache2, MySQL, PHP
sudo apt install apache2 mysql-server php php-mysql libapache2-mod-php php-cli -y

# Allow to run Apache on boot up
sudo systemctl enable apache2

# Restart Apache Web Server 
sudo systemctl start apache2

# Adjust Firewall
sudo ufw allow in "Apache Full"

# Allow Read/Write for Owner
sudo chmod -R 0755 /var/www/html/

# Secure MySQL and set root pwd
sudo mysql_secure_installation

# Validate login to MySQL
sudo mysql -u root -p

# Create info.php for testing php processing
sudo sh -c 'echo "<?php phpinfo(); ?>" > /var/www/html/info.php'