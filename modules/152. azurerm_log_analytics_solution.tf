resource "azurerm_log_analytics_solution" "example" {
  solution_name       = "example-solution"
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_log_analytics_workspace.example.id
  solution_type       = "CustomLog"
  workspace_resource_id = azurerm_log_analytics_workspace.example.id
}
