#!/bin/bash -ex
reset

yamllint fixtures/
kubeconform -strict -summary fixtures/
conftest test -p ../03-best-practices/fixtures/policies fixtures/
kubectl apply --validate=true --dry-run=server -f fixtures/
echo $?
