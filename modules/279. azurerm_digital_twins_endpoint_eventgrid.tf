resource "azurerm_digital_twins_endpoint_eventgrid" "example" {
  name                = "example-eventgrid-endpoint"
  resource_group_name = azurerm_resource_group.example.name
  digital_twins_id    = azurerm_digital_twins_instance.example.id
  eventgrid_id        = azurerm_eventgrid_topic.example.id
}
