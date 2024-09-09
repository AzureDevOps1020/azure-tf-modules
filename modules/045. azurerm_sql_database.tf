resource "azurerm_sql_database" "example" {
  name                = "example-database"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_sql_server.example.name
  sku_name            = "S0"
  collation           = "SQL_Latin1_General_CP1_CI_AS"
}
