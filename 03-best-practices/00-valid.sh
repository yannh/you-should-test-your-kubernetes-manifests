#!/bin/bash -x
reset

kubeconform -strict -summary fixtures/
echo $?
