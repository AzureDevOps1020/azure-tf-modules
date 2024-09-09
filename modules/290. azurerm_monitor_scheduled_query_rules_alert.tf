resource "azurerm_monitor_scheduled_query_rules_alert" "example" {
  name                = "example-scheduled-query-alert"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  description         = "Example scheduled query alert"
  enabled             = true
  query               = "requests | summarize count() by bin(timestamp, 5m)"
  schedule {
    frequency = "PT1H"
    time_zone  = "UTC"
  }
  criteria {
    aggregation {
      operator = "GreaterThan"
      threshold = 100
    }
  }
  action {
    action_group_id = azurerm_action_group.example.id
  }
}
