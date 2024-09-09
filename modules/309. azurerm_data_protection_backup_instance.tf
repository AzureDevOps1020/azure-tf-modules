resource "azurerm_data_protection_backup_instance" "example" {
  name                = "example-backup-instance"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  vault_id            = azurerm_backup_vault.example.id
  backup_management_type = "AzureIaasVM"
}
