resource "azurerm_digital_twins_endpoint_servicebus" "example" {
  name                = "example-servicebus-endpoint"
  resource_group_name = azurerm_resource_group.example.name
  digital_twins_id    = azurerm_digital_twins_instance.example.id
  servicebus_id       = azurerm_servicebus_namespace.example.id
}
