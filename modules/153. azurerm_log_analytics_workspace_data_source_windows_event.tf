resource "azurerm_log_analytics_workspace_data_source_windows_event" "example" {
  name                = "example-windows-event-data-source"
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_log_analytics_workspace.example.id
  event_log_name      = "Application"
  event_log_id        = "1"
}
