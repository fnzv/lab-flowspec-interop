#!/bin/bash

echo "deb http://deb.debian.org/debian/ sid main" | sudo tee /etc/apt/sources.list.d/bird2.list
echo 'APT::Default-Release "stable";' | sudo tee /etc/apt/apt.conf.d/default-release

sudo apt update
sudo apt install -y -t sid bird2

sudo rm -rf /etc/bird/bird.conf
sudo ln -s /vagrant/bird.conf /etc/bird/bird.conf
sudo birdc conf
