resource "azurerm_resource_group" "myrg" {
  name     = "example-resources"
  location = "Canada Central"

  tags = {
    envionment="ajay"
  }

}
