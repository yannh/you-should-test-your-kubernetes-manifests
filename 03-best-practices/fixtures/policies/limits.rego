package main

deny[msg] {
  kind := input.kind
  name := input.metadata.name

  container := input.spec.template.spec.containers[_]
  not container.resources
  not container.resources.limits

  msg = sprintf("%v %v: %v should have a non-empty resource limits definition", [kind, name, container.name])
}

deny[msg] {
  kind := input.kind
  name := input.metadata.name

  container := input.spec.template.spec.containers[_]
  not container.resources
  not container.resources.requests

  msg = sprintf("%v %v: %v should have a non-empty resource requests definition", [kind, name, container.name])
}
