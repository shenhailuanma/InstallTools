#!/bin/bash

### scrapy 2.x need python 2.7, the older need 2.6 or 2.7

/bin/bash python_base_tools.sh


# install bases
yum install libxml2
yum install libxslt
yum install libxslt-devle

# download scrapy 0.18
wget https://codeload.github.com/scrapy/scrapy/zip/0.18
mv 0.18 scrapy-0.18.zip
unzip scrapy-0.18.zip
pushd scrapy-0.18
python setup.py build
python setup.py install
popd