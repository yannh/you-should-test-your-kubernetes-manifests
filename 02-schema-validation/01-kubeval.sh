#!/bin/bash -x

kubeval --strict -d fixtures

echo $?
