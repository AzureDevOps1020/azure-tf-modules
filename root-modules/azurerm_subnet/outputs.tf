output "subnet_id" {
  description = "The ID of the subnet."
  value       = azurerm_subnet.example.id
}

output "subnet_name" {
  description = "The name of the subnet."
  value       = azurerm_subnet.example.name
}

output "address_prefixes" {
  description = "The address prefixes of the subnet."
  value       = azurerm_subnet.example.address_prefixes
}
