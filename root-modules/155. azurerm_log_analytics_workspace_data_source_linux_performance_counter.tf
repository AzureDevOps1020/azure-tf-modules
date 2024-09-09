resource "azurerm_log_analytics_workspace_data_source_linux_performance_counter" "example" {
  name                = "example-linux-performance-counter-data-source"
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_log_analytics_workspace.example.id
  performance_counter {
    counter_name = "cpu"
    instance_name = "all"
  }
}
