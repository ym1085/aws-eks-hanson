#!/bin/bash
export CLUSTER_NAME="<EKS CLUSTER NAME>"
eksctl delete cluster \
--name $CLUSTER_NAME \
--region=$AWS_DEFAULT_REGION