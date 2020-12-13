#!/bin/bash -x

# Requires a Kubernetes context to be set and Kubernetes cluster to be accessible
kubectl apply --validate=true --dry-run=client -f fixtures/nginx-service.yml

echo $?