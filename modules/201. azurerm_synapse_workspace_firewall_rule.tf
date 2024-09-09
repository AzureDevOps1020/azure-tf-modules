resource "azurerm_synapse_workspace_firewall_rule" "example" {
  name                = "example-firewall-rule"
  resource_group_name = azurerm_resource_group.example.name
  workspace_name      = azurerm_synapse_workspace.example.name
  start_ip_address    = "10.0.0.1"
  end_ip_address      = "10.0.0.255"
}
