resource "azurerm_virtual_network_peering" "example" {
  name                      = "example-peering"
  resource_group_name        = azurerm_resource_group.example.name
  virtual_network_name       = azurerm_virtual_network.example.name
  remote_virtual_network_id  = azurerm_virtual_network.remote.id
  allow_forwarded_traffic    = true
  allow_gateway_transit      = false
  use_remote_gateways        = false
}