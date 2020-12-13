#!/bin/bash -x
reset

conftest test --combine -p fixtures/policies/ fixtures/*.yml

echo $?
