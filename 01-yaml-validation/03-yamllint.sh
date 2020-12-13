#!/bin/bash -x
reset

yamllint -d relaxed fixtures/
echo $?
