#!/usr/bin/env bash
sudo echo "LANG=en_US.UTF-8" >> /etc/environment
sudo echo "LANGUAGE=en_US.UTF-8" >> /etc/environment
sudo echo "LC_ALL=en_US.UTF-8" >> /etc/environment
sudo echo "LC_CTYPE=en_US.UTF-8" >> /etc/environment

sudo yum update -y
yum -y install wget
yum -y install git
yum -y install unzip

mkdir /home/vagrant/install-packages
chown vagrant:vagrant /home/vagrant/install-packages
chmod 777 /home/vagrant/install-packages

mkdir /home/vagrant/tools
chown vagrant:vagrant /home/vagrant/tools
chmod 777 /home/vagrant/tools