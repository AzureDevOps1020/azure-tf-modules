resource "azurerm_synapse_private_link_hub" "example" {
  name                = "example-private-link-hub"
  resource_group_name = azurerm_resource_group.example.name
  workspace_name      = azurerm_synapse_workspace.example.name
  location            = azurerm_resource_group.example.location
}
