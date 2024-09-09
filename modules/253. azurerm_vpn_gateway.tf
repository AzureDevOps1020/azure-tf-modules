resource "azurerm_vpn_gateway" "example" {
  name                = "example-vpn-gateway"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  vpn_gateway_sku     = "VpnGw1"
  ip_configurations {
    name      = "example-ip-config"
    public_ip_address_id = azurerm_public_ip.example.id
  }
}
