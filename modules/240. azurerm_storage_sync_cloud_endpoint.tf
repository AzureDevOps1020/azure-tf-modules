resource "azurerm_storage_sync_cloud_endpoint" "example" {
  name                = "example-cloud-endpoint"
  storage_sync_group_id = azurerm_storage_sync_group.example.id
  storage_account_id  = azurerm_storage_account.example.id
  endpoint_url        = "https://example.blob.core.windows.net/container"
}
