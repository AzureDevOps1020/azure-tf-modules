resource "azurerm_cosmosdb_sql_container" "example" {
  name                = "example-container"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
  database_name       = azurerm_cosmosdb_sql_database.example.name
  partition_key_path  = "/partitionKey"
  throughput          = 400
}
