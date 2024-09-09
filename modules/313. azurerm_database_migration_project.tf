resource "azurerm_database_migration_project" "example" {
  name                = "example-dms-project"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  service_id          = azurerm_database_migration_service.example.id
}
