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
    sudo yum -y install subversion gcc make mercurial
fi

if [ $APT ]; then
    echo "Running apt-get based  package manager"
    sudo apt-get -y install subversion gcc make mercurial
fi

if [ -d 'chapel-code' ];  then
    echo "Chapel is already installed going to update svn"
    cd chapel-code
    svn update
else
    echo "Fetching latest version of Chapel Development"
    svn checkout svn://svn.code.sf.net/p/chapel/code/trunk chapel-code
    cd chapel-code
fi

echo "Setting up Chapel Enviorment Variables"
export CHPL_LLVM=llvm
export CHPL_TASKS=massivethreads
export CHPL_REGEXP=re2

echo "Running chapel for installation"
make

echo "Chapel has been installed"
./bin/*/chpl --version
cd ..
echo "=========================="

#Starting Install of ChPM Chapel Package Manager
echo "Starting ChPM Installation"
mkdir bin
chapel-code/bin/*/chpl src/*.chpl -o bin/ChPM