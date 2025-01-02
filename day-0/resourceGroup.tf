resource "azurerm_resource_group" "my-rg" {
  name     = "${var.prefix}-resources"
  location = "Canada central"
}