resource "azurerm_synapse_private_link" "example" {
  name                = "example-synapse-private-link"
  resource_group_name = azurerm_resource_group.example.name
  synapse_workspace_id = azurerm_synapse_workspace.example.id
  private_link_service_connection {
    name                           = "example-connection"
    private_link_service_connection_name = "example-connection-name"
    is_manual_connection          = true
  }
}
