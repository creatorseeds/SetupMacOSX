#!/bin/sh
# Backup original files.
files=(
  "/etc/bashrc"
  "~/.bash_profile"
  "/usr/local/etc/apache2/2.4/httpd.conf"
  "/usr/local/etc/apache2/2.4/extra/httpd-userdir.conf"
  "/usr/local/etc/apache2/2.4/extra/httpd-vhosts.conf"
  "/usr/local/Cellar/phpmyadmin/4.3.7/share/phpmyadmin/config.inc.php"
  "/usr/local/etc/php/5.6/php.ini"
  "/usr/local/etc/php/5.6/conf.d/ext-xdebug.ini"
)

for file in ${files[@]}; do
  if ls "$file" 1> /dev/null 2>&1; then
    cp $file ./config/default/
  fi
done
