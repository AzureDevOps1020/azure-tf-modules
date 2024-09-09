resource "azurerm_monitor_activity_log_alert" "example" {
  name                = "example-activity-log-alert"
  resource_group_name = azurerm_resource_group.example.name
  scopes              = [azurerm_resource_group.example.id]
  criteria {
    condition          = "GreaterThan"
    threshold          = 1
    metric_name        = "WriteOperations"
  }
  action {
    action_group_id   = azurerm_monitor_action_group.example.id
  }
}
