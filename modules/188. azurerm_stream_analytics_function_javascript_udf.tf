resource "azurerm_stream_analytics_function_javascript_udf" "example" {
  name                = "example-js-udf"
  job_name            = azurerm_stream_analytics_job.example.name
  resource_group_name = azurerm_resource_group.example.name
  code                = "function udf(input) { return input; }"
}
