resource "azurerm_application_insights" "example" {
  name                = "example-app-insights"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Basic"
  retention_in_days   = 30
  application_type    = "web"
}
