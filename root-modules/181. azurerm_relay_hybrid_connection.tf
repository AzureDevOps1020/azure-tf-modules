resource "azurerm_relay_hybrid_connection" "example" {
  name                = "example-relay-hybrid-connection"
  namespace_name      = azurerm_relay_namespace.example.name
  resource_group_name = azurerm_resource_group.example.name
  relay_name          = "example-relay"
  entity_name         = "example-hybrid-connection"
  listener_endpoint   = "http://example.com:8080"
}
