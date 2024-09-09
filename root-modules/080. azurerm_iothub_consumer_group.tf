resource "azurerm_iothub_consumer_group" "example" {
  name                = "example-consumer-group"
  iothub_name         = azurerm_iothub.example.name
  resource_group_name = azurerm_resource_group.example.name
  eventhub_name       = "events"
  consumer_group_name = "example-consumer-group"
}
