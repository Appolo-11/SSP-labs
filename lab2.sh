#!/bin/bash

if [[ $(ls $HOME/PyBitmessage) == "" ]]; then
git clone https://github.com/Bitmessage/PyBitmessage $HOME/PyBitmessage
fi

if [[ "$(which python)" == "" ]]; then
sudo apt-get install python
fi

if [[ "$(which openssl)" == "" ]]; then
sudo apt-get install openssl
fi

if [[ "$(dpkg -l | grep libssl-dev | awk '{print $2} ')" == "" ]]; then
sudo apt-get install libssl-dev
fi

if [[ "$(which git)" == "" ]]; then
sudo apt-get install git
fi

if [[ "$(dpkg -l | grep python-msgpack | awk '{print $2} ')" == "" ]]; then
sudo apt-get install python-msgpack
fi

if [[ "$(dpkg -l | grep python-qt4 | awk '{print $2} ')" == "" ]]; then
sudo apt-get install python-qt4
fi

~/PyBitmessage/src/bitmessagemain.py
