resource "azurerm_vpn_connection" "example" {
  name                = "example-vpn-connection"
  resource_group_name = azurerm_resource_group.example.name
  vpn_gateway_id      = azurerm_vpn_gateway.example.id
  local_network_gateway_id = azurerm_local_network_gateway.example.id
  type                = "IPsec"
  shared_key          = "your_shared_key"
}
