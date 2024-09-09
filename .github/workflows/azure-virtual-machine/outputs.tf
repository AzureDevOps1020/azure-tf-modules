output "admin_password" {
  description = "The dynamically generated admin password for the virtual machine."
  value       = random_password.admin_password.result
  sensitive   = true
}

output "vm_id" {
  description = "The ID of the virtual machine."
  value       = module.virtual_machine.vm_id
}

output "vm_name" {
  description = "The name of the virtual machine."
  value       = module.virtual_machine.vm_name
}
