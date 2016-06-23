#!/usr/bin/env bash
sudo yum install -y epel-release
sudo yum install -y python-pip
sudo curl -L https://github.com/docker/compose/releases/download/1.5.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose