terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "52f9fa3f-b60f-4a9c-9bd9-86e438d23818"
  features {}
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "Canada Central"
}