resource "azurerm_resource_group" "vmss_rg" {
  name     = "${var.prefix}-resources"
  location = "Canada central"
}