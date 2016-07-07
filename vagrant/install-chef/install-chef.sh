#!/usr/bin/env bash
sudo yum install -y epel-release


yum provides '*/applydeltarpm'
yum -y install deltarpm


wget --directory-prefix="/home/vagrant/dev/tools/" https://packages.chef.io/stable/el/7/chef-12.8.1-1.el7.x86_64.rpm
wget --directory-prefix="/home/vagrant/dev/tools/" https://packages.chef.io/stable/el/7/chefdk-0.15.15-1.el7.x86_64.rpm
cd /home/vagrant/dev/tools/
rpm -Uvh chef-12.8.1-1.el7.x86_64.rpm
rpm -Uvh chefdk-0.15.15-1.el7.x86_64.rpm

sudo yum -y install git