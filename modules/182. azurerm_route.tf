resource "azurerm_route" "example" {
  name                = "example-route"
  resource_group_name = azurerm_resource_group.example.name
  route_table_name    = azurerm_route_table.example.name
  address_prefix      = "10.0.0.0/16"
  next_hop_type       = "VirtualAppliance"
  next_hop_in_ip_address = "10.0.0.1"
}
