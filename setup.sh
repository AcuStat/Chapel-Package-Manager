#!/usr/bin/env bash
#
# ChPM (Chapel Package Manager)
#
# Install script to get ChPM setup
#

YUM=`which yum`
APT=`which apt-get`

if [ $YUM ]; then
    echo "Running yum based package manager"
    sudo yum install subversion gcc make
fi

if [ $APT ]; then
    echo "Running apt-get based  package manager"
    sudo apt-get install subversion gcc make
fi

echo "Fetching latest version of Chapel Development"
svn checkout svn://svn.code.sf.net/p/chapel/code/trunk chapel-code
cd chapel-code
echo "Running chapel for installation"
./configure
make
echo "Chapel has been installed"
./bin/*/chpl --version
echo "=========================="

#Starting Install of ChPM Chapel Package Manager
echo "Starting ChPM Installation"