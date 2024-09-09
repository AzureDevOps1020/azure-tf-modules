resource "azurerm_express_route_connection" "example" {
  name                = "example-express-route-connection"
  express_route_circuit_id = azurerm_express_route_circuit.example.id
  peer_name           = "example-peer"
  peer_id             = "example-peer-id"
  authorization_key   = "example-authorization-key"
}
