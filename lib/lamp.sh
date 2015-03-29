#!/bin/sh
# Hosts
sudo cp ./config/hosts /etc/hosts

# Apache
ln -sfv /usr/local/opt/httpd24/*.plist ~/Library/LaunchAgents
cp ./config/httpd.conf /usr/local/etc/apache2/2.4/httpd.conf

# Make Userdir for Apache
if [ ! -d "/Users/$USER/Sites" ]; then
mkdir ~/Sites
echo '<?php phpinfo();' > ~/Sites/index.php
fi

# Config for Available Userdir
cp ./config/httpd-userdir.conf /usr/local/etc/apache2/2.4/extra/httpd-userdir.conf

# Virtual Hosts for Apache
cp ./config/httpd-vhosts.conf /usr/local/etc/apache2/2.4/extra/httpd-vhosts.conf

# MySQL
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
mysql.server restart
mysqladmin -uroot password 'root'

# phpMyAdmin
cp ./config/config.inc.php /usr/local/Cellar/phpmyadmin/4.3.7/share/phpmyadmin/config.inc.php
mysql -uroot -proot < ./config/create_tables.sql

# PHP 5.6.x
cp ./config/php.ini /usr/local/etc/php/5.6/
cp ./config/ext-xdebug.ini /usr/local/etc/php/5.6/conf.d/

# Restart apache
sudo apachectl restart
