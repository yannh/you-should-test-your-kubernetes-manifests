#!/bin/bash -x
reset

# Requires a Kubernetes context to be set and Kubernetes cluster to be accessible
kubectl apply --validate=true --dry-run=client -f fixtures/nginx-deployment-invalid.yml

echo $?
