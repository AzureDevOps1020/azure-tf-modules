resource "azurerm_signalr_service" "example" {
  name                = "example-signalr-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard_S1"
  units               = 1
}
