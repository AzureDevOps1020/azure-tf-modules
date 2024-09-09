resource "azurerm_synapse_integration_runtime_azure" "example" {
  name                = "example-azure-integration-runtime"
  resource_group_name = azurerm_resource_group.example.name
  workspace_name      = azurerm_synapse_workspace.example.name
  location            = azurerm_resource_group.example.location
}
