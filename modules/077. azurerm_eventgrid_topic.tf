resource "azurerm_eventgrid_topic" "example" {
  name                = "example-eventgrid-topic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Basic"
}
