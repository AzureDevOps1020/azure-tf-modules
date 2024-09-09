resource "azurerm_automation_variable_int" "example" {
  name                = "example-automation-variable-int"
  resource_group_name = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  value               = 123
}
