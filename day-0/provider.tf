terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "terraform-learning"  
    storage_account_name = "remotebackend1771"                     
    container_name       = "day-0-backend"                      
    key                  = "dev.terraform.tfstate"        
  }
}

provider "azurerm" {
  features {}
}