resource "azurerm_storage_share_directory" "example" {
  name                = "example-directory"
  storage_share_name  = azurerm_storage_share.example.name
  storage_account_name = azurerm_storage_account.example.name
}
