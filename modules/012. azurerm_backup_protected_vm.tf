resource "azurerm_backup_protected_vm" "example" {
  resource_group_name  = azurerm_resource_group.example.name
  recovery_vault_name  = azurerm_recovery_services_vault.example.name
  source_vm_id         = azurerm_virtual_machine.example.id
}