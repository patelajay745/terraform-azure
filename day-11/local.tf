locals {
  project_name= replace(lower(var.project_name)," ","-")
  storage_formmated=replace(lower(substr(var.storage_account_name,0,23))," ","")
}