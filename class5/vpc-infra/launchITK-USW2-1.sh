#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
<<<<<<< HEAD
export AWS_REGION="us-west-2"
export ZONEA="us-west-2a"
export ZONEB="us-west-2b"
export ZONEC="us-west-2c"
=======
export AWS_REGION="us-east-1"
export AWS_DEFAULT_REGION="us-east-1"
export ZONEA="us-east-1a"
export ZONEB="us-east-1b"
export ZONEC="us-east-1c"
>>>>>>> 3bad08e... Class6 changes

export KEYPAIR="hackor_user_private"
export MGMT_IP="`curl -s icanhazip.com`/32"
export MYGROUP="bastionSG"
export MYSUBNET="subnet-e67765ca"

/usr/bin/ansible-playbook ./bastion.yml
