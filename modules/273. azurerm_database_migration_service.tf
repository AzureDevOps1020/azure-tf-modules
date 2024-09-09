resource "azurerm_database_migration_service" "example" {
  name                = "example-database-migration-service"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Standard"
}
