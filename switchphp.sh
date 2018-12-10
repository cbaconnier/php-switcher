#!/bin/bash
current=`php -r "echo phpversion();" | cut -f1,2 -d'.'`
choice=$1

if [ $# -lt 1 ]
then
  echo "Usage: $0 PHPversion"
  exit 1
fi

echo "Disabling current version: $current"
sudo a2dismod "php$current" >> /dev/null
sudo service "php$current-fpm" stop

echo "Enabling version: $current"
sudo a2enmod "php$choice"  >> /dev/null
sudo service "php$choice-fpm" start

echo "switching to version $choice"
sudo update-alternatives --set php "/usr/bin/php$choice" >> /dev/null

echo "All done!"
