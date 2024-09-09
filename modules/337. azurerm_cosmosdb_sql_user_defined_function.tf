resource "azurerm_cosmosdb_sql_user_defined_function" "example" {
  name                = "example-udf"
  database_name       = azurerm_cosmosdb_sql_database.example.name
  container_name      = azurerm_cosmosdb_sql_container.example.name
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
  body                = <<JSON
{
  "id": "example-udf",
  "body": "function() { return true; }"
}
JSON
}
