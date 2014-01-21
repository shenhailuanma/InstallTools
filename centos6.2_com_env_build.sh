#!/bin/bash

cd $(dirname $BASH_SOURCE)
source $PWD/common.sh

user_check
# do more check
grep 'CentOS.*6.2' /etc/issue &> /dev/null
if [ $? != '0' -o `uname -m` != 'x86_64' ]; then
    echo "only suppport CentOS 6.2 x86_64"
    exit 1
fi

# tools
yum -y install wget openssh-clients man vim-enhanced subversion git


# compile and build tools
yum -y install autoconf automake make libtool.x86_64 patch.x86_64 pkgconfig.x86_64 zip.x86_64 unzip gcc-c++.x86_64


# based libs
yum -y install openssl-devel alsa-lib-devel bzip2-devel


