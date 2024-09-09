resource "azurerm_integration_account" "example" {
  name                = "example-integration-account"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"
}
