resource "azurerm_automation_account" "example" {
  name                = "example-automation-account"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Basic"
}
