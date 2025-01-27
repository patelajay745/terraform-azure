output "random_string" {
    value = random_string.random.id  
}

output "dns_name" {
    value = "http://${azurerm_public_ip.lb_public_ip.domain_name_label}.${azurerm_resource_group.rg.location}.cloudapp.azure.com/index.php"  
}