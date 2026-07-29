resource "azurerm_application_security_group" "asg" {
  for_each = var.asg
  name = each.value.asg_name
  location = each.value.asg_location
  resource_group_name = each.value.asg_rg_name
  tags = merge(local.tags, each.value.tags )
  lifecycle {
    ignore_changes = [ tags["deploymentdate"] ]
  }
}
