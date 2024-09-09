resource "azurerm_synapse_integration_runtime_self_hosted" "example" {
  name                = "example-self-hosted-integration-runtime"
  resource_group_name = azurerm_resource_group.example.name
  workspace_name      = azurerm_synapse_workspace.example.name
}
