resource "azurerm_automation_module" "example" {
  name                = "example-automation-module"
  resource_group_name = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  content_link {
    uri = "https://example.com/module.zip"
  }
}
