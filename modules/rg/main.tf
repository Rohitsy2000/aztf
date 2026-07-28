resource "azurerm_resource_group" "rg" {
  for_each = var.rg
  name = each.value.name
  location = each.value.location
  tags = merge(local.tags,each.value.tags)
  lifecycle {
    prevent_destroy = true
    ignore_changes = [ ["deploymentdate"] ]
  }
  
}