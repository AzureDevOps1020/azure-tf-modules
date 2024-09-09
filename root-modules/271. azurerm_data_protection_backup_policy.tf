resource "azurerm_data_protection_backup_policy" "example" {
  name                = "example-backup-policy"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  policy              = jsonencode({
    retentionPolicy = {
      daily = 30
      weekly = 10
    }
  })
}
