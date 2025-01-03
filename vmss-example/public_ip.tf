resource "random_string" "fqdn" {
  length  = 6
  special = false
  upper   = false
  numeric = false
}

resource "azurerm_public_ip" "vmss" {
  name                = "vmss-public-ip"
  location            = azurerm_resource_group.vmss_rg.location
  resource_group_name = azurerm_resource_group.vmss_rg.name
  allocation_method   = "Static"
  domain_name_label   = random_string.fqdn.result
 
}