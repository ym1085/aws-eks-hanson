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
open /Applications/Docker.app

echo
kind create cluster --config kind-config-nodeport.yaml
kubectl cluster-info --context kind-kind
kubectl get nodes