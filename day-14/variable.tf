variable "environment" {
    type = string
    default = "dev"  
}

variable "appName" {
  type = string
  default = "tetris"  
}

variable "rgName" {
  type = string
  default = "Tetris-Game-ResourceGroup"
}

variable "rgLocation" {
  type = string
  default = "Canada Central"
}

variable "vnetName" {
    type = string
    default = "MyVNET"
}


variable "adminUserName" {
  type = string
}

variable "adminPassword" {
  type = string
}