#!/bin/bash
export CLUSTER_NAME="<EKS CLUSTER NAME>"
export AWS_DEFAULT_REGION="<AWS DEFAULT REGION>"
export PubSubnet1="<PUBLIC SUBNET 1>"
export PubSubnet2="<PUBLIC SUBNET 2>"

eksctl create cluster \
--name $CLUSTER_NAME \
--region=$AWS_DEFAULT_REGION \
--nodegroup-name=$CLUSTER_NAME-nodegroup \
--node-type=t3.medium \
--node-volume-size=30 \
--vpc-public-subnets "$PubSubnet1, $PubSubnet2" \
--version 1.33 \
--ssh-access \
--external-dns-access \
--verbose 4