resource "azurerm_key_vault_secret" "example" {
  name         = "example-secret"
  value        = "my-secret-value"
  key_vault_id = azurerm_key_vault.example.id
}
