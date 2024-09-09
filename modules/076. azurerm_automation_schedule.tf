resource "azurerm_automation_schedule" "example" {
  name                = "example-schedule"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  frequency           = "Day"
  interval            = 1
  timezone            = "UTC"
}
