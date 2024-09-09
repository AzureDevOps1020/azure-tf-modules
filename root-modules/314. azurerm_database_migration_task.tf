resource "azurerm_database_migration_task" "example" {
  name                = "example-dms-task"
  resource_group_name = azurerm_resource_group.example.name
  project_id          = azurerm_database_migration_project.example.id
  task_type           = "Online"
}
