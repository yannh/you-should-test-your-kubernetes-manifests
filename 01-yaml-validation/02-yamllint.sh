#!/bin/bash -x
reset

yamllint fixtures/nginx-deployment.yml
echo $?

yamllint fixtures/nginx-service.yml
echo $?

yamllint fixtures/
echo $?
