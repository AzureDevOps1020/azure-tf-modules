resource "azurerm_mysql_firewall_rule" "example" {
  name                = "example-firewall-rule"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mysql_server.example.name
  start_ip_address    = "10.0.0.0"
  end_ip_address      = "10.0.0.255"
}
