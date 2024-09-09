resource "azurerm_frontdoor_custom_https_configuration" "example" {
  frontdoor_id       = azurerm_frontdoor.example.id
  certificate_source = "AzureKeyVault"
  key_vault_secret_id = azurerm_key_vault_secret.example.id
}
