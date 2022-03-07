#!/bin/bash

# remove comment if you want to enable debugging
#set -x

source /tmp/.env

# sh ./add-new-user.sh
source /vagrant/scripts/install-packages.sh
source /vagrant/scripts/install-git.sh
source /vagrant/scripts/install-docker.sh
source /vagrant/scripts/install-terraform.sh
source /vagrant/scripts/install-packer.sh

# clean up
apt-get clean