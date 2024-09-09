resource "azurerm_servicebus_topic" "example" {
  name                = "example-topic"
  namespace_name      = azurerm_servicebus_namespace.example.name
  resource_group_name = azurerm_resource_group.example.name
  max_size_in_megabytes = 1024
  enable_partitioning  = true
  support_ordering     = true
}
