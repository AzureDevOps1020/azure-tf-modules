resource "azurerm_recovery_services_protected_vm" "example" {
  name                = "example-recovery-services-protected-vm"
  resource_group_name = azurerm_resource_group.example.name
  recovery_vault_name = azurerm_recovery_services_vault.example.name
  source_vm_id        = azurerm_virtual_machine.example.id
}
