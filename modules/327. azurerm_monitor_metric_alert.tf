resource "azurerm_monitor_metric_alert" "example" {
  name                = "example-metric-alert"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  scopes              = [azurerm_virtual_machine.example.id]
  criteria {
    metric_name        = "Percentage CPU"
    metric_namespace   = "Microsoft.Compute/virtualMachines"
    operator           = "GreaterThan"
    threshold          = 80
  }
  description         = "Alert when CPU usage exceeds 80%"
}
