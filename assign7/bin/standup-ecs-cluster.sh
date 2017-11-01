#!/bin/bash
ecs-cli up \
  --keypair hackor_public\
  --capability-iam \
  --size 1 \
  --instance-type t2.micro  \
  --port 8000 \
