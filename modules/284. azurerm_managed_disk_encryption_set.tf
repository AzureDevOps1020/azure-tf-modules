resource "azurerm_managed_disk_encryption_set" "example" {
  name                = "example-encryption-set"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  key_vault_id        = azurerm_key_vault.example.id
  key_id              = azurerm_key_vault_key.example.id
}
