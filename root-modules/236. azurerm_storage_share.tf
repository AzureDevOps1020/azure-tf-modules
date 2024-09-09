resource "azurerm_storage_share" "example" {
  name                = "example-share"
  storage_account_name = azurerm_storage_account.example.name
  quota               = 50
}
