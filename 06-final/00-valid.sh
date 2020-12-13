#!/bin/bash -ex
reset

yamllint fixtures/
kubeconform -strict fixtures/
conftest test -p ../03-best-practices/fixtures/policies fixtures/
kubectl apply --validate=true --dry-run=server -f fixtures/
conftest test --combine -p ../05-cross-resources-checks/fixtures/policies/ fixtures/
echo $?
