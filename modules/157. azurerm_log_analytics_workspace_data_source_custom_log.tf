resource "azurerm_log_analytics_workspace_data_source_custom_log" "example" {
  name                = "example-custom-log-data-source"
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_log_analytics_workspace.example.id
  log_name            = "custom-log"
  log_path            = "/var/log/custom.log"
}
