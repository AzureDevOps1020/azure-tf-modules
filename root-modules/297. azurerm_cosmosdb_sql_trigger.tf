resource "azurerm_cosmosdb_sql_trigger" "example" {
  name                = "example-trigger"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
  database_name       = azurerm_cosmosdb_sql_database.example.name
  container_name      = azurerm_cosmosdb_sql_container.example.name
  trigger_type        = "Pre"
  body                = <<EOF
function sampleTrigger() {
  var context = getContext();
  var request = context.getRequest();
  // Trigger logic here
}
EOF
}
