resource "azurerm_virtual_hub_connection" "example" {
  name                = "example-virtual-hub-connection"
  resource_group_name = azurerm_resource_group.example.name
  virtual_hub_id      = azurerm_virtual_hub.example.id
  connection {
    name                = "example-connection"
    connection_type     = "Vpn"
    vpn_site_id         = azurerm_vpn_site.example.id
  }
}
