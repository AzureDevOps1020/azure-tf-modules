resource "azurerm_cosmosdb_sql_stored_procedure" "example" {
  name                = "example-stored-procedure"
  database_name       = azurerm_cosmosdb_sql_database.example.name
  container_name      = azurerm_cosmosdb_sql_container.example.name
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
  body                = <<JSON
{
  "id": "example-stored-procedure",
  "body": "function() { return true; }"
}
JSON
}
