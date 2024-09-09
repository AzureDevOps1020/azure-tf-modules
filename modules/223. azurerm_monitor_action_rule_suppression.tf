resource "azurerm_monitor_action_rule_suppression" "example" {
  name                = "example-action-rule-suppression"
  resource_group_name = azurerm_resource_group.example.name
  scope               = azurerm_monitor_action_rule.example.id
  suppression {
    criteria {
      metric_name = "Percentage CPU"
      operator    = "GreaterThan"
      threshold   = 80
      duration    = "PT5M"
    }
  }
}
