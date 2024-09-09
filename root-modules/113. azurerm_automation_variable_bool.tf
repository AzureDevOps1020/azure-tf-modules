resource "azurerm_automation_variable_bool" "example" {
  name                = "example-automation-variable-bool"
  resource_group_name = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  value               = true
}
