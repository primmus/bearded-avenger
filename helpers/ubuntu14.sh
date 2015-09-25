#!/bin/bash

set -e

echo "adding bleeding edge python2.7 ppa"
sudo add-apt-repository -y ppa:fkrull/deadsnakes-python2.7

echo "installing the basics"
sudo apt-get install -y libzmq3 python-zmq python2.7 python-dev virtualenvwrapper git build-essential

echo "upgrading pip"
sudo pip install pip --upgrade
