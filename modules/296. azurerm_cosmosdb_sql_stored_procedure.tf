resource "azurerm_cosmosdb_sql_stored_procedure" "example" {
  name                = "example-stored-procedure"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
  database_name       = azurerm_cosmosdb_sql_database.example.name
  container_name      = azurerm_cosmosdb_sql_container.example.name
  body                = <<EOF
function sampleProcedure() {
  var context = getContext();
  var response = context.getResponse();
  response.setBody("Hello, world!");
}
EOF
}
