#!/bin/bash

# faço o update do sistema
apt-get -y update

# baixo o pacote do Puppet
wget -qO- https://get.docker.com/ | sh
