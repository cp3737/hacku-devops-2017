#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
export CLUSTER_NAME="my-ecs-cluster"
export PROVISION_STATE="absent"

export AWS_REGION="us-east-1"
export ZONEA="us-east-1a"
export ZONEB="us-east-1b"
export ZONEC="us-east-1c"

export KEYPAIR="hackor_public"
export MGMT_IP="`curl -s icanhazip.com`/32"

/usr/bin/aws ec2 describe-security-groups --output text|grep SECURITYGROUPS| cut -f 3 > /tmp/groups

/usr/bin/ansible-playbook -i contrib/ec2.py ./teardown.yml -vv

#rm /tmp/groups
