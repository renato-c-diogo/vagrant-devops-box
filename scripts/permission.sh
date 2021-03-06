#!/bin/bash

# remove comment if you want to enable debugging
#set -x

# source /tmp/.env

USERNAME='vagrant'
HOME_DIR='/home/vagrant'

# Move gitconfig
# cp /tmp/.gitconfig ${HOME_DIR}/
# chown ${USERNAME}:${USERNAME} ${HOME_DIR}/.gitconfig

#ssh key copy
cp -R /tmp/.ssh/ ${HOME_DIR}/
chown -R ${USERNAME}:${USERNAME} ${HOME_DIR}/.ssh/
chmod 644 ${HOME_DIR}/.ssh/known_hosts
chmod 644 ${HOME_DIR}/.ssh/*.pub
chmod 700 ${HOME_DIR}/.ssh/id_*

config=${HOME_DIR}/.ssh/config
if [ -f "$config" ]; then
chmod 644 $config
fi

authorized_keys=${HOME_DIR}/.ssh/authorized_keys
if [ -f "$authorized_keys" ]; then
chmod 644 $authorized_keys
fi

pem_count=`ls -1 ${HOME_DIR}/.ssh/*.pem 2>/dev/null | wc -l`
if [ $pem_count != 0 ]
then 
chmod 600 ${HOME_DIR}/.ssh/*.pem
fi

id_rsa=${HOME_DIR}/.ssh/id_rsa
if [ -f "$id_rsa" ]; then
chmod 600 $id_rsa
fi

user_key=${HOME_DIR}/.ssh/user_key
if [ -f "$user_key" ]; then
chmod 600 $user_key
fi

#aws config copy
cp -R /tmp/.aws/ ${HOME_DIR}/
chown -R ${USERNAME}:${USERNAME} ${HOME_DIR}/.aws/