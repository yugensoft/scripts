apt-get -y update
apt-get -y install software-properties-common
add-apt-repository -y ppa:certbot/certbot
apt-get -y update
apt-get -y install python-certbot-apache 
certbot --apache

