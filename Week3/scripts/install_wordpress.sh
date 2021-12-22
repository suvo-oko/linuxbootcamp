#!/bin/bash

sudo apt install wordpress -y

# Create WordPress DB Script
sudo nano wordpress.sql

# CREATE DATABASE wordpress;
# GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER
# ON wordpress.*
# TO wordpress@localhost
# IDENTIFIED BY 'P@ssw0rd2021';

# Configure DB
cat wordpress.sql | sudo mysql --defaults-extra-file=/etc/mysql/debian.cnf

# Remove WordPress DB Script
sudo rm wordpress.sql

# Prep config-default.php file
sudo nano /etc/wordpress/config-localhost.php

# <?php
# define('DB_NAME', 'wordpress');
# define('DB_USER', 'wordpress');
# define('DB_PASSWORD', 'P@ssw0rd2021');
# define('DB_HOST', 'localhost');
# define('WP_CONTENT_DIR', '/usr/share/wordpress/wp-content');
# ?>

# Move the WordPress installation to the web server document root
sudo ln -s /usr/share/wordpress /var/www/html/wordpress
sudo mv /etc/wordpress/config-localhost.php /etc/wordpress/config-default.php