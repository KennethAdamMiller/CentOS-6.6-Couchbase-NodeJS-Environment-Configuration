#!/bin/bash

sudo yum -y groupinstall "Development Tools"
sudo yum install -y gcc-c++ make git
sudo rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
sudo yum update
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/mozilla-services/nodejs-rpm-creator 
sudo yum -y install nodejs npm
npm install couchbase ; npm install gyp ; npm install node-gyp

