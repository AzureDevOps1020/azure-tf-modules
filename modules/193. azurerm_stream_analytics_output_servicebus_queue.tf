resource "azurerm_stream_analytics_output_servicebus_queue" "example" {
  name                = "example-servicebus-queue-output"
  job_name            = azurerm_stream_analytics_job.example.name
  resource_group_name = azurerm_resource_group.example.name
  servicebus_queue_id = azurerm_servicebus_queue.example.id
}
