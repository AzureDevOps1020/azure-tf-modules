resource "azurerm_automation_variable" "example" {
  name                = "example-automation-variable"
  resource_group_name = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  type                = "String"
  value               = "example-value"
}
