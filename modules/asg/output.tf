output "asg_name" {
    value = {for k, asg in azurermazurerm_application_security_group.asg: k => asg.name }
}
output "asg_rg_name" {
    value = {for k, asg in azurerm_application_security_group.asg: k => asg.resource_group_name}

}
output "asg_location" {
    value = {for k, asg in azurerm_application_security_group.asg: k => asg.location}
}