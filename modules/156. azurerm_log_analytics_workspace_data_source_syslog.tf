resource "azurerm_log_analytics_workspace_data_source_syslog" "example" {
  name                = "example-syslog-data-source"
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_log_analytics_workspace.example.id
  facility            = "auth"
  severity            = "info"
}
