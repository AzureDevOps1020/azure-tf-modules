resource "azurerm_maintenance_configuration" "example" {
  name                = "example-maintenance-configuration"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  configuration {
    maintenance_scope = "Resource"
    schedule {
      start_time = "2024-01-01T00:00:00Z"
      end_time   = "2024-01-01T01:00:00Z"
    }
  }
}
