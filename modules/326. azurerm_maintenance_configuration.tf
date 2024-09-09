resource "azurerm_maintenance_configuration" "example" {
  name                = "example-maintenance-configuration"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  schedule {
    frequency = "Weekly"
    interval  = 1
    days      = ["Monday"]
    start_time = "2023-01-01T00:00:00Z"
  }
}
