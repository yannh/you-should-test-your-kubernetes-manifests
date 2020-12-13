#!/bin/bash -x
reset

kubeval --strict fixtures/nginx-deployment.yml fixtures/nginx-service.yml

echo $?
