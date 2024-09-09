resource "azurerm_stream_analytics_stream_input_eventhub" "example" {
  name                = "example-eventhub-stream-input"
  job_name            = azurerm_stream_analytics_job.example.name
  resource_group_name = azurerm_resource_group.example.name
  eventhub_id         = azurerm_eventhub.example.id
}
