resource "azurerm_database_migration_task" "example" {
  name                = "example-database-migration-task"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  project_id          = azurerm_database_migration_project.example.id
  migration_type      = "Online"
}
