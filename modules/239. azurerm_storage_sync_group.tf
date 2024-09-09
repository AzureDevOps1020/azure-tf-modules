resource "azurerm_storage_sync_group" "example" {
  name                = "example-sync-group"
  resource_group_name = azurerm_resource_group.example.name
  storage_sync_id     = azurerm_storage_sync.example.id
}
