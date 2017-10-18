#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
<<<<<<< HEAD
export BASTION_IDEMPOTENT_ID="03"
=======
export BASTION_IDEMPOTENT_ID="12"
>>>>>>> 3bad08e... Class6 changes
export PROVISION_STATE="present"

export AWS_REGION="us-east-1"
export ZONEA="us-east-1a"
export ZONEB="us-east-1b"
export ZONEC="us-east-1c"

export VPC_BASE="10.10"
export KEYPAIR="hackor_public"
export MGMT_IP="`curl -s icanhazip.com`/32"

<<<<<<< HEAD
#/usr/local/bin/ansible-playbook -i ~/ansible/ec2.py  ./stage1.yml
#/usr/local/bin/ansible-playbook -i ~/ansible/ec2.py  ./stage2.yml 
/usr/local/bin/ansible-playbook -i ~/ansible/ec2.py  ./stage3.yml -vvv
=======
/usr/bin/ansible-playbook -i contrib/ec2.py ./stage1.yml 
/usr/bin/ansible-playbook -i contrib/ec2.py ./stage2.yml
/usr/bin/ansible-playbook -i contrib/ec2.py ./stage3.yml
>>>>>>> 3bad08e... Class6 changes
