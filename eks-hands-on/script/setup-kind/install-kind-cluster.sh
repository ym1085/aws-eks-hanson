#!/bin/bash
set -e

echo "==================================="
echo " Kubernetes in Docker (kind) Setup "
echo "==================================="

echo "Installation kind for k8s"
brew install kubectl
kubectl version --client=true -o yaml
echo

brew install kind
kind version