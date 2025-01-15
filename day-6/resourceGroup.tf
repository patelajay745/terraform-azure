resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "Canada Central"

  tags = {
    envionment=local.common_tags.stage
  }
}



# tf plan -var=env=dev top high priority than default


# PRECEDENCE

# exported env variables
# terraform.tfvars
# terraform.tfvars.json
# *.auto.tfvars or *.auto.tfvars.json
# -var and -var-file