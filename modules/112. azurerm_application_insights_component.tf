resource "azurerm_application_insights_component" "example" {
  name                = "example-app-insights"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  application_type    = "web"
  sku                 = "Standard"
}
