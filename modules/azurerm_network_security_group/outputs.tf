output "nsg_id" {
  description = "The ID of the network security group."
  value       = azurerm_network_security_group.example.id
}

output "nsg_name" {
  description = "The name of the network security group."
  value       = azurerm_network_security_group.example.name
}
