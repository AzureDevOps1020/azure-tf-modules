resource "azurerm_virtual_hub_route_table" "example" {
  name                = "example-virtual-hub-route-table"
  resource_group_name = azurerm_resource_group.example.name
  virtual_hub_id      = azurerm_virtual_hub.example.id
  route {
    address_prefix = "10.0.1.0/24"
    next_hop_type   = "VirtualAppliance"
    next_hop_ip     = "10.0.0.4"
  }
}
