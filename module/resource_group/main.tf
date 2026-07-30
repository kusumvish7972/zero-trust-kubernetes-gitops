resource "azurerm_resource_group" "exm1" {
    for_each = var.rgs
name = each.value.name
location = each.value.location
}