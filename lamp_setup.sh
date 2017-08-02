# Script to setup an Ubuntu/Debian LAMP server
apt-get update
apt-get install -y  apache2 apache2-dev php libapache2-mod-php
apt-get install -y  mysql-server php-mysql php-pear
#mysql_secure_installation

