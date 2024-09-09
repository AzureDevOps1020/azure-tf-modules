resource "azurerm_maintenance_assignment_dedicated_host" "example" {
  name                = "example-maintenance-assignment"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  scope               = azurerm_dedicated_host.example.id
  configuration_id    = "example-configuration-id"
}
