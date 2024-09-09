resource "azurerm_monitor_diagnostic_setting" "example" {
  name               = "example-diagnostic-setting"
  target_resource_id = azurerm_virtual_machine.example.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.example.id
  metric {
    category = "AllMetrics"
    enabled  = true
  }
  log {
    category = "Administrative"
    enabled  = true
  }
}
