package main

kinds_to_skip = {
  "apiservice",
  "clusterrole",
  "clusterrolebinding",
  "configmaplist",
  "customresourcedefinition",
  "namespace",
  "rolebinding",
  "rolebindinglist",
  "serviceaccount",
  "storageclass"
}

deny[msg] {
  not kinds_to_skip[lower(input.kind)]

  not input.metadata.namespace

  msg = "no namespace set"
}
