#!/bin/bash -x
reset

# Requires a Kubernetes context to be set and Kubernetes cluster to be accessible
kubectl apply --validate=true --dry-run=server -f fixtures/

echo $?
