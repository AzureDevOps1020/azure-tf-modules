resource "azurerm_network_watcher_flow_log" "example" {
  name                = "example-flow-log"
  network_watcher_id  = azurerm_network_watcher.example.id
  storage_account_id  = azurerm_storage_account.example.id
  enabled             = true
  retention_policy {
    days = 30
  }
  flow_log_format     = "JSON"
}
