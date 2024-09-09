resource "azurerm_disk_encryption_set" "example" {
  name                = "example-disk-encryption-set"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  key_vault_id        = azurerm_key_vault.example.id
  key_url             = azurerm_key_vault_key.example.id
}
