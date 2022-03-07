#!/bin/bash

#add git repo
add-apt-repository -y ppa:git-core/ppa

#install git
apt-get install -y git
curl -fsSL https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash -\
    && apt-get install -y git-lfs