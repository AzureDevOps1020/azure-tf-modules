resource "azurerm_mariadb_database" "example" {
  name                = "example-database"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mariadb_server.example.name
  charset             = "utf8mb4"
  collation           = "utf8mb4_general_ci"
}
