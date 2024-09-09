resource "azurerm_stream_analytics_output_mssql" "example" {
  name                = "example-mssql-output"
  job_name            = azurerm_stream_analytics_job.example.name
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_sql_server.example.name
  database_name       = azurerm_sql_database.example.name
  table_name          = "example-table"
  authentication_mode = "SQL"
  username            = "exampleuser"
  password            = "examplepassword"
}
