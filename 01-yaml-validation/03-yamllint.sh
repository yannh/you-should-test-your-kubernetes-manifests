#!/bin/bash -x

yamllint -d relaxed fixtures/
echo $?
