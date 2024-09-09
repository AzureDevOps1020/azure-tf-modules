resource "azurerm_monitor_action_rule_action_group" "example" {
  name                = "example-action-rule-action-group"
  resource_group_name = azurerm_resource_group.example.name
  action_group_id     = azurerm_monitor_action_group.example.id
}
