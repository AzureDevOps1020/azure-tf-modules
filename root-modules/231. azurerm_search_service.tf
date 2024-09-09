resource "azurerm_search_service" "example" {
  name                = "example-search-service"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Standard"
  replica_count       = 1
  partition_count     = 1
}
