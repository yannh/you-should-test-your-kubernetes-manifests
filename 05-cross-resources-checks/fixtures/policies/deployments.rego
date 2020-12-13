package main

deployment[[input, file]] {
  input[deploymentffile].kind == "Deployment"
  input[deploymentfile].spec.selector.matchLabels.app == input[file].spec.selector.run
}

deny[msg] {
  input[file].kind == "Service"
  not deployment[[input, file]]

  msg := sprintf("Service %v points to non-existing deployment %v" , [input[file].metadata.name, input[file].spec.selector.run])
}
