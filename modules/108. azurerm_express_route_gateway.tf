resource "azurerm_express_route_gateway" "example" {
  name                = "example-express-route-gateway"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"
  express_route_circuit_id = azurerm_express_route_circuit.example.id
}
