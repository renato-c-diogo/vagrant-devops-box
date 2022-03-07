#!/bin/bash

#### Install packages ######
apt-get update -y
apt-get install -y make build-essential linux-headers-generic
apt-get install -y python3-pip unzip jq
# apt-get install -y awscli