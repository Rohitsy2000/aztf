locals {
  tags = {
    deploymentdate = timestamp()
    resourcetype = rg
  }
}
