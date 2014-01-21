#!/bin/bash


# install python-devel
yum install python-devel -y

### install tools
# install setuptools(easy_install)
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
python ez_setup.py 

# install pip
easy_install pip

# install virtualenv
pip install virtualenv

