resource "azurerm_monitor_metric_alert" "example" {
  name                = "example-metric-alert"
  resource_group_name = azurerm_resource_group.example.name
  scopes              = [azurerm_virtual_machine.example.id]
  description         = "Alert when CPU usage exceeds 80%"
  criteria {
    metric_name     = "Percentage CPU"
    metric_namespace = "Microsoft.Compute/virtualMachines"
    operator         = "GreaterThan"
    threshold        = 80
  }
  action {
    action_group_id = azurerm_monitor_action_group.example.id
  }
}
