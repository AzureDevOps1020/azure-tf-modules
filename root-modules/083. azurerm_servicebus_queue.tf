resource "azurerm_servicebus_queue" "example" {
  name                = "example-queue"
  namespace_name      = azurerm_servicebus_namespace.example.name
  resource_group_name = azurerm_resource_group.example.name
  enable_partitioning  = true
  max_size_in_megabytes = 1024
  requires_duplicate_detection = true
  lock_duration = "PT1M"
}
