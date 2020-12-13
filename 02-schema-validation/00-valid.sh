#!/bin/bash -x
reset

yamllint fixtures/nginx*.yml
echo $?
