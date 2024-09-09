output "vm_id" {
  description = "The ID of the virtual machine."
  value       = azurerm_virtual_machine.example.id
}

output "vm_name" {
  description = "The name of the virtual machine."
  value       = azurerm_virtual_machine.example.name
}

output "vm_location" {
  description = "The location where the virtual machine is created."
  value       = azurerm_virtual_machine.example.location
}

output "vm_size" {
  description = "The size of the virtual machine."
  value       = azurerm_virtual_machine.example.size
}
