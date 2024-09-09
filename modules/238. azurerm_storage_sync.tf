resource "azurerm_storage_sync" "example" {
  name                = "example-storage-sync"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  storage_account_id  = azurerm_storage_account.example.id
}
