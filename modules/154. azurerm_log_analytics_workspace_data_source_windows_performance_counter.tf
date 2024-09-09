resource "azurerm_log_analytics_workspace_data_source_windows_performance_counter" "example" {
  name                = "example-windows-performance-counter-data-source"
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_log_analytics_workspace.example.id
  performance_counter {
    counter_name = "Processor Time"
    instance_name = "_Total"
  }
}
