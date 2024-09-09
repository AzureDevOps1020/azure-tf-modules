resource "azurerm_monitor_scheduled_query_rules_alert" "example" {
  name                = "example-scheduled-query-alert"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  log_analytics_workspace_id = azurerm_log_analytics_workspace.example.id
  query               = "Heartbeat | summarize count() by bin(TimeGenerated, 5m)"
  description         = "Alert for heartbeat"
  severity            = "Critical"
  enabled             = true
  schedule {
    frequency = "P1H"
    interval  = 1
  }
}
