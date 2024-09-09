resource "azurerm_express_route_circuit" "example" {
  name                = "example-express-route-circuit"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard_MeteredData"
  service_provider_name = "ExampleProvider"
  peering_location    = "ExampleLocation"
  bandwidth_in_mbps   = 1000
}
