#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
export AWS_REGION="us-west-2"
export ZONEA="us-west-2a"
export ZONEB="us-west-2b"
export ZONEC="us-west-2c"

export KEYPAIR="class-public"
export MGMT_IP="`curl -s icanhazip.com`/32"
export MYGROUP="bastionSG"

/usr/local/bin/ansible-playbook ./bastion.yml
