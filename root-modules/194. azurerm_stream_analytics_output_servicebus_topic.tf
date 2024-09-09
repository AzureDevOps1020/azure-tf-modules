resource "azurerm_stream_analytics_output_servicebus_topic" "example" {
  name                = "example-servicebus-topic-output"
  job_name            = azurerm_stream_analytics_job.example.name
  resource_group_name = azurerm_resource_group.example.name
  servicebus_topic_id = azurerm_servicebus_topic.example.id
}
