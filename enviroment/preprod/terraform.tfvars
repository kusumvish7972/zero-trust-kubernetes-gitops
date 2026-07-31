rgs = {
  rg1 = {
    name     = "rg-chor"
    location = "eastus"
  }

  rg12 = {
    name     = "rg-chor2"
    location = "eastus"
  }

}

vnet = {
  vnet1 = {
    name                = "vnet-chor"
    resource_group_name = "rg-chor"
    location            = "eastus"
    address_space       = ["10.0.0.0/16"]
  }

  vnet2 = {
    name                = "vnet-chor2"
    resource_group_name = "rg-chor"
    location            = "eastus"

    
    address_space       = ["10.0.0.0/16"]
  }
}

sub = {
  sub1 = {
    name                 = "sub-chor"
    resource_group_name  = "rg-chor"
    virtual_network_name = "vnet-chor"
    address_prefixes     = ["10.0.1.0/24"]
  }

  sub2 = {
    name                 = "sub-more"
    resource_group_name  = "rg-chor"
    virtual_network_name = "vnet-chor"
    address_prefixes     = ["10.0.1.0/24"]
  }

  sub3 = {
    name                 = "sub-more2"
    resource_group_name  = "rg-chor"
    virtual_network_name = "vnet-chor"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

pubs = {
  pbl1 = {
    name                = "public-chor"
    resource_group_name = "rg-chor"
    location            = "eastus"
    allocation_method   = "Static"
  }

  pbl2 = {
    name                = "public-more"
    resource_group_name = "rg-chor"
    location            = "eastus"
    allocation_method   = "Static"
  }

  pbl3 = {
    name                = "public-more2"
    resource_group_name = "rg-chor"
    location            = "eastus"
    allocation_method   = "Static"
  }
}

mac1 = {
  vm1 = {
    name                            = "virtual-mac"
    location                        = "eastus"
    size                            = "Standard_D4_v5"
    admin_username                  = "Vishwakarma"
    admin_password                  = "Vishwakarma@12345"
    nic-name                        = "nic1"
    resource_group_name             = "rg-chor"
    nic-pip                         = "public-chor"
    nic-sub                         = "sub-chor"
    disable_password_authentication = "false"
    publisher                       = "cononical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
    virtual-net                     = "vnet-chor"

  }

  vm2 = {
    name                            = "virtual-mac2"
    location                        = "eastus"
    size                            = "Standard_D4_v5"
    admin_username                  = "Vishwakarma"
    admin_password                  = "Vishwakarma@12345"
    nic-name                        = "nic2"
    resource_group_name             = "rg-chor"
    nic-pip                         = "public-more2"
    nic-sub                         = "sub-more"
    disable_password_authentication = "false"
    publisher                       = "cononical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
    virtual-net                     = "vnet-chor"
  }

  vm3 = {
    name                            = "virtual-mac3"
    location                        = "eastus"
    size                            = "Standard_D4_v5"
    admin_username                  = "Vishwakarma"
    admin_password                  = "Vishwakarma@12345"
    nic-name                        = "nic3"
    resource_group_name             = "rg-chor"
    nic-pip                         = "public-more"
    nic-sub                         = "sub-more2"
    disable_password_authentication = "false"
    publisher                       = "cononical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
    virtual-net                     = "vnet-chor"
    
  }
}
