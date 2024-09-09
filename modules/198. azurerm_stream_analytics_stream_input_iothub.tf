resource "azurerm_stream_analytics_stream_input_iothub" "example" {
  name                = "example-iothub-stream-input"
  job_name            = azurerm_stream_analytics_job.example.name
  resource_group_name = azurerm_resource_group.example.name
  iothub_id           = azurerm_iothub.example.id
}
