resource "azurerm_storage_sync_server_endpoint" "example" {
  name                = "example-server-endpoint"
  storage_sync_group_id = azurerm_storage_sync_group.example.id
  server_endpoint_url = "https://server-endpoint-url"
}
