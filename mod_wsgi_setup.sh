# for installing wsgi on older apche server

cd ~
wget https://github.com/GrahamDumpleton/mod_wsgi/archive/4.5.17.tar.gz
tar xf 4.5.17.tar.gz
cd mod_wsgi-4.5.17/
./configure  #--with-python=/usr/bin/python2.7
make
make install
