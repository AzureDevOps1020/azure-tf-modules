resource "azurerm_mssql_elasticpool" "example" {
  name                = "example-elasticpool"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mssql_server.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Standard"
  per_database_settings {
    max_size_gb = 50
  }
  max_size_gb = 100
}
