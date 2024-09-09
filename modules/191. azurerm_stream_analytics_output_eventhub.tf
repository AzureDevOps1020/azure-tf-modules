resource "azurerm_stream_analytics_output_eventhub" "example" {
  name                = "example-eventhub-output"
  job_name            = azurerm_stream_analytics_job.example.name
  resource_group_name = azurerm_resource_group.example.name
  eventhub_id         = azurerm_eventhub.example.id
}
