resource "azurerm_monitor_scheduled_query_rules_alert" "example" {
  name                = "example-query-rules-alert"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  description         = "Example alert rule"
  query               = "Heartbeat | summarize count() by Computer"
  severity            = 3
  evaluation_frequency = "PT5M"
  action {
    action_group_id = azurerm_monitor_action_group.example.id
  }
}
