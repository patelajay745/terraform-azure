#aasignment1
# resource "azurerm_resource_group" "example" {
#   name     = local.project_name
#   location = "West Europe"
# }


resource "azurerm_resource_group" "example" {
   name     = local.project_name
  location = "West Europe"

  tags = merge(var.default_tags,var.env_tags)
}

resource "azurerm_storage_account" "example" {
  name                     = local.storage_formmated
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}


output "rg_name" {
  value = azurerm_resource_group.example.tags
}