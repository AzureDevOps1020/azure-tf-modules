resource "azurerm_machine_learning_synapse_integration" "example" {
  name                = "example-synapse-integration"
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_machine_learning_workspace.example.id
  synapse_workspace_id = azurerm_synapse_workspace.example.id
}
