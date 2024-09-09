resource "azurerm_sql_virtual_network_rule" "example" {
  name                = "example-vnet-rule"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_sql_server.example.name
  virtual_network_subnet_id = azurerm_subnet.example.id
}
