data "azurerm_public_ip" "example1" {
  for_each            = var.mac1
  name                = each.value.nic-pip
  resource_group_name = each.value.resource_group_name
}

data "azurerm_subnet" "example2" {
  for_each             = var.mac1
  name                 = each.value.nic-sub
  virtual_network_name = each.value.virtual-net
  resource_group_name  = each.value.resource_group_name
}
