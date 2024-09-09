resource "azurerm_eventhub_namespace" "example" {
  name                = "example-eventhub-namespace"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"
  capacity            = 1
}
