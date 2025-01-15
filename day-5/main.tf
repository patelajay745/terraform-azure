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
    container_name       = "day-5"                      
    key                  = "dev.terraform.tfstate"       
  }
}

provider "azurerm" {
  features {}
}

variable "env"{
    type=string
    description = "The envionment value"
    default = "staging"
}

locals {
  common_tags={
    env="dev"
    stage="stage"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "Canada Central"

  tags = {
    envionment=local.common_tags.stage
  }
}

output "rg_name"{
    value = azurerm_resource_group.example.name
}




# tf plan -var=env=dev top high priority than default


# PRECEDENCE

# exported env variables
# terraform.tfvars
# terraform.tfvars.json
# *.auto.tfvars or *.auto.tfvars.json
# -var and -var-file