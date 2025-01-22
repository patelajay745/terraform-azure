variable "project_name" {
    type = string
    default = "Project ALPHA Resource"
  
}

variable "default_tags" {
    type = map(string)
    default = {
      "company" = "CloudOps"
      "managed_by"="terraform"
    }
}

variable "env_tags" {
    type = map(string)
    default = {
        "environment"  = "production"
        "cost_center" = "cc-123"
    }
}

variable "storage_account_name" {
    type=string
    default="dsjksad jkasdkfj kjsadf !sdfsasdf asdfadf"
  
}