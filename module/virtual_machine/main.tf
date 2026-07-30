resource "azurerm_network_interface" "exm5" {
  for_each            = var.mac1
  name                = each.value.nic-name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  ip_configuration {
    name                          = "dhondu"
    subnet_id                     = data.azurerm_public_ip.example1[each.key].id
    public_ip_address_id          = data.azurerm_subnet.example2[each.key].id
    private_ip_address_allocation = "dynamic"
  }

}


resource "azurerm_linux_virtual_machine" "LVM" {
  for_each                        = var.mac1
  name                            = each.value.name
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = each.value.size
  admin_username                  = each.value.admin_username
  admin_password                  = each.value.admin_password
  disable_password_authentication = each.value.disable_password_authentication

  network_interface_ids = [
    azurerm_network_interface.exm5[each.key].id
  ]

  os_disk {
    caching              =  "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}
