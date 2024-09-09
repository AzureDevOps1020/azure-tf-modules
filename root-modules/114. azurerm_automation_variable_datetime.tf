resource "azurerm_automation_variable_datetime" "example" {
  name                = "example-automation-variable-datetime"
  resource_group_name = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  value               = "2024-01-01T00:00:00Z"
}
