#!/bin/bash -x

yq validate fixtures/nginx-deployment.yml
echo $?

yq validate fixtures/nginx-service.yml
echo $?
