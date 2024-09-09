resource "azurerm_container_group_diagnostics" "example" {
  name                = "example-container-group-diagnostics"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  container_group_id  = azurerm_container_group.example.id
  logs {
    container_name = "example-container"
    log_analytics_workspace_id = azurerm_log_analytics_workspace.example.id
  }
}
