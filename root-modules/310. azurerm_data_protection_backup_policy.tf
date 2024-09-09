resource "azurerm_data_protection_backup_policy" "example" {
  name                = "example-backup-policy"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  vault_id            = azurerm_backup_vault.example.id
  backup_policy {
    retention_policy {
      daily {
        count = 30
      }
    }
  }
}
