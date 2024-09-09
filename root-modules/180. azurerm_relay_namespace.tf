resource "azurerm_relay_namespace" "example" {
  name                = "example-relay-namespace"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"
}
