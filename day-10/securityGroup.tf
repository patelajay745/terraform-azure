resource "azurerm_network_security_group" "mysg" {
  name                = var.env =="dev"?"dev-nsg":"staging-nsg"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name

  dynamic security_rule {
    for_each = local.nsg_rules

    content {
        name                       = security_rule.key
        priority                   = security_rule.value.priority
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = security_rule.value.destination_port_range
        source_address_prefix      = "*"
        destination_address_prefix = "*"
        description = security_rule.value.description
    }
    
  }

  tags = {
    environment = "Production"
  }
}