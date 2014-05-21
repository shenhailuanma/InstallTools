#!/bin/bash

# scrapy 2.x need python 2.7
#wget http://www.python.org/ftp/python/2.7.6/Python-2.7.6.tar.xz
cp ./tools/Python-2.7.3.tar.bz2 ./
tar xvf Python-2.7.3.tar.bz2
pushd Python-2.7.6
./configure --prefix=/usr/local/Python-2.7.3
make
make install
popd
rm -rf Python-2.7.3.tar.bz2
rm -rf Python-2.7.3
touch python_ok

# build python 2.7 env for scrapy, named 'scrapy_env'
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
/usr/local/Python-2.7.6/bin/python ez_setup.py 
rm -rf ez_setup.py

/usr/local/Python-2.7.6/bin/easy_install pip
/usr/local/Python-2.7.6/bin/pip install virtualenv

 /usr/local/Python-2.7.6/bin/virtualenv /opt/scrapy_env
source /opt/scrapy_env/bin/activate

# install bases
yum install libxml2 -y
yum install libxslt -y
yum install libxml2-devel -y
yum install libxslt-devel -y

# install Pillow for scrapy image pipeline
pip install Pillow

# install scrapy 
pip install scrapy

deactivate
