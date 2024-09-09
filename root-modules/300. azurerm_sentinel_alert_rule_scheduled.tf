resource "azurerm_sentinel_alert_rule_scheduled" "example" {
  name                = "example-scheduled-alert-rule"
  resource_group_name = azurerm_resource_group.example.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.example.id
  query               = "SecurityEvent | where EventID == 4625"
  description         = "Example scheduled alert rule"
  severity            = "High"
  enabled             = true
  schedule {
    frequency = "P1D"
    interval  = 1
  }
  action {
    action_group_id = azurerm_action_group.example.id
  }
}
