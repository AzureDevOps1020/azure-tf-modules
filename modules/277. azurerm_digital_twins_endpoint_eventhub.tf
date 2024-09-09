resource "azurerm_digital_twins_endpoint_eventhub" "example" {
  name                = "example-eventhub-endpoint"
  resource_group_name = azurerm_resource_group.example.name
  digital_twins_id    = azurerm_digital_twins_instance.example.id
  eventhub_id         = azurerm_eventhub.example.id
}
