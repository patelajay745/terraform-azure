resource "azurerm_resource_group" "shared-rg" {
  name     = "shared-network-rg"
  location = "West Europe"
}

resource "azurerm_network_security_group" "shared-nsg" {
  name                = "shared-security-group"
  location            = azurerm_resource_group.shared-rg.location
  resource_group_name = azurerm_resource_group.shared-rg.name
}

resource "azurerm_virtual_network" "shared-vnet" {
  name                = "shared-network-vnet"
  location            = azurerm_resource_group.shared-rg.location
  resource_group_name = azurerm_resource_group.shared-rg.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = "shared-primary-sn"
    address_prefixes = ["10.0.0.0/24"]
    security_group   = azurerm_network_security_group.shared-nsg.id
  }

  
  tags = {
    environment = "Production"
  }
}

