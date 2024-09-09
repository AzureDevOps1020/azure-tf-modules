resource "azurerm_maintenance_assignment_dedicated_host" "example" {
  name                = "example-maintenance-assignment"
  resource_group_name = azurerm_resource_group.example.name
  dedicated_host_id   = azurerm_dedicated_host.example.id
  configuration {
    maintenance_scope = "Host"
  }
}
