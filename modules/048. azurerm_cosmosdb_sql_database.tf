resource "azurerm_cosmosdb_sql_database" "example" {
  name                = "example-database"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
  throughput          = 400
}
