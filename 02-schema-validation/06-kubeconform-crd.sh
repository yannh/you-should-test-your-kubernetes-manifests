#!/bin/bash -x
reset

kubeconform -output json -strict -summary -schema-location 'https://kubernetesjsonschema.dev' -schema-location 'fixtures/{{ .ResourceKind }}_{{ .ResourceAPIVersion }}.json' fixtures/aws-traning-job.yml

echo $?
