resource "azurerm_storage_blob" "example" {
  name                   = "example-blob"
  storage_account_name   = azurerm_storage_account.example.name
  container_name         = azurerm_storage_container.example.name
  type                   = "Block"
  source                 = "path/to/file"
}
