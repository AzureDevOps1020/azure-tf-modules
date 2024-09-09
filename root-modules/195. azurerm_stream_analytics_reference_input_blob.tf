resource "azurerm_stream_analytics_reference_input_blob" "example" {
  name                = "example-blob-reference-input"
  job_name            = azurerm_stream_analytics_job.example.name
  resource_group_name = azurerm_resource_group.example.name
  storage_account_id  = azurerm_storage_account.example.id
  container_name      = "example-container"
  path_pattern        = "{date}/{time}"
  date_format         = "yyyy/MM/dd"
  time_format         = "HH"
}
