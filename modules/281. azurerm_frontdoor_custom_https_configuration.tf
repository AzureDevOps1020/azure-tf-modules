resource "azurerm_frontdoor_custom_https_configuration" "example" {
  name                = "example-custom-https-configuration"
  frontdoor_id        = azurerm_frontdoor.example.id
  frontend_endpoint_name = "example-frontend-endpoint"
  certificate_source  = "AzureKeyVault"
  certificate_id      = azurerm_key_vault_certificate.example.id
}
