resource "azurerm_mssql_database" "example" {
  name                = "example-database"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mssql_server.example.name
  edition             = "Standard"
  requested_service_objective_name = "S0"
}
