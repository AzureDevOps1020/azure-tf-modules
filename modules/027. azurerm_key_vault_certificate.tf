resource "azurerm_key_vault_certificate" "example" {
  name         = "example-cert"
  key_vault_id = azurerm_key_vault.example.id
  certificate {
    content = filebase64("path/to/certificate.pem")
    password = "cert-password"
  }
}
