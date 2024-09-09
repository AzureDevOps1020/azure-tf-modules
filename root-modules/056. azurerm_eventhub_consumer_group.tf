resource "azurerm_eventhub_consumer_group" "example" {
  name                = "example-consumer-group"
  eventhub_name       = azurerm_eventhub.example.name
  namespace_name      = azurerm_eventhub_namespace.example.name
  resource_group_name = azurerm_resource_group.example.name
}
