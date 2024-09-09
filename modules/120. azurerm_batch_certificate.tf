resource "azurerm_batch_certificate" "example" {
  name                = "example-batch-certificate"
  batch_account_name  = azurerm_batch_account.example.name
  resource_group_name = azurerm_resource_group.example.name
  data                = filebase64("path/to/certificate.pfx")
  password            = "example-password"
}
