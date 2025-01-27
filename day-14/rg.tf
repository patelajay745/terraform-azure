resource "azurerm_resource_group" "rg" {
  name     = var.rgName
  location = var.rgLocation  
}

resource "random_string" "random" {
  length           = 8
  upper = false
  special          = true
  override_special = "/@£$"
}
