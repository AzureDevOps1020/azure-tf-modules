resource "azurerm_servicebus_subscription" "example" {
  name                = "example-subscription"
  topic_name          = azurerm_servicebus_topic.example.name
  namespace_name      = azurerm_servicebus_namespace.example.name
  resource_group_name = azurerm_resource_group.example.name
  enable_dead_lettering_on_message_expiration = true
  max_subscription_count = 10
}
