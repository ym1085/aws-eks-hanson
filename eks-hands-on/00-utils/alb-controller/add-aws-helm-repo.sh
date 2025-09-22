#!/bin/bash

# helm install aws-lb-controller eks/aws-load-balancer-controller
# helm install aws-lb-controller https://aws.github.io/eks-charts/aws-load-balancer-controller
helm repo add eks https://aws.github.io/eks-charts
helm repo update