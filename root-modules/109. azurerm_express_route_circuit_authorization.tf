resource "azurerm_express_route_circuit_authorization" "example" {
  name                = "example-circuit-authorization"
  express_route_circuit_id = azurerm_express_route_circuit.example.id
  authorization_name  = "example-authorization"
}
