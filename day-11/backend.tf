terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-learning"  
    storage_account_name = "remotebackend1771"                   
    container_name       = "day-11"                      
    key                  = "dev.terraform.tfstate"       
  }
}