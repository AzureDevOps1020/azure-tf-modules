resource "azurerm_sentinel_alert_rule" "example" {
  name                = "example-alert-rule"
  log_analytics_workspace_id = azurerm_log_analytics_workspace.example.id
  display_name        = "Example Alert Rule"
  query               = "SecurityEvent | where EventID == 4625"
  query_frequency     = "5m"
  query_period        = "1h"
  trigger_operator    = "GreaterThan"
  trigger_threshold   = 10
  action {
    action_group_id   = azurerm_monitor_action_group.example.id
  }
}
